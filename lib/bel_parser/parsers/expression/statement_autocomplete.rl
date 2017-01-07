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
    @last_state = :IDENT

    trace('IDENT')
    @value =
      identifier(
        utf8_string(data[ts...te]),
        character_range: [ts, te])
    if !@prefix.nil?
      @param =
        parameter(
          @prefix,
          value(
            @value,
            character_range: @value.character_range),
          character_range: [@prefix.range_start, @value.range_end])
      @value = nil
    end
# end ruby
  }

  action STRING  {
# begin ruby
    @last_state = :STRING

    trace('STRING')
    @value =
      string(
        utf8_string(data[ts...te]),
        character_range: [ts, te])
    if !@prefix.nil?
      @param =
        parameter(
          @prefix,
          value(
            @value,
            character_range: @value.character_range),
          character_range: [@prefix.range_start, @value.range_end])
      @value = nil
    end
# end ruby
  }

  action O_PAREN {
# begin ruby
    @last_state = :O_PAREN

    trace('O_PAREN')
    term =
      if @value == nil
        term(
          function(
            nil,
            character_range: [ts, ts]),
          character_range: [ts, te])
      else
        term(
          function(
            @value,
            character_range: @value.character_range),
          character_range: [@value.range_start, @value.range_end + 1])
      end

    @term_stack << term
    @value = nil
# end ruby
  }

  action C_PAREN {
# begin ruby
    trace('C_PAREN')
    if @last_state == :COMMA || @last_state == :O_PAREN
      @last_state = :C_PAREN
      function, *arguments = @term_stack[-1].children
      empty_argument      =
        argument(
          nil,
          character_range: [ts, ts])
      @term_stack[-1]     =
        term(
          *[function, arguments, empty_argument].flatten.compact,
          character_range: [function.range_start, te])
    else
      @last_state = :C_PAREN
      if !@param.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_param      =
          argument(
            @param,
            character_range: @param.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_param].flatten.compact,
            character_range: [function.range_start, te])
        @param  = nil
        @prefix = nil
      elsif !@value.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_value      =
          argument(
            parameter(
              prefix(
                nil,
                character_range: [@value.range_start, @value.range_start]),
              value(
                @value,
                character_range: @value.character_range),
              character_range: @value.character_range),
            character_range: @value.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_value].flatten.compact,
            character_range: [function.range_start, @value.range_end + 1])
        @value              = nil
      elsif !@prefix.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_prefix     =
          argument(
            parameter(
              @prefix,
              value(
                identifier(
                  '',
                  character_range: [@prefix.range_end + 1, @prefix.range_end + 1]),
                character_range: [@prefix.range_end + 1, @prefix.range_end + 1]),
              character_range: @prefix.character_range),
            character_range: @prefix.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_prefix].flatten.compact,
            character_range: [function.range_start, @prefix.range_end + 1])
        @prefix             = nil
      else
        term = @term_stack[-1]
        term.character_range = [term.range_start, term.range_end + 1]
      end
    end

    if @term_stack.length > 1
      # pop stack
      inner = @term_stack.pop
      outer = @term_stack[-1]

      # reconstruct previous term on stack
      @term_stack[-1] =
        term(
          outer.function,
          *(outer.arguments << argument(inner, character_range: inner.character_range)),
          character_range: [outer.range_start, inner.range_end + 1])
    end
