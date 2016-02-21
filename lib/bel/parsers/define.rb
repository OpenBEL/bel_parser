
# begin: ragel


# end: ragel

require_relative 'nonblocking_io_wrapper'

module DEFINE

  class << self

    MAX_LENGTH = 1024 * 128 # 128K

    def parse(content, namespaces = {})
      return nil unless content

      Parser.new(content).each do |obj|
        yield obj
      end
    end
  end

  private

  class Parser
    include Enumerable

    def initialize(content)
      @content = content
# begin: ragel        
      
class << self
	attr_accessor :_set_actions
	private :_set_actions, :_set_actions=
end
self._set_actions = [
	0, 1, 1, 1, 2, 1, 3, 1, 
	4, 1, 5, 1, 6, 1, 9, 1, 
	10, 2, 0, 1, 2, 1, 5, 2, 
	3, 6, 2, 6, 7, 2, 11, 8, 
	2, 12, 8, 2, 13, 8, 2, 14, 
	8, 3, 0, 1, 5, 3, 3, 6, 
	7, 3, 3, 12, 8, 3, 3, 13, 
	8, 3, 3, 14, 8
]

class << self
	attr_accessor :_set_key_offsets
	private :_set_key_offsets, :_set_key_offsets=
end
self._set_key_offsets = [
	0, 0, 2, 4, 6, 8, 10, 12, 
	14, 20, 22, 24, 26, 28, 30, 32, 
	34, 36, 38, 40, 42, 44, 46, 48, 
	50, 52, 54, 56, 65, 74, 78, 80, 
	82, 90, 92, 94, 96, 98, 101, 111, 
	113, 117, 121, 124, 125, 136, 138, 140, 
	142, 144, 146, 148, 150, 153, 155, 158, 
	161, 162, 164, 166, 168, 171, 173, 176, 
	179, 180, 182, 191, 200, 204, 206, 208, 
	212, 214, 216, 218, 221, 223, 226, 229, 
	230, 230, 230
]

class << self
	attr_accessor :_set_trans_keys
	private :_set_trans_keys, :_set_trans_keys=
end
self._set_trans_keys = [
	68, 100, 69, 101, 70, 102, 73, 105, 
	78, 110, 69, 101, 9, 32, 9, 32, 
	65, 78, 97, 110, 78, 110, 78, 110, 
	79, 111, 84, 116, 65, 97, 84, 116, 
	73, 105, 79, 111, 78, 110, 65, 97, 
	77, 109, 69, 101, 83, 115, 80, 112, 
	65, 97, 67, 99, 69, 101, 9, 32, 
	9, 32, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 65, 97, 83, 115, 
	9, 32, 9, 32, 76, 80, 85, 108, 
	112, 117, 73, 105, 83, 115, 84, 116, 
	9, 32, 9, 32, 123, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 34, 
	92, 9, 32, 44, 125, 9, 32, 44, 
	125, 9, 10, 32, 92, 9, 32, 44, 
	95, 125, 48, 57, 65, 90, 97, 122, 
	65, 97, 84, 116, 84, 116, 69, 101, 
	82, 114, 78, 110, 9, 32, 9, 32, 
	34, 34, 92, 9, 10, 32, 9, 10, 
	32, 92, 82, 114, 76, 108, 9, 32, 
	9, 32, 34, 34, 92, 9, 10, 32, 
	9, 10, 32, 92, 9, 32, 9, 32, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 65, 97, 83, 115, 9, 32, 
	9, 32, 85, 117, 82, 114, 76, 108, 
	9, 32, 9, 32, 34, 34, 92, 9, 
	10, 32, 9, 10, 32, 92, 0
]

class << self
	attr_accessor :_set_single_lengths
	private :_set_single_lengths, :_set_single_lengths=
end
self._set_single_lengths = [
	0, 2, 2, 2, 2, 2, 2, 2, 
	6, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 3, 4, 2, 2, 
	8, 2, 2, 2, 2, 3, 4, 2, 
	4, 4, 3, 1, 5, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 3, 3, 
	1, 2, 2, 2, 3, 2, 3, 3, 
	1, 2, 3, 3, 4, 2, 2, 4, 
	2, 2, 2, 3, 2, 3, 3, 1, 
	0, 0, 0
]

class << self
	attr_accessor :_set_range_lengths
	private :_set_range_lengths, :_set_range_lengths=
end
self._set_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0
]

class << self
	attr_accessor :_set_index_offsets
	private :_set_index_offsets, :_set_index_offsets=
end
self._set_index_offsets = [
	0, 0, 3, 6, 9, 12, 15, 18, 
	21, 28, 31, 34, 37, 40, 43, 46, 
	49, 52, 55, 58, 61, 64, 67, 70, 
	73, 76, 79, 82, 89, 96, 101, 104, 
	107, 116, 119, 122, 125, 128, 132, 140, 
	143, 148, 153, 157, 159, 168, 171, 174, 
	177, 180, 183, 186, 189, 193, 196, 200, 
	204, 206, 209, 212, 215, 219, 222, 226, 
	230, 232, 235, 242, 249, 254, 257, 260, 
	265, 268, 271, 274, 278, 281, 285, 289, 
	291, 292, 293
]

class << self
	attr_accessor :_set_indicies
	private :_set_indicies, :_set_indicies=
