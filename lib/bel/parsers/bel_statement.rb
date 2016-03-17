
# begin: ragel

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 5, 1, 
	16, 1, 21, 1, 22, 1, 24, 1, 
	29, 2, 0, 1, 2, 1, 13, 2, 
	2, 3, 2, 2, 8, 2, 2, 10, 
	2, 2, 14, 2, 2, 27, 2, 4, 
	5, 2, 6, 7, 2, 6, 9, 2, 
	22, 16, 2, 22, 24, 2, 23, 19, 
	2, 28, 29, 2, 29, 16, 2, 29, 
	24, 2, 29, 28, 3, 2, 10, 11, 
	3, 6, 9, 11, 3, 17, 18, 15, 
	3, 20, 31, 16, 3, 21, 20, 16, 
	3, 29, 2, 27, 3, 29, 22, 16, 
	3, 29, 22, 24, 3, 29, 23, 19, 
	3, 30, 20, 16, 4, 2, 17, 18, 
	15, 4, 2, 27, 23, 19, 4, 12, 
	0, 1, 13, 4, 22, 20, 31, 16, 
	4, 24, 20, 31, 16, 4, 25, 0, 
	1, 26, 4, 30, 20, 16, 31, 4, 
	30, 20, 31, 16, 5, 1, 2, 26, 
	27, 0, 5, 17, 18, 15, 23, 19, 
	5, 21, 25, 0, 1, 26, 5, 22, 
	24, 20, 31, 16, 5, 29, 2, 27, 
	23, 19, 5, 30, 20, 16, 24, 31, 
	6, 29, 17, 18, 15, 23, 19, 6, 
	29, 30, 25, 0, 1, 26, 6, 30, 
	20, 16, 22, 24, 31, 7, 2, 27, 
	17, 18, 15, 23, 19, 7, 29, 30, 
	25, 0, 1, 26, 28, 8, 29, 2, 
	27, 17, 18, 15, 23, 19, 8, 29, 
	30, 25, 0, 1, 2, 26, 27
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 31, 38, 48, 
	58, 62, 66, 67, 68, 69, 79, 82, 
	87, 92, 102, 112, 117, 118, 119, 127, 
	138, 149, 160, 171, 180, 188, 196, 207, 
	218, 229, 240, 249, 257, 268, 279, 291, 
	303, 314, 325, 337, 349, 356, 364, 365, 
	367, 368, 369, 379, 389, 391, 392, 393, 
	401, 410, 417, 427, 430, 440, 450, 452, 
	453, 454, 455, 463, 472, 472, 479, 479, 
	479, 479
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 10, 32, 47, 
	95, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 9, 10, 
	32, 47, 47, 10, 10, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 10, 32, 41, 47, 9, 
	10, 32, 41, 47, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 41, 47, 47, 10, 10, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 47, 95, 48, 57, 65, 
	90, 97, 122, 10, 47, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	10, 47, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 41, 47, 95, 48, 57, 65, 
	90, 97, 122, 9, 10, 32, 41, 47, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	41, 47, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 41, 47, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 41, 10, 92, 41, 
	95, 48, 57, 65, 90, 97, 122, 41, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	95, 48, 57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 5, 1, 4, 4, 
	4, 4, 1, 1, 1, 4, 3, 5, 
	5, 4, 4, 5, 1, 1, 2, 5, 
	5, 5, 5, 3, 2, 2, 5, 5, 
	5, 5, 3, 2, 5, 5, 6, 6, 
	5, 5, 6, 6, 1, 2, 1, 2, 
	1, 1, 4, 4, 2, 1, 1, 2, 
	3, 1, 4, 3, 4, 4, 2, 1, 
	1, 1, 2, 3, 0, 1, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 3, 3, 
	0, 0, 0, 0, 0, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 3, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 3, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 26, 31, 39, 
	47, 52, 57, 59, 61, 63, 71, 75, 
	81, 87, 95, 103, 109, 111, 113, 119, 
	128, 137, 146, 155, 162, 168, 174, 183, 
	192, 201, 210, 217, 223, 232, 241, 251, 
	261, 270, 279, 289, 299, 304, 310, 312, 
	315, 317, 319, 327, 335, 338, 340, 342, 
	348, 355, 360, 368, 372, 380, 388, 391, 
	393, 395, 397, 403, 410, 411, 416, 417, 
	418, 419
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 2, 2, 0, 3, 3, 4, 
	2, 2, 2, 2, 0, 3, 3, 4, 
	0, 4, 5, 4, 20, 6, 6, 6, 
	6, 0, 6, 6, 6, 6, 0, 7, 
	7, 8, 17, 17, 17, 17, 0, 7, 
	7, 8, 13, 13, 13, 13, 0, 9, 
	68, 9, 10, 0, 9, 68, 9, 10, 
	0, 11, 0, 0, 12, 68, 12, 14, 
	14, 15, 13, 13, 13, 13, 0, 14, 
	14, 15, 0, 16, 68, 16, 9, 10, 
	0, 16, 68, 16, 9, 10, 0, 18, 
	18, 19, 17, 17, 17, 17, 0, 18, 
	18, 19, 13, 13, 13, 13, 0, 16, 
	68, 16, 9, 10, 0, 21, 0, 0, 
	22, 5, 23, 23, 23, 23, 22, 24, 
	5, 24, 25, 40, 40, 40, 40, 22, 
	24, 5, 24, 25, 40, 40, 40, 40, 
	22, 26, 69, 26, 27, 23, 23, 23, 
	23, 22, 26, 69, 26, 27, 23, 23, 
	23, 23, 22, 5, 28, 23, 23, 23, 
	23, 22, 5, 30, 30, 30, 30, 29, 
	69, 30, 30, 30, 30, 29, 31, 69, 
	31, 32, 36, 36, 36, 36, 29, 31, 
	69, 31, 32, 36, 36, 36, 36, 29, 
	33, 69, 33, 34, 30, 30, 30, 30, 
	29, 33, 69, 33, 34, 30, 30, 30, 
	30, 29, 69, 35, 30, 30, 30, 30, 
	29, 69, 30, 30, 30, 30, 29, 37, 
	69, 37, 38, 36, 36, 36, 36, 29, 
	37, 69, 37, 38, 36, 36, 36, 36, 
	29, 39, 69, 39, 33, 34, 30, 30, 
	30, 30, 29, 39, 69, 39, 33, 34, 
	30, 30, 30, 30, 29, 41, 5, 41, 
	42, 40, 40, 40, 40, 22, 41, 5, 
	41, 42, 40, 40, 40, 40, 22, 43, 
	69, 43, 26, 27, 23, 23, 23, 23, 
	22, 43, 69, 43, 26, 27, 23, 23, 
	23, 23, 22, 45, 45, 45, 45, 0, 
	70, 45, 45, 45, 45, 0, 47, 0, 
	48, 49, 47, 71, 0, 49, 47, 51, 
	51, 52, 56, 56, 56, 56, 0, 51, 
	51, 52, 55, 55, 55, 55, 0, 53, 
	54, 52, 72, 0, 54, 52, 72, 55, 
	55, 55, 55, 0, 72, 51, 56, 56, 
	56, 56, 0, 58, 58, 58, 58, 0, 
	59, 59, 60, 58, 58, 58, 58, 0, 
	59, 59, 60, 0, 61, 61, 62, 67, 
	67, 67, 67, 0, 61, 61, 62, 66, 
	66, 66, 66, 0, 63, 65, 62, 64, 
	0, 73, 0, 65, 62, 64, 66, 66, 
	66, 66, 0, 64, 61, 67, 67, 67, 
	67, 0, 0, 6, 6, 6, 6, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	17, 17, 17, 17, 0, 3, 3, 108, 
	1, 1, 1, 1, 0, 0, 0, 76, 
	0, 0, 84, 0, 9, 160, 160, 160, 
	160, 0, 133, 133, 133, 133, 0, 35, 
	35, 113, 148, 148, 148, 148, 0, 0, 
	0, 53, 17, 17, 17, 17, 0, 13, 
	128, 13, 13, 0, 0, 80, 0, 0, 
	0, 0, 0, 0, 56, 143, 15, 3, 
	3, 108, 1, 1, 1, 1, 0, 0, 
	0, 76, 0, 11, 123, 11, 47, 11, 
	0, 0, 80, 0, 7, 0, 0, 35, 
	35, 205, 148, 148, 148, 148, 0, 0, 
	0, 154, 17, 17, 17, 17, 0, 50, 
	166, 50, 47, 50, 0, 0, 0, 0, 
	56, 104, 191, 191, 191, 191, 15, 88, 
	104, 88, 172, 230, 230, 230, 230, 15, 
	15, 104, 15, 100, 191, 191, 191, 191, 
	15, 62, 178, 62, 62, 191, 191, 191, 
	191, 15, 15, 138, 15, 15, 191, 191, 
	191, 191, 15, 104, 15, 191, 191, 191, 
	191, 15, 104, 213, 213, 213, 213, 65, 
	138, 191, 191, 191, 191, 15, 88, 138, 
	88, 172, 230, 230, 230, 230, 15, 15, 
	138, 15, 100, 191, 191, 191, 191, 15, 
	62, 178, 62, 62, 191, 191, 191, 191, 
	15, 15, 138, 15, 15, 191, 191, 191, 
	191, 15, 138, 15, 191, 191, 191, 191, 
	15, 138, 213, 213, 213, 213, 65, 88, 
	138, 88, 221, 230, 230, 230, 230, 15, 
	15, 138, 15, 184, 191, 191, 191, 191, 
	15, 96, 198, 96, 92, 96, 191, 191, 
	191, 191, 15, 15, 138, 15, 59, 15, 
	191, 191, 191, 191, 15, 88, 104, 88, 
	221, 230, 230, 230, 230, 15, 15, 104, 
	15, 184, 191, 191, 191, 191, 15, 96, 
	198, 96, 92, 96, 191, 191, 191, 191, 
	15, 15, 138, 15, 59, 15, 191, 191, 
	191, 191, 15, 17, 17, 17, 17, 0, 
	23, 1, 1, 1, 1, 0, 38, 0, 
	5, 5, 5, 41, 0, 5, 5, 0, 
	0, 38, 17, 17, 17, 17, 0, 0, 
	0, 38, 17, 17, 17, 17, 0, 5, 
	5, 5, 72, 0, 5, 5, 68, 1, 
	1, 1, 1, 0, 68, 26, 1, 1, 
	1, 1, 0, 118, 118, 118, 118, 0, 
	32, 32, 32, 20, 20, 20, 20, 0, 
	0, 0, 0, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 5, 5, 5, 44, 
	0, 0, 0, 5, 5, 29, 1, 1, 
	1, 1, 0, 29, 26, 1, 1, 1, 
	1, 0, 0, 133, 133, 133, 133, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 68;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 44;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 46;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 50;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 57;