# end ruby
  }

  action COLON   {
# begin ruby
    @last_state = :COLON

    trace('COLON')
    if !@value.nil?
      @prefix =
        prefix(
          @value,
          character_range: @value.character_range)
      @value = nil
    else
      @prefix =
        prefix(
          nil,
          character_range: [ts, ts])
    end
# end ruby
  }

  action COMMA   {
# begin ruby
    @last_state = :COMMA

    trace('COMMA')
    if !@term_stack.empty?
      if !@param.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_param      =
          argument(
            @param,
            character_range: @param.character_range)
        @term_stack[-1]     =
          term(
            *([function, arguments, arg_from_param].flatten.compact),
            character_range: [function.range_start, @param.range_end + 1])
        @param              = nil
        @prefix             = nil
        @value              = nil
      elsif !@value.nil?
        function, *arguments = @term_stack[-1].children
        arg_from_value      =
          argument(
            parameter(
              prefix(
                nil,
                character_range: [@value.range_start, @value.range_start]),
              value(
                @value,
                character_range: @value.character_range),
              character_range: @value.character_range),
            character_range: @value.character_range)
        @term_stack[-1]     =
          term(
            *[function, arguments, arg_from_value].flatten.compact,
            character_range: [function.range_start, arg_from_value.range_end + 1])
        @param              = nil
        @prefix             = nil
        @value              = nil
      end
    end
# end ruby
  }

  action SPACES  {
# begin ruby
    spaces = te-ts
    if @original_caret > ts
      if @original_caret < te
        @space_adjusted_caret_position -= (@original_caret - ts)
      else
        @space_adjusted_caret_position -= spaces
      end
    end
    trace("SPACES (#{spaces})")
    data.slice!(ts, spaces)
    p   -= spaces
    pe  -= spaces
    eof -= spaces
# end ruby
  }

  action EOF {
# begin ruby
    if !@param.nil?
      @term_stack[0]
    end

    trace("last state in EOF: " + @last_state.to_s)
    if @term_stack.empty?
      trace('term stack is empty')
      if !@param.nil?
        yield @param
      elsif !@prefix.nil?
        yield(
          parameter(
            @prefix,
            nil,
            character_range: [@prefix.range_start, @prefix.range_end + 1])
        )
      elsif !@value.nil?
        yield(
          parameter(
            prefix(
              nil,
              character_range: [@value.range_start, @value.range_start]),
            value(
              @value,
              character_range: @value.character_range),
            character_range: @value.character_range)
        )
      end
    else
      trace('term stack is not empty')
      case @last_state
      when :IDENT
        if !@param.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_param      =
            argument(
              @param,
              character_range: @param.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_param].flatten.compact,
              character_range: [function.range_start, arg_from_param.range_end])
        elsif !@value.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_value      =
            argument(
              parameter(
                prefix(
                  nil,
                  character_range: [@value.range_start, @value.range_start]),
                value(
                  @value,
                  character_range: @value.character_range),
                character_range: @value.character_range),
              character_range: @value.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_value].flatten.compact,
              character_range: [function.range_start, @value.range_end])
        end
      when :STRING
        if !@param.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_param      =
            argument(
              @param,
              character_range: @param.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_param].flatten.compact,
              character_range: [function.range_start, arg_from_param.range_end])
        elsif !@value.nil?
          function, *arguments = @term_stack[-1].children
          arg_from_value      =
            argument(
              parameter(
                prefix(
                  nil,
                  character_range: [@value.range_start, @value.range_start]),
                value(
                  @value,
                  character_range: @value.character_range),
                character_range: @value.character_range),
              character_range: @value.character_range)
          @term_stack[-1]     =
            term(
              *[function, arguments, arg_from_value].flatten.compact,
              character_range: [function.range_start, arg_from_value.range_end])
        end
      when :COMMA, :O_PAREN
        function, *arguments = @term_stack[-1].children
        empty_argument      =
          argument(
            nil,
            character_range: [te - 1, te - 1])
        @term_stack[-1]     =
          term(
            *([function, arguments, empty_argument].flatten.compact),
            character_range: [function.range_start, empty_argument.range_end])
      when :COLON
        function, *arguments = @term_stack[-1].children
        empty_argument      =
          argument(
            parameter(
              @prefix,
              nil,
              character_range: [@prefix.range_start, @prefix.range_end + 1]),
            character_range: [@prefix.range_start, @prefix.range_end + 1])
        @term_stack[-1]     =
          term(
            *[function, arguments, empty_argument].flatten.compact,
            character_range: [function.range_start, empty_argument.range_end])
      end

      # yield combined term
      while @term_stack.length > 1
        # pop stack
        inner = @term_stack.pop
        outer = @term_stack[-1]

        # reconstruct previous term on stack
        @term_stack[-1] =
          term(
            outer.function,
            *(outer.arguments << argument(inner, character_range: inner.character_range)),
            character_range: [outer.range_start, inner.range_end + 1])
      end
      yield @term_stack.pop
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

          def parse(content, caret_position)
            return nil unless content

            if !content.end_with?("\n")
              content = "#{content}\n"
            end

            parser = Parser.new(content, caret_position)
            parser.each do |ast|
              return [ast, parser.space_adjusted_caret_position]
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

          attr_reader :space_adjusted_caret_position

          def initialize(content, caret_position)
            @content                       = content
            @original_caret                = caret_position
            @space_adjusted_caret_position = caret_position
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
  class ::AST::Node

    def _metadata
      ivars = instance_variables - [:@type, :@children, :@hash]
      ivars.map { |iv| [iv, instance_variable_get(iv)] }.to_s
    end
    private :_metadata

    def to_sexp(indent=0)
      indented = "  " * indent
      sexp = "#{indented}(#{fancy_type} #{_metadata}"

      first_node_child = children.index do |child|
        child.is_a?(::AST::Node) || child.is_a?(Array)
      end || children.count

      children.each_with_index do |child, idx|
        if child.is_a?(::AST::Node) && idx >= first_node_child
          sexp << "\n#{child.to_sexp(indent + 1)}"
        else
          sexp << " #{child.inspect}"
        end
      end

      sexp << ")"

      sexp
    end
  end

  $stdin.each_line do |line|
    ast, _ = BELParser::Parsers::Expression::StatementAutocomplete.parse(line, line.length)
    puts ast.to_sexp(1)
  end
end
# end ruby

# vim: ft=ragel ts=2 sw=2 expandtab:
# encoding: utf-8
