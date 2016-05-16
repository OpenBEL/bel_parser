# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_comment {
    trace('COMMENT start_comment')
    p_start = p;
  }

  action stop_comment {
    trace('COMMENT stop_comment')
    p_end = p;
  }

  action comment_end {
    trace('COMMENT comment_end')
    p_end = p
    chars = data[p_start...p_end]
    completed = !chars.empty?
    ast_node = comment(utf8_string(chars), complete: completed)
    @buffers[:comment] = ast_node
  }

  action yield_comment {
    trace('COMMENT yield_comment')
    yield @buffers[:comment] || comment(nil)
  }

  comment =
    SS
    SP*
    ^NL+
    >start_comment
    %stop_comment
    ;

  a_comment =
    SS
    ^NL+
    >start_comment
    %stop_comment
    ;

  comment_node :=
    comment
    %comment_end
    %yield_comment
    NL?
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module Expression
      module Comment

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
          include BELParser::Parsers::Tracer

          def initialize(content)
            @content = content
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers    = {}
            @incomplete = {}
            stack       = []
            data        = @content.unpack('C*')
            p           = 0
            p_start     = 0
            p_end       = 0
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
    BELParser::Parsers::Expression::Comment.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
