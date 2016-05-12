# begin: ragel
=begin
%%{
  machine bel;

  include 'term.rl';
  include 'relationship.rl';
  include 'comment.rl';

  action statement_subject {
    @buffers[:subject]    = subject(
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  }

  action statement_object {
    @buffers[:object]     = object(
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  }

  action yield_simple_statement {
    @buffers[:comment] ||= comment(nil)
    yield simple_statement(
            statement(
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  }

  STATEMENT_SIMPLE =
    outer_term %statement_subject
    SP+
    RELATIONSHIP
    SP+
    outer_term %statement_object;

  simple_statement :=
    STATEMENT_SIMPLE
    SP*
    a_comment? %yield_simple_statement
    NL;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module Expression
      module SimpleStatement

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
            stack       = []
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
    BELParser::Parsers::Expression::SimpleStatement.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
