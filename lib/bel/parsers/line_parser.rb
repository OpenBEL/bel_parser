require_relative 'identifier'
require_relative 'define_annotation'
require_relative 'define_namespace'
require_relative 'set'
require_relative 'unset'
require_relative 'bel_parameter'
require_relative 'bel_term'

module LINE

  BEL_PARSERS = [
    Identifier,
    SET, UNSET,
    DEFINE_ANNOTATION, DEFINE_NAMESPACE,
    BelParameter, BelTerm
  ]

  def self.parse(io)
    # single line transform
    line_enum = io.each_line.lazy.map { |line|
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
            "parser: #{parser.class}, line: #{line}: #{obj}"
          }
        end
      rescue StopIteration
        return
      end
    end
  end

  def self.normalize_line_terminators(string)
    string.strip + "\n"
  end
end

if __FILE__ == $0
  LINE.parse($stdin)
end