class << self
	attr_accessor :bel_en_statement
end
self.bel_en_statement = 1;


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

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    # yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    # yield @buffers[:string]
  		end
when 8 then
		begin

    @bel_parameter   = s(:parameter,
                         s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    # yield @bel_parameter
  		end
when 12 then
		begin

    buffer = []
  		end
when 13 then
		begin

    buffer << data[p].ord
  		end
when 14 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 15 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 57
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 16 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 17 then
		begin
 @term_stack = [] 		end
when 18 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 19 then
		begin
	begin
		stack[top] = cs
		top+= 1
		cs = 1
		_trigger_goto = true
		_goto_level = _again
		break
	end
		end
when 20 then
		begin

    @statement = @statement_stack.pop
    @statement.annotations = @annotations.clone()

    if @statement_group
      @statement_group.statements << @statement
    end

    if @statement.relationship == :hasComponents
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasComponent, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    elsif @statement.relationship == :hasMembers
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasMember, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    else
      yield @statement
    end
  		end
when 21 then
		begin

    @statement_stack.last.subject = @term
  		end
when 22 then
		begin

    @statement_stack.last.object = @term
  		end
when 23 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 24 then
		begin

    @statement = @statement_stack.pop
  		end
when 25 then
		begin
@relbuffer = []		end
when 26 then
		begin
@relbuffer << data[p].ord		end
when 27 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 28 then
		begin
@cmtbuffer = []		end
when 29 then
		begin
@cmtbuffer << data[p].ord		end
when 30 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 31 then
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

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 5, 1, 
	16, 1, 21, 1, 22, 1, 24, 1, 
	29, 2, 0, 1, 2, 1, 13, 2, 
	2, 3, 2, 2, 8, 2, 2, 10, 
	2, 2, 14, 2, 2, 27, 2, 4, 
	5, 2, 6, 7, 2, 6, 9, 2, 
	22, 16, 2, 22, 24, 2, 23, 19, 
	2, 28, 29, 2, 29, 16, 2, 29, 
	24, 2, 29, 28, 3, 2, 10, 11, 
	3, 6, 9, 11, 3, 17, 18, 15, 
	3, 20, 31, 16, 3, 21, 20, 16, 
	3, 29, 2, 27, 3, 29, 22, 16, 
	3, 29, 22, 24, 3, 29, 23, 19, 
	3, 30, 20, 16, 4, 2, 17, 18, 
	15, 4, 2, 27, 23, 19, 4, 12, 
	0, 1, 13, 4, 22, 20, 31, 16, 
	4, 24, 20, 31, 16, 4, 25, 0, 
	1, 26, 4, 30, 20, 16, 31, 4, 
	30, 20, 31, 16, 5, 1, 2, 26, 
	27, 0, 5, 17, 18, 15, 23, 19, 
	5, 21, 25, 0, 1, 26, 5, 22, 
	24, 20, 31, 16, 5, 29, 2, 27, 
	23, 19, 5, 30, 20, 16, 24, 31, 
	6, 29, 17, 18, 15, 23, 19, 6, 
	29, 30, 25, 0, 1, 26, 6, 30, 
	20, 16, 22, 24, 31, 7, 2, 27, 
	17, 18, 15, 23, 19, 7, 29, 30, 
	25, 0, 1, 26, 28, 8, 29, 2, 
	27, 17, 18, 15, 23, 19, 8, 29, 
	30, 25, 0, 1, 2, 26, 27
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 31, 38, 48, 
	58, 62, 66, 67, 68, 69, 79, 82, 
	87, 92, 102, 112, 117, 118, 119, 127, 
	138, 149, 160, 171, 180, 188, 196, 207, 
	218, 229, 240, 249, 257, 268, 279, 291, 
	303, 314, 325, 337, 349, 356, 364, 365, 
	367, 368, 369, 379, 389, 391, 392, 393, 
	401, 410, 417, 427, 430, 440, 450, 452, 
	453, 454, 455, 463, 472, 472, 479, 479, 
	479, 479
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 10, 32, 47, 
	95, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 9, 10, 
	32, 47, 47, 10, 10, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 10, 32, 41, 47, 9, 
	10, 32, 41, 47, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 41, 47, 47, 10, 10, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 47, 95, 48, 57, 65, 
	90, 97, 122, 10, 47, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	10, 47, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 41, 47, 95, 48, 57, 65, 
	90, 97, 122, 9, 10, 32, 41, 47, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	41, 47, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 41, 47, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 41, 10, 92, 41, 
	95, 48, 57, 65, 90, 97, 122, 41, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	95, 48, 57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 5, 1, 4, 4, 
	4, 4, 1, 1, 1, 4, 3, 5, 
	5, 4, 4, 5, 1, 1, 2, 5, 
	5, 5, 5, 3, 2, 2, 5, 5, 
	5, 5, 3, 2, 5, 5, 6, 6, 
	5, 5, 6, 6, 1, 2, 1, 2, 
	1, 1, 4, 4, 2, 1, 1, 2, 
	3, 1, 4, 3, 4, 4, 2, 1, 
	1, 1, 2, 3, 0, 1, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 3, 3, 
	0, 0, 0, 0, 0, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 3, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 3, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 26, 31, 39, 
	47, 52, 57, 59, 61, 63, 71, 75, 
	81, 87, 95, 103, 109, 111, 113, 119, 
	128, 137, 146, 155, 162, 168, 174, 183, 
	192, 201, 210, 217, 223, 232, 241, 251, 
	261, 270, 279, 289, 299, 304, 310, 312, 
	315, 317, 319, 327, 335, 338, 340, 342, 
	348, 355, 360, 368, 372, 380, 388, 391, 
	393, 395, 397, 403, 410, 411, 416, 417, 
	418, 419
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 2, 2, 0, 3, 3, 4, 
	2, 2, 2, 2, 0, 3, 3, 4, 
	0, 4, 5, 4, 20, 6, 6, 6, 
	6, 0, 6, 6, 6, 6, 0, 7, 
	7, 8, 17, 17, 17, 17, 0, 7, 
	7, 8, 13, 13, 13, 13, 0, 9, 
	68, 9, 10, 0, 9, 68, 9, 10, 
	0, 11, 0, 0, 12, 68, 12, 14, 
	14, 15, 13, 13, 13, 13, 0, 14, 
	14, 15, 0, 16, 68, 16, 9, 10, 
	0, 16, 68, 16, 9, 10, 0, 18, 
	18, 19, 17, 17, 17, 17, 0, 18, 
	18, 19, 13, 13, 13, 13, 0, 16, 
	68, 16, 9, 10, 0, 21, 0, 0, 
	22, 5, 23, 23, 23, 23, 22, 24, 
	5, 24, 25, 40, 40, 40, 40, 22, 
	24, 5, 24, 25, 40, 40, 40, 40, 
	22, 26, 69, 26, 27, 23, 23, 23, 
	23, 22, 26, 69, 26, 27, 23, 23, 
	23, 23, 22, 5, 28, 23, 23, 23, 
	23, 22, 5, 30, 30, 30, 30, 29, 
	69, 30, 30, 30, 30, 29, 31, 69, 
	31, 32, 36, 36, 36, 36, 29, 31, 
	69, 31, 32, 36, 36, 36, 36, 29, 
	33, 69, 33, 34, 30, 30, 30, 30, 
	29, 33, 69, 33, 34, 30, 30, 30, 
	30, 29, 69, 35, 30, 30, 30, 30, 
	29, 69, 30, 30, 30, 30, 29, 37, 
	69, 37, 38, 36, 36, 36, 36, 29, 
	37, 69, 37, 38, 36, 36, 36, 36, 
	29, 39, 69, 39, 33, 34, 30, 30, 
	30, 30, 29, 39, 69, 39, 33, 34, 
	30, 30, 30, 30, 29, 41, 5, 41, 
	42, 40, 40, 40, 40, 22, 41, 5, 
	41, 42, 40, 40, 40, 40, 22, 43, 
	69, 43, 26, 27, 23, 23, 23, 23, 
	22, 43, 69, 43, 26, 27, 23, 23, 
	23, 23, 22, 45, 45, 45, 45, 0, 
	70, 45, 45, 45, 45, 0, 47, 0, 
	48, 49, 47, 71, 0, 49, 47, 51, 
	51, 52, 56, 56, 56, 56, 0, 51, 
	51, 52, 55, 55, 55, 55, 0, 53, 
	54, 52, 72, 0, 54, 52, 72, 55, 
	55, 55, 55, 0, 72, 51, 56, 56, 
	56, 56, 0, 58, 58, 58, 58, 0, 
	59, 59, 60, 58, 58, 58, 58, 0, 
	59, 59, 60, 0, 61, 61, 62, 67, 
	67, 67, 67, 0, 61, 61, 62, 66, 
	66, 66, 66, 0, 63, 65, 62, 64, 
	0, 73, 0, 65, 62, 64, 66, 66, 
	66, 66, 0, 64, 61, 67, 67, 67, 
	67, 0, 0, 6, 6, 6, 6, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	17, 17, 17, 17, 0, 3, 3, 108, 
	1, 1, 1, 1, 0, 0, 0, 76, 
	0, 0, 84, 0, 9, 160, 160, 160, 
	160, 0, 133, 133, 133, 133, 0, 35, 
	35, 113, 148, 148, 148, 148, 0, 0, 
	0, 53, 17, 17, 17, 17, 0, 13, 
	128, 13, 13, 0, 0, 80, 0, 0, 
	0, 0, 0, 0, 56, 143, 15, 3, 
	3, 108, 1, 1, 1, 1, 0, 0, 
	0, 76, 0, 11, 123, 11, 47, 11, 
	0, 0, 80, 0, 7, 0, 0, 35, 
	35, 205, 148, 148, 148, 148, 0, 0, 
	0, 154, 17, 17, 17, 17, 0, 50, 
	166, 50, 47, 50, 0, 0, 0, 0, 
	56, 104, 191, 191, 191, 191, 15, 88, 
	104, 88, 172, 230, 230, 230, 230, 15, 
	15, 104, 15, 100, 191, 191, 191, 191, 
	15, 62, 178, 62, 62, 191, 191, 191, 
	191, 15, 15, 138, 15, 15, 191, 191, 
	191, 191, 15, 104, 15, 191, 191, 191, 
	191, 15, 104, 213, 213, 213, 213, 65, 
	138, 191, 191, 191, 191, 15, 88, 138, 
	88, 172, 230, 230, 230, 230, 15, 15, 
	138, 15, 100, 191, 191, 191, 191, 15, 
	62, 178, 62, 62, 191, 191, 191, 191, 
	15, 15, 138, 15, 15, 191, 191, 191, 
	191, 15, 138, 15, 191, 191, 191, 191, 
	15, 138, 213, 213, 213, 213, 65, 88, 
	138, 88, 221, 230, 230, 230, 230, 15, 
	15, 138, 15, 184, 191, 191, 191, 191, 
	15, 96, 198, 96, 92, 96, 191, 191, 
	191, 191, 15, 15, 138, 15, 59, 15, 
	191, 191, 191, 191, 15, 88, 104, 88, 
	221, 230, 230, 230, 230, 15, 15, 104, 
	15, 184, 191, 191, 191, 191, 15, 96, 
	198, 96, 92, 96, 191, 191, 191, 191, 
	15, 15, 138, 15, 59, 15, 191, 191, 
	191, 191, 15, 17, 17, 17, 17, 0, 
	23, 1, 1, 1, 1, 0, 38, 0, 
	5, 5, 5, 41, 0, 5, 5, 0, 
	0, 38, 17, 17, 17, 17, 0, 0, 
	0, 38, 17, 17, 17, 17, 0, 5, 
	5, 5, 72, 0, 5, 5, 68, 1, 
	1, 1, 1, 0, 68, 26, 1, 1, 
	1, 1, 0, 118, 118, 118, 118, 0, 
	32, 32, 32, 20, 20, 20, 20, 0, 
	0, 0, 0, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 5, 5, 5, 44, 
	0, 0, 0, 5, 5, 29, 1, 1, 
	1, 1, 0, 29, 26, 1, 1, 1, 
	1, 0, 0, 133, 133, 133, 133, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 68;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 44;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 46;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 50;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 57;
class << self
	attr_accessor :bel_en_statement
end
self.bel_en_statement = 1;


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

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    # yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    # yield @buffers[:string]
  		end
when 8 then
		begin

    @bel_parameter   = s(:parameter,
                         s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    # yield @bel_parameter
  		end
when 12 then
		begin

    buffer = []
  		end
when 13 then
		begin

    buffer << data[p].ord
  		end
when 14 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 15 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 57
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 16 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 17 then
		begin
 @term_stack = [] 		end
when 18 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 19 then
		begin
	begin
		stack[top] = cs
		top+= 1
		cs = 1
		_trigger_goto = true
		_goto_level = _again
		break
	end
		end
when 20 then
		begin

    @statement = @statement_stack.pop
    @statement.annotations = @annotations.clone()

    if @statement_group
      @statement_group.statements << @statement
    end

    if @statement.relationship == :hasComponents
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasComponent, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    elsif @statement.relationship == :hasMembers
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasMember, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    else
      yield @statement
    end
  		end
when 21 then
		begin

    @statement_stack.last.subject = @term
  		end
when 22 then
		begin

    @statement_stack.last.object = @term
  		end
when 23 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 24 then
		begin

    @statement = @statement_stack.pop
  		end
when 25 then
		begin
@relbuffer = []		end
when 26 then
		begin
@relbuffer << data[p].ord		end
when 27 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 28 then
		begin
@cmtbuffer = []		end
when 29 then
		begin
@cmtbuffer << data[p].ord		end
when 30 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 31 then
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

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 5, 1, 
	16, 1, 21, 1, 22, 1, 24, 1, 
	29, 2, 0, 1, 2, 1, 13, 2, 
	2, 3, 2, 2, 8, 2, 2, 10, 
	2, 2, 14, 2, 2, 27, 2, 4, 
	5, 2, 6, 7, 2, 6, 9, 2, 
	22, 16, 2, 22, 24, 2, 23, 19, 
	2, 28, 29, 2, 29, 16, 2, 29, 
	24, 2, 29, 28, 3, 2, 10, 11, 
	3, 6, 9, 11, 3, 17, 18, 15, 
	3, 20, 31, 16, 3, 21, 20, 16, 
	3, 29, 2, 27, 3, 29, 22, 16, 
	3, 29, 22, 24, 3, 29, 23, 19, 
	3, 30, 20, 16, 4, 2, 17, 18, 
	15, 4, 2, 27, 23, 19, 4, 12, 
	0, 1, 13, 4, 22, 20, 31, 16, 
	4, 24, 20, 31, 16, 4, 25, 0, 
	1, 26, 4, 30, 20, 16, 31, 4, 
	30, 20, 31, 16, 5, 1, 2, 26, 
	27, 0, 5, 17, 18, 15, 23, 19, 
	5, 21, 25, 0, 1, 26, 5, 22, 
	24, 20, 31, 16, 5, 29, 2, 27, 
	23, 19, 5, 30, 20, 16, 24, 31, 
	6, 29, 17, 18, 15, 23, 19, 6, 
	29, 30, 25, 0, 1, 26, 6, 30, 
	20, 16, 22, 24, 31, 7, 2, 27, 
	17, 18, 15, 23, 19, 7, 29, 30, 
	25, 0, 1, 26, 28, 8, 29, 2, 
	27, 17, 18, 15, 23, 19, 8, 29, 
	30, 25, 0, 1, 2, 26, 27
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 31, 38, 48, 
	58, 62, 66, 67, 68, 69, 79, 82, 
	87, 92, 102, 112, 117, 118, 119, 127, 
	138, 149, 160, 171, 180, 188, 196, 207, 
	218, 229, 240, 249, 257, 268, 279, 291, 
	303, 314, 325, 337, 349, 356, 364, 365, 
	367, 368, 369, 379, 389, 391, 392, 393, 
	401, 410, 417, 427, 430, 440, 450, 452, 
	453, 454, 455, 463, 472, 472, 479, 479, 
	479, 479
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 10, 32, 47, 
	95, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 9, 10, 
	32, 47, 47, 10, 10, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 10, 32, 41, 47, 9, 
	10, 32, 41, 47, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 41, 47, 47, 10, 10, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 47, 95, 48, 57, 65, 
	90, 97, 122, 10, 47, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	10, 47, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 41, 47, 95, 48, 57, 65, 
	90, 97, 122, 9, 10, 32, 41, 47, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	41, 47, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 41, 47, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 41, 10, 92, 41, 
	95, 48, 57, 65, 90, 97, 122, 41, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	95, 48, 57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 5, 1, 4, 4, 
	4, 4, 1, 1, 1, 4, 3, 5, 
	5, 4, 4, 5, 1, 1, 2, 5, 
	5, 5, 5, 3, 2, 2, 5, 5, 
	5, 5, 3, 2, 5, 5, 6, 6, 
	5, 5, 6, 6, 1, 2, 1, 2, 
	1, 1, 4, 4, 2, 1, 1, 2, 
	3, 1, 4, 3, 4, 4, 2, 1, 
	1, 1, 2, 3, 0, 1, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 3, 3, 
	0, 0, 0, 0, 0, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 3, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 3, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 26, 31, 39, 
	47, 52, 57, 59, 61, 63, 71, 75, 
	81, 87, 95, 103, 109, 111, 113, 119, 
	128, 137, 146, 155, 162, 168, 174, 183, 
	192, 201, 210, 217, 223, 232, 241, 251, 
	261, 270, 279, 289, 299, 304, 310, 312, 
	315, 317, 319, 327, 335, 338, 340, 342, 
	348, 355, 360, 368, 372, 380, 388, 391, 
	393, 395, 397, 403, 410, 411, 416, 417, 
	418, 419
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 2, 2, 0, 3, 3, 4, 
	2, 2, 2, 2, 0, 3, 3, 4, 
	0, 4, 5, 4, 20, 6, 6, 6, 
	6, 0, 6, 6, 6, 6, 0, 7, 
	7, 8, 17, 17, 17, 17, 0, 7, 
	7, 8, 13, 13, 13, 13, 0, 9, 
	68, 9, 10, 0, 9, 68, 9, 10, 
	0, 11, 0, 0, 12, 68, 12, 14, 
	14, 15, 13, 13, 13, 13, 0, 14, 
	14, 15, 0, 16, 68, 16, 9, 10, 
	0, 16, 68, 16, 9, 10, 0, 18, 
	18, 19, 17, 17, 17, 17, 0, 18, 
	18, 19, 13, 13, 13, 13, 0, 16, 
	68, 16, 9, 10, 0, 21, 0, 0, 
	22, 5, 23, 23, 23, 23, 22, 24, 
	5, 24, 25, 40, 40, 40, 40, 22, 
	24, 5, 24, 25, 40, 40, 40, 40, 
	22, 26, 69, 26, 27, 23, 23, 23, 
	23, 22, 26, 69, 26, 27, 23, 23, 
	23, 23, 22, 5, 28, 23, 23, 23, 
	23, 22, 5, 30, 30, 30, 30, 29, 
	69, 30, 30, 30, 30, 29, 31, 69, 
	31, 32, 36, 36, 36, 36, 29, 31, 
	69, 31, 32, 36, 36, 36, 36, 29, 
	33, 69, 33, 34, 30, 30, 30, 30, 
	29, 33, 69, 33, 34, 30, 30, 30, 
	30, 29, 69, 35, 30, 30, 30, 30, 
	29, 69, 30, 30, 30, 30, 29, 37, 
	69, 37, 38, 36, 36, 36, 36, 29, 
	37, 69, 37, 38, 36, 36, 36, 36, 
	29, 39, 69, 39, 33, 34, 30, 30, 
	30, 30, 29, 39, 69, 39, 33, 34, 
	30, 30, 30, 30, 29, 41, 5, 41, 
	42, 40, 40, 40, 40, 22, 41, 5, 
	41, 42, 40, 40, 40, 40, 22, 43, 
	69, 43, 26, 27, 23, 23, 23, 23, 
	22, 43, 69, 43, 26, 27, 23, 23, 
	23, 23, 22, 45, 45, 45, 45, 0, 
	70, 45, 45, 45, 45, 0, 47, 0, 
	48, 49, 47, 71, 0, 49, 47, 51, 
	51, 52, 56, 56, 56, 56, 0, 51, 
	51, 52, 55, 55, 55, 55, 0, 53, 
	54, 52, 72, 0, 54, 52, 72, 55, 
	55, 55, 55, 0, 72, 51, 56, 56, 
	56, 56, 0, 58, 58, 58, 58, 0, 
	59, 59, 60, 58, 58, 58, 58, 0, 
	59, 59, 60, 0, 61, 61, 62, 67, 
	67, 67, 67, 0, 61, 61, 62, 66, 
	66, 66, 66, 0, 63, 65, 62, 64, 
	0, 73, 0, 65, 62, 64, 66, 66, 
	66, 66, 0, 64, 61, 67, 67, 67, 
	67, 0, 0, 6, 6, 6, 6, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	17, 17, 17, 17, 0, 3, 3, 108, 
	1, 1, 1, 1, 0, 0, 0, 76, 
	0, 0, 84, 0, 9, 160, 160, 160, 
	160, 0, 133, 133, 133, 133, 0, 35, 
	35, 113, 148, 148, 148, 148, 0, 0, 
	0, 53, 17, 17, 17, 17, 0, 13, 
	128, 13, 13, 0, 0, 80, 0, 0, 
	0, 0, 0, 0, 56, 143, 15, 3, 
	3, 108, 1, 1, 1, 1, 0, 0, 
	0, 76, 0, 11, 123, 11, 47, 11, 
	0, 0, 80, 0, 7, 0, 0, 35, 
	35, 205, 148, 148, 148, 148, 0, 0, 
	0, 154, 17, 17, 17, 17, 0, 50, 
	166, 50, 47, 50, 0, 0, 0, 0, 
	56, 104, 191, 191, 191, 191, 15, 88, 
	104, 88, 172, 230, 230, 230, 230, 15, 
	15, 104, 15, 100, 191, 191, 191, 191, 
	15, 62, 178, 62, 62, 191, 191, 191, 
	191, 15, 15, 138, 15, 15, 191, 191, 
	191, 191, 15, 104, 15, 191, 191, 191, 
	191, 15, 104, 213, 213, 213, 213, 65, 
	138, 191, 191, 191, 191, 15, 88, 138, 
	88, 172, 230, 230, 230, 230, 15, 15, 
	138, 15, 100, 191, 191, 191, 191, 15, 
	62, 178, 62, 62, 191, 191, 191, 191, 
	15, 15, 138, 15, 15, 191, 191, 191, 
	191, 15, 138, 15, 191, 191, 191, 191, 
	15, 138, 213, 213, 213, 213, 65, 88, 
	138, 88, 221, 230, 230, 230, 230, 15, 
	15, 138, 15, 184, 191, 191, 191, 191, 
	15, 96, 198, 96, 92, 96, 191, 191, 
	191, 191, 15, 15, 138, 15, 59, 15, 
	191, 191, 191, 191, 15, 88, 104, 88, 
	221, 230, 230, 230, 230, 15, 15, 104, 
	15, 184, 191, 191, 191, 191, 15, 96, 
	198, 96, 92, 96, 191, 191, 191, 191, 
	15, 15, 138, 15, 59, 15, 191, 191, 
	191, 191, 15, 17, 17, 17, 17, 0, 
	23, 1, 1, 1, 1, 0, 38, 0, 
	5, 5, 5, 41, 0, 5, 5, 0, 
	0, 38, 17, 17, 17, 17, 0, 0, 
	0, 38, 17, 17, 17, 17, 0, 5, 
	5, 5, 72, 0, 5, 5, 68, 1, 
	1, 1, 1, 0, 68, 26, 1, 1, 
	1, 1, 0, 118, 118, 118, 118, 0, 
	32, 32, 32, 20, 20, 20, 20, 0, 
	0, 0, 0, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 5, 5, 5, 44, 
	0, 0, 0, 5, 5, 29, 1, 1, 
	1, 1, 0, 29, 26, 1, 1, 1, 
	1, 0, 0, 133, 133, 133, 133, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 68;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 44;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 46;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 50;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 57;
class << self
	attr_accessor :bel_en_statement
end
self.bel_en_statement = 1;


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

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    # yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    # yield @buffers[:string]
  		end
when 8 then
		begin

    @bel_parameter   = s(:parameter,
                         s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    # yield @bel_parameter
  		end
when 12 then
		begin

    buffer = []
  		end
when 13 then
		begin

    buffer << data[p].ord
  		end
when 14 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 15 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 57
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 16 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 17 then
		begin
 @term_stack = [] 		end
when 18 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 19 then
		begin
	begin
		stack[top] = cs
		top+= 1
		cs = 1
		_trigger_goto = true
		_goto_level = _again
		break
	end
		end
when 20 then
		begin

    @statement = @statement_stack.pop
    @statement.annotations = @annotations.clone()

    if @statement_group
      @statement_group.statements << @statement
    end

    if @statement.relationship == :hasComponents
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasComponent, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    elsif @statement.relationship == :hasMembers
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasMember, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    else
      yield @statement
    end
  		end
when 21 then
		begin

    @statement_stack.last.subject = @term
  		end
when 22 then
		begin

    @statement_stack.last.object = @term
  		end
when 23 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 24 then
		begin

    @statement = @statement_stack.pop
  		end
when 25 then
		begin
@relbuffer = []		end
when 26 then
		begin
@relbuffer << data[p].ord		end
when 27 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 28 then
		begin
@cmtbuffer = []		end
when 29 then
		begin
@cmtbuffer << data[p].ord		end
when 30 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 31 then
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

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 5, 1, 
	16, 1, 21, 1, 22, 1, 24, 1, 
	29, 2, 0, 1, 2, 1, 13, 2, 
	2, 3, 2, 2, 8, 2, 2, 10, 
	2, 2, 14, 2, 2, 27, 2, 4, 
	5, 2, 6, 7, 2, 6, 9, 2, 
	22, 16, 2, 22, 24, 2, 23, 19, 
	2, 28, 29, 2, 29, 16, 2, 29, 
	24, 2, 29, 28, 3, 2, 10, 11, 
	3, 6, 9, 11, 3, 17, 18, 15, 
	3, 20, 31, 16, 3, 21, 20, 16, 
	3, 29, 2, 27, 3, 29, 22, 16, 
	3, 29, 22, 24, 3, 29, 23, 19, 
	3, 30, 20, 16, 4, 2, 17, 18, 
	15, 4, 2, 27, 23, 19, 4, 12, 
	0, 1, 13, 4, 22, 20, 31, 16, 
	4, 24, 20, 31, 16, 4, 25, 0, 
	1, 26, 4, 30, 20, 16, 31, 4, 
	30, 20, 31, 16, 5, 1, 2, 26, 
	27, 0, 5, 17, 18, 15, 23, 19, 
	5, 21, 25, 0, 1, 26, 5, 22, 
	24, 20, 31, 16, 5, 29, 2, 27, 
	23, 19, 5, 30, 20, 16, 24, 31, 
	6, 29, 17, 18, 15, 23, 19, 6, 
	29, 30, 25, 0, 1, 26, 6, 30, 
	20, 16, 22, 24, 31, 7, 2, 27, 
	17, 18, 15, 23, 19, 7, 29, 30, 
	25, 0, 1, 26, 28, 8, 29, 2, 
	27, 17, 18, 15, 23, 19, 8, 29, 
	30, 25, 0, 1, 2, 26, 27
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 31, 38, 48, 
	58, 62, 66, 67, 68, 69, 79, 82, 
	87, 92, 102, 112, 117, 118, 119, 127, 
	138, 149, 160, 171, 180, 188, 196, 207, 
	218, 229, 240, 249, 257, 268, 279, 291, 
	303, 314, 325, 337, 349, 356, 364, 365, 
	367, 368, 369, 379, 389, 391, 392, 393, 
	401, 410, 417, 427, 430, 440, 450, 452, 
	453, 454, 455, 463, 472, 472, 479, 479, 
	479, 479
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 10, 32, 47, 
	95, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 9, 10, 
	32, 47, 47, 10, 10, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 10, 32, 41, 47, 9, 
	10, 32, 41, 47, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 41, 47, 47, 10, 10, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 47, 95, 48, 57, 65, 
	90, 97, 122, 10, 47, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	10, 47, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 41, 47, 95, 48, 57, 65, 
	90, 97, 122, 9, 10, 32, 41, 47, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	41, 47, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 41, 47, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 41, 10, 92, 41, 
	95, 48, 57, 65, 90, 97, 122, 41, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	95, 48, 57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 5, 1, 4, 4, 
	4, 4, 1, 1, 1, 4, 3, 5, 
	5, 4, 4, 5, 1, 1, 2, 5, 
	5, 5, 5, 3, 2, 2, 5, 5, 
	5, 5, 3, 2, 5, 5, 6, 6, 
	5, 5, 6, 6, 1, 2, 1, 2, 
	1, 1, 4, 4, 2, 1, 1, 2, 
	3, 1, 4, 3, 4, 4, 2, 1, 
	1, 1, 2, 3, 0, 1, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 3, 3, 
	0, 0, 0, 0, 0, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 3, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 3, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 26, 31, 39, 
	47, 52, 57, 59, 61, 63, 71, 75, 
	81, 87, 95, 103, 109, 111, 113, 119, 
	128, 137, 146, 155, 162, 168, 174, 183, 
	192, 201, 210, 217, 223, 232, 241, 251, 
	261, 270, 279, 289, 299, 304, 310, 312, 
	315, 317, 319, 327, 335, 338, 340, 342, 
	348, 355, 360, 368, 372, 380, 388, 391, 
	393, 395, 397, 403, 410, 411, 416, 417, 
	418, 419
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 2, 2, 0, 3, 3, 4, 
	2, 2, 2, 2, 0, 3, 3, 4, 
	0, 4, 5, 4, 20, 6, 6, 6, 
	6, 0, 6, 6, 6, 6, 0, 7, 
	7, 8, 17, 17, 17, 17, 0, 7, 
	7, 8, 13, 13, 13, 13, 0, 9, 
	68, 9, 10, 0, 9, 68, 9, 10, 
	0, 11, 0, 0, 12, 68, 12, 14, 
	14, 15, 13, 13, 13, 13, 0, 14, 
	14, 15, 0, 16, 68, 16, 9, 10, 
	0, 16, 68, 16, 9, 10, 0, 18, 
	18, 19, 17, 17, 17, 17, 0, 18, 
	18, 19, 13, 13, 13, 13, 0, 16, 
	68, 16, 9, 10, 0, 21, 0, 0, 
	22, 5, 23, 23, 23, 23, 22, 24, 
	5, 24, 25, 40, 40, 40, 40, 22, 
	24, 5, 24, 25, 40, 40, 40, 40, 
	22, 26, 69, 26, 27, 23, 23, 23, 
	23, 22, 26, 69, 26, 27, 23, 23, 
	23, 23, 22, 5, 28, 23, 23, 23, 
	23, 22, 5, 30, 30, 30, 30, 29, 
	69, 30, 30, 30, 30, 29, 31, 69, 
	31, 32, 36, 36, 36, 36, 29, 31, 
	69, 31, 32, 36, 36, 36, 36, 29, 
	33, 69, 33, 34, 30, 30, 30, 30, 
	29, 33, 69, 33, 34, 30, 30, 30, 
	30, 29, 69, 35, 30, 30, 30, 30, 
	29, 69, 30, 30, 30, 30, 29, 37, 
	69, 37, 38, 36, 36, 36, 36, 29, 
	37, 69, 37, 38, 36, 36, 36, 36, 
	29, 39, 69, 39, 33, 34, 30, 30, 
	30, 30, 29, 39, 69, 39, 33, 34, 
	30, 30, 30, 30, 29, 41, 5, 41, 
	42, 40, 40, 40, 40, 22, 41, 5, 
	41, 42, 40, 40, 40, 40, 22, 43, 
	69, 43, 26, 27, 23, 23, 23, 23, 
	22, 43, 69, 43, 26, 27, 23, 23, 
	23, 23, 22, 45, 45, 45, 45, 0, 
	70, 45, 45, 45, 45, 0, 47, 0, 
	48, 49, 47, 71, 0, 49, 47, 51, 
	51, 52, 56, 56, 56, 56, 0, 51, 
	51, 52, 55, 55, 55, 55, 0, 53, 
	54, 52, 72, 0, 54, 52, 72, 55, 
	55, 55, 55, 0, 72, 51, 56, 56, 
	56, 56, 0, 58, 58, 58, 58, 0, 
	59, 59, 60, 58, 58, 58, 58, 0, 
	59, 59, 60, 0, 61, 61, 62, 67, 
	67, 67, 67, 0, 61, 61, 62, 66, 
	66, 66, 66, 0, 63, 65, 62, 64, 
	0, 73, 0, 65, 62, 64, 66, 66, 
	66, 66, 0, 64, 61, 67, 67, 67, 
	67, 0, 0, 6, 6, 6, 6, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	17, 17, 17, 17, 0, 3, 3, 108, 
	1, 1, 1, 1, 0, 0, 0, 76, 
	0, 0, 84, 0, 9, 160, 160, 160, 
	160, 0, 133, 133, 133, 133, 0, 35, 
	35, 113, 148, 148, 148, 148, 0, 0, 
	0, 53, 17, 17, 17, 17, 0, 13, 
	128, 13, 13, 0, 0, 80, 0, 0, 
	0, 0, 0, 0, 56, 143, 15, 3, 
	3, 108, 1, 1, 1, 1, 0, 0, 
	0, 76, 0, 11, 123, 11, 47, 11, 
	0, 0, 80, 0, 7, 0, 0, 35, 
	35, 205, 148, 148, 148, 148, 0, 0, 
	0, 154, 17, 17, 17, 17, 0, 50, 
	166, 50, 47, 50, 0, 0, 0, 0, 
	56, 104, 191, 191, 191, 191, 15, 88, 
	104, 88, 172, 230, 230, 230, 230, 15, 
	15, 104, 15, 100, 191, 191, 191, 191, 
	15, 62, 178, 62, 62, 191, 191, 191, 
	191, 15, 15, 138, 15, 15, 191, 191, 
	191, 191, 15, 104, 15, 191, 191, 191, 
	191, 15, 104, 213, 213, 213, 213, 65, 
	138, 191, 191, 191, 191, 15, 88, 138, 
	88, 172, 230, 230, 230, 230, 15, 15, 
	138, 15, 100, 191, 191, 191, 191, 15, 
	62, 178, 62, 62, 191, 191, 191, 191, 
	15, 15, 138, 15, 15, 191, 191, 191, 
	191, 15, 138, 15, 191, 191, 191, 191, 
	15, 138, 213, 213, 213, 213, 65, 88, 
	138, 88, 221, 230, 230, 230, 230, 15, 
	15, 138, 15, 184, 191, 191, 191, 191, 
	15, 96, 198, 96, 92, 96, 191, 191, 
	191, 191, 15, 15, 138, 15, 59, 15, 
	191, 191, 191, 191, 15, 88, 104, 88, 
	221, 230, 230, 230, 230, 15, 15, 104, 
	15, 184, 191, 191, 191, 191, 15, 96, 
	198, 96, 92, 96, 191, 191, 191, 191, 
	15, 15, 138, 15, 59, 15, 191, 191, 
	191, 191, 15, 17, 17, 17, 17, 0, 
	23, 1, 1, 1, 1, 0, 38, 0, 
	5, 5, 5, 41, 0, 5, 5, 0, 
	0, 38, 17, 17, 17, 17, 0, 0, 
	0, 38, 17, 17, 17, 17, 0, 5, 
	5, 5, 72, 0, 5, 5, 68, 1, 
	1, 1, 1, 0, 68, 26, 1, 1, 
	1, 1, 0, 118, 118, 118, 118, 0, 
	32, 32, 32, 20, 20, 20, 20, 0, 
	0, 0, 0, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 5, 5, 5, 44, 
	0, 0, 0, 5, 5, 29, 1, 1, 
	1, 1, 0, 29, 26, 1, 1, 1, 
	1, 0, 0, 133, 133, 133, 133, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 68;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 44;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 46;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 50;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 57;
class << self
	attr_accessor :bel_en_statement
end
self.bel_en_statement = 1;


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

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    # yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    # yield @buffers[:string]
  		end
when 8 then
		begin

    @bel_parameter   = s(:parameter,
                         s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    # yield @bel_parameter
  		end
when 12 then
		begin

    buffer = []
  		end
when 13 then
		begin

    buffer << data[p].ord
  		end
when 14 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 15 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 57
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 16 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 17 then
		begin
 @term_stack = [] 		end
when 18 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 19 then
		begin
	begin
		stack[top] = cs
		top+= 1
		cs = 1
		_trigger_goto = true
		_goto_level = _again
		break
	end
		end
when 20 then
		begin

    @statement = @statement_stack.pop
    @statement.annotations = @annotations.clone()

    if @statement_group
      @statement_group.statements << @statement
    end

    if @statement.relationship == :hasComponents
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasComponent, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    elsif @statement.relationship == :hasMembers
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasMember, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    else
      yield @statement
    end
  		end
when 21 then
		begin

    @statement_stack.last.subject = @term
  		end
when 22 then
		begin

    @statement_stack.last.object = @term
  		end
when 23 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 24 then
		begin

    @statement = @statement_stack.pop
  		end
when 25 then
		begin
@relbuffer = []		end
when 26 then
		begin
@relbuffer << data[p].ord		end
when 27 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 28 then
		begin
@cmtbuffer = []		end
when 29 then
		begin
@cmtbuffer << data[p].ord		end
when 30 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 31 then
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

require_relative 'nonblocking_io_wrapper'

module BelStatement

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

    def initialize(content)
      @content = content
# begin: ragel        
      
class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 5, 1, 
	16, 1, 21, 1, 22, 1, 24, 1, 
	29, 2, 0, 1, 2, 1, 13, 2, 
	2, 3, 2, 2, 8, 2, 2, 10, 
	2, 2, 14, 2, 2, 27, 2, 4, 
	5, 2, 6, 7, 2, 6, 9, 2, 
	22, 16, 2, 22, 24, 2, 23, 19, 
	2, 28, 29, 2, 29, 16, 2, 29, 
	24, 2, 29, 28, 3, 2, 10, 11, 
	3, 6, 9, 11, 3, 17, 18, 15, 
	3, 20, 31, 16, 3, 21, 20, 16, 
	3, 29, 2, 27, 3, 29, 22, 16, 
	3, 29, 22, 24, 3, 29, 23, 19, 
	3, 30, 20, 16, 4, 2, 17, 18, 
	15, 4, 2, 27, 23, 19, 4, 12, 
	0, 1, 13, 4, 22, 20, 31, 16, 
	4, 24, 20, 31, 16, 4, 25, 0, 
	1, 26, 4, 30, 20, 16, 31, 4, 
	30, 20, 31, 16, 5, 1, 2, 26, 
	27, 0, 5, 17, 18, 15, 23, 19, 
	5, 21, 25, 0, 1, 26, 5, 22, 
	24, 20, 31, 16, 5, 29, 2, 27, 
	23, 19, 5, 30, 20, 16, 24, 31, 
	6, 29, 17, 18, 15, 23, 19, 6, 
	29, 30, 25, 0, 1, 26, 6, 30, 
	20, 16, 22, 24, 31, 7, 2, 27, 
	17, 18, 15, 23, 19, 7, 29, 30, 
	25, 0, 1, 26, 28, 8, 29, 2, 
	27, 17, 18, 15, 23, 19, 8, 29, 
	30, 25, 0, 1, 2, 26, 27
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 31, 38, 48, 
	58, 62, 66, 67, 68, 69, 79, 82, 
	87, 92, 102, 112, 117, 118, 119, 127, 
	138, 149, 160, 171, 180, 188, 196, 207, 
	218, 229, 240, 249, 257, 268, 279, 291, 
	303, 314, 325, 337, 349, 356, 364, 365, 
	367, 368, 369, 379, 389, 391, 392, 393, 
	401, 410, 417, 427, 430, 440, 450, 452, 
	453, 454, 455, 463, 472, 472, 479, 479, 
	479, 479
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 10, 32, 47, 
	95, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 9, 10, 
	32, 47, 47, 10, 10, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 10, 32, 41, 47, 9, 
	10, 32, 41, 47, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 41, 47, 47, 10, 10, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	9, 10, 32, 47, 95, 48, 57, 65, 
	90, 97, 122, 10, 47, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 47, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	47, 95, 48, 57, 65, 90, 97, 122, 
	10, 47, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 9, 10, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 41, 47, 95, 48, 57, 65, 
	90, 97, 122, 9, 10, 32, 41, 47, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	10, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 10, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 10, 32, 
	41, 47, 95, 48, 57, 65, 90, 97, 
	122, 9, 10, 32, 41, 47, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 41, 10, 92, 41, 
	95, 48, 57, 65, 90, 97, 122, 41, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	95, 48, 57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 5, 1, 4, 4, 
	4, 4, 1, 1, 1, 4, 3, 5, 
	5, 4, 4, 5, 1, 1, 2, 5, 
	5, 5, 5, 3, 2, 2, 5, 5, 
	5, 5, 3, 2, 5, 5, 6, 6, 
	5, 5, 6, 6, 1, 2, 1, 2, 
	1, 1, 4, 4, 2, 1, 1, 2, 
	3, 1, 4, 3, 4, 4, 2, 1, 
	1, 1, 2, 3, 0, 1, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 3, 3, 
	0, 0, 0, 0, 0, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 0, 0, 3, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 0, 3, 3, 0, 3, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 26, 31, 39, 
	47, 52, 57, 59, 61, 63, 71, 75, 
	81, 87, 95, 103, 109, 111, 113, 119, 
	128, 137, 146, 155, 162, 168, 174, 183, 
	192, 201, 210, 217, 223, 232, 241, 251, 
	261, 270, 279, 289, 299, 304, 310, 312, 
	315, 317, 319, 327, 335, 338, 340, 342, 
	348, 355, 360, 368, 372, 380, 388, 391, 
	393, 395, 397, 403, 410, 411, 416, 417, 
	418, 419
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 2, 2, 0, 3, 3, 4, 
	2, 2, 2, 2, 0, 3, 3, 4, 
	0, 4, 5, 4, 20, 6, 6, 6, 
	6, 0, 6, 6, 6, 6, 0, 7, 
	7, 8, 17, 17, 17, 17, 0, 7, 
	7, 8, 13, 13, 13, 13, 0, 9, 
	68, 9, 10, 0, 9, 68, 9, 10, 
	0, 11, 0, 0, 12, 68, 12, 14, 
	14, 15, 13, 13, 13, 13, 0, 14, 
	14, 15, 0, 16, 68, 16, 9, 10, 
	0, 16, 68, 16, 9, 10, 0, 18, 
	18, 19, 17, 17, 17, 17, 0, 18, 
	18, 19, 13, 13, 13, 13, 0, 16, 
	68, 16, 9, 10, 0, 21, 0, 0, 
	22, 5, 23, 23, 23, 23, 22, 24, 
	5, 24, 25, 40, 40, 40, 40, 22, 
	24, 5, 24, 25, 40, 40, 40, 40, 
	22, 26, 69, 26, 27, 23, 23, 23, 
	23, 22, 26, 69, 26, 27, 23, 23, 
	23, 23, 22, 5, 28, 23, 23, 23, 
	23, 22, 5, 30, 30, 30, 30, 29, 
	69, 30, 30, 30, 30, 29, 31, 69, 
	31, 32, 36, 36, 36, 36, 29, 31, 
	69, 31, 32, 36, 36, 36, 36, 29, 
	33, 69, 33, 34, 30, 30, 30, 30, 
	29, 33, 69, 33, 34, 30, 30, 30, 
	30, 29, 69, 35, 30, 30, 30, 30, 
	29, 69, 30, 30, 30, 30, 29, 37, 
	69, 37, 38, 36, 36, 36, 36, 29, 
	37, 69, 37, 38, 36, 36, 36, 36, 
	29, 39, 69, 39, 33, 34, 30, 30, 
	30, 30, 29, 39, 69, 39, 33, 34, 
	30, 30, 30, 30, 29, 41, 5, 41, 
	42, 40, 40, 40, 40, 22, 41, 5, 
	41, 42, 40, 40, 40, 40, 22, 43, 
	69, 43, 26, 27, 23, 23, 23, 23, 
	22, 43, 69, 43, 26, 27, 23, 23, 
	23, 23, 22, 45, 45, 45, 45, 0, 
	70, 45, 45, 45, 45, 0, 47, 0, 
	48, 49, 47, 71, 0, 49, 47, 51, 
	51, 52, 56, 56, 56, 56, 0, 51, 
	51, 52, 55, 55, 55, 55, 0, 53, 
	54, 52, 72, 0, 54, 52, 72, 55, 
	55, 55, 55, 0, 72, 51, 56, 56, 
	56, 56, 0, 58, 58, 58, 58, 0, 
	59, 59, 60, 58, 58, 58, 58, 0, 
	59, 59, 60, 0, 61, 61, 62, 67, 
	67, 67, 67, 0, 61, 61, 62, 66, 
	66, 66, 66, 0, 63, 65, 62, 64, 
	0, 73, 0, 65, 62, 64, 66, 66, 
	66, 66, 0, 64, 61, 67, 67, 67, 
	67, 0, 0, 6, 6, 6, 6, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	17, 17, 17, 17, 0, 3, 3, 108, 
	1, 1, 1, 1, 0, 0, 0, 76, 
	0, 0, 84, 0, 9, 160, 160, 160, 
	160, 0, 133, 133, 133, 133, 0, 35, 
	35, 113, 148, 148, 148, 148, 0, 0, 
	0, 53, 17, 17, 17, 17, 0, 13, 
	128, 13, 13, 0, 0, 80, 0, 0, 
	0, 0, 0, 0, 56, 143, 15, 3, 
	3, 108, 1, 1, 1, 1, 0, 0, 
	0, 76, 0, 11, 123, 11, 47, 11, 
	0, 0, 80, 0, 7, 0, 0, 35, 
	35, 205, 148, 148, 148, 148, 0, 0, 
	0, 154, 17, 17, 17, 17, 0, 50, 
	166, 50, 47, 50, 0, 0, 0, 0, 
	56, 104, 191, 191, 191, 191, 15, 88, 
	104, 88, 172, 230, 230, 230, 230, 15, 
	15, 104, 15, 100, 191, 191, 191, 191, 
	15, 62, 178, 62, 62, 191, 191, 191, 
	191, 15, 15, 138, 15, 15, 191, 191, 
	191, 191, 15, 104, 15, 191, 191, 191, 
	191, 15, 104, 213, 213, 213, 213, 65, 
	138, 191, 191, 191, 191, 15, 88, 138, 
	88, 172, 230, 230, 230, 230, 15, 15, 
	138, 15, 100, 191, 191, 191, 191, 15, 
	62, 178, 62, 62, 191, 191, 191, 191, 
	15, 15, 138, 15, 15, 191, 191, 191, 
	191, 15, 138, 15, 191, 191, 191, 191, 
	15, 138, 213, 213, 213, 213, 65, 88, 
	138, 88, 221, 230, 230, 230, 230, 15, 
	15, 138, 15, 184, 191, 191, 191, 191, 
	15, 96, 198, 96, 92, 96, 191, 191, 
	191, 191, 15, 15, 138, 15, 59, 15, 
	191, 191, 191, 191, 15, 88, 104, 88, 
	221, 230, 230, 230, 230, 15, 15, 104, 
	15, 184, 191, 191, 191, 191, 15, 96, 
	198, 96, 92, 96, 191, 191, 191, 191, 
	15, 15, 138, 15, 59, 15, 191, 191, 
	191, 191, 15, 17, 17, 17, 17, 0, 
	23, 1, 1, 1, 1, 0, 38, 0, 
	5, 5, 5, 41, 0, 5, 5, 0, 
	0, 38, 17, 17, 17, 17, 0, 0, 
	0, 38, 17, 17, 17, 17, 0, 5, 
	5, 5, 72, 0, 5, 5, 68, 1, 
	1, 1, 1, 0, 68, 26, 1, 1, 
	1, 1, 0, 118, 118, 118, 118, 0, 
	32, 32, 32, 20, 20, 20, 20, 0, 
	0, 0, 0, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 0, 0, 38, 17, 
	17, 17, 17, 0, 5, 5, 5, 44, 
	0, 0, 0, 5, 5, 29, 1, 1, 
	1, 1, 0, 29, 26, 1, 1, 1, 
	1, 0, 0, 133, 133, 133, 133, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 68;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 44;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 46;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 50;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 57;
class << self
	attr_accessor :bel_en_statement
end
self.bel_en_statement = 1;


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

    @buffers[:ident] = []
  		end
when 1 then
		begin

    @buffers[:ident] << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    # yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:string] = []
  		end
when 5 then
		begin

    @buffers[:string] << data[p].ord
  		end
when 6 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 7 then
		begin

    # yield @buffers[:string]
  		end
when 8 then
		begin

    @bel_parameter   = s(:parameter,
                         s(:prefix, @buffers[:ident]))
  		end
when 9 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:string])
  		end
when 10 then
		begin

    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:ident])
  		end
