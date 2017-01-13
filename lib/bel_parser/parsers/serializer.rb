require 'bel_parser/vendor/ast'

module BELParser
  module Parsers

    def serialize(ast_node)
      serializer = Serializer.new
      serializer.process(ast_node)
      serializer.string
    end

    # Defines an {AST::Processor::Mixin AST processor} that serializes
    # all {AST::Node AST node} to a string.
    class Serializer
      include ::AST::Processor::Mixin

      attr_reader :string

      def initialize
        @string = ''
      end

      def on_annotation_definition(annotation_definition_node)
        @string << 'DEFINE ANNOTATION '
        process(annotation_definition_node.keyword)
        @string << ' AS '
        process(annotation_definition_node.domain)
      end

      def on_argument(argument_node)
        @string << ', ' if @separate_by_comma

        process(argument_node.child)
        @separate_by_comma = true
      end

      def on_blank_line(blank_line_node)
        @string << ''
      end

      def on_comment_line(comment_line_node)
        @string << %(##{comment_line_node.children[0]})
      end

      def on_document_property(document_property_node)
       name  = document_property_node.name.identifier.string_literal
       value = document_property_node.value.children[0].string_literal
       @string << %(SET DOCUMENT #{name} = #{value})
      end

      def on_domain(domain_node)
        process(domain_node.child)
      end

      def on_function(function_node)
        if function_node.identifier
          @string << function_node.identifier.string_literal
        end
      end

      def on_identifier(identifier_node)
        @string << identifier_node.string_literal
      end

      def on_keyword(keyword_node)
        process(keyword_node.identifier)
      end

      def on_list(list_node)
        items = list_node.list_items
        if !items || items.empty?
          @string << '{}'
        else
          @string << '{ '
          process(items[0])
          items[1..-1].each do |rest_item|
            @string << ', '
            process(rest_item)
          end
          @string << ' }'
        end
      end

      def on_list_item(list_item_node)
        process(list_item_node.children[0])
      end

      def on_name(name_node)
        process(name_node.identifier)
      end

      def on_namespace_definition(namespace_definition_node)
        @string << 'DEFINE NAMESPACE '
        process(namespace_definition_node.keyword)
        @string << ' AS '
        process(namespace_definition_node.domain)
      end

      def on_nested_statement(nested_statement_node)
        process(nested_statement_node.statement)
      end

      def on_object(object_node)
        process(object_node.child)
      end

      def on_observed_term(observed_term_node)
        process(observed_term_node.statement)
      end

      def on_parameter(param_node)
        process(param_node.prefix)
        process(param_node.value)
      end

      def on_pattern(pattern_node)
        @string << 'PATTERN '
        process(pattern_node.string)
      end

      def on_prefix(prefix_node)
        prefix = prefix_node.identifier
        @string << "#{prefix.string_literal}:" unless prefix.nil?
      end

      def on_relationship(relationship_node)
        @string << " #{relationship_node.string_literal} "
      end

      def on_set(set_node)
        @string << 'SET '
        process(set_node.name)
        @string << ' = '
        process(set_node.value)
      end

      def on_simple_statement(simple_statement_node)
        process(simple_statement_node.statement)
      end

      def on_statement(statement_node)
        process(statement_node.subject)

        return unless statement_node.relationship?
        process(statement_node.relationship)

        return unless statement_node.object?
        object_node = statement_node.object
        if object_node.statement?
          @string << '('
          process(object_node)
          @string << ')'
        else
          process(object_node)
        end
      end

      def on_string(string_node)
        @string << %("#{string_node.string_value}")
      end

      def on_subject(subject_node)
        process(subject_node.term)
      end

      # Called when visiting nodes of type +term+.
      def on_term(term_node)
        @separate_by_comma = false
        process(term_node.function)
        @string << '('
        term_node.arguments.each { |arg| process(arg) }
        @string << ')'
      end

      def on_unset(unset_node)
        @string << 'UNSET '
        process(unset_node.name)
      end

      def on_url(url_node)
        @string << 'URL '
        process(url_node.string)
      end

      def on_value(value_node)
        process(value_node.children[0])
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  $LOAD_PATH.unshift(
    File.join(
      File.expand_path(File.dirname(__FILE__)),
      '..',
      '..',
      '..',
      'lib'))
  require 'bel_parser'

  types      = ARGV.map(&:to_sym)
  generator  = BELParser::ASTGenerator.new($stdin)
  BELParser::ASTFilter.new(generator, *types).each do |(_, _, results)|
    serializer = BELParser::Parsers::Serializer.new
    serializer.process(results.first)
    puts serializer.string
  end
end
