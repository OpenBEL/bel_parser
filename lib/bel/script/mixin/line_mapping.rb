module BEL
  module Script
    # LineMapping is a mixin for mapping lines in BEL Script.
    module LineMapping
      def normalize_line_terminator(line)
        return nil unless line
        line.sub(/[\r\n]+$/, '') + "\n"
      end

      def map_lines(line_enumerator)
        line_enumerator
          .map { |line| normalize_line_terminator(line) }
      end
    end
  end
end
