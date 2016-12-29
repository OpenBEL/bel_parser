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
      # All BEL AST nodes have a basic set of properties. Additional
      # properties may be specified by subclasses. Each class in
      # the hierarchy describes its type through the class variable
      # _ast_type_. This is equivalent to its _type_ instance variable
      # but the former is not used by the AST library itself.
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
        # @param [Symbol] type The node type symbol @param [Array]
        # children Optional children of node @param [Hash] properties
        # Optional supported node properties
        #
        # === Supported properties - +line_number+ -> {#line_number} -
        # +character_range+ -> {#character_range}, {#range_start},
        #   {#range_end}
        # - +complete+ -> {#complete?}
        #
        # @raise ArgumentError If _children_ is not an Array or
        # _properties_
        #        is not a Hash
        def initialize(type, children = [], properties = {})
          AST.assert_is_a(Array, children, 'children')
          AST.assert_is_a(Hash, properties, 'properties')
          super(type, children, properties)
        end

        # Get the class AST node type.  @return [Symbol]
        class << self; attr_reader :ast_type end

        # Get whether this class AST node has semantics.  @return
        # [boolean]
        class << self; attr_reader :has_semantics end

        # Get the line number where this AST node originates.
        attr_reader :line_number

        # Get the character range enclosing this AST node.  It is defined
        # as the close interval containing all the characters of this
        # AST node.
        attr_accessor :character_range

        # Get/Set the complete property.
        attr_accessor :complete

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
          # no freeze...nothing I want to be able to modify properties!
          self
        end

        def updated(children = nil, properties = nil)
          new_children   = children   || @children
          new_properties = properties || {}

          if @children == new_children && properties.nil?
            self
          elsif instance_of? Node
            original_dup.send :initialize, @type, new_children, new_properties
          else # self.is_a? Node
            original_dup.send :initialize, new_children, new_properties
          end
        end

        # Concatenates `array` with `children` and returns the resulting
        # node.
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

        # Get the child at the specified _index_.
        #
        # @param [Fixnum] index the index to get
        # @return [Node, nil] the child of this node at the indicated index
        #         or nil if not present
        def child(index)
          @children[index]
        end

        # Get the child at index 0.
        # @see #child
        def first_child
          child 0
        end

        # Get the child at index 1.
        # @see #child
        def second_child
          child 1
        end

        # Get the child at index 2.
        # @see #child
        def third_child
          child 2
        end

        # Get the child at index 3.
        # @see #child
        def fourth_child
          child 3
        end

        # Get the number of children.
        #
        # @return [Fixnum] the number of children
        def num_children
          @children.size
        end

        # Get whether this node has children.
        #
        # @return [true, false]
        def children?
          !@children.empty?
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

        # Get the annotation definition's keyword.
        def keyword
          children[0]
        end

        # Get the annotation definition's domain.
        def domain
          children[1]
        end

        # Get/Set the uri property.
        attr_accessor :uri
      end

      # AST node representing the function of a BEL term.
      #
      # === Special node properties - _return_type_: {#return_type}
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
          children[0]
        end

        # Get the namespace definition's domain.
        def domain
          children[1]
        end

        # Get/Set the uri property.
        attr_accessor :uri
      end

      # AST node representing a keyword (e.g. definitions).
      class Keyword < Node
        # AST node type
        @ast_type = :keyword
        # Keywords have semantic meaning
        @has_semantics = true

        # New Keyword AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Keyword.ast_type, children, properties)
        end

        # Get the keyword's identifier.
        def identifier
          children[0]
        end
      end

      # AST node representing a domain (e.g. Url, Uri, List, Pattern).
      class Domain < Node
        # AST node type
        @ast_type = :domain
        # Domains have semantic meaning
        @has_semantics = true

        # New Domain AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Domain.ast_type, children, properties)
        end

        # Determine if this is a LIST domain.
        def list?
          children[0] && children[0].is_a?(List)
        end

        # Determine if this is a PATTERN domain.
        def pattern?
          children[0] && children[0].is_a?(Pattern)
        end

        # Determine if this is a URI domain.
        def uri?
          children[0] && children[0].is_a?(Uri)
        end

        # Determine if this is a URL domain.
        def url?
          children[0] && children[0].is_a?(Url)
        end

        # Get the domain's Url.
        def child
          children[0]
        end
      end

      # AST node representing a URL.
      class Url < Node
        # AST node type
        @ast_type = :url
        # Urls have semantic meaning
        @has_semantics = true

        # New Url AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Url.ast_type, children, properties)
        end

        # Get the url's string.
        def string
          children[0]
        end
      end

      # AST node representing a URI.
      class Uri < Node
        # AST node type
        @ast_type = :uri
        # Urls have semantic meaning
        @has_semantics = true

        # New Uri AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Uri.ast_type, children, properties)
        end

        # Get the uri's string.
        def string
          children[0]
        end
      end

      # AST node representing a Pattern.
      class Pattern < Node
        # AST node type
        @ast_type = :pattern
        # Patterns have semantic meaning
        @has_semantics = true

        # New Pattern AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Pattern.ast_type, children, properties)
        end

        # Get the pattern's string.
        def string
          children[0]
        end
      end

      # AST node representing an identifier (e.g. non-quoted value).
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

      # AST node representing a multi-valued identifier without needing quotes (e.g. greedy).
      class MultiIdentifier < Node
        # AST node type
        @ast_type = :multi_identifier
        # MultiIdentifier have no semantics
        @has_semantics = false

        # New MultiIdentifier AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(MultiIdentifier.ast_type, children, properties)
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

        def list_items
          children
        end
      end

      # AST node representing a list item.
      class ListItem < Node
        # AST node type
        @ast_type = :list_item
        # List items have semantics (content is meaningful)
        @has_semantics = true

        # New ListItem AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(ListItem.ast_type, children, properties)
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
        def parameter?
          children[0].is_a?(Parameter)
        end

        # Does the argument have a {Term} child?
        def term?
          children[0].is_a?(Term)
        end

        # Get the {Parameter} or {Term} child.
        def child
          children[0]
        end
      end

      # AST node representing a parameter.
      #
      # === Special node properties - _namespace_: {#namespace}
      #
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

        # Get/Set the namespace property.
        attr_accessor :namespace
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

        # Get the prefix for the parameter.
        def prefix
          children[0]
        end

        # Get the value for the parameter.
        def value
          children[1]
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

        # Get the string literal.
        def string_literal
          children[0]
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
          children[0]
        end

        # Get the value of what is being set.
        def value
          children[1]
        end
      end

      # AST node representing a document property (e.g. +SET DOCUMENT
      # ...+).
      class DocumentProperty < Node
        # AST node type
        @ast_type = :document_property
        # DocumentProperty has semantics (what was set?)
        @has_semantics = true

        # New DocumentProperty AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(DocumentProperty.ast_type, children, properties)
        end

        # Get what is being set.
        def name
          children[0]
        end

        # Get the value of what is being set.
        def value
          children[1]
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
          children[0]
        end

        def relationship?
          children[1] && children[1].is_a?(Relationship)
        end

        # Get the relationship of the nested statement.
        def relationship
          relationship? ? children[1] : nil
        end

        def object?
          children[2] && children[2].is_a?(Object)
        end

        # Get the object of the nested statement.
        def object
          object? ? children[2] : nil
        end

        def comment?
          children[-1] && children[-1].is_a?(Comment)
        end

        def comment
          comment? ? children[-1] : nil
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

        # Get the statement.
        def statement
          children[0]
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

        # Get the statement.
        def statement
          children[0]
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

        # Get the statement.
        def statement
          children[0]
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
        def term?
          children[0].is_a?(Term)
        end

        # Does the object have a {Statement} child?
        def statement?
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
        attr_reader :function_semantics

        # Sets the term's function semantics.
        def function_semantics=(function_semantics)
          if !function_semantics.nil? &&
             !function_semantics.is_a?(BELParser::Language::Signature)
            raise(
              ArgumentError,
              'function_semantics: expected nil or Signature')
          end
          assign_properties(function_semantics: function_semantics)
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
        #
        # @return [String, nil] what is being unset
        def name
          return nil unless children?
          return nil unless first_child.children?
          first_child.first_child
        end
      end

      # AST node representing a name.
      class Name < Node
        # AST node type
        @ast_type = :name
        # Name has semantics (name of property or annotation).
        @has_semantics = true

        # New Name AST node.
        #
        # @see Node#initialize Node class for basic properties
        def initialize(children = [], properties = {})
          super(Name.ast_type, children, properties)
        end

        def identifier
          children[0]
        end
      end

      # AST node representing a value.
      #
      # === Special node properties - _encoding_: {#encoding}
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

        # Get/Set the namespace prefix.
        attr_accessor :prefix

        # Get/Set the value's encoding.
        attr_accessor :encoding

        # Get/Set the value's namespace.
        attr_accessor :namespace

        # Get/Set the value from the purported namespace.
        attr_accessor :namespace_value
      end

      # Sexp defines a module that creates {BELParser::Parsers::AST::Node
      # AST nodes} using S-expression syntax.
      #
      # @see https://en.wikipedia.org/wiki/S-expression S-expression
      module Sexp
        def self.build(&block)
          raise ArgumentError, 'expecting block' unless block_given?

          builder = _builder_class.new
          builder.instance_eval(&block)
        end

        def self._builder_class
          Class.new do
            include Sexp
          end
        end
        private_class_method :_builder_class

        def nested_statement(*children, **props)
          NestedStatement.new(children, props)
        end

        def simple_statement(*children, **props)
          SimpleStatement.new(children, props)
        end

        def observed_term(*children, **props)
          ObservedTerm.new(children, props)
        end

        def statement(*children, **props)
          Statement.new(children, props)
        end

        def subject(*children, **props)
          Subject.new(children, props)
        end

        def object(*children, **props)
          Object.new(children, props)
        end

        def relationship(*children, **props)
          Relationship.new(children, props)
        end

        def term(*children, **props)
          Term.new(children, props)
        end

        def function(*children, **props)
          Function.new(children, props)
        end

        def argument(*children, **props)
          Argument.new(children, props)
        end

        def parameter(*children, **props)
          Parameter.new(children, props)
        end

        def prefix(*children, **props)
          Prefix.new(children, props)
        end

        def name(*children, **props)
          Name.new(children, props)
        end

        def value(*children, **props)
          Value.new(children, props)
        end

        def identifier(*children, **props)
          Identifier.new(children, props)
        end

        def multi_identifier(*children, **props)
          MultiIdentifier.new(children, props)
        end

        def string(*children, **props)
          String.new(children, props)
        end

        def list(*children, **props)
          List.new(children, props)
        end

        def list_item(*children, **props)
          ListItem.new(children, props)
        end

        def comment(*children, **props)
          Comment.new(children, props)
        end

        def comment_line(*children, **props)
          CommentLine.new(children, props)
        end

        def blank_line
          BlankLine.new([], complete: true)
        end

        def set(*children, **props)
          Set.new(children, props)
        end

        def unset(*children)
          Unset.new(children)
        end

        def document_property(*children, **props)
          DocumentProperty.new(children, props)
        end

        def annotation_definition(*children, **props)
          AnnotationDefinition.new(children, props)
        end

        def namespace_definition(*children, **props)
          NamespaceDefinition.new(children, props)
        end

        def keyword(*children, **props)
          Keyword.new(children, props)
        end

        def domain(*children, **props)
          Domain.new(children, props)
        end

        def url(*children, **props)
          Url.new(children, props)
        end

        def uri(*children, **props)
          Uri.new(children, props)
        end

        def pattern(*children, **props)
          Pattern.new(children, props)
        end

        def unset(*children, **props)
          Unset.new(children, props)
        end
      end
    end
  end
end
