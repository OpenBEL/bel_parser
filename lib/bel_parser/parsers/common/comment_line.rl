# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action comment_line_start {
    @incomplete[:comment_line] = []
    @started = true
  }

  action comment_line_more {
    @incomplete[:comment_line] << fc
  }

  action comment_line_yield {
    cl = @incomplete.delete(:comment_line) || []
    completed = @started
    yield comment_line(utf8_string(cl), complete: completed)
  }

  comment_start = SP* NUMBER_SIGN SP*;
  comment = comment_start (any - NL)*
            >comment_line_start
            $comment_line_more;
  main := comment? NL? @comment_line_yield;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module Common
      module CommentLine

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
            @started    = false
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
    BELParser::Parsers::Common::CommentLine.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
