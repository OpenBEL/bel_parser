
# begin: ragel


# end: ragel

require_relative 'nonblocking_io_wrapper'

module BelTerm

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
    include AST::Sexp

    def initialize(content)
      @content = content
# begin: ragel        
      
class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 5, 1, 
	8, 1, 10, 1, 11, 2, 0, 1, 
	2, 7, 3, 2, 8, 2, 2, 10, 
	1, 3, 2, 7, 3, 3, 6, 7, 
	3, 3, 9, 12, 4, 3, 10, 0, 
	1, 4, 2, 6, 7, 3, 4, 8, 
	9, 12, 4
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 21, 31, 33, 
	37, 41, 42, 55, 60, 70, 81, 88
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 10, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 34, 
	92, 9, 32, 41, 44, 9, 32, 41, 
	44, 92, 9, 32, 40, 41, 44, 58, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 95, 48, 57, 65, 90, 97, 
	122, 95, 48, 57, 65, 90, 97, 122, 
	0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 1, 4, 2, 4, 
	4, 1, 7, 5, 4, 5, 1, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 0, 3, 0, 0, 
	0, 0, 3, 0, 3, 3, 3, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 19, 27, 30, 
	35, 40, 42, 53, 59, 67, 76, 81
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 0, 0, 0, 1, 2, 2, 3, 
	4, 4, 4, 4, 1, 5, 5, 6, 
	1, 7, 1, 8, 8, 9, 10, 10, 
	10, 10, 1, 11, 12, 9, 13, 13, 
	14, 15, 1, 16, 16, 17, 8, 1, 
	12, 9, 18, 18, 19, 14, 15, 21, 
	20, 20, 20, 20, 1, 22, 22, 23, 
	17, 8, 1, 24, 24, 9, 25, 25, 
	25, 25, 1, 13, 13, 14, 15, 25, 
	25, 25, 25, 1, 0, 0, 0, 0, 
	1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 3, 4, 2, 3, 4, 14, 
	5, 6, 10, 7, 9, 8, 15, 5, 
	8, 15, 11, 8, 10, 12, 11, 8, 
	12, 13
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	13, 0, 3, 41, 1, 0, 29, 5, 
	0, 9, 37, 9, 9, 7, 46, 7, 
	0, 33, 19, 25, 22, 11, 0, 16, 
	0, 9
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 14;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 5;
class << self
	attr_accessor :bel_en_term_main
end
self.bel_en_term_main = 1;


# end: ragel        
    end

    def each
      buffer = []
      stack  = []
      data   = @content.unpack('C*')
      p      = 0
      pe     = data.length

# begin: ragel        
      
begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

      
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    buffer = []
  		end
when 1 then
		begin

    buffer << data[p].ord
  		end
when 2 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 3 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 5
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 4 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 5 then
		begin

    yield term_to_ast(@term)
  		end
when 6 then
		begin
 @term_stack = [] 		end
when 7 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 8 then
		begin

    val = @pbuf.map(&:chr).join()
    if not val.empty?
      if val.start_with? '"' and val.end_with? '"'
        val = val.strip()[1...-1]
      end

      if @pfx
        @term_stack.last[1] << [@pfx, val]
      else
        @term_stack.last[1] << val
      end
    end
    @pbuf = []
    @pfx = nil
  		end
when 9 then
		begin

    @term = @term_stack.pop
    if not @term_stack.empty?
      @term_stack.last[1] << @term
    end
  		end
when 10 then
		begin
 @pbuf << data[p].ord 		end
when 11 then
		begin

    @pfx = @pbuf.map(&:chr).join()
    @pbuf = []
  		end
when 12 then
		begin
n = 0		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end

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
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BelTerm.parse(line) { |obj|
      puts obj.join(', ')
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
