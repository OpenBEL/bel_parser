require 'open-uri'
require_relative 'reader'
require_relative 'eager_reader'
require_relative 'dataset'
require_relative 'http_cache'
require_relative 'value'

module BELParser
  module Resource
    # ResourceFileReader retrieves {Dataset datasets} and {Value values} from
    # Annotation (i.e. belanno extension) and Namespace (i.e. belns extension)
    # files.
    #
    # Only supports resource identifiers with an HTTP or HTTPS scheme.
    class ResourceFileReader
      include Reader
      prepend EagerReader

      DEFAULT_RESOURCE_VALUE_DELIMITER = '|'
      private_constant :DEFAULT_RESOURCE_VALUE_DELIMITER

      def initialize
        @http_cache = HTTPCache.new
      end

      def retrieve_resource(resource_identifier)
        read_resource(resource_identifier)
      end

      def retrieve_value_from_resource(resource_identifier, value)
        file_resource = read_resource(resource_identifier)

        io = @http_cache.get(resource_identifier)
        delimiter = DEFAULT_RESOURCE_VALUE_DELIMITER
        io.each_line do |line|
          case line
          when /^DelimiterString *=(.*)/
            delimiter = Regexp.last_match[1]
          when /^#{Regexp.escape('[Values]')}/
            break
          end
        end

        value_match = "#{value}#{delimiter}"
        value_line  = io.each_line.find do |line|
          line.start_with?(value_match)
        end
        return nil unless value_line
        value, encoding = value_line.strip.split(delimiter)
        FileResourceValue.new(file_resource, value, encoding)
      end

      def retrieve_values_from_resource(resource_identifier)
        file_resource = read_resource(resource_identifier)

        io = @http_cache.get(resource_identifier)
        delimiter = DEFAULT_RESOURCE_VALUE_DELIMITER
        io.each_line do |line|
          case line
          when /^DelimiterString *=(.*)/
            delimiter = Regexp.last_match[1]
          when /^#{Regexp.escape('[Values]')}/
            break
          end
        end

        io.each_line.map do |line|
          value, encoding = line.strip.split(delimiter)
          FileResourceValue.new(file_resource, value, encoding)
        end
      end

      private

      def read_resource(url)
        io = @http_cache.get(url)
        return nil unless io

        type, name, keyword, domain = nil
        io.each_line do |line|
          case line
          when /^#{Regexp.escape('[AnnotationDefinition]')}/
            type = Dataset::ANNOTATION
          when /^#{Regexp.escape('[Namespace]')}/
            type = Dataset::NAMESPACE
          when /^NameString *= *(.*)$/
            name = Regexp.last_match[1]
          when /^Keyword *= *(.*)$/
            keyword = Regexp.last_match[1]
          when /^DomainString *= *(.*)$/
            domain = Regexp.last_match[1]
          when /^#{Regexp.escape('[Values]')}/
            break
          end
        end
        FileResource.new(url, domain, keyword, name, type)
      end

      # FileResource is a {Dataset} description obtained from a Annotation or
      # Namespace file.
      class FileResource
        include Dataset

        attr_reader :identifier, :domain, :keyword, :name, :types

        def initialize(identifier, domain, keyword, name, type)
          @identifier = identifier.to_s
          @domain     = domain.to_s
          @keyword    = keyword.to_s
          @name       = name.to_s
          @types      = [type]
        end
      end

      # FileResourceValue is a {Value} obtained from a Annotation or Namespace
      # file.
      class FileResourceValue
        include Value

        attr_reader :dataset, :name, :encodings

        def initialize(dataset, name, encodings)
          @dataset   = dataset
          @name      = name
          @encodings =
            if dataset.annotation_resource? && !dataset.namespace_resource?
              nil
            else
              encodings.chars.map(&:to_sym)
            end
        end
      end
    end
  end
end
