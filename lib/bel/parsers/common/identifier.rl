# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_ident {
    @buffers[:ident] = []
  }

  action append_ident {
    (@buffers[:ident] ||= []) << fc
  }

  action finish_ident {
    @buffers[:ident] = identifier(utf8_string(@buffers[:ident]))
  }

  action yield_complete_ident {
    yield @buffers[:ident]
  }

  action error_ident {
    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = identifier(utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  }

  action yield_error_ident {
    @buffers[:ident] ||= []
    yield @buffers[:ident]
  }

  IDENT = [a-zA-Z0-9_]+ >start_ident $append_ident %finish_ident $err(error_ident);

  ident := IDENT $err(yield_error_ident) %yield_complete_ident NL;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module Common
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
          include BEL::Parsers::Buffer
          include BEL::Parsers::AST::Sexp

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
            eof = data.length

      # begin: ragel        
            %% write init;
            %% write exec;
      # end: ragel        
          end
        end
      end
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::Common::Identifier.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
