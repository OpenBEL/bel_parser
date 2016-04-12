module BELParser
  module Language
    module Syntax
      # SyntaxResult represents the result of running a {SyntaxFunction}.
      class SyntaxResult
        attr_reader :expression_node, :specification

        def initialize(expression_node, specification)
          @expression_node = expression_node
          @specification   = specification
        end

        # @abstract Subclass and override {#msg} to provide the message.
        def msg
          raise NotImplementedError, "#{__method__} is not implemented."
        end

        def to_s
          "Info: #{msg}"
        end
      end
    end
  end
end
