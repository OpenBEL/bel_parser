
# begin: ragel


# end: ragel

require_relative 'nonblocking_io_wrapper'

module DEFINE_ANNOTATION

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
	attr_accessor :_define_annotation_actions
	private :_define_annotation_actions, :_define_annotation_actions=
end
self._define_annotation_actions = [
	0, 1, 1, 1, 2, 1, 3, 1, 
	4, 1, 5, 1, 6, 1, 8, 1, 
	9, 1, 10, 2, 0, 1, 2, 1, 
	5, 2, 3, 6, 2, 3, 9, 2, 
	3, 10, 2, 6, 7, 3, 0, 1, 
	5, 3, 3, 6, 7
]

class << self
	attr_accessor :_define_annotation_key_offsets
	private :_define_annotation_key_offsets, :_define_annotation_key_offsets=
end
self._define_annotation_key_offsets = [
	0, 0, 2, 4, 6, 8, 10, 12, 
	14, 18, 20, 22, 24, 26, 28, 30, 
	32, 34, 36, 38, 47, 56, 60, 62, 
	64, 72, 74, 76, 78, 80, 83, 93, 
	95, 99, 103, 106, 107, 118, 120, 122, 
	124, 126, 128, 130, 132, 135, 137, 140, 
	143, 144, 146, 148, 150, 153, 155, 158, 
	161, 162
]

class << self
	attr_accessor :_define_annotation_trans_keys
	private :_define_annotation_trans_keys, :_define_annotation_trans_keys=
end
self._define_annotation_trans_keys = [
	68, 100, 69, 101, 70, 102, 73, 105, 
	78, 110, 69, 101, 9, 32, 9, 32, 
	65, 97, 78, 110, 78, 110, 79, 111, 
	84, 116, 65, 97, 84, 116, 73, 105, 
	79, 111, 78, 110, 9, 32, 9, 32, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 65, 97, 83, 115, 9, 32, 
	9, 32, 76, 80, 85, 108, 112, 117, 
	73, 105, 83, 115, 84, 116, 9, 32, 
	9, 32, 123, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 44, 125, 9, 32, 44, 125, 9, 
	10, 32, 92, 9, 32, 44, 95, 125, 
	48, 57, 65, 90, 97, 122, 65, 97, 
	84, 116, 84, 116, 69, 101, 82, 114, 
	78, 110, 9, 32, 9, 32, 34, 34, 
	92, 9, 10, 32, 9, 10, 32, 92, 
	82, 114, 76, 108, 9, 32, 9, 32, 
	34, 34, 92, 9, 10, 32, 9, 10, 
	32, 92, 0
]

class << self
	attr_accessor :_define_annotation_single_lengths
	private :_define_annotation_single_lengths, :_define_annotation_single_lengths=
end
self._define_annotation_single_lengths = [
	0, 2, 2, 2, 2, 2, 2, 2, 
	4, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 3, 4, 2, 2, 
	8, 2, 2, 2, 2, 3, 4, 2, 
	4, 4, 3, 1, 5, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 3, 3, 
	1, 2, 2, 2, 3, 2, 3, 3, 
	1, 0
]

class << self
	attr_accessor :_define_annotation_range_lengths
	private :_define_annotation_range_lengths, :_define_annotation_range_lengths=
end
self._define_annotation_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_define_annotation_index_offsets
	private :_define_annotation_index_offsets, :_define_annotation_index_offsets=
end
self._define_annotation_index_offsets = [
	0, 0, 3, 6, 9, 12, 15, 18, 
	21, 26, 29, 32, 35, 38, 41, 44, 
	47, 50, 53, 56, 63, 70, 75, 78, 
	81, 90, 93, 96, 99, 102, 106, 114, 
	117, 122, 127, 131, 133, 142, 145, 148, 
	151, 154, 157, 160, 163, 167, 170, 174, 
	178, 180, 183, 186, 189, 193, 196, 200, 
	204, 206
]

class << self
	attr_accessor :_define_annotation_indicies
	private :_define_annotation_indicies, :_define_annotation_indicies=
