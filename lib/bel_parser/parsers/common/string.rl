# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start {
    $stderr.puts '<< start'
    @incomplete[:string] = []
  }

  action append {
    $stderr.puts '<< append'
    @incomplete[:string] << fc
  }

  action end {
    $stderr.puts '<< end'
    string = @incomplete.delete(:string)
    completed = !string.empty?
    ast_node = string(utf8_string(string), complete: completed)
    @buffers[:string] = ast_node
  }

  action yield {
    $stderr.puts '<< yield'
    yield @buffers[:string]
  }

  action ast_end {
    $stderr.puts '<< end1'
    unless @buffers.key?(:string)
      $stderr.puts 'ast_end'
      string = @incomplete.delete(:string) || []
      completed = !string.empty?
      ast_node = string(utf8_string(string), complete: completed)
      @buffers[:string] = ast_node
    end
  }

  STR_CHARS = ('"' ('\\\"' | [^"])** '"');
  STRING = STR_CHARS >start $append %end;
  PARTIAL = STR_CHARS >start $append;
  AST_NODE := (STRING | PARTIAL) NL? %/ast_end %yield;
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
            @ended      = false
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
