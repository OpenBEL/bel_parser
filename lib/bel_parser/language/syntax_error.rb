require_relative 'syntax_result'

module BELParser
  module Language
    module Syntax
      class SyntaxError < SyntaxResult
        attr_reader :expression_node, :target_node

        def initialize(expression_node, specification, target_node)
          super(expression_node, specification)
          @target_node = target_node
        end

        # @abstract Subclass and override {#msg} to provide the message.
        def msg
          raise NotImplementedError, "#{__method__} is not implemented."
        end

        def to_s
          "Error: #{msg}"
        end
      end
    end
  end
end
