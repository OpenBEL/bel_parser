
# begin: ragel


# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module DEFINE_NAMESPACE

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
	attr_accessor :_define_namespace_actions
	private :_define_namespace_actions, :_define_namespace_actions=
end
self._define_namespace_actions = [
	0, 1, 1, 1, 2, 1, 3, 1, 
	4, 1, 5, 2, 0, 1, 2, 3, 
	5
]

class << self
	attr_accessor :_define_namespace_key_offsets
	private :_define_namespace_key_offsets, :_define_namespace_key_offsets=
end
self._define_namespace_key_offsets = [
	0, 0, 2, 4, 6, 8, 10, 12, 
	14, 18, 20, 22, 24, 26, 28, 30, 
	32, 34, 36, 45, 54, 58, 60, 62, 
	66, 68, 70, 72, 75, 77, 80, 83, 
	84
]

class << self
	attr_accessor :_define_namespace_trans_keys
	private :_define_namespace_trans_keys, :_define_namespace_trans_keys=
end
self._define_namespace_trans_keys = [
	68, 100, 69, 101, 70, 102, 73, 105, 
	78, 110, 69, 101, 9, 32, 9, 32, 
	78, 110, 65, 97, 77, 109, 69, 101, 
	83, 115, 80, 112, 65, 97, 67, 99, 
	69, 101, 9, 32, 9, 32, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	65, 97, 83, 115, 9, 32, 9, 32, 
	85, 117, 82, 114, 76, 108, 9, 32, 
	9, 32, 34, 34, 92, 9, 10, 32, 
	9, 10, 32, 92, 0
]

class << self
	attr_accessor :_define_namespace_single_lengths
	private :_define_namespace_single_lengths, :_define_namespace_single_lengths=
end
self._define_namespace_single_lengths = [
	0, 2, 2, 2, 2, 2, 2, 2, 
	4, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 3, 4, 2, 2, 4, 
	2, 2, 2, 3, 2, 3, 3, 1, 
	0
]

class << self
	attr_accessor :_define_namespace_range_lengths
	private :_define_namespace_range_lengths, :_define_namespace_range_lengths=
end
self._define_namespace_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0
]

class << self
	attr_accessor :_define_namespace_index_offsets
	private :_define_namespace_index_offsets, :_define_namespace_index_offsets=
end
self._define_namespace_index_offsets = [
	0, 0, 3, 6, 9, 12, 15, 18, 
	21, 26, 29, 32, 35, 38, 41, 44, 
	47, 50, 53, 60, 67, 72, 75, 78, 
	83, 86, 89, 92, 96, 99, 103, 107, 
	109
]

class << self
	attr_accessor :_define_namespace_indicies
	private :_define_namespace_indicies, :_define_namespace_indicies=
end
self._define_namespace_indicies = [
	0, 0, 1, 2, 2, 1, 3, 3, 
	1, 4, 4, 1, 5, 5, 1, 6, 
	6, 1, 7, 7, 1, 7, 7, 8, 
	8, 1, 9, 9, 1, 10, 10, 1, 
	11, 11, 1, 12, 12, 1, 13, 13, 
	1, 14, 14, 1, 15, 15, 1, 16, 
	16, 1, 17, 17, 1, 17, 17, 18, 
	18, 18, 18, 1, 19, 19, 20, 20, 
	20, 20, 1, 21, 21, 22, 22, 1, 
	23, 23, 1, 24, 24, 1, 24, 24, 
	25, 25, 1, 26, 26, 1, 27, 27, 
	1, 28, 28, 1, 28, 28, 29, 1, 
	31, 32, 30, 33, 34, 33, 1, 35, 
	36, 35, 1, 32, 30, 1, 0
]

class << self
	attr_accessor :_define_namespace_trans_targs
	private :_define_namespace_trans_targs, :_define_namespace_trans_targs=
end
self._define_namespace_trans_targs = [
	2, 0, 3, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 14, 15, 16, 
	17, 18, 19, 20, 19, 20, 21, 22, 
	23, 24, 25, 26, 27, 28, 28, 29, 
	31, 30, 32, 30, 32
]

class << self
	attr_accessor :_define_namespace_trans_actions
	private :_define_namespace_trans_actions, :_define_namespace_trans_actions=
end
self._define_namespace_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	7, 0, 11, 3, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 11, 1, 1, 
	1, 5, 14, 0, 9
]

class << self
	attr_accessor :define_namespace_start
end
self.define_namespace_start = 1;
class << self
	attr_accessor :define_namespace_first_final
end
self.define_namespace_first_final = 32;
class << self
	attr_accessor :define_namespace_error
end
self.define_namespace_error = 0;

class << self
	attr_accessor :define_namespace_en_define_namespace
end
self.define_namespace_en_define_namespace = 1;


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
	cs = define_namespace_start
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
	_keys = _define_namespace_key_offsets[cs]
	_trans = _define_namespace_index_offsets[cs]
	_klen = _define_namespace_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _define_namespace_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _define_namespace_trans_keys[_mid]
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
	  _klen = _define_namespace_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _define_namespace_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _define_namespace_trans_keys[_mid+1]
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
	_trans = _define_namespace_indicies[_trans]
	cs = _define_namespace_trans_targs[_trans]
	if _define_namespace_trans_actions[_trans] != 0
		_acts = _define_namespace_trans_actions[_trans]
		_nacts = _define_namespace_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _define_namespace_actions[_acts - 1]
when 0 then
		begin
 buffer = []  		end
when 1 then
		begin
 buffer << data[p].ord 		end
when 2 then
		begin

    @define_ns = @define_ns << buffer.pack('C*').force_encoding('utf-8')
  		end
when 3 then
		begin

    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    value = buffer.pack('C*').force_encoding('utf-8')
    value.gsub!('\"', '"')
    @define_ns = @define_ns << s(:keyword, value)
  		end
when 4 then
		begin

    @define_ns = s(:define_namespace)
  		end
when 5 then
		begin

    yield @define_ns
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
    DEFINE_NAMESPACE.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
