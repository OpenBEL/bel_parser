# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_string {
    @buffers[:string] = []
  }

  action append_string {
    @buffers[:string] << fc
  }

  action finish_string {
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  }

  action yield_string {
    yield @buffers[:string]
  }

  STRING  = ('"' ('\\\"' | [^"])** '"') >start_string $append_string %finish_string;
  string := STRING %yield_string NL;
}%%
=end
# end: ragel

require          'ast'
require_relative 'mixin/buffer'
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
        include BEL::Parser::Buffer

        def initialize(content)
          @content = content
    # begin: ragel        
          %% write data;
    # end: ragel        
        end

        def each
          @buffers = {}
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
    BEL::Parser::String.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
