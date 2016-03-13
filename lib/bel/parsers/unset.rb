
# begin: ragel


# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module UNSET

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
	attr_accessor :_unset_actions
	private :_unset_actions, :_unset_actions=
end
self._unset_actions = [
	0, 1, 0, 1, 2, 1, 3, 2, 
	1, 2
]

class << self
	attr_accessor :_unset_key_offsets
	private :_unset_key_offsets, :_unset_key_offsets=
end
self._unset_key_offsets = [
	0, 0, 2, 4, 6, 8, 10, 12, 
	21, 29
]

class << self
	attr_accessor :_unset_trans_keys
	private :_unset_trans_keys, :_unset_trans_keys=
end
self._unset_trans_keys = [
	85, 117, 78, 110, 83, 115, 69, 101, 
	84, 116, 9, 32, 9, 32, 95, 48, 
	57, 65, 90, 97, 122, 10, 95, 48, 
	57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_unset_single_lengths
	private :_unset_single_lengths, :_unset_single_lengths=
end
self._unset_single_lengths = [
	0, 2, 2, 2, 2, 2, 2, 3, 
	2, 0
]

class << self
	attr_accessor :_unset_range_lengths
	private :_unset_range_lengths, :_unset_range_lengths=
end
self._unset_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 3, 
	3, 0
]

class << self
	attr_accessor :_unset_index_offsets
	private :_unset_index_offsets, :_unset_index_offsets=
end
self._unset_index_offsets = [
	0, 0, 3, 6, 9, 12, 15, 18, 
	25, 31
]

class << self
	attr_accessor :_unset_indicies
	private :_unset_indicies, :_unset_indicies=
end
self._unset_indicies = [
	0, 0, 1, 2, 2, 1, 3, 3, 
	1, 4, 4, 1, 5, 5, 1, 6, 
	6, 1, 7, 7, 8, 8, 8, 8, 
	1, 9, 10, 10, 10, 10, 1, 1, 
	0
]

class << self
	attr_accessor :_unset_trans_targs
	private :_unset_trans_targs, :_unset_trans_targs=
end
self._unset_trans_targs = [
	2, 0, 3, 4, 5, 6, 7, 7, 
	8, 9, 8
]

class << self
	attr_accessor :_unset_trans_actions
	private :_unset_trans_actions, :_unset_trans_actions=
end
self._unset_trans_actions = [
	0, 0, 0, 0, 0, 0, 1, 0, 
	7, 5, 3
]

class << self
	attr_accessor :unset_start
end
self.unset_start = 1;
class << self
	attr_accessor :unset_first_final
end
self.unset_first_final = 9;
class << self
	attr_accessor :unset_error
end
self.unset_error = 0;

class << self
	attr_accessor :unset_en_unset
end
self.unset_en_unset = 1;


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
	cs = unset_start
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
	_keys = _unset_key_offsets[cs]
	_trans = _unset_index_offsets[cs]
	_klen = _unset_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _unset_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _unset_trans_keys[_mid]
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
	  _klen = _unset_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _unset_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _unset_trans_keys[_mid+1]
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
	_trans = _unset_indicies[_trans]
	cs = _unset_trans_targs[_trans]
	if _unset_trans_actions[_trans] != 0
		_acts = _unset_trans_actions[_trans]
		_nacts = _unset_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _unset_actions[_acts - 1]
when 0 then
		begin

    @unset_node = s(:unset)
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
    @unset_node = @unset_node << s(:name, name)
    yield @unset_node
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
    UNSET.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
