module BEL
  module Language
    module Syntax
      module Expression
        # AST traversal observer that reports if any node is incomplete.
        class IncompleteNode
          def update(node)
            "[#{node.type}] Incomplete #{node.type}." if node.incomplete?
          end
        end
      end
    end
  end
end
