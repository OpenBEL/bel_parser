# begin: ragel
=begin
%%{
  machine bel;

  include 'term.rl';
  include 'comment.rl';

  action yield_statement_observed_term {
    @buffers[:comment] ||= s(:comment, nil)
    yield s(:observed_term,
            s(:statement,
              s(:subject, @buffers[:term_stack][-1]),
              s(:relationship, nil),
              s(:object, nil),
              @buffers[:comment]))
  }

  statement_observed_term :=
    outer_term 
    SP*
    COMMENT? %yield_statement_observed_term
    NL;
}%%
=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module Expression
      module StatementObservedTerm

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

          private

          def term_to_ast(term, ast=s(:term))
            fx, rest = *term
            ast = ast << s(:function, fx)
            rest.each do |arg|
              if arg.is_a?(String)
                ast = ast << s(:argument, s(:prefix, nil), s(:value, arg))
              elsif arg.first.is_a?(Symbol)
                ast = ast << s(:argument, term_to_ast(arg))
              else
                if arg.size == 1
                  ast = ast << s(:argument, s(:prefix, nil), s(:value, arg[0]))
                else
                  ast = ast << s(:argument, s(:prefix, arg[0]), s(:value, arg[1]))
                end
              end
            end

            ast
          end

          def statement_to_ast(statement, ast=s(:term))
            fx, rest = *term
            ast = ast << s(:function, fx)
            rest.each do |arg|
              if arg.is_a?(String)
                ast = ast << s(:argument, s(:prefix, nil), s(:value, arg))
              elsif arg.first.is_a?(Symbol)
                ast = ast << s(:argument, term_to_ast(arg))
              else
                if arg.size == 1
                  ast = ast << s(:argument, s(:prefix, nil), s(:value, arg[0]))
                else
                  ast = ast << s(:argument, s(:prefix, arg[0]), s(:value, arg[1]))
                end
              end
            end

            ast
          end
        end
      end
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::Expression::StatementObservedTerm.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
