require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/common'
require_relative '../parsers/expression'
require_relative '../parsers/bel_script'

module BELParser
  module Script
    # Parser for BEL Script.
    class Parser
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression
      include BELParser::Parsers::BELScript

      TYPES = [
        :simple_statement,
        :observed_term,
        :nested_statement,
        :annotation_definition,
        :namespace_definition,
        :set,
        :document_property,
        :unset,
        :blank_line,
        :comment_line
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
  BELParser::Script::Parser.new.each($stdin) do |(line_number, line, results)|
    puts "#{line_number}: #{line}"
    results.each do |ast|
      puts ast.to_s(1)
    end
  end
end
