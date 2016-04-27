require_relative 'syntax_result'

module BELParser
  module Language
    module Syntax
      # SyntaxWarning defines a {SyntaxResult} that should be regarded as an
      # warning with the expression.
      class SyntaxWarning < SyntaxResult
        def initialize(expression_node, specification)
          super(expression_node, specification)
        end

        def success?
          false
        end

        def failure?
          true
        end

        def to_s
          "Warning: #{msg}"
        end
      end
    end
  end
end
