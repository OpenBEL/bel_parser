# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start {
    @incomplete[:ident] = []
  }

  action append {
    @incomplete[:ident] << fc
  }

  action end {
    ident = @incomplete.delete(:ident)
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  }

  action yield {
    yield @buffers[:ident]
  }

  action ast_end {
    unless @buffers.key?(:ident)
      ident = @incomplete.delete(:ident) || []
      completed = !ident.empty?
      ast_node = identifier(utf8_string(ident), complete: completed)
      @buffers[:ident] = ast_node
    end
  }

  ID_CHARS = [a-zA-Z0-9_]+;
  IDENT = ID_CHARS >start $append %end;
  AST_NODE := IDENT? NL? %/ast_end %yield;

}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
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
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST::Sexp

          def initialize(content)
            @content = content
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers    = {}
            @incomplete = {}
            data        = @content.unpack('C*')
            p           = 0
            pe          = data.length
            eof         = data.length

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
    BELParser::Parsers::Common::Identifier.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
