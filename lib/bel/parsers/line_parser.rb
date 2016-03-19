require_relative 'identifier'
require_relative 'string'
require_relative 'parameter'
require_relative 'term'
require_relative 'relationship'
require_relative 'comment'
require_relative 'statement_observed_term'
require_relative 'statement_simple'
require_relative 'statement_nested'
require_relative 'define_annotation'
require_relative 'define_namespace'
require_relative 'set'
require_relative 'unset'

module LINE

  BEL_PARSERS = [
    Identifier,
    BEL::Parser::String,
    Parameter,
    Term,
    Relationship,
    Comment,
    StatementObservedTerm,
    StatementSimple,
    StatementNested,
    DEFINE_ANNOTATION,
    DEFINE_NAMESPACE,
    SET,
    UNSET,
  ]

  def self.parse(io)
    # single line transform
    line_enum = io.each_line.lazy.
      map { |line|
        LINE.map_empty_line(line)
      }.
      map { |line|
        LINE.map_comment_line(line)
      }.
      map { |line|
        LINE.normalize_line_terminators(line)
      }.
      reject { |line|
        !line
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
            puts "parser: #{parser.inspect}, line: #{line.strip}, object: #{obj.inspect}"
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
