
# begin: ragel


# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module BelParameter

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
	attr_accessor :_bel_parameter_actions
	private :_bel_parameter_actions, :_bel_parameter_actions=
end
self._bel_parameter_actions = [
	0, 1, 1, 1, 2, 1, 3, 2, 
	0, 1
]

class << self
	attr_accessor :_bel_parameter_key_offsets
	private :_bel_parameter_key_offsets, :_bel_parameter_key_offsets=
end
self._bel_parameter_key_offsets = [
	0, 0, 10, 20, 22, 23, 24, 32, 
	41
]

class << self
	attr_accessor :_bel_parameter_trans_keys
	private :_bel_parameter_trans_keys, :_bel_parameter_trans_keys=
end
self._bel_parameter_trans_keys = [
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 10, 92, 
	10, 95, 48, 57, 65, 90, 97, 122, 
	10, 58, 95, 48, 57, 65, 90, 97, 
	122, 0
]

class << self
	attr_accessor :_bel_parameter_single_lengths
	private :_bel_parameter_single_lengths, :_bel_parameter_single_lengths=
end
self._bel_parameter_single_lengths = [
	0, 4, 4, 2, 1, 1, 2, 3, 
	0
]

class << self
	attr_accessor :_bel_parameter_range_lengths
	private :_bel_parameter_range_lengths, :_bel_parameter_range_lengths=
end
self._bel_parameter_range_lengths = [
	0, 3, 3, 0, 0, 0, 3, 3, 
	0
]

class << self
	attr_accessor :_bel_parameter_index_offsets
	private :_bel_parameter_index_offsets, :_bel_parameter_index_offsets=
end
self._bel_parameter_index_offsets = [
	0, 0, 8, 16, 19, 21, 23, 29, 
	36
]

class << self
	attr_accessor :_bel_parameter_indicies
	private :_bel_parameter_indicies, :_bel_parameter_indicies=
end
self._bel_parameter_indicies = [
	0, 0, 2, 3, 3, 3, 3, 1, 
	0, 0, 2, 4, 4, 4, 4, 1, 
	6, 7, 5, 8, 1, 7, 5, 8, 
	9, 9, 9, 9, 1, 8, 11, 10, 
	10, 10, 10, 1, 1, 0
]

class << self
	attr_accessor :_bel_parameter_trans_targs
	private :_bel_parameter_trans_targs, :_bel_parameter_trans_targs=
end
self._bel_parameter_trans_targs = [
	2, 0, 3, 7, 6, 3, 4, 5, 
	8, 6, 7, 2
]

class << self
	attr_accessor :_bel_parameter_trans_actions
	private :_bel_parameter_trans_actions, :_bel_parameter_trans_actions=
end
self._bel_parameter_trans_actions = [
	0, 0, 7, 7, 7, 1, 1, 1, 
	5, 1, 1, 3
]

class << self
	attr_accessor :bel_parameter_start
end
self.bel_parameter_start = 1;
class << self
	attr_accessor :bel_parameter_first_final
end
self.bel_parameter_first_final = 8;
class << self
	attr_accessor :bel_parameter_error
end
self.bel_parameter_error = 0;

class << self
	attr_accessor :bel_parameter_en_bel_parameter
end
self.bel_parameter_en_bel_parameter = 1;


# end: ragel        
    end

    def each
      buffer = []
      data = @content.unpack('C*')
      p   = 0
      pe  = data.length

# begin: ragel        
      
begin
	p ||= 0
	pe ||= data.length
	cs = bel_parameter_start
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
	_keys = _bel_parameter_key_offsets[cs]
	_trans = _bel_parameter_index_offsets[cs]
	_klen = _bel_parameter_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_parameter_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_parameter_trans_keys[_mid]
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
	  _klen = _bel_parameter_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_parameter_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_parameter_trans_keys[_mid+1]
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
	_trans = _bel_parameter_indicies[_trans]
	cs = _bel_parameter_trans_targs[_trans]
	if _bel_parameter_trans_actions[_trans] != 0
		_acts = _bel_parameter_trans_actions[_trans]
		_nacts = _bel_parameter_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_parameter_actions[_acts - 1]
when 0 then
		begin
 buffer = []  		end
when 1 then
		begin
 buffer << data[p].ord 		end
when 2 then
		begin

    @prefix = buffer.pack('C*').force_encoding('utf-8')
    buffer  = []
  		end
when 3 then
		begin

    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    tmp_value = buffer.pack('C*').force_encoding('utf-8')
    tmp_value.gsub!('\"', '"')
    @value = tmp_value

    yield s(:bel_parameter,
            s(:prefix, @prefix),
            s(:value, @value))
  		end
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
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BelParameter.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
