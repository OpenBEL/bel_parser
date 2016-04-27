require 'erb'
require 'net/http'
require 'sparql/client'
require 'uri'

require_relative 'reader'
require_relative 'lru_reader'
require_relative 'concept'
require_relative 'concept_scheme'

module BELParser
  module Resource
    # SPARQLReader
    class SPARQLReader
      include Reader
      prepend LRUReader

      SCHEMES      = [URI::HTTP, URI::HTTPS].freeze
      ALLOW_HEADER = 'Allow'.freeze

      def initialize(sparql_endpoint_url, validate_url = true)
        validate_sparql_endpoint_url(sparql_endpoint_url) if validate_url
        @sparql_repository = SPARQL::Client.new(sparql_endpoint_url)
      end

      def retrieve_resource(resource_identifier)
        uri              = URI(resource_identifier.to_s)
        template_binding = binding
        sparql_query     = RESOLVE_CONCEPT_SCHEME.result(template_binding)
        hash_to_concept_scheme(resource_identifier,
          execute_select(sparql_query).first)
      end

      def retrieve_value_from_resource(resource_identifier, value)
        uri              = URI(resource_identifier.to_s)
        template_binding = binding
        sparql_query     = RESOLVE_CONCEPT.result(template_binding)
        concept_scheme   = retrieve_resource(resource_identifier)
        to_concept       = method(:hash_to_concept).to_proc.curry[concept_scheme]

        execute_select(sparql_query).map(&to_concept)
      end

      def retrieve_values_from_resource(resource_identifier)
        uri              = URI(resource_identifier.to_s)
        template_binding = binding
        sparql_query     = RESOLVE_CONCEPTS.result(template_binding)
        concept_scheme   = retrieve_resource(resource_identifier)
        to_concept       = method(:hash_to_concept).to_proc.curry[concept_scheme]

        execute_select(sparql_query).map(&to_concept)
      end

      protected

      def execute_select(sparql_query)
        @sparql_repository.query(sparql_query).map do |solution|
          solution.to_hash
        end
      end

      def hash_to_concept_scheme(resource_identifier, hash)
        return nil if hash[:types].value.empty?
        ConceptScheme.new(resource_identifier, 
          *hash.values_at(:domain, :prefix, :prefLabel, :types))
      end

      def hash_to_concept(concept_scheme, hash)
        Concept.new(concept_scheme, 
          *hash.values_at(:concept, :prefLabel, :identifier, :title,
            :altLabels, :types))
      end

      def validate_sparql_endpoint_url(url)
        url_s = url.to_s
        scheme, host, port = URI(url_s).select(:scheme, :host, :port)
        validate_uri_scheme(scheme, url_s)

        options_request  = Net::HTTP::Options.new(url_s)
        options_response = Net::HTTP.start(host, port) do |http|
          http.request(Net::HTTP::Options.new(url_s))
        end
        validate_200(options_response, url_s)
        validate_allowed_methods(options_response, url_s)
      end

      def validate_uri_scheme(scheme, url_s)
        unless SCHEMES.include?(URI.scheme_list[scheme.upcase])
          raise ArgumentError,
            "expected HTTP or HTTPS scheme for url: #{url_s}"
        end
      end

      def validate_200(response, url_s)
        unless response.code_type == Net::HTTPOK
          raise ArgumentError,
            <<-MSG.gsub(/ {14}/, '').delete("\n")
              expected URL to respond 200 (received #{response.code}) for 
              OPTIONS request to: #{url_s}"
            MSG
        end
      end

      def validate_allowed_methods(response, url_s)
        unless response[ALLOW_HEADER].to_s =~ /GET|POST/
          raise ArgumentError,
            "expected URL to allow GET or POST: #{url_s}"
        end
      end

      RESOLVE_CONCEPT_SCHEME = ERB.new(<<-SPARQL)
        prefix belv: <http://www.openbel.org/vocabulary/>
        prefix dct:  <http://purl.org/dc/terms/>
        prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        prefix skos: <http://www.w3.org/2004/02/skos/core#>
        select ?domain ?prefix ?prefLabel (group_concat(?type;separator='|') as ?types)
        where {
            <<%= uri %>> rdf:type       skos:ConceptScheme .
            <<%= uri %>> rdf:type       ?type .
            <<%= uri %>> belv:domain    ?domain .
            <<%= uri %>> belv:prefix    ?prefix .
            <<%= uri %>> skos:prefLabel ?prefLabel .
        }
        group by ?domain ?prefix ?prefLabel
      SPARQL

      RESOLVE_CONCEPT = ERB.new(<<-SPARQL)
        prefix belv: <http://www.openbel.org/vocabulary/>
        prefix dct:  <http://purl.org/dc/terms/>
        prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        prefix skos: <http://www.w3.org/2004/02/skos/core#>
        select ?concept ?prefLabel ?identifier ?title
          (group_concat(distinct(?type);separator='|') as ?types)
          (group_concat(distinct(?altLabel);separator='|') as ?altLabels)
        where {
            {?concept    skos:prefLabel "<%= value %>"}
              UNION
            {?concept    dct:identifier "<%= value %>"}
              UNION
            {?concept    dct:title      "<%= value %>"}
              UNION
            {?concept    skos:altLabel  "<%= value %>"}

            ?concept     skos:inScheme  <<%= uri %>> .
            ?concept     rdf:type       ?type .

            ?concept     skos:prefLabel ?prefLabel .
            ?concept     dct:identifier ?identifier .
            optional {
              ?concept     dct:title      ?title .
              ?concept     skos:altLabel  ?altLabel .
            }
        }
        group by ?concept ?prefLabel ?identifier ?title
      SPARQL

      RESOLVE_CONCEPTS = ERB.new(<<-SPARQL)
        prefix belv: <http://www.openbel.org/vocabulary/>
        prefix dct:  <http://purl.org/dc/terms/>
        prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        prefix skos: <http://www.w3.org/2004/02/skos/core#>
        select ?concept ?prefLabel ?identifier ?title
          (group_concat(distinct(?type);separator='|') as ?types)
          (group_concat(distinct(?altLabel);separator='|') as ?altLabels)
        where {
            ?concept skos:inScheme  <<%= uri %>> .
            ?concept rdf:type       ?type .
            ?concept skos:prefLabel ?prefLabel .
            optional {
              ?concept dct:identifier ?identifier .
              ?concept dct:title      ?title .
              ?concept skos:altLabel  ?altLabel
            }
        }
        group by ?concept ?prefLabel ?identifier ?title
      SPARQL
    end
  end
end
