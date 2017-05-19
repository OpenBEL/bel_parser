require 'bel_parser/resource'
require 'bel_parser/parsers/ast/node'

module BELParser
  module Expression
    module Model
      # Namespace represents a catalog of biological identifiers that are to
      # identify parameter values like genes (e.g. _AKT1_),
      # diseases (e.g. _hypertropia_), and processes (e.g. _anaphase_).
      class Namespace
        attr_accessor :keyword
        attr_accessor :uri
        attr_accessor :url
        attr_reader   :uri_reader
        attr_reader   :url_reader

        def initialize(keyword, uri = nil, url = nil, options = {})
          raise(ArgumentError, 'keyword is nil') unless keyword
          @keyword = keyword
          @uri     = uri
          @url     = url

          # configure reader for URIs (RDF).
          @uri_reader = options.fetch(:uri_reader, BELParser::Resource.default_uri_reader)
          BELParser::Resource::Reader.assert_reader(@uri_reader, 'uri_reader')

          # configure reader for URLs (Resource files).
          @url_reader = options.fetch(:url_reader, BELParser::Resource.default_url_reader)
          BELParser::Resource::Reader.assert_reader(@url_reader, 'url_reader')
        end

        def initialize_copy(original)
          @keyword    = original.keyword
          @uri        = original.uri
          @uri_reader = original.uri_reader
          @url        = original.url
          @url_reader = original.url_reader
        end

        def uri?
          !@uri.nil?
        end

        def url?
          !@url.nil?
        end

        def type
          case
          when uri?
            :uri
          when url?
            :url
          else
            nil
          end
        end

        def domain
          case
          when uri?
            @uri
          when url?
            @url
          else
            nil
          end
        end

        def include?(value)
          resolved_value =
            if uri? && @uri_reader
              @uri_reader.retrieve_value_from_resource(@uri, value)
            elsif url? && @url_reader
              @url_reader.retrieve_value_from_resource(@url, value)
            else
              nil
            end
          !resolved_value.nil?
        end

        def [](value)
          resolved_value =
            if uri? && @uri_reader
              @uri_reader.retrieve_value_from_resource(@uri, value)
            elsif url? && @url_reader
              @url_reader.retrieve_value_from_resource(@url, value)
            else
              nil
            end

          if resolved_value
            match =
              if resolved_value.size == 1
                resolved_value.first
              else
                # first, find match by name, identifier, title
                # otherwise, select first match (e.g. multiple match by synonym)
                resolved_value.find { |v|
                  [v.name, v.identifier, v.title].any? { |s| s == value }
                } || resolved_value.first
              end
            Parameter.new(self, match.name, match.encodings)
          else
            Parameter.new(self, value, nil)
          end
        end

        def each
          if block_given?
            values =
              if uri?
                @uri_reader.retrieve_values_from_resource(@uri)
              elsif url?
                @url_reader.retrieve_values_from_resource(@url)
              else
                []
              end
            values.each do |value|
              yield Parameter.new(self, value.name, value.encodings)
            end
          else
            to_enum(:each)
          end
        end

        def hash
          [@keyword, @uri, @url].hash
        end

        def ==(other)
          return false if other.nil?
          @keyword == other.keyword && @uri == other.uri && @url == other.url
        end
        alias :eql? :'=='

        def domain_equal?(other)
          return false if other.nil?
          @uri == other.uri && @url == other.url
        end

        def to_s
          @keyword.to_s
        end
      end

      module Converters
        def ast_to_namespace(ast, namespace_hash = {})
          return nil if ast.nil?

          case ast
          when BELParser::Parsers::AST::Prefix
            if ast.namespace
              dataset = ast.namespace
              case
              when dataset.uri?
                Namespace.new(dataset.keyword, dataset.identifier, nil)
              when dataset.url?
                Namespace.new(dataset.keyword, nil, dataset.identifier)
              else
                Namespace.new(dataset.keyword, nil, nil)
              end
            else
              return nil unless ast.identifier
              prefix_s = ast.identifier.string_literal
              namespace_hash[prefix_s]
            end
          when BELParser::Parsers::AST::NamespaceDefinition
            keyword, domain = ast.children
            keyword_s       = keyword.identifier.string_literal
            case
            when domain.uri?
              uri = domain.child.string_literal
              Namespace.new(keyword_s, uri, nil)
            when domain.url?
              url = domain.child.string_literal
              Namespace.new(keyword_s, ast.uri, url)
            end
          end
        end
      end
    end
  end
end
# vim: ts=2 sw=2:
# encoding: utf-8
