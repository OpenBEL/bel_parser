
# begin: ragel
=begin

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 12, 1, 15, 1, 17, 1, 
	20, 1, 21, 1, 22, 2, 0, 1, 
	2, 2, 3, 2, 2, 23, 2, 4, 
	5, 2, 6, 7, 2, 8, 10, 2, 
	9, 4, 2, 9, 11, 2, 26, 27, 
	3, 2, 14, 16, 3, 2, 25, 27, 
	3, 4, 19, 16, 3, 8, 13, 16, 
	3, 8, 24, 27, 3, 9, 18, 16, 
	4, 2, 14, 16, 12, 4, 2, 14, 
	16, 17, 4, 4, 19, 16, 21, 4, 
	8, 13, 16, 12, 4, 8, 13, 16, 
	17, 4, 9, 18, 16, 21, 5, 9, 
	18, 4, 19, 16, 6, 9, 18, 4, 
	19, 16, 21
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 2, 4, 6, 8, 17, 26, 
	29, 31, 42, 44, 45, 46, 54, 64, 
	66, 70, 74, 75, 76, 87, 94, 102, 
	103, 105, 106, 107, 108, 118, 120, 124, 
	128, 129, 130, 141, 141, 141, 141
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	83, 115, 69, 101, 84, 116, 9, 32, 
	9, 32, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 61, 9, 32, 9, 
	32, 34, 95, 123, 48, 57, 65, 90, 
	97, 122, 34, 92, 10, 92, 10, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 44, 125, 9, 32, 
	44, 125, 10, 92, 9, 32, 44, 95, 
	125, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 10, 95, 
	48, 57, 65, 90, 97, 122, 34, 34, 
	92, 10, 92, 123, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 44, 125, 9, 32, 44, 125, 
	10, 92, 9, 32, 44, 95, 125, 48, 
	57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 2, 2, 2, 2, 3, 3, 3, 
	2, 5, 2, 1, 1, 2, 4, 2, 
	4, 4, 1, 1, 5, 1, 2, 1, 
	2, 1, 1, 1, 4, 2, 4, 4, 
	1, 1, 5, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 3, 0, 0, 0, 3, 3, 0, 
	0, 0, 0, 0, 3, 3, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 3, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 3, 6, 9, 12, 19, 26, 
	30, 33, 42, 45, 47, 49, 55, 63, 
	66, 71, 76, 78, 80, 89, 94, 100, 
	102, 105, 107, 109, 111, 119, 122, 127, 
	132, 134, 136, 145, 146, 147, 148
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 0, 3, 3, 0, 4, 4, 
	0, 5, 5, 0, 5, 5, 6, 6, 
	6, 6, 0, 7, 7, 6, 6, 6, 
	6, 0, 7, 7, 8, 0, 9, 9, 
	0, 9, 9, 10, 13, 14, 13, 13, 
	13, 0, 11, 12, 10, 35, 0, 12, 
	10, 35, 13, 13, 13, 13, 0, 14, 
	14, 15, 20, 20, 20, 20, 0, 16, 
	19, 15, 17, 17, 14, 18, 0, 17, 
	17, 14, 18, 0, 35, 0, 19, 15, 
	17, 17, 14, 20, 18, 20, 20, 20, 
	0, 22, 22, 22, 22, 0, 36, 22, 
	22, 22, 22, 0, 24, 0, 25, 26, 
	24, 37, 0, 26, 24, 28, 0, 28, 
	28, 29, 34, 34, 34, 34, 0, 30, 
	33, 29, 31, 31, 28, 32, 0, 31, 
	31, 28, 32, 0, 38, 0, 33, 29, 
	31, 31, 28, 34, 32, 34, 34, 34, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 19, 19, 0, 0, 0, 21, 21, 
	21, 21, 3, 27, 27, 1, 1, 1, 
	1, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 33, 21, 11, 21, 21, 
	21, 39, 5, 5, 5, 64, 7, 5, 
	5, 52, 1, 1, 1, 1, 3, 0, 
	0, 33, 21, 21, 21, 21, 102, 5, 
	5, 5, 60, 60, 87, 92, 68, 0, 
	0, 9, 13, 0, 45, 0, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	56, 21, 21, 21, 21, 30, 24, 1, 
	1, 1, 1, 30, 33, 42, 5, 5, 
	5, 36, 42, 5, 5, 11, 17, 0, 
	0, 33, 21, 21, 21, 21, 108, 5, 
	5, 5, 60, 60, 87, 92, 97, 0, 
	0, 9, 13, 17, 15, 17, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	82, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 39, 7, 7, 7, 3, 102, 68, 
	68, 0, 0, 68, 56, 30, 30, 42, 
	42, 42, 42, 17, 108, 97, 97, 17, 
	17, 97, 82, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 35;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 21;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 23;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 27;
