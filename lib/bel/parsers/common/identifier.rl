# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_ident {
    @buffers[:ident] = []
  }

  action append_ident {
    @buffers[:ident] << fc
  }

  action finish_ident {
    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  }

  action yield_ident {
    yield @buffers[:ident]
  }

  IDENT = [a-zA-Z0-9_]+ >start_ident $append_ident %finish_ident;

  ident := IDENT %yield_ident NL;
}%%
=end
# end: ragel

require          'ast'
require_relative 'mixin/buffer'
require_relative 'nonblocking_io_wrapper'

module Identifier

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

if __FILE__ == $0
  $stdin.each_line do |line|
    Identifier.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
