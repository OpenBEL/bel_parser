
# begin: ragel
=begin

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 9, 122, 10, 10, 
	9, 122, 10, 122, 10, 
	122, 10, 122, 10, 122, 
	9, 122, 48, 122, 9, 39, 
	34, 92, 34, 92, 0, 
	0, 39, 92, 39, 92, 
	0, 0, 0, 0, 10, 10, 
	10, 122, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 114, 1, 114, 113, 113, 113, 113, 
	114, 75, 31, 59, 59, 0, 54, 54, 
	0, 0, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 115, 117, 232, 346, 460, 574, 
	688, 803, 879, 911, 971, 1031, 1032, 1087, 
	1142, 1143, 1144, 1146, 1260, 1261
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 0, 0, 0, 0, 0, 0, 0, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 0, 0, 0, 0, 2, 0, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 0, 3, 4, 1, 5, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 0, 0, 
	0, 0, 0, 0, 0, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 0, 
	0, 0, 0, 6, 0, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 0, 
	7, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	4, 4, 4, 4, 4, 4, 4, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 4, 4, 4, 4, 8, 4, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 4, 9, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 4, 4, 4, 4, 4, 4, 
	4, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 4, 4, 4, 4, 8, 
	4, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 4, 7, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 11, 4, 4, 4, 
	4, 4, 4, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 4, 4, 4, 
	4, 10, 4, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 4, 9, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 11, 4, 
	4, 4, 4, 4, 4, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 4, 
	4, 4, 4, 10, 4, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 4, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 0, 0, 0, 0, 0, 0, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 0, 0, 0, 6, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 4, 4, 4, 
	4, 4, 4, 4, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 4, 4, 
	4, 4, 12, 4, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 4, 13, 
	13, 13, 13, 13, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 13, 4, 
	14, 4, 4, 4, 4, 15, 4, 17, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 18, 16, 20, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 21, 19, 19, 
	17, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 23, 22, 20, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 25, 24, 24, 4, 
	3, 4, 26, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 4, 4, 4, 4, 4, 4, 
	4, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 4, 4, 4, 4, 27, 
	4, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 4, 4, 4, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 3, 6, 17, 0, 18, 4, 17, 
	5, 17, 7, 8, 19, 10, 11, 14, 
	12, 21, 13, 12, 21, 13, 15, 16, 
	15, 16, 20, 19
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 1, 2, 0, 2, 1, 3, 
	4, 5, 4, 6, 1, 0, 0, 0, 
	7, 8, 7, 0, 9, 0, 7, 7, 
	0, 0, 11, 4
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 10, 12, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 17;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 9;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 10;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = cs << 1
	_inds = _bel_index_offsets[cs]
	_slen = _bel_key_spans[cs]
	_wide = data[p].ord
	_trans = if (   _slen > 0 && 
			_bel_trans_keys[_keys] <= _wide && 
			_wide <= _bel_trans_keys[_keys + 1] 
		    ) then
			_bel_indicies[ _inds + _wide - _bel_trans_keys[_keys] ] 
		 else 
			_bel_indicies[ _inds + _slen ]
		 end
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
	case _bel_trans_actions[_trans]
	when 4 then
		begin

    @incomplete[:ident] << data[p].ord
  		end
	when 11 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 7 then
		begin

    @opened = true
    p_start = p
  		end
	when 1 then
		begin

    @incomplete[:ident] = []
  		end
		begin

    @incomplete[:ident] << data[p].ord
  		end
	when 6 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] = parameter(prefix(@buffers[:ident]))
  		end
	when 2 then
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  		end
		begin

    yield @buffers[:parameter]
  		end
	when 5 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  		end
		begin

    yield @buffers[:parameter]
  		end
	when 9 then
		begin

    @closed = true
    p_end = p
  		end
		begin

    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
    $stderr.puts @buffers.inspect
  		end
		begin

    yield @buffers[:string]
  		end
	when 8 then
		begin

    @opened = true
    p_start = p
  		end
		begin

    @closed = true
    p_end = p
  		end
		begin

    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
    $stderr.puts @buffers.inspect
  		end
		begin

    yield @buffers[:string]
  		end
	when 3 then
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  		end
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  		end
		begin

    yield @buffers[:parameter]
  		end
	end
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
	  case _bel_eof_actions[cs]
	when 12 then
		begin

    yield @buffers[:ident]
  		end
	when 10 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    yield @buffers[:ident]
  		end
	  end
	end

	end
	if _goto_level <= _out
		break
	end
