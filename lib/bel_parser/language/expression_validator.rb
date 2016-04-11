require_relative 'syntax'
require_relative 'semantics'

module BELParser
  module Language
    class ExpressionValidator
      def initialize(spec, namespaces)
        @spec                = spec
        @namespaces          = namespaces
        @syntax_functions    = Syntax.syntax_functions
        @semantics_functions = Semantics.semantics_functions
      end

      def validate(expression_node)
        results = syntax(expression_node)
        if results.empty?
          results << Syntax::Valid.new(expression_node, @spec)
          results.concat(semantics(expression_node))
        end
        results
      end

      private

      def syntax(expression_node)
        expression_node.traverse.flat_map do |node|
          @syntax_functions.map { |func| func.map(node, @spec, @namespaces) }
        end.compact
      end

      def semantics(expression_node)
        expression_node.traverse.flat_map do |node|
          @semantics_functions.map { |func| func.map(node, @spec, @namespaces) }
        end.compact
      end
    end
  end
end
