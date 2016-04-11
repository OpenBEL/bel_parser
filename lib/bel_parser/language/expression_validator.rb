require_relative 'syntax'
require_relative 'semantics'

module BELParser
  module Language
    class ExpressionValidator
      def initialize(spec, namespaces)
        @spec             = spec
        @namespaces       = namespaces
        @syntax_functions = Syntax.syntax_functions
      end

      def validate(expression_ast)
        syntax_problems = syntax(expression_ast)
        return syntax_problems unless syntax_problems.empty?
        [Syntax::Valid.new(expression_ast, @spec)] + semantics(expression_ast)
      end

      private

      def syntax(expression_ast)
        @syntax_functions.flat_map do |syntax_function|
          syntax_function.map(expression_ast, @spec, @namespaces)
        end
      end

      def semantics(expression_ast)
        BELParser::Language::Semantics.check_term(expression_ast, @spec)
      end
    end
  end
end
