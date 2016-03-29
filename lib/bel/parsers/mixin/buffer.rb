module BEL
  module Parsers
    # Buffer module.
    module Buffer
      def utf8_string(buffer)
        buffer.pack('C*').force_encoding('utf-8')
      end
    end
  end
end
