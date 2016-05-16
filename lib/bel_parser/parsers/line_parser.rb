require_relative 'common'
require_relative 'expression'
require_relative 'bel_script'

# Top-level LINE module.
module LINE
  include BELParser::Parsers::Common
  include BELParser::Parsers::Expression
  include BELParser::Parsers::BELScript

  BEL_PARSERS = [
    BELParser::Parsers::Common::BlankLine,
    BELParser::Parsers::Common::CommentLine,
    BELParser::Parsers::Common::Identifier,
    BELParser::Parsers::Common::String,
    BELParser::Parsers::Common::List,
    BELParser::Parsers::Common::Function,
    BELParser::Parsers::Expression::Parameter,
    BELParser::Parsers::Expression::Term,
    BELParser::Parsers::Expression::Relationship,
    BELParser::Parsers::Expression::Comment,
    BELParser::Parsers::Expression::ObservedTerm,
    BELParser::Parsers::Expression::SimpleStatement,
    BELParser::Parsers::Expression::NestedStatement,
    BELParser::Parsers::BELScript::DefineAnnotation,
    BELParser::Parsers::BELScript::DefineNamespace,
    BELParser::Parsers::BELScript::Set,
    BELParser::Parsers::BELScript::Unset
  ].freeze

  # rubocop:disable MethodLength, AbcSize
  def self.parse(io)
    # single line transform
    line_enum = io
                .each_line
                .lazy
                .map { |line| LINE.normalize_line_terminators(line) }

    # multi-line transform
    loop do
      begin
        line = line_enum.next

        while line.end_with?("\\\n")
          line.chomp!("\\\n")
          line += line_enum.next
        end

        BEL_PARSERS.each do |parser|
          # rubocop:disable BlockDelimiters
          parser.parse(line) { |obj|
            puts "parser: #{parser.inspect},"\
                 "line: #{line.strip},"\
                 "object: \n#{obj.inspect}"
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

LINE.parse($stdin) if FILE == $PROGRAM_NAME