end
self._define_annotation_indicies = [
	0, 0, 1, 2, 2, 1, 3, 3, 
	1, 4, 4, 1, 5, 5, 1, 6, 
	6, 1, 7, 7, 1, 7, 7, 8, 
	8, 1, 9, 9, 1, 10, 10, 1, 
	11, 11, 1, 12, 12, 1, 13, 13, 
	1, 14, 14, 1, 15, 15, 1, 16, 
	16, 1, 17, 17, 1, 18, 18, 1, 
	18, 18, 19, 19, 19, 19, 1, 20, 
	20, 21, 21, 21, 21, 1, 22, 22, 
	23, 23, 1, 24, 24, 1, 25, 25, 
	1, 25, 25, 26, 27, 28, 26, 27, 
	28, 1, 29, 29, 1, 30, 30, 1, 
	31, 31, 1, 32, 32, 1, 32, 32, 
	33, 1, 34, 34, 35, 36, 36, 36, 
	36, 1, 38, 39, 37, 40, 40, 41, 
	42, 1, 43, 43, 44, 45, 1, 46, 
	47, 46, 1, 39, 37, 43, 43, 44, 
	36, 45, 36, 36, 36, 1, 48, 48, 
	1, 49, 49, 1, 50, 50, 1, 51, 
	51, 1, 52, 52, 1, 53, 53, 1, 
	54, 54, 1, 54, 54, 55, 1, 57, 
	58, 56, 59, 60, 59, 1, 61, 62, 
	61, 1, 58, 56, 63, 63, 1, 64, 
	64, 1, 65, 65, 1, 65, 65, 66, 
	1, 68, 69, 67, 70, 71, 70, 1, 
	72, 73, 72, 1, 69, 67, 1, 0
]

class << self
	attr_accessor :_define_annotation_trans_targs
	private :_define_annotation_trans_targs, :_define_annotation_trans_targs=
end
self._define_annotation_trans_targs = [
	2, 0, 3, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 14, 15, 16, 
	17, 18, 19, 20, 21, 20, 21, 22, 
	23, 24, 25, 37, 49, 26, 27, 28, 
	29, 30, 30, 31, 36, 31, 32, 35, 
	33, 30, 34, 33, 30, 34, 34, 57, 
	38, 39, 40, 41, 42, 43, 44, 45, 
	45, 46, 48, 47, 57, 47, 57, 50, 
	51, 52, 53, 53, 54, 56, 55, 57, 
	55, 57
]

class << self
	attr_accessor :_define_annotation_trans_actions
	private :_define_annotation_trans_actions, :_define_annotation_trans_actions=
end
self._define_annotation_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 19, 3, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 7, 0, 37, 9, 22, 22, 22, 
	5, 25, 41, 0, 11, 34, 0, 13, 
	0, 0, 0, 0, 0, 0, 0, 19, 
	1, 1, 1, 5, 28, 0, 15, 0, 
	0, 0, 19, 1, 1, 1, 5, 31, 
	0, 17
]

class << self
	attr_accessor :define_annotation_start
end
self.define_annotation_start = 1;
class << self
	attr_accessor :define_annotation_first_final
end
self.define_annotation_first_final = 57;
class << self
	attr_accessor :define_annotation_error
end
self.define_annotation_error = 0;

class << self
	attr_accessor :define_annotation_en_define_annotation
end
self.define_annotation_en_define_annotation = 1;


# end: ragel        
    end

    def each
      buffer = []
      data   = @content.unpack('C*')
      p      = 0
      pe     = data.length

# begin: ragel        
      
begin
	p ||= 0
	pe ||= data.length
	cs = define_annotation_start
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
	_keys = _define_annotation_key_offsets[cs]
	_trans = _define_annotation_index_offsets[cs]
	_klen = _define_annotation_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _define_annotation_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _define_annotation_trans_keys[_mid]
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
	  _klen = _define_annotation_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _define_annotation_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _define_annotation_trans_keys[_mid+1]
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
	_trans = _define_annotation_indicies[_trans]
	cs = _define_annotation_trans_targs[_trans]
	if _define_annotation_trans_actions[_trans] != 0
		_acts = _define_annotation_trans_actions[_trans]
		_nacts = _define_annotation_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _define_annotation_actions[_acts - 1]
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

    puts "Annotation List: #{@name}, #{@value}"
  		end
when 9 then
		begin

    puts "Annotation Pattern: #{@name}, #{@value}"
  		end
when 10 then
		begin

    puts "Annotation Pattern: #{@name}, #{@value}"
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
    DEFINE_ANNOTATION.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
