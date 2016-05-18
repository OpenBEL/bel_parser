
# begin: ragel
=begin

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 9, 122, 9, 122, 
	9, 34, 34, 92, 34, 
	92, 0, 0, 48, 122, 
	9, 34, 34, 92, 34, 92, 
	0, 0, 10, 10, 0, 
	0, 10, 122, 10, 122, 
	9, 122, 9, 122, 9, 34, 
	10, 122, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 114, 114, 26, 59, 59, 0, 75, 
	26, 59, 59, 0, 1, 0, 113, 113, 
	114, 114, 26, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 115, 230, 257, 317, 377, 378, 
	454, 481, 541, 601, 602, 604, 605, 719, 
	833, 948, 1063, 1090, 1204, 1205
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 2, 2, 2, 2, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 0, 0, 0, 0, 0, 0, 0, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 0, 0, 0, 0, 4, 0, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 0, 1, 2, 2, 2, 2, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 0, 0, 0, 0, 
	0, 0, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 0, 0, 
	0, 5, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 2, 2, 
	2, 2, 2, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 2, 6, 3, 
	6, 8, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 9, 7, 11, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 12, 
	10, 10, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 14, 14, 14, 14, 
	14, 14, 14, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 14, 14, 14, 
	14, 13, 14, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 14, 16, 16, 
	16, 16, 16, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 16, 15, 17, 
	15, 19, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 20, 18, 22, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 23, 
	21, 21, 24, 6, 14, 26, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 25, 25, 25, 
	25, 25, 25, 25, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 25, 25, 
	25, 25, 27, 25, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 25, 26, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 29, 
	25, 25, 25, 25, 25, 25, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	25, 25, 25, 25, 28, 25, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	25, 30, 31, 32, 32, 32, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	30, 0, 33, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 0, 0, 0, 0, 0, 0, 
	0, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 0, 0, 0, 0, 34, 
	0, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 0, 35, 36, 2, 2, 
	2, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 35, 0, 3, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 0, 0, 
	0, 0, 0, 0, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 0, 0, 
	0, 0, 5, 0, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 0, 2, 
	2, 2, 2, 2, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 2, 6, 
	3, 6, 38, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 37, 37, 37, 37, 37, 37, 
	37, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 37, 37, 37, 37, 39, 
	37, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 37, 37, 15, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 15, 14, 0, 5, 
	12, 6, 5, 12, 6, 19, 0, 0, 
	8, 9, 10, 21, 11, 10, 21, 11, 
	13, 0, 13, 14, 15, 16, 17, 18, 
	3, 4, 14, 17, 18, 0, 20, 19
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	2, 0, 0, 0, 3, 3, 5, 7, 
	8, 7, 0, 9, 0, 3, 0, 11, 
	0, 0, 7, 13, 7, 0, 14, 0, 
	15, 17, 18, 0, 0, 20, 22, 23, 
	22, 22, 24, 0, 26, 29, 20, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 1, 1, 4, 6, 6, 6, 0, 
	10, 12, 12, 12, 15, 0, 16, 19, 
	21, 25, 27, 28, 30, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 12;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 7;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 8;
class << self
	attr_accessor :bel_en_parameter_node
