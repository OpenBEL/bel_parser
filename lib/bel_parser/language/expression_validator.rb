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

      def validate(term_ast)
        results = syntax(term_ast)
        if results.empty?
          results << Syntax::Valid.new(term_ast, @spec)
          results.concat(semantics(term_ast))
        end
        results
      end

      private

      def syntax(term_ast)
        syntax_results = syntax_term(term_ast).compact
      end

      def semantics(term_ast)
        semantics_term(term_ast)
      end

      def syntax_term(term_ast)
        syntax_results = @syntax_functions.flat_map do |syntax_func|
          syntax_func.map(term_ast, @spec, @namespaces)
        end

        term_ast.arguments
          .select(&:has_term?)
          .map(&:child)
          .each do |child_term|
            syntax_results.concat(syntax_term(child_term))
          end
        syntax_results
      end

      def semantics_term(term_ast)
        semantics_results = @semantics_functions.flat_map do |semantics_func|
          semantics_func.map(term_ast, @spec, @namespaces)
        end

        term_ast.arguments
          .select(&:has_term?)
          .map(&:child)
          .each do |child_term|
            semantics_results.concat(semantics_term(child_term))
          end
        semantics_results
      end
    end
  end
end
