module BELParser
  module Expression
    module Model
      # Annotation represents a catalog of biological annotation values.
      class Annotation
        include Enumerable

        attr_reader :keyword
        attr_reader :uri
        attr_reader :url

        def initialize(keyword, uri = nil, url = nil, options = {})
          raise(ArgumentError, 'keyword is nil') unless keyword
          @keyword = keyword
          @uri     = uri
          @url     = url

          # configure reader for URIs (RDF).
          @uri_reader =
            options.fetch(:uri_reader) {
              BELParser::Resource.default_uri_reader
            }
          BELParser::Resource::Reader.assert_reader(@uri_reader, 'uri_reader')

          # configure reader for URLs (Resource files).
          @url_reader =
            options.fetch(:url_reader) {
              BELParser::Resource.default_url_reader
            }
          BELParser::Resource::Reader.assert_reader(@url_reader, 'url_reader')
        end

        def uri?
          !@uri.nil?
        end

        def url?
          !@url.nil?
        end

        def [](value)
          if uri?
            @uri_reader.retrieve_value_from_resource(@uri, value)
          elsif url?
            @url_reader.retrieve_value_from_resource(@url, value)
          else
            nil
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
              yield value
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

        def to_s
          @keyword.to_s
        end
      end
    end
  end
end
# vim: ts=2 sw=2:
# encoding: utf-8