when 11 then
		begin

    # yield @bel_parameter
  		end
when 12 then
		begin

    buffer = []
  		end
when 13 then
		begin

    buffer << data[p].ord
  		end
when 14 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 15 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 57
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 16 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 17 then
		begin
 @term_stack = [] 		end
when 18 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 19 then
		begin
	begin
		stack[top] = cs
		top+= 1
		cs = 1
		_trigger_goto = true
		_goto_level = _again
		break
	end
		end
when 20 then
		begin

    @statement = @statement_stack.pop
    @statement.annotations = @annotations.clone()

    if @statement_group
      @statement_group.statements << @statement
    end

    if @statement.relationship == :hasComponents
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasComponent, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    elsif @statement.relationship == :hasMembers
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasMember, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    else
      yield @statement
    end
  		end
when 21 then
		begin

    @statement_stack.last.subject = @term
  		end
when 22 then
		begin

    @statement_stack.last.object = @term
  		end
when 23 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 24 then
		begin

    @statement = @statement_stack.pop
  		end
when 25 then
		begin
@relbuffer = []		end
when 26 then
		begin
@relbuffer << data[p].ord		end
when 27 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 28 then
		begin
@cmtbuffer = []		end
when 29 then
		begin
@cmtbuffer << data[p].ord		end
when 30 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 31 then
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
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BelStatement.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
