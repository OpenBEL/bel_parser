require_relative 'dataset'

module BELParser
  module Resource
    #ConceptScheme
    class ConceptScheme
      include Dataset

      attr_reader :identifier, :domain, :keyword, :name, :types

      def initialize(identifier, domain, prefix, name, types)
        @identifier = identifier.to_s
        @domain     = domain.to_s
        @keyword    = prefix.to_s
        @name       = name.to_s
        @types      = convert_types(types.to_s)
      end

      private

      def convert_types(types)
        types.split('|').map do |type|
          case type
          when /NamespaceConceptScheme$/
            Dataset::NAMESPACE
          when /AnnotationConceptScheme$/
            Dataset::ANNOTATION
          else
            nil
          end
        end.compact
      end
    end
  end
end