class << self
	attr_accessor :bel_en_set
end
self.bel_en_set = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @buffers.delete(:string)
    @buffers.delete(:ident)
  		end
when 13 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 14 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 15 then
		begin

    @buffers[:list] = s(:list)
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 17 then
		begin

    #TODO: Mark @buffers[:list] as complete.
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 20 then
		begin

    yield @buffers[:list]
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
when 22 then
		begin

    @buffers[:set] = s(:set)
  		end
when 23 then
		begin

    @buffers[:set] = @buffers[:set] << s(:name, @buffers[:ident])
  		end
when 24 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:string])
  		end
when 25 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:ident])
  		end
when 26 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:list])
  		end
when 27 then
		begin

    yield @buffers[:set]
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
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
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
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 12, 1, 15, 1, 17, 1, 
	20, 1, 21, 1, 22, 2, 0, 1, 
	2, 2, 3, 2, 2, 23, 2, 4, 
	5, 2, 6, 7, 2, 8, 10, 2, 
	9, 4, 2, 9, 11, 2, 26, 27, 
	3, 2, 14, 16, 3, 2, 25, 27, 
	3, 4, 19, 16, 3, 8, 13, 16, 
	3, 8, 24, 27, 3, 9, 18, 16, 
	4, 2, 14, 16, 12, 4, 2, 14, 
	16, 17, 4, 4, 19, 16, 21, 4, 
	8, 13, 16, 12, 4, 8, 13, 16, 
	17, 4, 9, 18, 16, 21, 5, 9, 
	18, 4, 19, 16, 6, 9, 18, 4, 
	19, 16, 21
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 2, 4, 6, 8, 17, 26, 
	29, 31, 42, 44, 45, 46, 54, 64, 
	66, 70, 74, 75, 76, 87, 94, 102, 
	103, 105, 106, 107, 108, 118, 120, 124, 
	128, 129, 130, 141, 141, 141, 141
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	83, 115, 69, 101, 84, 116, 9, 32, 
	9, 32, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 61, 9, 32, 9, 
	32, 34, 95, 123, 48, 57, 65, 90, 
	97, 122, 34, 92, 10, 92, 10, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 44, 125, 9, 32, 
	44, 125, 10, 92, 9, 32, 44, 95, 
	125, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 10, 95, 
	48, 57, 65, 90, 97, 122, 34, 34, 
	92, 10, 92, 123, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 44, 125, 9, 32, 44, 125, 
	10, 92, 9, 32, 44, 95, 125, 48, 
	57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 2, 2, 2, 2, 3, 3, 3, 
	2, 5, 2, 1, 1, 2, 4, 2, 
	4, 4, 1, 1, 5, 1, 2, 1, 
	2, 1, 1, 1, 4, 2, 4, 4, 
	1, 1, 5, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 3, 0, 0, 0, 3, 3, 0, 
	0, 0, 0, 0, 3, 3, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 3, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 3, 6, 9, 12, 19, 26, 
	30, 33, 42, 45, 47, 49, 55, 63, 
	66, 71, 76, 78, 80, 89, 94, 100, 
	102, 105, 107, 109, 111, 119, 122, 127, 
	132, 134, 136, 145, 146, 147, 148
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 0, 3, 3, 0, 4, 4, 
	0, 5, 5, 0, 5, 5, 6, 6, 
	6, 6, 0, 7, 7, 6, 6, 6, 
	6, 0, 7, 7, 8, 0, 9, 9, 
	0, 9, 9, 10, 13, 14, 13, 13, 
	13, 0, 11, 12, 10, 35, 0, 12, 
	10, 35, 13, 13, 13, 13, 0, 14, 
	14, 15, 20, 20, 20, 20, 0, 16, 
	19, 15, 17, 17, 14, 18, 0, 17, 
	17, 14, 18, 0, 35, 0, 19, 15, 
	17, 17, 14, 20, 18, 20, 20, 20, 
	0, 22, 22, 22, 22, 0, 36, 22, 
	22, 22, 22, 0, 24, 0, 25, 26, 
	24, 37, 0, 26, 24, 28, 0, 28, 
	28, 29, 34, 34, 34, 34, 0, 30, 
	33, 29, 31, 31, 28, 32, 0, 31, 
	31, 28, 32, 0, 38, 0, 33, 29, 
	31, 31, 28, 34, 32, 34, 34, 34, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 19, 19, 0, 0, 0, 21, 21, 
	21, 21, 3, 27, 27, 1, 1, 1, 
	1, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 33, 21, 11, 21, 21, 
	21, 39, 5, 5, 5, 64, 7, 5, 
	5, 52, 1, 1, 1, 1, 3, 0, 
	0, 33, 21, 21, 21, 21, 102, 5, 
	5, 5, 60, 60, 87, 92, 68, 0, 
	0, 9, 13, 0, 45, 0, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	56, 21, 21, 21, 21, 30, 24, 1, 
	1, 1, 1, 30, 33, 42, 5, 5, 
	5, 36, 42, 5, 5, 11, 17, 0, 
	0, 33, 21, 21, 21, 21, 108, 5, 
	5, 5, 60, 60, 87, 92, 97, 0, 
	0, 9, 13, 17, 15, 17, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	82, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 39, 7, 7, 7, 3, 102, 68, 
	68, 0, 0, 68, 56, 30, 30, 42, 
	42, 42, 42, 17, 108, 97, 97, 17, 
	17, 97, 82, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 35;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 21;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 23;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 27;
