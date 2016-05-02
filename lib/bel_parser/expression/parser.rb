require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/common'
require_relative '../parsers/expression'
require_relative '../mixin/line_mapping'

module BELParser
  module Expression
    # Parser for BEL Expression.
    class Parser
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression

      TYPES = [
        :parameter,
        :term,
        :simple_statement,
        :observed_term,
        :nested_statement
      ]

      def each(io)
        if block_given?
          filter = BELParser::ASTFilter.new(
            BELParser::ASTGenerator.new(io),
            *TYPES)
          filter.each do |results|
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
  BELParser::Expression::Parser.new.each($stdin) do |(line_number, line, res)|
    puts "#{line_number}: #{line}"
    res.each do |ast|
      puts ast.to_s(1)
    end
  end
end
