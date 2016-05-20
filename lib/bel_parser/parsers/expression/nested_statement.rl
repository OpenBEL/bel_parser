# begin: ragel
=begin
%%{
  machine bel;

  include 'simple_statement.rl';

  action statement_init {
    trace('NESTED_STATEMENT statement_init')
    @buffers[:statement_stack] = [ statement() ]
  }

  action inner_statement_init {
    trace('NESTED_STATEMENT inner_statement_init')
    @buffers[:statement_stack] << statement()
  }

  action ast_subject {
    trace('NESTED_STATEMENT ast_subject')
    subject_node = @buffers[:subject]
    stmt = @buffers[:statement_stack][-1] << subject_node
    @buffers[:statement_stack][-1] = stmt
  }

  action ast_relationship {
    trace('NESTED_STATEMENT ast_relationship')
    rel_node = @buffers[:relationship]
    stmt = @buffers[:statement_stack][-1] << rel_node
    @buffers[:statement_stack][-1] = stmt
  }

  action ast_object {
    trace('NESTED_STATEMENT ast_object')
    object_node = object(@buffers[:object])
    stmt = @buffers[:statement_stack][-1] << object_node
    @buffers[:statement_stack][-1] = stmt
  }

  action statement_object_statement {
    trace('NESTED_STATEMENT statement_object_statement')
    @buffers[:object] = @buffers[:statement_stack][-1]
  }

  action call_nested_statement {
    trace('NESTED_STATEMENT call_nested_statement')
    fcall inner_statement;
  }

  action fret {
    trace('NESTED_STATEMENT fret')
    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    obj_node = object(inner_statement)
    stmt = @buffers[:statement_stack][-1] << obj_node
    @buffers[:statement_stack][-1] = stmt
    nested_stmt = nested_statement(stmt)
    nested_stmt.complete = true
    @buffers[:nested_statement] = nested_stmt
    fret;
  }

  action nested_statement_comment {
    trace('NESTED_STATEMENT nested_statement_comment')
    comment = @buffers[:comment]
    @buffers[:nested_statement] =
      nested_statement(
        @buffers[:nested_statement].statement << comment)
  }

  action yield_nested_statement {
    trace('NESTED_STATEMENT yield_nested_statement')
    yield @buffers[:nested_statement]
  }

  inner_statement :=
    outer_term >inner_statement_init %statement_subject %ast_subject
    SP+
    relationship %relationship_end %ast_relationship
    SP+
    (
      outer_term @statement_object @ast_object |
      '(' @call_nested_statement ')'
    ) @fret;

  outer_statement =
    outer_term >statement_init %statement_subject %ast_subject
    SP+
    relationship %relationship_end %ast_relationship
    SP+
    '(' @call_nested_statement
    ')'
    # ')' @ast_object
    ;


  nested_statement :=
    outer_statement
    SP*
    comment? %nested_statement_comment %yield_nested_statement
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
      module NestedStatement

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
            eof         = :ignored
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
    BELParser::Parsers::Expression::NestedStatement.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
