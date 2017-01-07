=begin
%%{
  machine statement_autocomplete;

  O_PAREN      = '(';
  C_PAREN      = ')';

  SPACES       = [ \t]+;
  COLON        = ':';
  COMMA        = ',';

  IDENT        = [a-zA-Z0-9_]+;
  STRING       = '"' ('\\\"' | [^"\n])* '"'?;

  # '!' to '~'
  # RELATIONSHIP = (33..126)+ 
  RELATIONSHIP = (33..126)+; # skips parentheses

  action IDENT   {
# begin ruby
    @last_state = :IDENT
    trace('IDENT')

    trace('...completing :term part')
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

  action RELATIONSHIP {
# begin ruby
    @last_state = :RELATIONSHIP
    trace('RELATIONSHIP')

    @relationship =
      relationship(
        utf8_string(data[ts...te]),
        character_range: [ts, te])

    range_end =
      if @statement_ast.object?
        @statement_ast.object.range_end
      else
        @relationship.range_end
      end

    @statement_ast =
      statement(
        @statement_ast.subject,
        @relationship,
        @statement_ast.object,
        character_range: [@statement_ast.range_start, range_end])

    # return to term scanner
    fret;

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

    if @term_stack.length == 1
      # we completed an outer term

      # add to statement_ast
      completed_term = @term_stack[-1]
      if @statement_ast.subject.nil?
        @statement_ast =
          statement(
            subject(
              completed_term,
              character_range: completed_term.character_range),
            nil,
            nil,
            character_range: completed_term.character_range)
        @bel_part = :relationship
      elsif @statement_ast.object.nil?
        object_node =
          object(
            completed_term,
            character_range: completed_term.character_range)
        @statement_ast =
          statement(
            @statement_ast.subject,
            @statement_ast.relationship,
            object_node,
            character_range: [@statement_ast.range_start, object_node.range_end])
      end
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
    trace("SPACES (#{spaces})")

    if @relationship
      # relationship was just completed, set part back to :term
      @bel_part   = :term
      @term_stack = []
    end

    if @bel_part == :relationship
      trace("...completing relationship, squeezing down to one space")
      spaces -= 1

      # push the target state, jump to relationship scanner
      # ...eventually to return
      fcall relationship;
    end

    if @original_caret > ts
      if @original_caret < te
        @space_adjusted_caret_position -= (@original_caret - ts)
      else
        @space_adjusted_caret_position -= spaces
      end
    end
# end ruby
  }

  action EOF {
# begin ruby
    trace('EOF')
    # yield the statement if we at least completed the subject
    if !@statement_ast.subject.nil?
      yield @statement_ast
      return
    end

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

  relationship := |*
      RELATIONSHIP => RELATIONSHIP;
  *|;

  term := |*
      IDENT        => IDENT;
      STRING       => STRING;
      O_PAREN      => O_PAREN;
      C_PAREN      => C_PAREN;
      COLON        => COLON;
      COMMA        => COMMA;
      SPACES       => SPACES;
      any          => EOF;
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
            @last_state    = nil
            @spaces        = 0
            @value         = nil
            @prefix        = nil
            @param         = nil
            @term_stack    = []
            @relationship  = nil
            @bel_part      = :term
            @statement_ast = statement(nil, nil, nil)

            stack          = []
            data           = @content.unpack('C*')
            p              = 0
            pe             = data.length
            eof            = data.length

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
  require 'bel_parser/parsers/serializer'
  class ::AST::Node
    include BELParser::Parsers

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

    def to_bel
      serialize(self)
    end
  end

  $stdin.each_line do |line|
    ast, caret = BELParser::Parsers::Expression::StatementAutocomplete.parse(
      line,
      line.length-1 # adjust for newline
    )
    puts ast.to_sexp(1)
    puts ast.to_bel
    puts "#{' ' * caret}|"
    puts "caret: #{caret}"
  end
end
# end ruby

# vim: ft=ragel ts=2 sw=2 expandtab:
# encoding: utf-8
