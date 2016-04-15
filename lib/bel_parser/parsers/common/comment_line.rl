# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_comment_line {
    @buffers[:comment_line] = []
  }

  action append_comment_line {
    @buffers[:comment_line] << fc
  }

  action finish_comment_line {
    @buffers[:comment_line] = comment_line(
                                utf8_string(@buffers[:comment_line]))
  }

  action yield_comment_line {
    yield @buffers[:comment_line]
  }

  COMMENT_LINE  =
    SP*
    NUMBER_SIGN
    (any - NL)* >start_comment_line $append_comment_line %finish_comment_line;

  comment_line := COMMENT_LINE %yield_comment_line NL;
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
            @incomplete = {}
            data        = @content.unpack('C*')
            p           = 0
            pe          = data.length

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
