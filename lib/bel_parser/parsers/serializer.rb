require 'bel_parser/vendor/ast'

module BELParser
  module Parsers

    def serialize(ast_node)
      serializer = ExpressionSerializer.new
      serializer.process(ast_node)
      serializer.string
    end

    # Defines an {AST::Processor::Mixin AST processor} that serializes
    # an {AST::Node AST node} to a string.
    class ExpressionSerializer
      include ::AST::Processor::Mixin

      attr_reader :string

      def initialize
        @separate_by_comma = false
        @string            = ''
      end

      def on_simple_statement(simple_statement_node)
        process(simple_statement_node.statement)
      end

      def on_nested_statement(nested_statement_node)
        process(nested_statement_node.statement)
      end

      def on_observed_term(observed_term_node)
        process(observed_term_node.statement)
      end

      def on_statement(statement_node)
        process(statement_node.subject)
        return if statement_node.object.child.nil?

        process(statement_node.relationship)
        object_node = statement_node.object
        if object_node.statement?
          @string << '('
          process(object_node)
          @string << ')'
        else
          process(object_node)
        end
      end

      def on_subject(subject_node)
        process(subject_node.term)
      end

      def on_object(object_node)
        process(object_node.child)
      end

      def on_relationship(relationship_node)
        @string << " #{relationship_node.string_literal} "
      end

      # Called when visiting nodes of type +term+.
      def on_term(term_node)
        @separate_by_comma = false
        process(term_node.function)
        @string << '('
        term_node.arguments.each { |arg| process(arg) }
        @string << ')'
      end

      # Called when visiting nodes of type +argument+.
      def on_argument(argument_node)
        @string << ', ' if @separate_by_comma

        process(argument_node.child)
        @separate_by_comma = true
      end

      # Called when visiting nodes of type +function+.
      def on_function(function_node)
        @string << function_node.identifier.string_literal
      end

      # Called when visiting nodes of type +parameter+.
      def on_parameter(param_node)
        process(param_node.prefix)
        process(param_node.value)
      end

      # Called when visiting nodes of type +prefix+.
      def on_prefix(prefix_node)
        prefix = prefix_node.identifier
        @string << "#{prefix.string_literal}:" unless prefix.nil?
      end

      # Called when visiting nodes of type +value+.
      def on_value(value_node)
        literal = value_node.children[0].string_literal
        @string << literal
      end
    end
  end
end
