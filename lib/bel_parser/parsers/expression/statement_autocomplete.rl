=begin
%%{
  machine statement_autocomplete;
  include 'common.rl';

  O_PAREN      = '(';
  C_PAREN      = ')';

  SPACES       = [ ]+;
  COLON        = ':';
  COMMA        = ',';

  IDENT        = [a-zA-Z0-9_]+;
  STRING       = '"' ('\\\"' | [^"\n])* '"'?;

  action IDENT   {
# begin ruby
    ts         -= @spaces
    @last_state = :IDENT

    trace('IDENT')
    @value = identifier(utf8_string(data[ts...te]))
    if !@prefix.nil?
      @param = parameter(@prefix, value(@value))
      @value = nil
    end
    trace("  value:\n#{@value}")
# end ruby
  }

  action STRING  {
# begin ruby
    ts         -= @spaces
    @last_state = :STRING

    trace('STRING')
    @value = string(utf8_string(data[ts...te]))
    if !@prefix.nil?
      @param = parameter(@prefix, value(@value))
      @value = nil
    end
    trace("  value:\n#{@value}")
# end ruby
  }

  action O_PAREN {
# begin ruby
    ts         -= @spaces
    @last_state = :O_PAREN

    trace('O_PAREN')
    @term_stack << term(function(@value))
    @value = nil
    trace("  term:\n#{@term_stack[-1]}")
# end ruby
  }

  action C_PAREN {
# begin ruby
    ts         -= @spaces

    if @last_state == :COMMA
      @last_state = :C_PAREN
      function, arguments = @term_stack[-1].children
      empty_argument      = argument(nil)
      @term_stack[-1]     = term(*[function, arguments, empty_argument].flatten.compact)
    else
      @last_state = :C_PAREN
      trace('C_PAREN')
      if !@param.nil?
        function, arguments = @term_stack[-1].children
        @term_stack[-1]     = term(*[function, arguments, argument(@param)].flatten.compact)
        @param              = nil
        @prefix             = nil
      elsif !@value.nil?
        function, arguments = @term_stack[-1].children
        arg_from_value      = argument(parameter(prefix(nil), value(@value)))
        @term_stack[-1]     = term(*[function, arguments, arg_from_value].flatten.compact)
        @param              = nil
      end
    end
# end ruby
  }

  action COLON   {
# begin ruby
    ts         -= @spaces
    @last_state = :COLON

    trace('COLON')
    if !@value.nil?
      @prefix = prefix(@value)
    else
      @prefix = prefix(nil)
    end
# end ruby
  }

  action COMMA   {
# begin ruby
    ts         -= @spaces
    @last_state = :COMMA

    trace('COMMA')
    if !@term_stack.empty?
      if !@param.nil?
        function, arguments = @term_stack[-1].children
        @term_stack[-1]     = term(*([function, arguments, argument(@param)].flatten.compact))
        @param              = nil
        @prefix             = nil
      elsif !@value.nil?
        function, arguments = @term_stack[-1].children
        arg_from_value      = argument(parameter(prefix(nil), value(@value)))
        @term_stack[-1]     = term(*[function, arguments, arg_from_value].flatten.compact)
        @param              = nil
      end
    end
# end ruby
  }

  action SPACES  {
# begin ruby
    @spaces = te-ts

    trace("SPACES")
# end ruby
  }

  action EOF {
# begin ruby
    ts -= @spaces
    if !@param.nil?
      @term_stack[0]
    end

    trace("last state in EOF: " + @last_state.to_s)
    if @term_stack.empty?
      if !@param.nil?
        yield @param
      elsif !@value.nil?
        yield @value
      end
    else
      case @last_state
      when :IDENT
        if !@param.nil?
          function, arguments = @term_stack[-1].children
          arg_from_param      = argument(@param)
          @term_stack[-1]     = term(*[function, arguments, arg_from_param].flatten.compact)
        elsif !@value.nil?
          function, arguments = @term_stack[-1].children
          arg_from_value      = argument(parameter(prefix(nil), value(@value)))
          @term_stack[-1]     = term(*[function, arguments, arg_from_value].flatten.compact)
        end
      when :STRING
        if !@param.nil?
          function, arguments = @term_stack[-1].children
          arg_from_param      = argument(@param)
          @term_stack[-1]     = term(*[function, arguments, arg_from_param].flatten.compact)
        elsif !@value.nil?
          function, arguments = @term_stack[-1].children
          arg_from_value      = argument(parameter(prefix(nil), value(@value)))
          @term_stack[-1]     = term(*[function, arguments, arg_from_value].flatten.compact)
        end
      when :COMMA
        function  = @term_stack[-1].function
        arguments = @term_stack[-1].arguments
        empty_argument      = argument(nil)
        @term_stack[-1]     = term(*([function, arguments, empty_argument].flatten.compact))
      when :COLON
        function, arguments = @term_stack[-1].children
        empty_argument      = argument(parameter(@prefix, nil))
        @term_stack[-1]     = term(*[function, arguments, empty_argument].flatten.compact)
      end

      yield @term_stack[0]
    end
# end ruby
  }

  term := |*
      IDENT    => IDENT;
      STRING   => STRING;
      O_PAREN  => O_PAREN;
      C_PAREN  => C_PAREN;
      COLON    => COLON;
      COMMA    => COMMA;
      SPACES   => SPACES;
      any      => EOF;
  *|;
}%%
=end

# begin ruby
require_relative '../../vendor/ast/processor/mixin'
require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module Expression
      module StatementAutocomplete

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
          include BELParser::Parsers::AST
          include BELParser::Parsers::AST::Sexp
          include BELParser::Parsers::Tracer

          def initialize(content)
            @content = content
            %% write data;
          end

          def each
            @last_state = nil
            @spaces     = 0
            @value      = nil
            @prefix     = nil
            @param      = nil
            @term_stack = []

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
    BELParser::Parsers::Expression::StatementAutocomplete.parse(line) { |obj|
      puts obj.inspect
    }
  end
end
# end ruby

# vim: ft=ragel ts=2 sw=2 expandtab:
# encoding: utf-8
