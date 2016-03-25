module BEL
  module Script
    # Expansion is a mixin for line expansions for BEL Script.
    module Expansion
      LINE_CONTINUATOR = "\\\n".freeze

      def expand_line_continuator(line, line_enumerator)
        while line.end_with?(LINE_CONTINUATOR)
          line.chomp!(LINE_CONTINUATOR)
          line += line_enumerator.next
        end
        line
      end

      def expand(line_enumerator)
        line = line_enumerator.next
        expand_line_continuator(line, line_enumerator)
      end
    end
  end
end
