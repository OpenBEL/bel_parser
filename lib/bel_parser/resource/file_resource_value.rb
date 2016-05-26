require_relative 'value'

# FileResourceValue is a {Value} obtained from a Annotation or Namespace
# file.
module BELParser
  module Resource
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
