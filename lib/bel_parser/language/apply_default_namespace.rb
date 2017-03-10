require 'bel_parser/language/term_transformation'

module BELParser
  module Language
    # ApplyDefaultNamespace sets the DEFAULT namespace for values when one is
    # not provided. Applies to all namespace values within a BEL 2.0 expression.
    class ApplyDefaultNamespace
      include BELParser::Language::TermTransformation

      def initialize(language_spec, namespace_hash, uri_reader, url_reader)
        @language_spec  = language_spec
        @namespace_hash = namespace_hash
        @uri_reader     = uri_reader
        @url_reader     = url_reader
      end

      def on_term(term_node)
        term_node.updated([
            term_node.function,
            term_node.arguments.map! {|arg| argument(process(arg.child))}
        ].flatten)
      end

      def on_argument(argument_node)
        process(argument_node.child)
      end

      def on_parameter(parameter_node)
        parameter_node.updated([
          process(parameter_node.prefix),
          parameter_node.value
        ].flatten)
      end

      def on_prefix(prefix_node)
        # guard: return prefix AST node if namespace already supplied
        return prefix_node if prefix_node.identifier

        # return "DEFAULT" namespace
        prefix(
          identifier(
            'DEFAULT',
            :complete => true),
          :complete => true)
      end
    end
  end
end
