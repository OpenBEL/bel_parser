require 'ast'

module BEL
  module Parsers
    # BEL AST module.
    module AST
      # @raise ArgumentError if _argument_ is not _expected_
      def self.assert_is_a(expected, actual, argument)
        msg = ->(x, y, z) { "Expected #{x} of #{y}, but got #{z}" }
        return if actual.is_a? expected
        raise ArgumentError, msg.call(expected, argument, actual.class)
      end

      # BEL application-specific AST node.
      #
      # All BEL AST nodes have a basic set of properties. Additional properties
      # may be specified by subclasses. Each class in the hierarchy describes
      # its type through the class variable _ast_type_. This is equivalent to
      # its _type_ instance variable but the former is not used by the AST
      # library itself.
      #
      # @see Node.ast_type
      # @see Node.initialize
      #
      class Node < ::AST::Node
        # AST node type
        @ast_type = :node
        # Basic AST node has no meaning
        @has_semantics = false

        # New BEL AST node.
        #
        # @param [Symbol] type The node type symbol
        # @param [Array] children Optional children of node
        # @param [Hash] properties Optional supported node properties
        #
        # === Supported properties
        # - +line_number+ -> {#line_number}
        # - +character_range+ -> {#character_range}, {#range_start},
        #   {#range_end}
        # - +complete+ -> {#complete?}
        #
        # @raise ArgumentError If _children_ is not an Array or _properties_
        #        is not a Hash
        def initialize(type, children = [], properties = {})
          AST.assert_is_a(Array, children, 'children')
          AST.assert_is_a(Hash, properties, 'properties')
          super(type, children, properties)
        end

        # Get the class AST node type.
        # @return [Symbol]
        class << self; attr_reader :ast_type end

        # Get whether this class AST node has semantics.
        # @return [boolean]
        class << self; attr_reader :has_semantics end

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

      # AST node representing a blank line.
      class BlankLine < Node
        # AST node type
        @ast_type = :blank_line
        # Blank lines have no meaning
        @has_semantics = false

        # New BlankLine AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(BlankLine.type, children, properties)
        end
      end

      # AST node representing a statement comment.
      class Comment < Node
        # AST node type
        @ast_type = :comment
        # Comments have no meaning
        @has_semantics = false

        # New Comment AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Comment.type, children, properties)
        end
      end

      # AST node representing a line comment.
      class CommentLine < Node
        # AST node type
        @ast_type = :comment_line
        # Comment lines have no meaning
        @has_semantics = false

        # New CommentLine AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(CommentLine.type, children, properties)
        end
      end

      # AST node representing the definition of an annotation.
      class AnnotationDefinition < Node
        # AST node type
        @ast_type = :annotation_definition
        # Content is has semantic meaning
        @has_semantics = true

        # New AnnotationDefinition AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(AnnotationDefinition.type, children, properties)
        end
      end

      # AST node representing the function of a BEL term.
      #
      # === Special node properties
      # - _return_type_: {#return_type}
      #
      class Function < Node
        # AST node type
        @ast_type = :function
        # Functions have semantic meaning
        @has_semantics = true

        # New Function AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Function.type, children, properties)
        end

        # Get the return type property.
        attr_reader :return_type
      end

      # AST node representing the definition of a namespace.
      class NamespaceDefinition < Node
        # AST node type
        @ast_type = :namespace_definition
        # Namespace definitions have semantic meaning
        @has_semantics = true

        # New NamespaceDefinition AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(NamespaceDefinition.type, children, properties)
        end

        # Get the namespace definition's keyword.
        def keyword
          # TODO: access children for content
        end
      end

      # AST node representing the definition of a namespace.
      class Identifier < Node
        # AST node type
        @ast_type = :identifier
        # Identifier have no semantics
        @has_semantics = false

        # New Identifier AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Identifier.type, children, properties)
        end
      end

      # AST node representing a list.
      class List < Node
        # AST node type
        @ast_type = :list
        # List have semantics (content is meaningful)
        @has_semantics = true

        # New List AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(List.type, children, properties)
        end
      end

      # AST node representing a parameter.
      class Parameter < Node
        # AST node type
        @ast_type = :parameter
        # Parameters have semantics (encodings, namespaces)
        @has_semantics = true

        # New Parameter AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Parameter.type, children, properties)
        end
      end

      # AST node representing a relationship.
      class Relationship < Node
        # AST node type
        @ast_type = :relationship
        # Relationship have no semantics, statements do
        @has_semantics = false

        # New Relationship AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Relationship.type, children, properties)
        end
      end

      # AST node representing a set.
      class Set < Node
        # AST node type
        @ast_type = :set
        # Set has semantics (what was set?)
        @has_semantics = true

        # New Set AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Set.type, children, properties)
        end

        # Get what is being set.
        def name
          # TODO: access children for content
        end

        # Get the value of what is being set.
        def value
          # TODO: access children for content
        end
      end

      # AST node representing a statement.
      class Statement < Node
        # AST node type
        @ast_type = :statement
        # Statements have semantics
        @has_semantics = true

        # New Statement AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Statement.type, children, properties)
        end

        # Get the subject of the statement.
        def subject
          # TODO: access children for content
        end
      end

      # AST node representing a nested statement.
      class NestedStatement < Statement
        # AST node type
        @ast_type = :nested_statement
        # Nested statements have semantics
        @has_semantics = true

        # New NestedStatement AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(NestedStatement.type, children, properties)
        end

        # Get the relationship of the nested statement.
        def relatitonship
          # TODO: access children for content
        end

        # Get the object of the nested statement.
        def object
          # TODO: access children for content
        end
      end

      # AST node representing a observed term statement.
      class ObservedTerm < Statement
        # AST node type
        @ast_type = :observed_term
        # Observed terms have semantics
        @has_semantics = true

        # New ObservedTerm AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(ObservedTerm.type, children, properties)
        end
      end

      # AST node representing a simple statement.
      class SimpleStatement < Statement
        # AST node type
        @ast_type = :simple_statement
        # Simple statements have semantics
        @has_semantics = true

        # New SimpleStatement AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(SimpleStatement.type, children, properties)
        end

        # Get the relationship of the nested statement.
        def relatitonship
          # TODO: access children for content
        end

        # Get the object of the nested statement.
        def object
          # TODO: access children for content
        end
      end

      # AST node representing a UTF-8 encoded string
      class String < Node
        # AST node type
        @ast_type = :string
        # String have no semantic meaning
        @has_semantics = false

        # New String AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(String.type, children, properties)
        end
      end

      # AST node representing a term.
      class Term < Node
        # AST node type
        @ast_type = :term
        # Terms have semantics
        @has_semantics = true

        # New Term AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Term.type, children, properties)
        end

        # Get the term's function.
        def function
          # TODO: access children for content
        end
      end

      # AST node representing an unset.
      class Unset < Node
        # AST node type
        @ast_type = :unset
        # Unset has semantics; what was unset?
        @has_semantics = true

        # New Unset AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Unset.type, children, properties)
        end

        # Get what is being unset.
        def name
          # TODO: access children for content
        end
      end

      # AST node representing a value.
      #
      # === Special node properties
      # - _encoding_: {#encoding}
      #
      class Value < Node
        # AST node type
        @ast_type = :value
        # Values have semantics (encodings)
        @has_semantics = true

        # New Value AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Value.type, children, properties)
        end

        # Get the value's encoding.
        attr_reader :encoding
      end
    end
  end
end
