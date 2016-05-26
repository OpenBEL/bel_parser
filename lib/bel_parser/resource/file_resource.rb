require_relative 'dataset'

# FileResource is a {Dataset} description obtained from a Annotation or
# Namespace file.
module BELParser
  module Resource
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

      def uri?
        false
      end

      def url?
        true
      end
    end
  end
end
