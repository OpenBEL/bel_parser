require_relative '../parsers/common'
require_relative '../parsers/bel_expression'
require_relative '../parsers/bel_script'
require_relative 'mixin/line_mapping'
require_relative 'mixin/expansion'

module BEL
  module Script
    # Parser for BEL Script.
    class Parser
      include BEL::Script::LineMapping
      include BEL::Script::Expansion
      include BEL::Parsers::Common
      include BEL::Parsers::BELExpression
      include BEL::Parsers::BELScript

      BEL_PARSERS = [
        BEL::Parsers::BELExpression::StatementSimple,
        BEL::Parsers::BELExpression::StatementObservedTerm,
        BEL::Parsers::BELExpression::StatementNested,
        BEL::Parsers::BELScript::DefineAnnotation,
        BEL::Parsers::BELScript::DefineNamespace,
        BEL::Parsers::BELScript::Set,
        BEL::Parsers::BELScript::Unset,
        BEL::Parsers::BELExpression::Term,
        BEL::Parsers::BELExpression::Parameter,
        BEL::Parsers::BELExpression::Relationship,
        BEL::Parsers::BELExpression::Comment,
        BEL::Parsers::Common::Identifier,
        BEL::Parsers::Common::String,
        BEL::Parsers::Common::List,
        BEL::Parsers::Common::BlankLine,
        BEL::Parsers::Common::CommentLine
      ].freeze

      def parse(io)
        line_enum = map_lines(io.each_line.lazy)

        loop do
          begin
            parse_line(expand(line_enum))
          rescue StopIteration
            return
          end
        end
      end

      private

      def parse_line(line)
        BEL_PARSERS.each do |parser|
          parser.parse(line) do |obj|
            puts "parser:   #{parser.inspect}"
            puts "  line:   #{line.strip}"
            puts "  object: \n#{obj.to_s(5)}\n\n"
          end
        end
      end
    end
  end
end

BEL::Script::Parser.new.parse($stdin) if __FILE__ == $PROGRAM_NAME
