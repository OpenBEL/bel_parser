# begin: ragel
=begin
%%{
  machine bel;

  include 'parameter.rl';

  action start_function {
    $stderr.puts 'TERM start_function'
    @buffers[:function] = []
  }

  action append_function {
    $stderr.puts 'TERM append_function'
    @buffers[:function] << fc
  }

  action finish_function {
    $stderr.puts 'TERM finish_function'
    @buffers[:function] = identifier(utf8_string(@buffers[:function]))
  }

  action term_init {
    $stderr.puts 'TERM term_init'
    @buffers[:term_stack] = [ term() ]
  }

  action inner_term_init {
    $stderr.puts 'TERM inner_term_init'
    @buffers[:term_stack] << term()
  }

  action term_fx {
    $stderr.puts 'TERM term_fx'
    fx = @buffers[:function]
    fx_node = function(fx)
    new_term = @buffers[:term_stack][-1] << fx_node
    @buffers[:term_stack][-1] = new_term
  }

  action term_argument {
    $stderr.puts 'TERM term_argument'
    arg_node = argument(@buffers[:parameter])
    new_term = @buffers[:term_stack][-1] << arg_node
    @buffers[:term_stack][-1] = new_term
    @buffers[:parameter] = nil
  }

  action fxbt {
    $stderr.puts 'TERM fxbt'
    fpc -= @buffers[:function].length + 1
    fcall inner_term;
  }

  action fxret {
    $stderr.puts 'TERM fxret'
    inner_term = @buffers[:term_stack].pop
    arg_node = argument(inner_term)
    new_term = @buffers[:term_stack][-1] << arg_node
    @buffers[:term_stack][-1] = new_term
    fret;
  }

  action outer_term_end {
    $stderr.puts 'TERM outer_term_end'
    term_stack = @buffers[:term_stack]
    term_stack.each { |term| term.complete = true }
  }

  action eof_parameter_argument {
    $stderr.puts 'TERM eof_parameter_argument'
    @buffers[:term_stack][-1].complete = false
    yield @buffers[:term_stack][-1]
  }

  action yield_term_ast  {
    yield @buffers[:term_stack][-1]
  }

  inner_term :=
    an_ident >inner_term_init >start_function $append_function %finish_function
    SP*
    '(' @term_fx $eof{ $stderr.puts "EOF!" }
      (
        a_parameter %term_argument |
        an_ident >start_function $append_function '(' @fxbt
      )
      (
        COMMA_DELIM
        (
          a_parameter %term_argument |
          an_ident >start_function $append_function '(' @fxbt
        )
      )*
    ')' @fxret;

  outer_term =
    an_ident >term_init >start_function $append_function %finish_function
    SP*
    '(' @term_fx
      (
        a_parameter %term_argument $eof(eof_parameter_argument) |
        an_ident >start_function $append_function '(' @fxbt
      )
      (
        COMMA_DELIM
        (
          a_parameter %term_argument $eof(eof_parameter_argument) |
          an_ident >start_function $append_function '(' @fxbt
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
