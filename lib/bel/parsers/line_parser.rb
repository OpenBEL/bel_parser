require_relative 'common'
require_relative 'bel_expression'
require_relative 'bel_script'

module LINE

  include BEL::Parsers::Common
  include BEL::Parsers::BELExpression
  include BEL::Parsers::BELScript

  BEL_PARSERS = [
    BEL::Parsers::Common::BlankLine,
    BEL::Parsers::Common::CommentLine,
    BEL::Parsers::Common::Identifier,
    BEL::Parsers::Common::String,
    BEL::Parsers::Common::List,
    BEL::Parsers::BELExpression::Parameter,
    BEL::Parsers::BELExpression::Term,
    BEL::Parsers::BELExpression::Relationship,
    BEL::Parsers::BELExpression::Comment,
    BEL::Parsers::BELExpression::StatementObservedTerm,
    BEL::Parsers::BELExpression::StatementSimple,
    BEL::Parsers::BELExpression::StatementNested,
    BEL::Parsers::BELScript::DefineAnnotation,
    BEL::Parsers::BELScript::DefineNamespace,
    BEL::Parsers::BELScript::Set,
    BEL::Parsers::BELScript::Unset,
  ]

  def self.parse(io)
    # single line transform
    line_enum = io.each_line.lazy.
      map { |line|
        LINE.normalize_line_terminators(line)
      }

    # multi-line transform
    while true
      begin
        line = line_enum.next

        while line.end_with?("\\\n")
          line.chomp!("\\\n")
          line += line_enum.next
        end

        BEL_PARSERS.each do |parser|
          parser.parse(line) { |obj|
            puts "parser: #{parser.inspect}, line: #{line.strip}, object: \n#{obj.inspect}"
          }
        end
      rescue StopIteration
        return
      end
    end
  end

  def self.normalize_line_terminators(string)
    return nil unless string
    string.strip + "\n"
  end

  def self.map_empty_line(string)
    if LINE.match_empty_line(string)
      nil
    else
      string
    end
  end

  def self.map_comment_line(string)
    if LINE.match_comment_line(string)
      nil
    else
      string
    end
  end

  def self.match_empty_line(string)
    string =~ /^\s*$/
  end

  def self.match_comment_line(string)
    string =~ /^\s*#/
  end
end

if __FILE__ == $0
  LINE.parse($stdin)
end
