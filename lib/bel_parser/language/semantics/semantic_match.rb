module BELParser
  module Language
    module Semantics
      # SemanticMatch holds the results of an input AST to semantic AST match.
      class SemanticMatch
        attr_reader :input_node, :semantic_node

        def initialize(success, input_node, semantic_node)
          @success       = success
          @input_node    = input_node
          @semantic_node = semantic_node
        end

        def success?
          @success
        end

        def failure?
          !@success
        end

        def to_s
          msg
        end
      end
    end
  end
end
