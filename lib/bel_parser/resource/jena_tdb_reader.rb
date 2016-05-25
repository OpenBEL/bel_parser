require 'erb'
require 'rdf'
require 'rdf/vocab'
require 'rdf/jena'

require_relative 'reader'
require_relative 'lru_reader'
require_relative 'concept'
require_relative 'concept_scheme'

module BELParser
  module Resource
    class JenaTDBReader
      include Reader
      prepend LRUReader

      BELV = RDF::Vocabulary.new('http://www.openbel.org/vocabulary/')
      SKOS = RDF::Vocab::SKOS
      DC   = RDF::Vocab::DC
      VALUE_PREDICATE_ORDER = [
        SKOS.prefLabel,
        DC.identifier,
        DC.title,
        SKOS.altLabel
      ]

      def initialize(tdb_directory_path)
        @rdf = RDF::Jena::Repository.new(tdb_directory_path)
      end

      def retrieve_resource(identifier)
        uri   = RDF::URI(identifier)
        domain, prefix, pref_label = nil
        types                      = []
        @rdf.query([:subject => uri]).each do |solution|
          case solution.predicate
          when RDF.type
            types << solution.object
          when BELV.domain
            domain = solution.object.to_s
          when BELV.prefix
            prefix = solution.object.to_s
          when SKOS.prefLabel
            pref_label = solution.object.to_s
          end
        end
        return nil unless types.any?(&method(:scheme_class?))
        ConceptScheme.new(uri.to_s, domain, prefix, pref_label, types.map(&:to_s))
      end

      def retrieve_value_from_resource(identifier, value)
        concept_scheme = retrieve_resource(identifier)
        return nil unless concept_scheme

        template_binding = binding
        sparql_query     = RESOLVE_CONCEPT.result(template_binding)
        to_concept       = method(:hash_to_concept).to_proc.curry[concept_scheme]

        @rdf.query_execute(sparql_query).map(&to_concept)
      end

      def retrieve_values_from_resource(identifier)
        concept_scheme = retrieve_resource(identifier)
        return nil unless concept_scheme

        template_binding = binding
        sparql_query     = RESOLVE_CONCEPTS.result(template_binding)
        to_concept       = method(:hash_to_concept).to_proc.curry[concept_scheme]

        @rdf.query_execute(sparql_query).map(&to_concept)
      end

      private

      def scheme_class?(uri)
        uri == BELV.AnnotationConceptScheme || uri == BELV.NamespaceConceptScheme
      end

      def find_value_uris(resource_uri, value)
        VALUE_PREDICATE_ORDER.each do |predicate|
          subjects =
            @rdf.query([:predicate => predicate, :object => value])
            .select do |stmt|
              @rdf.has_statement?(
                RDF::Statement(stmt.subject, SKOS.inScheme, resource_uri))
            end.map(&:subject)

          if !subjects.empty?
            return subjects
          end
        end

        []
      end

      def hash_to_concept(concept_scheme, hash)
        Concept.new(concept_scheme, 
          *hash.values_at('concept', 'prefLabel', 'identifier', 'title',
            'altLabels', 'types'))
      end

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

            ?concept     skos:inScheme  <<%= identifier %>> .
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
            ?concept skos:inScheme  <<%= identifier %>> .
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

      #ConceptScheme
      class ConceptScheme
        include Dataset

        attr_reader :identifier, :domain, :keyword, :name, :types

        def initialize(uri, domain, prefix, name, types)
          @identifier = uri
          @domain     = domain.to_s
          @keyword    = prefix.to_s
          @name       = name.to_s
          @types      = convert_types(types)
        end

        private

        def convert_types(types)
          types.map do |type|
            case type
            when BELV.NamespaceConceptScheme
              Dataset::NAMESPACE
            when BELV.AnnotationConceptScheme
              Dataset::ANNOTATION
            end
          end.compact
        end
      end

      class Concept
        include Value

        attr_reader :dataset, :uri, :name, :identifier,
                    :title,   :synonyms, :encodings

        def initialize(dataset, uri, pref_label, identifier,
                       title, alt_labels, types)

          @dataset    = dataset
          @uri        = uri
          @name       = pref_label.to_s
          @identifier = identifier.to_s
          @title      = title.to_s
          @synonyms   =
            if alt_labels.respond_to?(:each)
              alt_labels.map(&:to_s)
            else
              alt_labels.to_s.split('|')
            end
          @encodings  =
            if types.respond_to?(:each)
              convert_encoding_types(types.map(&:to_s))
            else
              convert_encoding_types(types.to_s.split('|'))
            end
        end

        private

        def convert_encoding_types(types)
          types.map do |type|
            case type
            when BELV.AbundanceConcept
              :A
            when BELV.BiologicalProcessConcept
              :B
            when BELV.ComplexConcept
              :C
            when BELV.GeneConcept
              :G
            when BELV.LocationConcept
              :L
            when BELV.MicroRNAConcept
              :M
            when BELV.MolecularActivityConcept
              :T
            when BELV.PathologyConcept
              :O
            when BELV.ProteinConcept
              :P
            when BELV.ProteinModificationConcept
              :E
            when BELV.RNAConcept
              :R
            end
          end.compact
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  reader = BELParser::Resource::JenaTDBReader.new(
    '/home/tony/projects/openbel/resource-reasoner/biological-concepts-db')
  reader.retrieve_resource('http://www.openbel.org/bel/namespace/hgnc-human-genes')
end
