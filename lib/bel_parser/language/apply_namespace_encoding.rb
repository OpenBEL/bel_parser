require 'bel_parser/quoting'

module BELParser
  module Language
    # ApplyNamespaceEncoding applies _namespace_ and _encoding_ properties to
    # {BELParser::Parsers::AST::Parameter} child nodes.
    class ApplyNamespaceEncoding
      include AST::Processor::Mixin
      include BELParser::Quoting

      def initialize(language_spec, identifier_hash, resource_reader)
        @language_spec   = language_spec
        @identifier_hash = identifier_hash
        @resource_reader = resource_reader
      end

      def on_observed_term(observed_term_node)
        process(observed_term_node.statement)
      end

      def on_simple_statement(simple_statement_node)
        process(simple_statement_node.statement)
      end

      def on_nested_statement(nested_statement_node)
        process(nested_statement_node.statement)
      end

      def on_statement(statement_node)
        process(statement_node.subject)
        process(statement_node.object) if statement_node.object?
      end

      def on_subject(subject_node)
        process(subject_node.term)
      end

      def on_object(object_node)
        process(object_node.child)
      end

      # Called when visiting nodes of type +term+.
      def on_term(term_node)
        term_node.arguments.each do |argument_node|
          process(argument_node)
        end
      end

      def on_argument(argument_node)
        process(argument_node.child)
      end

      def on_parameter(parameter_node)
        @resolved_dataset = nil
        @prefix           = nil
        process(parameter_node.prefix)
        process(parameter_node.value)
      end

      def on_prefix(prefix_node)
        return prefix_node unless prefix_node.identifier

        @prefix    = prefix_node.identifier.string_literal
        identifier = @identifier_hash[@prefix].identifier
        return prefix_node unless identifier

        dataset               = @resource_reader.retrieve_resource(identifier)
        @resolved_dataset     = dataset
        prefix_node.namespace = dataset

        prefix_node
      end

      def on_value(value_node)
        return value_node unless @resolved_dataset
        value_node.namespace = @resolved_dataset
        identifier           = @resolved_dataset.identifier
        value_literal        = unquote(value_node.children[0].string_literal)

        value =
          @resource_reader
          .retrieve_value_from_resource(identifier, value_literal)

        value_node.prefix = @prefix
        if value
          value_node.encoding =
            value
            .encodings
            .map(&@language_spec.method(:value_encoding))
          value_node.namespace_value = value
        else
          value_node.encoding        = nil
          value_node.namespace_value = nil
        end
        value_node
      end
    end
  end
end
