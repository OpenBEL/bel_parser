# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action string_end {
    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  }

  action yield_string {
    $stderr.puts 'STRING yield_string'
    yield @buffers[:string]
  }

  action start_string {
    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  }

  action stop_string {
    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  }

  action eof_string {
    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  }

  action eof_main {
    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  }

  single =
    WS* SQ (NOT_SQESC | ESCAPED)*
    >start_string
    $eof(eof_string)
    %stop_string
    %string_end
    SQ
    ;

  double =
    WS* DQ (NOT_DQESC | ESCAPED)*
    >start_string
    $eof(eof_string)
    %stop_string
    %string_end
    DQ
    ;

  a_string =
    (single | double)
    ;

  string_node :=
    (
      single |
      double
    )
    @eof(eof_main)
    @yield_string
    ;
}%%
=end
# end: ragel
# ('\"' | ^(0 .. 31 | 34))* ^'\\"'

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
            @buffers        = {}
            @incomplete     = {}
            @string_opened  = false
            @string_closed  = false
            data            = @content.unpack('C*')
            p_start         = 0
            p_end           = 0
            p               = 0
            pe              = data.length
            eof             = data.length

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
