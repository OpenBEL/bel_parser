require_relative 'semantics_result'

module BELParser
  module Language
    module Semantics
      # SemanticsWarning defines a {SemanticsResult} that should be regarded as
      # a warning with the expression.
      class SemanticsWarning < SemanticsResult
        def initialize(expression_node, specification)
          super(expression_node, specification)
        end

        def to_s
          "Warning: #{msg}"
        end
      end
    end
  end
end
