# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action string_start {
    @incomplete[:string] = []
    @opened = true
  }

  action string_more {
    @incomplete[:string] << fc
  }

  action string_finish {
    @closed = true
  }

  action string_end {
    string = @incomplete.delete(:string) || []
    completed = @opened && @closed
    ast_node = string(utf8_string(string), complete: completed)
    @buffers[:string] = ast_node
  }

  action string_yield {
    yield @buffers[:string]
  }

  NOT_DQ_ESC = [^"\\];
  start_string = DQ %string_start;
  more_string = ( NOT_DQ_ESC | ESCAPED )* $string_more;
  end_string = DQ %string_finish;
  str_string = start_string more_string end_string @string_end;
  str_ast := (start_string? |
              start_string more_string |
              start_string more_string end_string) NL? @string_end @string_yield;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module Common
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
            @opened     = false
            @closed     = false
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
    BELParser::Parsers::Common::String.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