end
	end

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 9, 122, 10, 10, 
	9, 122, 10, 122, 10, 
	122, 10, 122, 10, 122, 
	9, 122, 48, 122, 9, 39, 
	34, 92, 34, 92, 0, 
	0, 39, 92, 39, 92, 
	0, 0, 0, 0, 10, 10, 
	10, 122, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 114, 1, 114, 113, 113, 113, 113, 
	114, 75, 31, 59, 59, 0, 54, 54, 
	0, 0, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 115, 117, 232, 346, 460, 574, 
	688, 803, 879, 911, 971, 1031, 1032, 1087, 
	1142, 1143, 1144, 1146, 1260, 1261
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 0, 0, 0, 0, 0, 0, 0, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 0, 0, 0, 0, 2, 0, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 0, 3, 4, 1, 5, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 0, 0, 
	0, 0, 0, 0, 0, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 0, 
	0, 0, 0, 6, 0, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 0, 
	7, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	4, 4, 4, 4, 4, 4, 4, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 4, 4, 4, 4, 8, 4, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 4, 9, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 4, 4, 4, 4, 4, 4, 
	4, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 4, 4, 4, 4, 8, 
	4, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 4, 7, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 11, 4, 4, 4, 
	4, 4, 4, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 4, 4, 4, 
	4, 10, 4, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 4, 9, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 11, 4, 
	4, 4, 4, 4, 4, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 4, 
	4, 4, 4, 10, 4, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 4, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 0, 0, 0, 0, 0, 0, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 0, 0, 0, 6, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 4, 4, 4, 
	4, 4, 4, 4, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 4, 4, 
	4, 4, 12, 4, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 4, 13, 
	13, 13, 13, 13, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 13, 4, 
	14, 4, 4, 4, 4, 15, 4, 17, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 18, 16, 20, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 21, 19, 19, 
	17, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 23, 22, 20, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 25, 24, 24, 4, 
	3, 4, 26, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 4, 4, 4, 4, 4, 4, 
	4, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 4, 4, 4, 4, 27, 
	4, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 4, 4, 4, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 3, 6, 17, 0, 18, 4, 17, 
	5, 17, 7, 8, 19, 10, 11, 14, 
	12, 21, 13, 12, 21, 13, 15, 16, 
	15, 16, 20, 19
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 1, 2, 0, 2, 1, 3, 
	4, 5, 4, 6, 1, 0, 0, 0, 
	7, 8, 7, 0, 9, 0, 7, 7, 
	0, 0, 11, 4
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 10, 12, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 17;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 9;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 10;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = cs << 1
	_inds = _bel_index_offsets[cs]
	_slen = _bel_key_spans[cs]
	_wide = data[p].ord
	_trans = if (   _slen > 0 && 
			_bel_trans_keys[_keys] <= _wide && 
			_wide <= _bel_trans_keys[_keys + 1] 
		    ) then
			_bel_indicies[ _inds + _wide - _bel_trans_keys[_keys] ] 
		 else 
			_bel_indicies[ _inds + _slen ]
		 end
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
	case _bel_trans_actions[_trans]
	when 4 then
		begin

    @incomplete[:ident] << data[p].ord
  		end
	when 11 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 7 then
		begin

    @opened = true
    p_start = p
  		end
	when 1 then
		begin

    @incomplete[:ident] = []
  		end
		begin

    @incomplete[:ident] << data[p].ord
  		end
	when 6 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] = parameter(prefix(@buffers[:ident]))
  		end
	when 2 then
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  		end
		begin

    yield @buffers[:parameter]
  		end
	when 5 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  		end
		begin

    yield @buffers[:parameter]
  		end
	when 9 then
		begin

    @closed = true
    p_end = p
  		end
		begin

    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
    $stderr.puts @buffers.inspect
  		end
		begin

    yield @buffers[:string]
  		end
	when 8 then
		begin

    @opened = true
    p_start = p
  		end
		begin

    @closed = true
    p_end = p
  		end
		begin

    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
    $stderr.puts @buffers.inspect
  		end
		begin

    yield @buffers[:string]
  		end
	when 3 then
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  		end
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  		end
		begin

    yield @buffers[:parameter]
  		end
	end
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
	  case _bel_eof_actions[cs]
	when 12 then
		begin

    yield @buffers[:ident]
  		end
	when 10 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    yield @buffers[:ident]
  		end
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

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module Expression
      module Parameter

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
          include BELParser::Parsers::AST::Sexp

          def initialize(content)
            @content = content
      # begin: ragel
            
