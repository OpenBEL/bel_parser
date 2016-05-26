module BELParser
  module Resource
    # Dataset
    module Dataset

      ANNOTATION = :annotation
      NAMESPACE  = :namespace

      def identifier
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def keyword
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def domain
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def annotation_resource?
        types.include?(ANNOTATION)
      end

      def namespace_resource?
        types.include?(NAMESPACE)
      end

      def types
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def uri?
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def url?
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def <=>(another_dataset)
        keyword <=> another_dataset.keyword
      end

      def hash
        [types, identifier, keyword].hash
      end

      def ==(another_dataset)
        return false if another_dataset == nil
        types      == another_dataset.types &&
        identifier == another_dataset.identifier &&
        keyword    == another_dataset.keyword
      end
      alias :eql? :'=='
    end
  end
end
