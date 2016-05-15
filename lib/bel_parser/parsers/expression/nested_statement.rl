# begin: ragel
=begin
%%{
  machine bel;

  include 'simple_statement.rl';

  action statement_init {
    @buffers[:statement_stack] = [ statement() ]
  }

  action inner_statement_init {
    @buffers[:statement_stack] << statement()
  }

  action ast_subject {
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  }

  action ast_relationship {
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  }

  action ast_object {
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:object]
  }

  action statement_object_statement {
    @buffers[:object] = @buffers[:statement_stack][-1]
  }

  action call_nested_statement {
    fcall inner_statement;
  }

  action fret {
    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << object(inner_statement)
    fret;
  }

  action yield_nested_statement {
    comment   = @buffers[:comment] ||= comment(nil)
    statement = @buffers[:statement_stack][-1] << comment
    yield nested_statement(statement)
  }

  inner_statement :=
    outer_term >inner_statement_init %statement_subject %ast_subject
    SP+
    RELATIONSHIP %ast_relationship
    SP+
    (
      outer_term @statement_object @ast_object |
      '(' @call_nested_statement ')'
    ) @fret;

  outer_statement =
    outer_term >statement_init %statement_subject %ast_subject
    SP+
    RELATIONSHIP %ast_relationship
    SP+
    '(' @call_nested_statement
    ')'
    # ')' @ast_object
    ;

  nested_statement :=
    outer_statement
    SP*
    COMMENT? %yield_nested_statement
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

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            @buffers = {}
            eof      = :ignored
            stack    = []
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length
            eof      = data.length

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
