# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_function {
    trace('FUNCTION start_function')
    @function_started = true
    p_start = p;
  }

  action end_function {
    trace('FUNCTION end_function')
    p_end = p
    chars = data[p_start...p_end]
    completed = !chars.empty?
    ident_node = identifier(utf8_string(chars), complete: completed, character_range: [p_start, p_end])
    fx_node = function(ident_node, complete: ident_node.complete, character_range: ident_node.character_range)
    @buffers[:function] = fx_node
  }

  action a_function_eof {
    trace('FUNCTION a_function_eof')
    if @function_started
      p_end = p
      chars = data[p_start...p_end]
      completed = !chars.empty?
      ident_node = identifier(utf8_string(chars), complete: completed, character_range: [p_start, p_end])
      fx_node = function(ident_node, complete: ident_node.complete, character_range: ident_node.character_range)
      @buffers[:function] = fx_node
    end
  }

  action function_node_err {
    trace('FUNCTION function_node_err')
    if @function_started
      # hit invalid char, include it in the identifier that results
      p_end = p + 1
      chars = data[p_start...p_end]
      completed = !chars.empty?
      ident_node = identifier(utf8_string(chars), complete: completed, character_range: [p_start, p_end])
      fx_node = function(ident_node, complete: false, character_range: ident_node.character_range)
      @buffers[:function] = fx_node
      yield @buffers[:function]
    end
  }

  action yield_function {
    trace('FUNCTION yield_function')
    yield @buffers[:function]
  }

  function =
    FUNCTION
    >start_function
    %end_function
    ;

  maybe_function =
    function?
    ;

  a_function =
    function
    $eof(a_function_eof)
    ;

  function_node :=
    function
    $err(function_node_err)
    NL?
    %yield_function
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module Common
      module Function

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
            data        = @content.unpack('C*')
            p           = 0
            p_start     = 0
            p_end       = 0
            pe          = data.length
            eof         = data.length
            @function_started = false

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
    BELParser::Parsers::Common::Function.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
