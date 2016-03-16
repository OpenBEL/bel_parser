# begin: ragel
%%{
  machine string;

  STRING = ('"' ('\\\"' | [^"])** '"');
  NL     = '\n';

  action start    { buffer = []  }
  action append   { buffer << fc }
  action finish {
    yield s(:string,
            buffer.pack('C*').force_encoding('utf-8'))
    # TODO: Move UTF8 packing into a method.
  }

  string :=
    STRING >start $append %finish NL;
}%%
# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module BEL
  module Parser
    module String

      class << self

        MAX_LENGTH = 1024 * 128 # 128K

        def parse(content)
          return nil unless content

          Parser.new(content).each do |obj|
            yield obj
          end
        end
      end

      private

      class Parser
        include Enumerable
        include AST::Sexp

        def initialize(content)
          @content = content
    # begin: ragel        
          %% write data;
    # end: ragel        
        end

        def each
          buffer = []
          data = @content.unpack('C*')
          p   = 0
          pe  = data.length

    # begin: ragel        
          %% write init;
          %% write exec;
    # end: ragel        
        end
      end
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::String.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
