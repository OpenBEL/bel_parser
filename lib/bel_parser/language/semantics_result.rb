module BELParser
  module Language
    module Semantics
      # SemanticsResult represents the successful outcome of applying a
      # {SemanticsFunction}.
      class SemanticsResult
        attr_reader :expression_node, :specification

        def initialize(expression_node, specification)
          @expression_node = expression_node
          @specification   = specification
        end

        def success?
          true
        end

        def failure?
          false
        end

        # @abstract Subclass and override {#msg} to provide the message.
        def msg
          "Successful semantic validation of #{@expression_node.type}."
        end

        def to_s
          "Info: #{msg}"
        end
      end
    end
  end
end
