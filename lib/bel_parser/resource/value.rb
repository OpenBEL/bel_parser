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

      def <=>(another_value)
        name <=> another_value.name
      end

      def hash
        [dataset, name, encodings].hash
      end

      def ==(another_value)
        return false if another_value == nil
        dataset   == another_value.dataset &&
        name      == another_value.name &&
        encodings == another_value.encodings
      end
      alias :eql? :'=='

      def to_s
        name
      end
    end
  end
end
