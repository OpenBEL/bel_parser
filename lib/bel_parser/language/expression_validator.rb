module BELParser
  module Language
    class ExpressionValidator
      def initialize(spec)
        @spec = spec
      end

      def validate(expression_ast)
        node_errors = check_syntax(expression_ast)
        if !node_errors.empty?
          node_errors.each do |node_error|
            puts "Syntax error (#{node_error.syntax_errors}) with #{node_error.type}."
          end
        else
          check_semantics(expression_ast)
        end
      end

      private

      def check_syntax(ast)
        # Clear syntax checks.
        ast.traverse.each do |node|
          node.syntax_errors.clear
        end

        # Run syntax checks, sets syntax_errors on nodes.
        @spec.syntax.each do |syntax|
          syntax.match(ast)
        end

        ast.traverse.select do |node|
          !node.syntax_errors.empty?
        end
      end

      def check_semantics(ast)
        BELParser::Language::Semantics.check_term(ast, @spec)
      end
    end
  end
end
