
# begin: ragel


# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module SET

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
	attr_accessor :_set_actions
	private :_set_actions, :_set_actions=
end
self._set_actions = [
	0, 1, 0, 1, 2, 1, 3, 1, 
	4, 2, 1, 2
]

class << self
	attr_accessor :_set_key_offsets
	private :_set_key_offsets, :_set_key_offsets=
end
self._set_key_offsets = [
	0, 0, 2, 4, 6, 8, 17, 26, 
	29, 31, 41, 43, 44, 45, 53
]

class << self
	attr_accessor :_set_trans_keys
	private :_set_trans_keys, :_set_trans_keys=
end
self._set_trans_keys = [
	83, 115, 69, 101, 84, 116, 9, 32, 
	9, 32, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 61, 9, 32, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 34, 92, 10, 92, 10, 95, 48, 
	57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_set_single_lengths
	private :_set_single_lengths, :_set_single_lengths=
end
self._set_single_lengths = [
	0, 2, 2, 2, 2, 3, 3, 3, 
	2, 4, 2, 1, 1, 2, 0
]

class << self
	attr_accessor :_set_range_lengths
	private :_set_range_lengths, :_set_range_lengths=
end
self._set_range_lengths = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 3, 0, 0, 0, 3, 0
]

class << self
	attr_accessor :_set_index_offsets
	private :_set_index_offsets, :_set_index_offsets=
end
self._set_index_offsets = [
	0, 0, 3, 6, 9, 12, 19, 26, 
	30, 33, 41, 44, 46, 48, 54
]

class << self
	attr_accessor :_set_indicies
	private :_set_indicies, :_set_indicies=
end
self._set_indicies = [
	0, 0, 1, 2, 2, 1, 3, 3, 
	1, 4, 4, 1, 5, 5, 6, 6, 
	6, 6, 1, 7, 7, 8, 8, 8, 
	8, 1, 9, 9, 10, 1, 11, 11, 
	1, 11, 11, 12, 13, 13, 13, 13, 
	1, 15, 16, 14, 17, 1, 16, 14, 
	17, 18, 18, 18, 18, 1, 1, 0
]

class << self
	attr_accessor :_set_trans_targs
	private :_set_trans_targs, :_set_trans_targs=
end
self._set_trans_targs = [
	2, 0, 3, 4, 5, 5, 6, 7, 
	6, 7, 8, 9, 10, 13, 10, 11, 
	12, 14, 13
]

class << self
	attr_accessor :_set_trans_actions
	private :_set_trans_actions, :_set_trans_actions=
end
self._set_trans_actions = [
	0, 0, 0, 0, 1, 0, 9, 5, 
	3, 0, 0, 0, 9, 9, 3, 3, 
	3, 7, 3
]

class << self
	attr_accessor :set_start
end
self.set_start = 1;
class << self
	attr_accessor :set_first_final
end
self.set_first_final = 14;
class << self
	attr_accessor :set_error
end
self.set_error = 0;

class << self
	attr_accessor :set_en_set
end
self.set_en_set = 1;


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
	cs = set_start
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
	_keys = _set_key_offsets[cs]
	_trans = _set_index_offsets[cs]
	_klen = _set_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _set_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _set_trans_keys[_mid]
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
	  _klen = _set_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _set_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _set_trans_keys[_mid+1]
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
	_trans = _set_indicies[_trans]
	cs = _set_trans_targs[_trans]
	if _set_trans_actions[_trans] != 0
		_acts = _set_trans_actions[_trans]
		_nacts = _set_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _set_actions[_acts - 1]
when 0 then
		begin

    @set_node = s(:set)
  		end
when 1 then
		begin
 buffer = []  		end
when 2 then
		begin
 buffer << data[p].ord 		end
when 3 then
		begin

    name = buffer.pack('C*').force_encoding('utf-8')
    @set_node = @set_node << s(:name, name)
  		end
when 4 then
		begin

    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    value = buffer.pack('C*').force_encoding('utf-8')
    value.gsub!('\"', '"')
    @set_node = @set_node << s(:value, value)

    yield @set_node
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
    SET.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
