require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/expression'
require_relative '../language/version2_0'
require_relative '../language/semantics/analyzer'

module BELParser
  module Expression
    # Parser for BEL Expression.
    class TermSemanticsParser
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression

      FILTER = BELParser::ASTFilter.new(:term)

      def each(io)
        if block_given?
          v2           = BELParser::Language::Version2_0::Specification.new
          filtered_ast = FILTER.each(BELParser::ASTGenerator.new.each(io))
          filtered_ast.each do |results|
            term = results.last.first
            yield BELParser::Language::Semantics.check_term(term, v2)
          end
        else
          enum_for(:each, io)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BELParser::Expression::TermSemanticsParser.new.each($stdin) do |semantics|
    puts semantics.join(", ")
  end
end
