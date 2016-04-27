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
    end
  end
end
