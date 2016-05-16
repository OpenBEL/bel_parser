module BELParser
  module Parsers
    # Buffer module.
    module Buffer
      def utf8_string(buffer)
        buffer.pack('C*').force_encoding('utf-8')
      end

      def ord_to_str(enumerable)
      	(enumerable.map { |x| x.chr }).join()
      end
    end
  end
end
