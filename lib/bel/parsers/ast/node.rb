require 'ast'

module BEL
  module Parsers
    # BEL AST module.
    module AST
      # Raises +ArgumentError+ if *argument* is not a *expected*.
      def self.assert_is_a(expected, actual, argument)
        msg = ->(x, y, z) { "Expected #{x} of #{y}, but got #{z}" }
        return if actual.is_a? expected
        raise ArgumentError, msg.call(expected, argument, actual.class)
      end

      # BEL application-specific AST node.
      class Node < ::AST::Node
        # New BEL AST node.
        #
        # *Args*:
        # - +type+ -> the node type symbol
        # - +children+ -> optional Array of children
        # - +properties+ -> optional Hash of supported properties
        #
        # === Supported properties
        # - +line_number+ -> #line_number
        # - +character_range+ -> #character_range, #range_start, #range_end
        # - +complete+ -> #complete?
        # - +return_type+ #return_type
        # - +encoding+ -> #encoding
        # - +has_semantics+ -> #has_semantics
        #
        # *Raises*:
        # - +ArgumentError+ -> If _children_ is not an Array or _properties_ is
        #   not a Hash
        def initialize(type, children = [], properties = {})
          AST.assert_is_a(Array, children, 'children')
          AST.assert_is_a(Hash, properties, 'properties')
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