class << self
	attr_accessor :bel_en_set
end
self.bel_en_set = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @buffers.delete(:string)
    @buffers.delete(:ident)
  		end
when 13 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 14 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 15 then
		begin

    @buffers[:list] = s(:list)
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 17 then
		begin

    #TODO: Mark @buffers[:list] as complete.
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 20 then
		begin

    yield @buffers[:list]
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
when 22 then
		begin

    @buffers[:set] = s(:set)
  		end
when 23 then
		begin

    @buffers[:set] = @buffers[:set] << s(:name, @buffers[:ident])
  		end
when 24 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:string])
  		end
when 25 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:ident])
  		end
when 26 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:list])
  		end
when 27 then
		begin

    yield @buffers[:set]
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
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
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
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 12, 1, 15, 1, 17, 1, 
	20, 1, 21, 1, 22, 2, 0, 1, 
	2, 2, 3, 2, 2, 23, 2, 4, 
	5, 2, 6, 7, 2, 8, 10, 2, 
	9, 4, 2, 9, 11, 2, 26, 27, 
	3, 2, 14, 16, 3, 2, 25, 27, 
	3, 4, 19, 16, 3, 8, 13, 16, 
	3, 8, 24, 27, 3, 9, 18, 16, 
	4, 2, 14, 16, 12, 4, 2, 14, 
	16, 17, 4, 4, 19, 16, 21, 4, 
	8, 13, 16, 12, 4, 8, 13, 16, 
	17, 4, 9, 18, 16, 21, 5, 9, 
	18, 4, 19, 16, 6, 9, 18, 4, 
	19, 16, 21
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 2, 4, 6, 8, 17, 26, 
	29, 31, 42, 44, 45, 46, 54, 64, 
	66, 70, 74, 75, 76, 87, 94, 102, 
	103, 105, 106, 107, 108, 118, 120, 124, 
	128, 129, 130, 141, 141, 141, 141
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	83, 115, 69, 101, 84, 116, 9, 32, 
	9, 32, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 61, 9, 32, 9, 
	32, 34, 95, 123, 48, 57, 65, 90, 
	97, 122, 34, 92, 10, 92, 10, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 44, 125, 9, 32, 
	44, 125, 10, 92, 9, 32, 44, 95, 
	125, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 10, 95, 
	48, 57, 65, 90, 97, 122, 34, 34, 
	92, 10, 92, 123, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 44, 125, 9, 32, 44, 125, 
	10, 92, 9, 32, 44, 95, 125, 48, 
	57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 2, 2, 2, 2, 3, 3, 3, 
	2, 5, 2, 1, 1, 2, 4, 2, 
	4, 4, 1, 1, 5, 1, 2, 1, 
	2, 1, 1, 1, 4, 2, 4, 4, 
	1, 1, 5, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 3, 0, 0, 0, 3, 3, 0, 
	0, 0, 0, 0, 3, 3, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 3, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 3, 6, 9, 12, 19, 26, 
	30, 33, 42, 45, 47, 49, 55, 63, 
	66, 71, 76, 78, 80, 89, 94, 100, 
	102, 105, 107, 109, 111, 119, 122, 127, 
	132, 134, 136, 145, 146, 147, 148
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 0, 3, 3, 0, 4, 4, 
	0, 5, 5, 0, 5, 5, 6, 6, 
	6, 6, 0, 7, 7, 6, 6, 6, 
	6, 0, 7, 7, 8, 0, 9, 9, 
	0, 9, 9, 10, 13, 14, 13, 13, 
	13, 0, 11, 12, 10, 35, 0, 12, 
	10, 35, 13, 13, 13, 13, 0, 14, 
	14, 15, 20, 20, 20, 20, 0, 16, 
	19, 15, 17, 17, 14, 18, 0, 17, 
	17, 14, 18, 0, 35, 0, 19, 15, 
	17, 17, 14, 20, 18, 20, 20, 20, 
	0, 22, 22, 22, 22, 0, 36, 22, 
	22, 22, 22, 0, 24, 0, 25, 26, 
	24, 37, 0, 26, 24, 28, 0, 28, 
	28, 29, 34, 34, 34, 34, 0, 30, 
	33, 29, 31, 31, 28, 32, 0, 31, 
	31, 28, 32, 0, 38, 0, 33, 29, 
	31, 31, 28, 34, 32, 34, 34, 34, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 19, 19, 0, 0, 0, 21, 21, 
	21, 21, 3, 27, 27, 1, 1, 1, 
	1, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 33, 21, 11, 21, 21, 
	21, 39, 5, 5, 5, 64, 7, 5, 
	5, 52, 1, 1, 1, 1, 3, 0, 
	0, 33, 21, 21, 21, 21, 102, 5, 
	5, 5, 60, 60, 87, 92, 68, 0, 
	0, 9, 13, 0, 45, 0, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	56, 21, 21, 21, 21, 30, 24, 1, 
	1, 1, 1, 30, 33, 42, 5, 5, 
	5, 36, 42, 5, 5, 11, 17, 0, 
	0, 33, 21, 21, 21, 21, 108, 5, 
	5, 5, 60, 60, 87, 92, 97, 0, 
	0, 9, 13, 17, 15, 17, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	82, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 39, 7, 7, 7, 3, 102, 68, 
	68, 0, 0, 68, 56, 30, 30, 42, 
	42, 42, 42, 17, 108, 97, 97, 17, 
	17, 97, 82, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 35;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 21;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 23;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 27;
