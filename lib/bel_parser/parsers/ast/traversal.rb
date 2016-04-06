require 'observer'

module BELParser
  module Parsers
    module AST
      # Traversal provides an observable walk over an
      # {BELParser::Parsers::AST::Node AST node}. A result is not conveyed from the
      # walk (alternatively, see {BELParser::Parsers::AST::MappedTraversal}).
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
