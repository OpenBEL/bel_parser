require 'observer'

module BEL
  module Parsers
    module AST
      # Traversal provides an observable walk over an
      # {BEL::Parsers::AST::Node AST node}. A result is not conveyed from the
      # walk (alternatively, see {BEL::Parsers::AST::MappedTraversal}).
      class Traversal
        include Observable

        def traverse(ast)
          ast.traverse do |node|
            changed
            notify_observers(node)
          end
        end
      end
    end
  end
end
