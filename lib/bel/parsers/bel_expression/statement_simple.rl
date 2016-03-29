# begin: ragel
=begin
%%{
  machine bel;

  include 'term.rl';
  include 'relationship.rl';
  include 'comment.rl';

  action statement_subject {
    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  }

  action statement_object {
    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  }

  action yield_statement_simple {
    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
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

  statement_simple :=
    STATEMENT_SIMPLE
    SP*
    COMMENT? %yield_statement_simple
    NL;
}%%
=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELExpression
      module StatementSimple

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
          include ::AST::Sexp
          include BEL::Parsers::Buffer

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            @buffers = {}
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
    BEL::Parsers::BELExpression::StatementSimple.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
