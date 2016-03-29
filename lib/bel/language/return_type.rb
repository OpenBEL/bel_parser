module BEL
  module Language
    # ReturnType defines a function return type and its parent.
    class ReturnType
      attr_reader :type, :parent_type

      def initialize(type, parent_type)
        @type        = type
        @parent_type = parent_type
        @hash        = [@type, @parent_type].hash
      end

      attr_reader :hash

      def ==(other)
        return false if other.nil?
        type == other.type && parent_type == other.parent_type
      end
      alias :eql? ==

      def subtype?(other_type)
        return false if other_type.nil?
        type == other_type || parent_type.type == other_type.type
      end

      # Example of initialization - likely move to function definitions.
      ABUNDANCE         = ReturnType.new(:abundance, nil)
      COMPLEX_ABUNDANCE = ReturnType.new(:complexAbundance, ABUNDANCE)
    end
  end
end
