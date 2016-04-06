require 'observer'

module BELParser
  module Parsers
    module AST
      # Traversal provides an observable walk that maps over the
      # {BELParser::Parsers::AST::Node AST node} and returns the results.
      # Alternatively, see {BELParser::Parsers::AST::Traversal}.
      class MappedTraversal
        include Observable

        def traverse(ast)
          if block_given?
            ast.traverse do |node|
              changed
              yield(node, notify_observers(node))
            end
          else
            enum_for(:traverse, ast)
          end
        end

        def notify_observers(*args)
          if defined? @observer_state && @observer_state
            @observer_state = false
            if defined? @observer_peers
              @observer_peers.map do |k, v|
                k.send v, *args
              end
            end
          end
        end
      end
    end
  end
end
