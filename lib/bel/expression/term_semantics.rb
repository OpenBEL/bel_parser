require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/expression'
require_relative '../language/version2'
require_relative '../language/semantics/analyzer'

module BEL
  module Expression
    # Parser for BEL Expression.
    class TermSemanticsParser
      include BEL::Parsers::Common
      include BEL::Parsers::Expression

      FILTER = BEL::ASTFilter.new(:term)

      def each(io)
        if block_given?
          v2           = BEL::Language::Version2::Specification.new
          filtered_ast = FILTER.each(BEL::ASTGenerator.new.each(io))
          filtered_ast.each do |results|
            term = results.last.first
            yield BEL::Language::Semantics.check_term(term, v2)
          end
        else
          enum_for(:each, io)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BEL::Expression::TermSemanticsParser.new.each($stdin) do |semantics|
    puts semantics.join(", ")
  end
end