class << self
	attr_accessor :bel_en_set
end
self.bel_en_set = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @buffers.delete(:string)
    @buffers.delete(:ident)
  		end
when 13 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 14 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 15 then
		begin

    @buffers[:list] = s(:list)
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 17 then
		begin

    #TODO: Mark @buffers[:list] as complete.
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 20 then
		begin

    yield @buffers[:list]
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
when 22 then
		begin

    @buffers[:set] = s(:set)
  		end
when 23 then
		begin

    @buffers[:set] = @buffers[:set] << s(:name, @buffers[:ident])
  		end
when 24 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:string])
  		end
when 25 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:ident])
  		end
when 26 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:list])
  		end
when 27 then
		begin

    yield @buffers[:set]
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
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end


=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELScript
      module Set

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
          include BEL::Parser::Buffer

          def initialize(content)
            @content = content
      # begin: ragel        
            
class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 12, 1, 15, 1, 17, 1, 
	20, 1, 21, 1, 22, 2, 0, 1, 
	2, 2, 3, 2, 2, 23, 2, 4, 
	5, 2, 6, 7, 2, 8, 10, 2, 
	9, 4, 2, 9, 11, 2, 26, 27, 
	3, 2, 14, 16, 3, 2, 25, 27, 
	3, 4, 19, 16, 3, 8, 13, 16, 
	3, 8, 24, 27, 3, 9, 18, 16, 
	4, 2, 14, 16, 12, 4, 2, 14, 
	16, 17, 4, 4, 19, 16, 21, 4, 
	8, 13, 16, 12, 4, 8, 13, 16, 
	17, 4, 9, 18, 16, 21, 5, 9, 
	18, 4, 19, 16, 6, 9, 18, 4, 
	19, 16, 21
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 2, 4, 6, 8, 17, 26, 
	29, 31, 42, 44, 45, 46, 54, 64, 
	66, 70, 74, 75, 76, 87, 94, 102, 
	103, 105, 106, 107, 108, 118, 120, 124, 
	128, 129, 130, 141, 141, 141, 141
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	83, 115, 69, 101, 84, 116, 9, 32, 
	9, 32, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 61, 9, 32, 9, 
	32, 34, 95, 123, 48, 57, 65, 90, 
	97, 122, 34, 92, 10, 92, 10, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 44, 125, 9, 32, 
	44, 125, 10, 92, 9, 32, 44, 95, 
	125, 48, 57, 65, 90, 97, 122, 95, 
	48, 57, 65, 90, 97, 122, 10, 95, 
	48, 57, 65, 90, 97, 122, 34, 34, 
	92, 10, 92, 123, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 44, 125, 9, 32, 44, 125, 
	10, 92, 9, 32, 44, 95, 125, 48, 
	57, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 2, 2, 2, 2, 3, 3, 3, 
	2, 5, 2, 1, 1, 2, 4, 2, 
	4, 4, 1, 1, 5, 1, 2, 1, 
	2, 1, 1, 1, 4, 2, 4, 4, 
	1, 1, 5, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 3, 0, 0, 0, 3, 3, 0, 
	0, 0, 0, 0, 3, 3, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 3, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 3, 6, 9, 12, 19, 26, 
	30, 33, 42, 45, 47, 49, 55, 63, 
	66, 71, 76, 78, 80, 89, 94, 100, 
	102, 105, 107, 109, 111, 119, 122, 127, 
	132, 134, 136, 145, 146, 147, 148
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 2, 0, 3, 3, 0, 4, 4, 
	0, 5, 5, 0, 5, 5, 6, 6, 
	6, 6, 0, 7, 7, 6, 6, 6, 
	6, 0, 7, 7, 8, 0, 9, 9, 
	0, 9, 9, 10, 13, 14, 13, 13, 
	13, 0, 11, 12, 10, 35, 0, 12, 
	10, 35, 13, 13, 13, 13, 0, 14, 
	14, 15, 20, 20, 20, 20, 0, 16, 
	19, 15, 17, 17, 14, 18, 0, 17, 
	17, 14, 18, 0, 35, 0, 19, 15, 
	17, 17, 14, 20, 18, 20, 20, 20, 
	0, 22, 22, 22, 22, 0, 36, 22, 
	22, 22, 22, 0, 24, 0, 25, 26, 
	24, 37, 0, 26, 24, 28, 0, 28, 
	28, 29, 34, 34, 34, 34, 0, 30, 
	33, 29, 31, 31, 28, 32, 0, 31, 
	31, 28, 32, 0, 38, 0, 33, 29, 
	31, 31, 28, 34, 32, 34, 34, 34, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 19, 19, 0, 0, 0, 21, 21, 
	21, 21, 3, 27, 27, 1, 1, 1, 
	1, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 33, 21, 11, 21, 21, 
	21, 39, 5, 5, 5, 64, 7, 5, 
	5, 52, 1, 1, 1, 1, 3, 0, 
	0, 33, 21, 21, 21, 21, 102, 5, 
	5, 5, 60, 60, 87, 92, 68, 0, 
	0, 9, 13, 0, 45, 0, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	56, 21, 21, 21, 21, 30, 24, 1, 
	1, 1, 1, 30, 33, 42, 5, 5, 
	5, 36, 42, 5, 5, 11, 17, 0, 
	0, 33, 21, 21, 21, 21, 108, 5, 
	5, 5, 60, 60, 87, 92, 97, 0, 
	0, 9, 13, 17, 15, 17, 5, 5, 
	48, 48, 72, 1, 77, 1, 1, 1, 
	82, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 3, 3, 0, 
	0, 39, 7, 7, 7, 3, 102, 68, 
	68, 0, 0, 68, 56, 30, 30, 42, 
	42, 42, 42, 17, 108, 97, 97, 17, 
	17, 97, 82, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 35;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 21;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 23;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 27;
