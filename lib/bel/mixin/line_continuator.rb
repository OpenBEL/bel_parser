module BEL
  # LineContinuator is a mixin for line expansions for BEL Script.
  module LineContinuator
    LINE_CONTINUATOR = "\\\n".freeze

    def expand_line_continuator(line_enumerator)
      line = line_enumerator.next
      while line.end_with?(LINE_CONTINUATOR)
        line.chomp!(LINE_CONTINUATOR)
        line += line_enumerator.next
      end
      line
    end
  end
end
