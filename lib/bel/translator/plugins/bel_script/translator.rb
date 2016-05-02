# Requires the "bel" gem.
# This is for the BelScript translator intended to be plugged into bel.rb.
require 'bel/translator'
require_relative 'reader'
require_relative 'writer'

module BEL::Translator::Plugins
  module BelScript
    # BelScriptTranslator defines a {BEL::Translator} that can read/write
    # BEL Script using the Nanopub model.
    class BelScriptTranslator
      include ::BEL::Translator

      def read(data, options = {})
        Reader.new(data)
      end

      def write(objects, writer = StringIO.new, options = {})
        if block_given?
          Writer.new(objects, options).each { |bel_part|
            yield bel_part
          }
        else
          if writer
            Writer.new(objects, options).each { |bel_part|
              writer << "#{bel_part}"
              writer.flush
            }
            writer
          else
            Writer.new(objects, options)
          end
        end
      end
    end
  end
end
