module BELParser
  module Resource
    # Value
    module Value

      def dataset
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def name
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def identifier
        nil
      end

      def title
        nil
      end

      def synonyms
        []
      end

      def encodings
        raise NotImplementedError, "#{__method__} is not implemented."
      end
    end
  end
end