end
self._set_indicies = [
	0, 0, 1, 2, 2, 1, 3, 3, 
	1, 4, 4, 1, 5, 5, 1, 6, 
	6, 1, 7, 7, 1, 7, 7, 8, 
	9, 8, 9, 1, 10, 10, 1, 11, 
	11, 1, 12, 12, 1, 13, 13, 1, 
	14, 14, 1, 15, 15, 1, 16, 16, 
	1, 17, 17, 1, 18, 18, 1, 19, 
	19, 1, 20, 20, 1, 21, 21, 1, 
	22, 22, 1, 23, 23, 1, 24, 24, 
	1, 25, 25, 1, 26, 26, 1, 27, 
	27, 1, 27, 27, 28, 28, 28, 28, 
	1, 29, 29, 30, 30, 30, 30, 1, 
	31, 31, 32, 32, 1, 33, 33, 1, 
	34, 34, 1, 34, 34, 35, 36, 37, 
	35, 36, 37, 1, 38, 38, 1, 39, 
	39, 1, 40, 40, 1, 41, 41, 1, 
	41, 41, 42, 1, 43, 43, 44, 45, 
	45, 45, 45, 1, 47, 48, 46, 49, 
	49, 50, 51, 1, 52, 52, 53, 54, 
	1, 55, 56, 55, 1, 48, 46, 52, 
	52, 53, 45, 54, 45, 45, 45, 1, 
	57, 57, 1, 58, 58, 1, 59, 59, 
	1, 60, 60, 1, 61, 61, 1, 62, 
	62, 1, 63, 63, 1, 63, 63, 64, 
	1, 66, 67, 65, 68, 69, 68, 1, 
	70, 71, 70, 1, 67, 65, 72, 72, 
	1, 73, 73, 1, 74, 74, 1, 74, 
	74, 75, 1, 77, 78, 76, 79, 80, 
	79, 1, 81, 82, 81, 1, 78, 76, 
	83, 83, 1, 83, 83, 84, 84, 84, 
	84, 1, 85, 85, 86, 86, 86, 86, 
	1, 87, 87, 88, 88, 1, 89, 89, 
	1, 90, 90, 1, 90, 90, 91, 91, 
	1, 92, 92, 1, 93, 93, 1, 94, 
	94, 1, 94, 94, 95, 1, 97, 98, 
	96, 99, 100, 99, 1, 101, 102, 101, 
	1, 98, 96, 1, 1, 1, 0
]

class << self
	attr_accessor :_set_trans_targs
	private :_set_trans_targs, :_set_trans_targs=
end
self._set_trans_targs = [
	2, 0, 3, 4, 5, 6, 7, 8, 
	9, 18, 10, 11, 12, 13, 14, 15, 
	16, 17, 80, 19, 20, 21, 22, 23, 
	24, 25, 80, 27, 28, 29, 28, 29, 
	30, 31, 32, 33, 45, 57, 34, 35, 
	36, 37, 38, 38, 39, 44, 39, 40, 
	43, 41, 38, 42, 41, 38, 42, 42, 
	81, 46, 47, 48, 49, 50, 51, 52, 
	53, 53, 54, 56, 55, 81, 55, 81, 
	58, 59, 60, 61, 61, 62, 64, 63, 
	81, 63, 81, 66, 67, 68, 67, 68, 
	69, 70, 71, 72, 73, 74, 75, 76, 
	76, 77, 79, 78, 82, 78, 82
]

class << self
	attr_accessor :_set_trans_actions
	private :_set_trans_actions, :_set_trans_actions=
end
self._set_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 13, 0, 0, 0, 0, 0, 
	0, 0, 15, 0, 17, 3, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 7, 0, 41, 9, 20, 20, 
	20, 5, 23, 45, 0, 11, 26, 0, 
	29, 0, 0, 0, 0, 0, 0, 0, 
	17, 1, 1, 1, 5, 49, 0, 32, 
	0, 0, 0, 17, 1, 1, 1, 5, 
	53, 0, 35, 0, 17, 3, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 17, 
	1, 1, 1, 5, 57, 0, 38
]

class << self
	attr_accessor :set_start
end
self.set_start = 1;
class << self
	attr_accessor :set_first_final
end
self.set_first_final = 80;
class << self
	attr_accessor :set_error
end
self.set_error = 0;

class << self
	attr_accessor :set_en_define_annotation
end
self.set_en_define_annotation = 26;
class << self
	attr_accessor :set_en_define_namespace
end
self.set_en_define_namespace = 65;
class << self
	attr_accessor :set_en_define
end
self.set_en_define = 1;


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
	cs = set_start
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
 buffer = []  		end
when 1 then
		begin
 buffer << data[p].ord 		end
when 2 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 3 then
		begin

    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    tmp_value = buffer.pack('C*').force_encoding('utf-8')
    tmp_value.gsub!('\"', '"')
    @value = tmp_value
  		end
when 4 then
		begin

    @listvals = []
    @listbuffer = []
  		end
when 5 then
		begin

    @listbuffer << data[p].ord
  		end
when 6 then
		begin

    if @listbuffer[0] == 34 && @listbuffer[-1] == 34
      @listbuffer = @listbuffer[1...-1]
    end
    tmp_listvalue = @listbuffer.pack('C*').force_encoding('utf-8')
    tmp_listvalue.gsub!('\"', '"')

    @listvals << tmp_listvalue
    @listbuffer = []
  		end
when 7 then
		begin

    @value = @listvals
  		end
when 8 then
		begin

    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 9 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 26
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 10 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 65
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 11 then
		begin

    puts "Annotation List: #{@name}, #{@value}"
  		end
when 12 then
		begin

    puts "Annotation Pattern: #{@name}, #{@value}"
  		end
when 13 then
		begin

    puts "Annotation Pattern: #{@name}, #{@value}"
  		end
when 14 then
		begin

    puts "Namespace URL: #{@name}, #{@value}"
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
    DEFINE.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
