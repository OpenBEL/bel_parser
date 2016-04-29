# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_string {
    #$stderr.puts 'start_string'
    @incomplete[:string] = []
    @opened = true
  }

  action accum_string {
    #$stderr.puts 'accum_string "' + fc.chr + '"'
    @incomplete[:string] << fc
  }

  action end_string {
    #$stderr.puts 'end_string'
    @closed = true
  }

  action string_end {
    #$stderr.puts 'string_end'
    string = @incomplete.delete(:string) || []
    completed = @opened && @closed
    ast_node = string(utf8_string(string), complete: completed)
    @buffers[:string] = ast_node
  }

  action string_yield {
    yield @buffers[:string]
  }

  action eof_string {
    #$stderr.puts 'eof_string'
    unless @closed
      $stderr.puts "incomplete string - why?"
    else
      $stderr.puts "complete string"
    end
  }

  NOT_DQ_ESC = [^"\\];
  string_prefix = DQ %start_string;
  string_content = ( NOT_DQ_ESC | ESCAPED )* $accum_string;
  string_suffix = DQ %end_string;
  str_string = string_prefix string_content string_suffix %string_end;
  str_ast := (string_prefix? |
              string_prefix string_content |
              string_prefix string_content string_suffix)
              NL?
              @string_end
              @string_yield
              $eof(eof_string);
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