class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 9, 122, 10, 10, 
	9, 122, 10, 122, 10, 
	122, 10, 122, 10, 122, 
	9, 122, 48, 122, 9, 39, 
	34, 92, 34, 92, 0, 
	0, 39, 92, 39, 92, 
	0, 0, 0, 0, 10, 10, 
	10, 122, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 114, 1, 114, 113, 113, 113, 113, 
	114, 75, 31, 59, 59, 0, 54, 54, 
	0, 0, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 115, 117, 232, 346, 460, 574, 
	688, 803, 879, 911, 971, 1031, 1032, 1087, 
	1142, 1143, 1144, 1146, 1260, 1261
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 0, 0, 0, 0, 0, 0, 0, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 0, 0, 0, 0, 2, 0, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 0, 3, 4, 1, 5, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 0, 0, 
	0, 0, 0, 0, 0, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 0, 
	0, 0, 0, 6, 0, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 0, 
	7, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	4, 4, 4, 4, 4, 4, 4, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 4, 4, 4, 4, 8, 4, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 4, 9, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 4, 4, 4, 4, 4, 4, 
	4, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 4, 4, 4, 4, 8, 
	4, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 4, 7, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 11, 4, 4, 4, 
	4, 4, 4, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 4, 4, 4, 
	4, 10, 4, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 4, 9, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 11, 4, 
	4, 4, 4, 4, 4, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 4, 
	4, 4, 4, 10, 4, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 4, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 0, 0, 0, 0, 0, 0, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 0, 0, 0, 6, 0, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 0, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 4, 4, 4, 
	4, 4, 4, 4, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 4, 4, 
	4, 4, 12, 4, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 4, 13, 
	13, 13, 13, 13, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 13, 4, 
	14, 4, 4, 4, 4, 15, 4, 17, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 18, 16, 20, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 19, 19, 19, 
	19, 19, 19, 19, 19, 21, 19, 19, 
	17, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 23, 22, 20, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 24, 25, 24, 24, 4, 
	3, 4, 26, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 4, 4, 4, 4, 4, 4, 
	4, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 4, 4, 4, 4, 27, 
	4, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 4, 4, 4, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 3, 6, 17, 0, 18, 4, 17, 
	5, 17, 7, 8, 19, 10, 11, 14, 
	12, 21, 13, 12, 21, 13, 15, 16, 
	15, 16, 20, 19
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 1, 2, 0, 2, 1, 3, 
	4, 5, 4, 6, 1, 0, 0, 0, 
	7, 8, 7, 0, 9, 0, 7, 7, 
	0, 0, 11, 4
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 10, 12, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 17;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 9;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 10;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 1;


      # end: ragel
          end

          def each
            @buffers    = {}
            @incomplete = {}
            data        = @content.unpack('C*')
            p           = 0
            pe          = data.length
            eof         = data.length

      # begin: ragel
            
begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
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
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = cs << 1
	_inds = _bel_index_offsets[cs]
	_slen = _bel_key_spans[cs]
	_wide = data[p].ord
	_trans = if (   _slen > 0 && 
			_bel_trans_keys[_keys] <= _wide && 
			_wide <= _bel_trans_keys[_keys + 1] 
		    ) then
			_bel_indicies[ _inds + _wide - _bel_trans_keys[_keys] ] 
		 else 
			_bel_indicies[ _inds + _slen ]
		 end
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
	case _bel_trans_actions[_trans]
	when 4 then
		begin

    @incomplete[:ident] << data[p].ord
  		end
	when 11 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 7 then
		begin

    @opened = true
    p_start = p
  		end
	when 1 then
		begin

    @incomplete[:ident] = []
  		end
		begin

    @incomplete[:ident] << data[p].ord
  		end
	when 6 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] = parameter(prefix(@buffers[:ident]))
  		end
	when 2 then
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  		end
		begin

    yield @buffers[:parameter]
  		end
	when 5 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  		end
		begin

    yield @buffers[:parameter]
  		end
	when 9 then
		begin

    @closed = true
    p_end = p
  		end
		begin

    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
    $stderr.puts @buffers.inspect
  		end
		begin

    yield @buffers[:string]
  		end
	when 8 then
		begin

    @opened = true
    p_start = p
  		end
		begin

    @closed = true
    p_end = p
  		end
		begin

    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
    $stderr.puts @buffers.inspect
  		end
		begin

    yield @buffers[:string]
  		end
	when 3 then
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  		end
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  		end
		begin

    yield @buffers[:parameter]
  		end
	end
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
	  case _bel_eof_actions[cs]
	when 12 then
		begin

    yield @buffers[:ident]
  		end
	when 10 then
		begin

    ident = @incomplete.delete(:ident) || []
    completed = !ident.empty?
    ast_node = identifier(utf8_string(ident), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    yield @buffers[:ident]
  		end
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
    BELParser::Parsers::Expression::Parameter.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