class << self
	attr_accessor :bel_en_set
end
self.bel_en_set = 1;


      # end: ragel        
          end

          def each
            @buffers = {}
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length
            eof      = data.length

      # begin: ragel        
            
begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @buffers.delete(:string)
    @buffers.delete(:ident)
  		end
when 13 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 14 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 15 then
		begin

    @buffers[:list] = s(:list)
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 17 then
		begin

    #TODO: Mark @buffers[:list] as complete.
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 20 then
		begin

    yield @buffers[:list]
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
when 22 then
		begin

    @buffers[:set] = s(:set)
  		end
when 23 then
		begin

    @buffers[:set] = @buffers[:set] << s(:name, @buffers[:ident])
  		end
when 24 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:string])
  		end
when 25 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:ident])
  		end
when 26 then
		begin

    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:list])
  		end
when 27 then
		begin

    yield @buffers[:set]
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
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    @buffers[:ident] ||= []
    @buffers[:ident]   = s(:identifier,
                           utf8_string(@buffers[:ident]).sub(/\n$/, ''))
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 16 then
		begin

    # Append list argument if its value is not empty.
    list_arg_value = @buffers[:list_arg].children[0].children[0]
    if list_arg_value != ''
      @buffers[:list] <<= @buffers[:list_arg]
    end
  		end
when 18 then
		begin

    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 19 then
		begin

    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 21 then
		begin

    @buffers[:list] ||= s(:list)
    yield @buffers[:list]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
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
    BEL::Parsers::BELScript::Set.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
