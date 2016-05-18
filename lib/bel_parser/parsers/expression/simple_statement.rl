# begin: ragel
=begin
%%{
  machine bel;

  include 'term.rl';
  include 'relationship.rl';
  include 'comment.rl';

  action statement_subject {
    trace('SIMPLE_STATEMENT statement_subject')
    @buffers[:subject]    = subject(
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  }

  action statement_object {
    trace('SIMPLE_STATEMENT statement_object')
    term = @buffers[:term_stack][-1]
    @buffers[:object] = object(term)
    @buffers[:term_stack] = nil
    @buffers[:comment] ||= comment(nil)
    sub = @buffers[:subject]
    rel = @buffers[:relationship]
    obj = @buffers[:object]
    comment = @buffers[:comment]
    stmt = statement(sub, rel, obj, comment)
    simple_stmt = simple_statement(stmt)
    simple_stmt.complete = true
    @buffers[:simple_statement] = simple_stmt
  }

  action yield_simple_statement {
    trace('YIELD_SIMPLE_STATEMENT')
    simple_stmt = @buffers.delete(:simple_statement)
    yield simple_stmt
  }

  STATEMENT_SIMPLE =
    outer_term %statement_subject
    SP+
    relationship %relationship_end
    SP+
    outer_term
    %statement_object;

  simple_statement :=
    STATEMENT_SIMPLE
    SP*
    a_comment?
    %statement_object
    %yield_simple_statement
    NL?;
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
