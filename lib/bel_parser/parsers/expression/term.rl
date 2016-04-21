# begin: ragel
=begin
%%{
  machine bel;

  include 'parameter.rl';

  action start_function {
    @incomplete[:function] = []
  }

  action append_function {
    @incomplete[:function] << fc
  }

  action finish_function {
    fx = @incomplete.delete(:function)
    @buffers[:function] = identifier(utf8_string(fx))
  }

  action term_init {
    t = term(complete: false)
    @buffers[:term_stack] = [t]
  }

  action inner_term_init {
    t = term(complete: false)
    @buffers[:term_stack] << t
  }

  action term_fx {
    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << function(fx)
  }

  action term_argument {
    # add a child parameter argument to the last term (creates a new term)
    t = @buffers[:term_stack][-1] << argument(@buffers[:parameter])
    t.complete = true
    @buffers[:term_stack][-1] = t
    @buffers[:parameter]      = nil
  }

  action fxbt {
    fpc -= @incomplete[:function].length + 1
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

  action error_term {
    # $ all states; error_term

    unless @incomplete.empty?
      fx = @incomplete.delete(:function)
      fx = identifier(utf8_string(fx))
      # add a child function to the last term (creates a new term)
      t = @buffers[:term_stack][-1] << function(fx)
      @buffers[:term_stack][-1] = t
    end

    yield @buffers[:term_stack][-1]
  }

  action eof_term {
  }

  inner_term :=
    id_ident >inner_term_init >start_function $append_function %finish_function
    SP*
    '(' @term_fx
      (
        BEL_PARAMETER %term_argument |
        id_ident >start_function $append_function '(' @fxbt
      )
      (
        SP* ',' SP*
        (
          BEL_PARAMETER %term_argument |
          id_ident >start_function $append_function '(' @fxbt
        )
      )*
    ')' @fxret $err(error_term) $eof(eof_term);

  outer_term =
    id_ident >term_init >start_function $append_function %finish_function
    SP*
    '(' @term_fx
      (
        BEL_PARAMETER %term_argument |
        id_ident >start_function $append_function '(' @fxbt
      )
      (
        SP* ',' SP*
        (
          BEL_PARAMETER %term_argument |
          id_ident >start_function $append_function '(' @fxbt
        )
      )*
    ')' $err(error_term) $eof(eof_term);

  term :=
    outer_term %yield_term_ast NL $err(error_term) $eof(eof_term);
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
    BELParser::Parsers::Expression::Term.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
