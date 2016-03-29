require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/common'
require_relative '../parsers/bel_expression'
require_relative '../mixin/line_mapping'

module BEL
  module Expression
    # Parser for BEL Expression.
    class Parser
      include BEL::Parsers::Common
      include BEL::Parsers::BELExpression

      FILTER = BEL::ASTFilter.new(
        :statement_simple,
        :observed_term,
        :nested_statement
      )

      def each(io)
        if block_given?
          filtered_ast = FILTER.each(BEL::ASTGenerator.new.each(io))
          filtered_ast.each do |results|
            yield results
          end
        else
          enum_for(:each, io)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BEL::Expression::Parser.new.each($stdin) do |line_result|
    line_number, line, ast_results = line_result
    puts "#{line_number}: #{line}"
    ast_results.each do |ast|
      puts ast.to_s(1)
    end
  end
end
