require_relative 'syntax_result'

module BELParser
  module Language
    module Syntax
      class SyntaxWarning < SyntaxResult
        attr_reader :target_node

        def initialize(expression_node, specification, target_node)
          super(expression_node, specification)
          @target_node = target_node
        end

        def to_s
          "Warning: #{msg}"
        end
      end
    end
  end
end
