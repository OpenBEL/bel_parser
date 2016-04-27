module BELParser
  module Script
    module StateFunction
      # @abstract Extend {StateFunction} and override {#consume}.
      def consume(ast_node, script_context)
        raise NotImplementedError, "#{__method__} is not implemented."
      end
    end
  end
end
