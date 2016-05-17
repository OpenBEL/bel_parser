# begin: ragel
=begin
%%{
  machine bel;

  include 'function.rl';
  include 'parameter.rl';

  action term_init {
    trace('TERM term_init')
    @buffers[:term_stack] = [ term() ]
  }

  action inner_term_init {
    trace('TERM inner_term_init')
    @buffers[:term_stack] << term()
  }

  action term_fx {
    trace('TERM term_fx')
    new_term = @buffers[:term_stack][-1] << @buffers[:function]
    @buffers[:term_stack][-1] = new_term
  }

  action term_argument {
    trace('TERM term_argument')
    arg_node = argument(@buffers[:parameter])
    new_term = @buffers[:term_stack][-1] << arg_node
    @buffers[:term_stack][-1] = new_term
    @buffers[:parameter] = nil
  }

  action fxbt {
    trace('TERM fxbt')
    function_string = @buffers[:function].identifier.string_literal
    fpc -= function_string.length + 1
    fcall inner_term;
  }

  action fxret {
    trace('TERM fxret')
    inner_term = @buffers[:term_stack].pop
    arg_node = argument(inner_term)
    new_term = @buffers[:term_stack][-1] << arg_node
    @buffers[:term_stack][-1] = new_term
    fret;
  }

  action outer_term_end {
    trace('TERM outer_term_end')
    term_stack = @buffers[:term_stack]
    term_stack.each { |term| term.complete = true }
  }

  action eof_parameter_argument {
    trace('TERM eof_parameter_argument')
    @buffers[:term_stack][-1].complete = false
    yield @buffers[:term_stack][-1]
  }

  action yield_term_ast  {
    yield @buffers[:term_stack][-1]
  }

  inner_term :=
    a_function >inner_term_init
    SP*
    '(' @term_fx $eof{ $stderr.puts "EOF!" }
      (
        a_parameter %term_argument |
        a_function '(' @fxbt
      )
      (
        COMMA_DELIM
        (
          a_parameter %term_argument |
          a_function '(' @fxbt
        )
      )*
    ')' @fxret;

  outer_term =
    a_function >term_init
    SP*
    '(' @term_fx
      (
        a_parameter %term_argument $eof(eof_parameter_argument) |
        a_function '(' @fxbt
      )
      (
        COMMA_DELIM
        (
          a_parameter %term_argument $eof(eof_parameter_argument) |
          a_function '(' @fxbt
        )
      )*
    ')';

  term :=
    outer_term
    %outer_term_end
    %yield_term_ast
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
      module Term

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
    BELParser::Parsers::Expression::Term.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
