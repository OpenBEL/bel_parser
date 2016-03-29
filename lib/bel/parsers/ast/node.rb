require 'ast'

module BEL
  module Parsers
    # BEL AST module.
    module AST
      # BEL application-specific AST node.
      class Node < ::AST::Node
        # New BEL AST node.
        def initialize(type, children = [], properties = {})
          super(type, children, properties)
        end

        # Get the line number where this AST node originates.
        attr_reader :line_number

        # Get the character range enclosing this AST node.
        # It is defined as the close interval containing all the characters
        # of this AST node.
        attr_reader :character_range

        # Get the start of the character range enclosing this AST node.
        def range_start
          @character_range[0]
        end

        # Get _a_ in the character range [a, b].
        alias range_a range_start

        # Get the end of the character range enclosing this AST node.
        def range_end
          @character_range[1]
        end

        # Get _b_ in the character range [a, b].
        alias range_b range_end

        # Get whether the AST node can be considered _complete_.
        def complete?
          @complete
        end

        # Get whether the AST node should be considered _incomplete_.
        def incomplete?
          !@complete
        end

        def traverse(&block)
          if block_given?
            children.each do |child_node|
              child_node.traverse(&block) if child_node.respond_to?(:traverse)
            end
            yield self
          else
            enum_for(:traverse)
          end
        end
      end
    end
  end
end
