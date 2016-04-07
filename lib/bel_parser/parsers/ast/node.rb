require 'bel_parser/vendor/ast'

module BELParser
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

        # Get the syntax errors for this AST node.
        def syntax_errors
          (@syntax_errors ||= [])
        end

        # Add a syntax error to thie AST node.
        def add_syntax_error(syntax_error)
          syntax_errors << syntax_error
        end

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
            yield self
            children.each do |child_node|
              child_node.traverse(&block) if child_node.respond_to?(:traverse)
            end
          else
            enum_for(:traverse)
          end
        end

        def freeze
          # no freeze...nothing
          # I want to be able to modify properties!
          self
        end

        def updated(children = nil, properties = nil)
          new_children   = children   || @children
          new_properties = properties || {}

          if @children == new_children && properties.nil?
            self
          else
            original_dup.send :initialize, new_children, new_properties
          end
        end

        # Concatenates `array` with `children` and returns the resulting node.
        #
        # @return [Node]
        def concat(array)
          updated(@children + array.to_a)
        end

        alias + concat

        # Appends `element` to `children` and returns the resulting node.
        #
        # @return [Node]
        def append(element)
          updated(@children + [element])
        end

        alias << append
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
          super(BlankLine.ast_type, children, properties)
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
          super(Comment.ast_type, children, properties)
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
          super(CommentLine.ast_type, children, properties)
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
          super(AnnotationDefinition.ast_type, children, properties)
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
          super(Function.ast_type, children, properties)
        end

        # Get the function's identifier.
        def identifier
          children[0]
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
          super(NamespaceDefinition.ast_type, children, properties)
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
          super(Identifier.ast_type, children, properties)
        end

        # Get the string literal.
        def string_literal
          children[0]
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
          super(List.ast_type, children, properties)
        end
      end

      # AST node representing an argument.
      class Argument < Node
        # AST node type
        @ast_type = :argument
        # Arguments have semantics (position is meaningful)
        @has_semantics = true

        # New Argument AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Argument.ast_type, children, properties)
        end

        # Does the argument have a {Parameter} child?
        def has_parameter?
          children[0].is_a?(Parameter)
        end

        # Does the argument have a {Term} child?
        def has_term?
          children[0].is_a?(Term)
        end

        # Get the {Parameter} or {Term} child.
        def child
          children[0]
        end
      end

      # AST node representing a parameter.
      class Prefix < Node
        # AST node type
        @ast_type = :prefix
        # Prefix have semantics (indicates namespace)
        @has_semantics = true

        # New Prefix AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Prefix.ast_type, children, properties)
        end

        # Get the identifier for the prefix.
        def identifier
          children[0]
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
          super(Parameter.ast_type, children, properties)
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
          super(Relationship.ast_type, children, properties)
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
          super(Set.ast_type, children, properties)
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
          super(Statement.ast_type, children, properties)
        end

        # Get the subject of the statement.
        def subject
          # TODO: access children for content
        end
      end

      # AST node representing a nested statement.
      class NestedStatement < Node
        # AST node type
        @ast_type = :nested_statement
        # Nested statements have semantics
        @has_semantics = true

        # New NestedStatement AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(NestedStatement.ast_type, children, properties)
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
      class ObservedTerm < Node
        # AST node type
        @ast_type = :observed_term
        # Observed terms have semantics
        @has_semantics = true

        # New ObservedTerm AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(ObservedTerm.ast_type, children, properties)
        end
      end

      # AST node representing a simple statement.
      class SimpleStatement < Node
        # AST node type
        @ast_type = :simple_statement
        # Simple statements have semantics
        @has_semantics = true

        # New SimpleStatement AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(SimpleStatement.ast_type, children, properties)
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

      # AST node representing the subject of a statement.
      class Subject < Node
        # AST node type
        @ast_type = :subject
        # Subject have semantics
        @has_semantics = true

        # New Subject AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Subject.ast_type, children, properties)
        end

        # Get the subject's term.
        def term
          children[0]
        end
      end

      # AST node representing the object of a statement.
      class Object < Node
        # AST node type
        @ast_type = :object
        # Object have semantics
        @has_semantics = true

        # New Object AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Object.ast_type, children, properties)
        end

        # Does the object have a {Term} child?
        def has_term?
          children[0].is_a?(Term)
        end

        # Does the object have a {Statement} child?
        def has_statement?
          children[0].is_a?(Statement)
        end

        # Get the {Term} or {Statement} child.
        def child
          children[0]
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
          super(String.ast_type, children, properties)
        end

        # Get the string literal.
        def string_literal
          children[0]
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
          super(Term.ast_type, children, properties)
        end

        # Get the term's function.
        def function
          children[0]
        end

        # Get the term's arguments.
        def arguments
          children[1..-1]
        end

        # Get the term's function semantics.
        def function_semantics
          @function_semantics
        end

        # Sets the term's function semantics.
        def function_semantics=(function_semantics)
          if function_semantics != nil && !function_semantics.is_a?(BELParser::Language::Signature)
            raise ArgumentError, "function_semantics: expected nil or BELParser::Language::Signature"
          end
          assign_properties({function_semantics: function_semantics})
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
          super(Unset.ast_type, children, properties)
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
          super(Value.ast_type, children, properties)
        end

        # Get the value's encoding.
        attr_reader :encoding
      end

      module Sexp
        def nested_statement(*children)
          NestedStatement.new(children)
        end

        def simple_statement(*children)
          SimpleStatement.new(children)
        end

        def observed_term(*children)
          ObservedTerm.new(children)
        end

        def statement(*children)
          Statement.new(children)
        end

        def subject(*children)
          Subject.new(children)
        end

        def object(*children)
          Object.new(children)
        end

        def relationship(*children)
          Relationship.new(children)
        end

        def term(*children)
          Term.new(children)
        end

        def function(*children)
          Function.new(children)
        end

        def argument(*children)
          Argument.new(children)
        end

        def parameter(*children)
          Parameter.new(children)
        end

        def prefix(*children)
          Prefix.new(children)
        end

        def value(*children)
          Value.new(children)
        end

        def identifier(*children)
          Identifier.new(children)
        end

        def string(*children)
          String.new(children)
        end

        def list(*children)
          List.new(children)
        end

        def comment(*children)
          Comment.new(children)
        end

        def comment_line(*children)
          CommentLine.new(children)
        end

        def annotation_definition(*children)
          AnnotationDefinition.new(children)
        end

        def namespace_definition(*children)
          NamespaceDefinition.new(children)
        end
      end
    end
  end
end
