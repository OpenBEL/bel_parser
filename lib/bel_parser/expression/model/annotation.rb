module BELParser
  module Expression
    module Model
      # Annotation represents a catalog of biological annotation values.
      class Annotation
        include Enumerable

        attr_accessor :keyword
        attr_accessor :type
        attr_accessor :domain
        attr_reader :uri_reader
        attr_reader :url_reader

        def initialize(keyword, type, domain, options = {})
          raise(ArgumentError, 'keyword is nil') unless keyword
          raise(ArgumentError, 'type is nil') unless type
          raise(ArgumentError, 'domain is nil') unless domain

          @keyword = keyword
          @type    = type.to_sym
          @domain  = domain

          uri_reader = options.fetch(:uri_reader, nil)
          url_reader = options.fetch(:url_reader, nil)
        end

        def initialize_copy(original)
          @keyword    = original.keyword
          @type       = original.type
          @domain     = original.domain
          @uri_reader = original.uri_reader
          @url_reader = original.url_reader
        end

        def uri_reader=(uri_reader)
          BELParser::Resource::Reader.assert_reader(@uri_reader, 'uri_reader')
          @uri_reader = uri_reader
        end

        def url_reader=(url_reader)
          BELParser::Resource::Reader.assert_reader(@url_reader, 'url_reader')
          @url_reader = url_reader
        end

        def uri?
          @type == :uri
        end

        def url?
          @type == :url
        end

        def [](value)
          if uri?
            @uri_reader.retrieve_value_from_resource(@domain, value)
          elsif url?
            @url_reader.retrieve_value_from_resource(@domain, value)
          else
            nil
          end
        end

        def each
          if block_given?
            values =
              if uri?
                @uri_reader.retrieve_values_from_resource(@domain)
              elsif url?
                @url_reader.retrieve_values_from_resource(@domain)
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
          [@keyword, @type, @domain].hash
        end

        def ==(other)
          return false if other.nil?
          @keyword == other.keyword &&
            @type == other.type &&
            @domain == other.domain
        end
        alias :eql? :'=='

        def domain_equal?(other)
          return false if other.nil?
          @type == other.type && @domain == other.domain
        end

        def to_s
          @keyword.to_s
        end
      end
    end
  end
end
# vim: ts=2 sw=2:
# encoding: utf-8
