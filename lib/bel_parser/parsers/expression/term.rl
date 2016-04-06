# begin: ragel
=begin
%%{
  machine bel;

  include 'parameter.rl';

  action start_function {
    @buffers[:function] = []
  }

  action append_function {
    @buffers[:function] << fc
  }

  action finish_function {
    @buffers[:function] = identifier(utf8_string(@buffers[:function]))
  }

  action term_init {
    @buffers[:term_stack] = [ term() ]
  }

  action inner_term_init {
    @buffers[:term_stack] << term()
  }

  action term_fx {
    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << function(fx)
  }

  action term_argument {
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << argument(@buffers[:parameter])
    @buffers[:parameter]      = nil
  }

  action fxbt {
    fpc -= @buffers[:function].length + 1
    fcall inner_term;
  }

  action fxret {
    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << argument(inner_term)
    fret;
  }

  action yield_term_ast  {
    yield @buffers[:term_stack][-1]
  }

  inner_term :=
    IDENT >inner_term_init >start_function $append_function %finish_function
    SP*
    '(' @term_fx
      (
        BEL_PARAMETER %term_argument |
        IDENT >start_function $append_function '(' @fxbt
      )
      (
        SP* ',' SP*
        (
          BEL_PARAMETER %term_argument |
          IDENT >start_function $append_function '(' @fxbt
        )
      )*
    ')' @fxret;

  outer_term =
    IDENT >term_init >start_function $append_function %finish_function
    SP*
    '(' @term_fx
      (
        BEL_PARAMETER %term_argument |
        IDENT >start_function $append_function '(' @fxbt
      )
      (
        SP* ',' SP*
        (
          BEL_PARAMETER %term_argument |
          IDENT >start_function $append_function '(' @fxbt
        )
      )*
    ')';

  term :=
    outer_term %yield_term_ast NL;
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
