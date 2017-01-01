
=begin


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
            
class << self
	attr_accessor :_statement_autocomplete_trans_keys
	private :_statement_autocomplete_trans_keys, :_statement_autocomplete_trans_keys=
end
self._statement_autocomplete_trans_keys = [
	32, 122, 32, 32, 10, 92, 
	10, 92, 48, 122, 0
]

class << self
	attr_accessor :_statement_autocomplete_key_spans
	private :_statement_autocomplete_key_spans, :_statement_autocomplete_key_spans=
end
self._statement_autocomplete_key_spans = [
	91, 1, 83, 83, 75
]

class << self
	attr_accessor :_statement_autocomplete_index_offsets
	private :_statement_autocomplete_index_offsets, :_statement_autocomplete_index_offsets=
end
self._statement_autocomplete_index_offsets = [
	0, 92, 94, 178, 262
]

class << self
	attr_accessor :_statement_autocomplete_indicies
	private :_statement_autocomplete_indicies, :_statement_autocomplete_indicies=
end
self._statement_autocomplete_indicies = [
	1, 0, 2, 0, 0, 0, 0, 0, 
	3, 4, 0, 0, 5, 0, 0, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 7, 0, 0, 0, 0, 0, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0, 0, 0, 0, 6, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0, 1, 8, 9, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 10, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	11, 2, 9, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 11, 2, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	12, 12, 12, 12, 12, 12, 12, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 12, 12, 12, 12, 6, 12, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 12, 0
]

class << self
	attr_accessor :_statement_autocomplete_trans_targs
	private :_statement_autocomplete_trans_targs, :_statement_autocomplete_trans_targs=
end
self._statement_autocomplete_trans_targs = [
	0, 1, 2, 0, 0, 0, 4, 0, 
	0, 0, 0, 3, 0
]

class << self
	attr_accessor :_statement_autocomplete_trans_actions
	private :_statement_autocomplete_trans_actions, :_statement_autocomplete_trans_actions=
end
self._statement_autocomplete_trans_actions = [
	3, 0, 0, 4, 5, 6, 0, 7, 
	8, 9, 10, 0, 11
]

class << self
	attr_accessor :_statement_autocomplete_to_state_actions
	private :_statement_autocomplete_to_state_actions, :_statement_autocomplete_to_state_actions=
end
self._statement_autocomplete_to_state_actions = [
	1, 0, 0, 0, 0
]

class << self
	attr_accessor :_statement_autocomplete_from_state_actions
	private :_statement_autocomplete_from_state_actions, :_statement_autocomplete_from_state_actions=
end
self._statement_autocomplete_from_state_actions = [
	2, 0, 0, 0, 0
]

class << self
	attr_accessor :_statement_autocomplete_eof_trans
	private :_statement_autocomplete_eof_trans, :_statement_autocomplete_eof_trans=
end
self._statement_autocomplete_eof_trans = [
	0, 9, 10, 10, 13
]

class << self
	attr_accessor :statement_autocomplete_start
end
self.statement_autocomplete_start = 0;
class << self
	attr_accessor :statement_autocomplete_first_final
end
self.statement_autocomplete_first_final = 0;
class << self
	attr_accessor :statement_autocomplete_error
end
self.statement_autocomplete_error = -1;

class << self
	attr_accessor :statement_autocomplete_en_term
end
self.statement_autocomplete_en_term = 0;


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
            
begin
	p ||= 0
	pe ||= data.length
	cs = statement_autocomplete_start
	ts = nil
	te = nil
	act = 0
end

            
begin
	testEof = false
	_slen, _trans, _keys, _inds, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	end
	if _goto_level <= _resume
	case _statement_autocomplete_from_state_actions[cs] 
	when 2 then
		begin
ts = p
		end
	end
	_keys = cs << 1
	_inds = _statement_autocomplete_index_offsets[cs]
	_slen = _statement_autocomplete_key_spans[cs]
	_wide = data[p].ord
	_trans = if (   _slen > 0 && 
			_statement_autocomplete_trans_keys[_keys] <= _wide && 
			_wide <= _statement_autocomplete_trans_keys[_keys + 1] 
		    ) then
			_statement_autocomplete_indicies[ _inds + _wide - _statement_autocomplete_trans_keys[_keys] ] 
		 else 
			_statement_autocomplete_indicies[ _inds + _slen ]
		 end
	end
	if _goto_level <= _eof_trans
	cs = _statement_autocomplete_trans_targs[_trans]
	if _statement_autocomplete_trans_actions[_trans] != 0
	case _statement_autocomplete_trans_actions[_trans]
	when 10 then
		begin
te = p+1
 begin 
# begin ruby
    @last_state = :STRING

    trace('STRING')
    @value = string(utf8_string(data[ts...te]))
    if !@prefix.nil?
      @param = parameter(@prefix, value(@value))
      @value = nil
    end
# end ruby
   end
		end
	when 4 then
		begin
te = p+1
 begin 
# begin ruby
    @last_state = :O_PAREN

    trace('O_PAREN')
    @term_stack << term(function(@value))
    @value = nil
# end ruby
   end
		end
	when 5 then
		begin
te = p+1
 begin 
# begin ruby
    trace('C_PAREN')
    if @last_state == :COMMA
      @last_state = :C_PAREN
      function, arguments = @term_stack[-1].children
      empty_argument      = argument(nil)
      @term_stack[-1]     = term(*[function, arguments, empty_argument].flatten.compact)
    else
      @last_state = :C_PAREN
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
   end
		end
	when 7 then
		begin
te = p+1
 begin 
# begin ruby
    @last_state = :COLON

    trace('COLON')
    if !@value.nil?
      @prefix = prefix(@value)
    else
      @prefix = prefix(nil)
    end
# end ruby
   end
		end
	when 6 then
		begin
te = p+1
 begin 
# begin ruby
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
   end
		end
	when 3 then
		begin
te = p+1
 begin 
# begin ruby
    if !@param.nil?
      @term_stack[0]
    end

    trace("last state in EOF: " + @last_state.to_s)
    if @term_stack.empty?
      if !@param.nil?
        yield @param
      elsif !@prefix.nil?
        yield parameter(@prefix, nil)
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
   end
		end
	when 11 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    @last_state = :IDENT

    trace('IDENT')
    @value = identifier(utf8_string(data[ts...te]))
    if !@prefix.nil?
      @param = parameter(@prefix, value(@value))
      @value = nil
    end
# end ruby
   end
		end
	when 9 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    @last_state = :STRING

    trace('STRING')
    @value = string(utf8_string(data[ts...te]))
    if !@prefix.nil?
      @param = parameter(@prefix, value(@value))
      @value = nil
    end
# end ruby
   end
		end
	when 8 then
		begin
te = p
p = p - 1; begin 
# begin ruby
    spaces = te-ts
    trace("SPACES (#{spaces})")
    data.slice!(ts, spaces)
    p   -= spaces
    pe  -= spaces
    eof -= spaces
# end ruby
   end
		end
	end
	end
	end
	if _goto_level <= _again
	case _statement_autocomplete_to_state_actions[cs] 
	when 1 then
		begin
ts = nil;		end
	end

	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _statement_autocomplete_eof_trans[cs] > 0
		_trans = _statement_autocomplete_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
	end

	end
	if _goto_level <= _out
		break
	end
end
	end

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