end
self.bel_en_parameter_node = 1;


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
	when 3 then
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 20 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 17 then
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 29 then
		begin

    trace('IDENTIFIER ident_node_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 7 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
	when 5 then
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 11 then
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 22 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
	when 2 then
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 9 then
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 26 then
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 24 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 8 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 14 then
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING yield_string')
    yield @buffers[:string]
  		end
	when 15 then
		begin

    trace('PARAMETER add_string_param_value')
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 23 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 18 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 13 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING yield_string')
    yield @buffers[:string]
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
	when 30 then
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  		end
	when 27 then
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 28 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  		end
	when 4 then
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 10 then
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    trace('STRING string_node_eof')
    yield @buffers[:string]
  		end
	when 25 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 6 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 12 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    trace('STRING string_node_eof')
    yield @buffers[:string]
  		end
	when 15 then
		begin

    trace('PARAMETER add_string_param_value')
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 1 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 21 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 16 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 19 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
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
	0, 0, 9, 122, 9, 122, 
	9, 34, 34, 92, 34, 
	92, 0, 0, 48, 122, 
	9, 34, 34, 92, 34, 92, 
	0, 0, 10, 10, 0, 
	0, 10, 122, 10, 122, 
	9, 122, 9, 122, 9, 34, 
	10, 122, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 114, 114, 26, 59, 59, 0, 75, 
	26, 59, 59, 0, 1, 0, 113, 113, 
	114, 114, 26, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 115, 230, 257, 317, 377, 378, 
	454, 481, 541, 601, 602, 604, 605, 719, 
	833, 948, 1063, 1090, 1204, 1205
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 2, 2, 2, 2, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 0, 0, 0, 0, 0, 0, 0, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 0, 0, 0, 0, 4, 0, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 0, 1, 2, 2, 2, 2, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 0, 0, 0, 0, 
	0, 0, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 0, 0, 
	0, 5, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 2, 2, 
	2, 2, 2, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 2, 6, 3, 
	6, 8, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 9, 7, 11, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 12, 
	10, 10, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 14, 14, 14, 14, 
	14, 14, 14, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 14, 14, 14, 
	14, 13, 14, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 14, 16, 16, 
	16, 16, 16, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 16, 15, 17, 
	15, 19, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 20, 18, 22, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 23, 
	21, 21, 24, 6, 14, 26, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 25, 25, 25, 
	25, 25, 25, 25, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 25, 25, 
	25, 25, 27, 25, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 25, 26, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 29, 
	25, 25, 25, 25, 25, 25, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	25, 25, 25, 25, 28, 25, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	25, 30, 31, 32, 32, 32, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	30, 0, 33, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 0, 0, 0, 0, 0, 0, 
	0, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 0, 0, 0, 0, 34, 
	0, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 0, 35, 36, 2, 2, 
	2, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 35, 0, 3, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 0, 0, 
	0, 0, 0, 0, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 0, 0, 
	0, 0, 5, 0, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 0, 2, 
	2, 2, 2, 2, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 2, 6, 
	3, 6, 38, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 37, 37, 37, 37, 37, 37, 
	37, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 37, 37, 37, 37, 39, 
	37, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 37, 37, 15, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 15, 14, 0, 5, 
	12, 6, 5, 12, 6, 19, 0, 0, 
	8, 9, 10, 21, 11, 10, 21, 11, 
	13, 0, 13, 14, 15, 16, 17, 18, 
	3, 4, 14, 17, 18, 0, 20, 19
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	2, 0, 0, 0, 3, 3, 5, 7, 
	8, 7, 0, 9, 0, 3, 0, 11, 
	0, 0, 7, 13, 7, 0, 14, 0, 
	15, 17, 18, 0, 0, 20, 22, 23, 
	22, 22, 24, 0, 26, 29, 20, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 1, 1, 4, 6, 6, 6, 0, 
	10, 12, 12, 12, 15, 0, 16, 19, 
	21, 25, 27, 28, 30, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 12;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 7;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 8;
class << self
	attr_accessor :bel_en_parameter_node
end
self.bel_en_parameter_node = 1;


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
	when 3 then
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 20 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 17 then
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 29 then
		begin

    trace('IDENTIFIER ident_node_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 7 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
	when 5 then
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 11 then
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 22 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
	when 2 then
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 9 then
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 26 then
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 24 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 8 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 14 then
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING yield_string')
    yield @buffers[:string]
  		end
	when 15 then
		begin

    trace('PARAMETER add_string_param_value')
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 23 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 18 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 13 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING yield_string')
    yield @buffers[:string]
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
	when 30 then
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  		end
	when 27 then
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 28 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  		end
	when 4 then
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 10 then
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    trace('STRING string_node_eof')
    yield @buffers[:string]
  		end
	when 25 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 6 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 12 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    trace('STRING string_node_eof')
    yield @buffers[:string]
  		end
	when 15 then
		begin

    trace('PARAMETER add_string_param_value')
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 1 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 21 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 16 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 19 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
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
require_relative '../tracer'

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
          include BELParser::Parsers::Tracer

          def initialize(content)
            @content = content
      # begin: ragel
            
class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 9, 122, 9, 122, 
	9, 34, 34, 92, 34, 
	92, 0, 0, 48, 122, 
	9, 34, 34, 92, 34, 92, 
	0, 0, 10, 10, 0, 
	0, 10, 122, 10, 122, 
	9, 122, 9, 122, 9, 34, 
	10, 122, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 114, 114, 26, 59, 59, 0, 75, 
	26, 59, 59, 0, 1, 0, 113, 113, 
	114, 114, 26, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 115, 230, 257, 317, 377, 378, 
	454, 481, 541, 601, 602, 604, 605, 719, 
	833, 948, 1063, 1090, 1204, 1205
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 2, 2, 2, 2, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 0, 0, 0, 0, 0, 0, 0, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 0, 0, 0, 0, 4, 0, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 0, 1, 2, 2, 2, 2, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 0, 0, 0, 0, 
	0, 0, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 0, 0, 
	0, 5, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 2, 2, 
	2, 2, 2, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 2, 6, 3, 
	6, 8, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 9, 7, 11, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 12, 
	10, 10, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 14, 14, 14, 14, 
	14, 14, 14, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 14, 14, 14, 
	14, 13, 14, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 14, 16, 16, 
	16, 16, 16, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 16, 15, 17, 
	15, 19, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 20, 18, 22, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 23, 
	21, 21, 24, 6, 14, 26, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 25, 25, 25, 
	25, 25, 25, 25, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 25, 25, 
	25, 25, 27, 25, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 27, 27, 
	27, 27, 27, 27, 27, 27, 25, 26, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 29, 
	25, 25, 25, 25, 25, 25, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	25, 25, 25, 25, 28, 25, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	25, 30, 31, 32, 32, 32, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	30, 0, 33, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 0, 0, 0, 0, 0, 0, 
	0, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 0, 0, 0, 0, 34, 
	0, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 0, 35, 36, 2, 2, 
	2, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 35, 0, 3, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 0, 0, 0, 
	0, 0, 0, 0, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 0, 0, 
	0, 0, 5, 0, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 0, 2, 
	2, 2, 2, 2, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 6, 6, 6, 2, 6, 
	3, 6, 38, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 37, 37, 37, 37, 37, 37, 
	37, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 37, 37, 37, 37, 39, 
	37, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 37, 37, 15, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 15, 14, 0, 5, 
	12, 6, 5, 12, 6, 19, 0, 0, 
	8, 9, 10, 21, 11, 10, 21, 11, 
	13, 0, 13, 14, 15, 16, 17, 18, 
	3, 4, 14, 17, 18, 0, 20, 19
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	2, 0, 0, 0, 3, 3, 5, 7, 
	8, 7, 0, 9, 0, 3, 0, 11, 
	0, 0, 7, 13, 7, 0, 14, 0, 
	15, 17, 18, 0, 0, 20, 22, 23, 
	22, 22, 24, 0, 26, 29, 20, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 1, 1, 4, 6, 6, 6, 0, 
	10, 12, 12, 12, 15, 0, 16, 19, 
	21, 25, 27, 28, 30, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 12;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 7;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 8;
class << self
	attr_accessor :bel_en_parameter_node
end
self.bel_en_parameter_node = 1;


      # end: ragel
          end

          def each
            @buffers    = {}
            @incomplete = {}
            data        = @content.unpack('C*')
            p           = 0
            pe          = data.length
            p_start     = 0
            p_end       = 0
            id_start    = 0
            id_end      = 0
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
	when 3 then
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 20 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 17 then
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 29 then
		begin

    trace('IDENTIFIER ident_node_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 7 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
	when 5 then
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 11 then
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 22 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
	when 2 then
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 9 then
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 26 then
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 24 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 8 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 14 then
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING yield_string')
    yield @buffers[:string]
  		end
	when 15 then
		begin

    trace('PARAMETER add_string_param_value')
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 23 then
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 18 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 13 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
		begin

    trace('STRING stop_string')
    @string_closed = true
    p_end = p
  		end
		begin

    trace('STRING string_end')
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING yield_string')
    yield @buffers[:string]
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
	when 30 then
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  		end
	when 27 then
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 28 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  		end
	when 4 then
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 10 then
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    trace('STRING string_node_eof')
    yield @buffers[:string]
  		end
	when 25 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 6 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 12 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('STRING string_node_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    trace('STRING string_node_eof')
    yield @buffers[:string]
  		end
	when 15 then
		begin

    trace('PARAMETER add_string_param_value')
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 1 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('STRING a_string_err')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace("PARAMETER parameter_node_eof")
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  		end
	when 21 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER add_prefix')
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 16 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
  		end
	when 19 then
		begin

    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('PARAMETER add_ident_param_value')
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  		end
		begin

    trace('PARAMETER parameter_end')
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        trace('PN incomplete')
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        trace('VN incomplete')
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  		end
		begin

    trace('PARAMETER yield_parameter')
    yield @buffers[:parameter]
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
