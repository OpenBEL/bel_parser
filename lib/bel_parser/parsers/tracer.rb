module BELParser
  module Parsers
    # Tracer provides a facility to trace ragel finite state machines.
    # Tracing is enabled with using +$DEBUG+ or the environment variable
    # +BELPARSER_PARSER_TRACE+
    module Tracer
      # Defines trace on require based on environment.
      if $DEBUG || (ENV['BELPARSER_PARSER_TRACE'] =~ /^(1|yes|on|true)$/)
        def trace(msg)
          $stderr.puts msg
        end
      else
        def trace(_)
          # no-operation
        end
      end
    end
  end
end
