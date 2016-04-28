require_relative 'syntax'
require_relative 'semantics'
require_relative 'apply_namespace_encoding'

module BELParser
  module Language
    # ExpressionValidator validates the syntax and semantics of BEL expressions
    # when supplied a {BELParser::Language::Specification} and Hash of
    # namespaces.
    class ExpressionValidator
      def initialize(spec, namespaces, resource_reader)
        @spec                = spec
        @namespaces          = namespaces
        @syntax_functions    = Syntax.syntax_functions
        @semantics_functions = Semantics.semantics_functions
        @transform           =
          ApplyNamespaceEncoding.new(@spec, @namespaces, resource_reader)
      end

      # Validate the syntax and semantics of
      # {BELParser::Parsers::AST::Node expression_node}.
      #
      # @param  [BELParser::Parsers::AST::Node] expression_node to validate
      # @return [BELParser::Language::Syntax::SyntaxResult] syntax results
      def validate(expression_node)
        @transform.process(expression_node)
        results = syntax(expression_node)
        results << Syntax::Valid.new(expression_node, @spec) if results.empty?
        results.concat(semantics(expression_node))
        results
      end

      private

      def syntax(expression_node)
        expression_node.traverse.flat_map do |node|
          @syntax_functions.map { |func| func.map(node, @spec, @namespaces) }
        end.compact
      end

      def semantics(expression_node)
        semantic_results =
          expression_node.traverse.flat_map do |node|
            @semantics_functions.flat_map { |func| func.map(node, @spec, @namespaces) }
          end.compact
        sigmap_results, other_results =
          semantic_results.partition do |result|
            result.is_a?(Semantics::SignatureMappingSuccess) ||
              result.is_a?(Semantics::SignatureMappingWarning)
          end
        expression_node
          .traverse
          .select do |node|
            node.is_a?(BELParser::Parsers::AST::Term)
          end
          .map do |term_node|
            sigmap_term =
              sigmap_results
              .select { |res| res.expression_node == term_node }
            unless sigmap_term.any?(&:success?)
              other_results.concat(sigmap_term)
            end
          end
        other_results
      end
    end
  end
end
