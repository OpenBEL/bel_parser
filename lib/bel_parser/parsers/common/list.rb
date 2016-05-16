
# begin: ragel
=begin

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 123, 123, 9, 34, 
	34, 92, 34, 92, 9, 
	122, 0, 0, 48, 122, 
	9, 34, 34, 92, 34, 92, 
	0, 0, 9, 125, 9, 
	125, 9, 34, 9, 125, 
	9, 125, 0, 0, 9, 125, 
	10, 10, 10, 122, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 1, 26, 59, 59, 114, 0, 75, 
	26, 59, 59, 0, 117, 117, 26, 117, 
	117, 0, 117, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 29, 89, 149, 264, 265, 
	341, 368, 428, 488, 489, 607, 725, 752, 
	870, 988, 989, 1107, 1109, 1223, 1224
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 3, 3, 3, 3, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 4, 2, 6, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 7, 
	5, 9, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 10, 8, 12, 3, 3, 
	3, 3, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 12, 11, 4, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 11, 11, 
	11, 11, 11, 11, 11, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 11, 
	11, 11, 11, 13, 11, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 11, 
	8, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 1, 1, 1, 1, 1, 
	1, 1, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 1, 1, 1, 1, 
	14, 1, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 1, 16, 16, 16, 
	16, 16, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 16, 15, 17, 15, 
	19, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 20, 18, 22, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 23, 21, 
	21, 24, 25, 26, 26, 26, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	24, 11, 27, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 11, 11, 11, 11, 11, 11, 
	11, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 11, 11, 11, 11, 28, 
	11, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 11, 11, 29, 11, 30, 
	31, 3, 3, 3, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 30, 11, 
	4, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	11, 11, 11, 11, 11, 11, 11, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 11, 11, 11, 11, 13, 11, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 11, 11, 32, 11, 3, 3, 3, 
	3, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 4, 2, 
	33, 34, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 33, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 35, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 36, 2, 37, 38, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 37, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 12, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 32, 1, 1, 40, 41, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 40, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	42, 39, 39, 39, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 39, 39, 
	39, 39, 39, 39, 39, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 39, 
	39, 39, 39, 43, 39, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 39, 
	39, 44, 39, 45, 1, 47, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 46, 46, 46, 
	46, 46, 46, 46, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 46, 46, 
	46, 46, 48, 46, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 46, 46, 
	15, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	12, 0, 0, 2, 3, 4, 15, 6, 
	4, 15, 6, 0, 5, 18, 20, 0, 
	8, 9, 10, 22, 11, 10, 22, 11, 
	13, 14, 2, 3, 18, 19, 13, 14, 
	19, 16, 17, 5, 19, 16, 17, 0, 
	16, 17, 5, 18, 19, 17, 0, 21, 
	20
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 2, 0, 0, 4, 5, 4, 
	0, 6, 0, 8, 0, 9, 9, 11, 
	0, 0, 4, 13, 4, 0, 14, 0, 
	16, 16, 16, 16, 17, 16, 0, 0, 
	0, 21, 21, 21, 21, 0, 0, 24, 
	25, 25, 25, 0, 25, 27, 29, 30, 
	0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 1, 3, 3, 7, 3, 0, 
	10, 12, 12, 12, 15, 18, 19, 20, 
	22, 22, 23, 26, 28, 31, 0
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
	attr_accessor :bel_en_list_node
end
self.bel_en_list_node = 1;


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
	when 9 then
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 30 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 24 then
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
	when 4 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
	when 2 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 11 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 16 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
  		end
	when 27 then
		begin

    trace('LIST stop_list')
    @list_closed = true
  		end
	when 21 then
		begin

    trace('LIST add_string')
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
	when 25 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('LIST add_ident')
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
	when 6 then
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
	when 8 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 17 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 5 then
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
	when 31 then
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
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
	when 1 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 10 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    $stderr.puts 'STRING string_node_eof'
    yield @buffers[:string]
  		end
	when 22 then
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 3 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
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

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    $stderr.puts 'STRING string_node_eof'
    yield @buffers[:string]
  		end
	when 26 then
		begin

    trace('LIST stop_list')
    @list_closed = true
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 20 then
		begin

    trace('LIST add_string')
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 19 then
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 18 then
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

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 7 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
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

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 15 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
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

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 23 then
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

    trace('LIST add_ident')
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
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
	0, 0, 123, 123, 9, 34, 
	34, 92, 34, 92, 9, 
	122, 0, 0, 48, 122, 
	9, 34, 34, 92, 34, 92, 
	0, 0, 9, 125, 9, 
	125, 9, 34, 9, 125, 
	9, 125, 0, 0, 9, 125, 
	10, 10, 10, 122, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 1, 26, 59, 59, 114, 0, 75, 
	26, 59, 59, 0, 117, 117, 26, 117, 
	117, 0, 117, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 29, 89, 149, 264, 265, 
	341, 368, 428, 488, 489, 607, 725, 752, 
	870, 988, 989, 1107, 1109, 1223, 1224
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 3, 3, 3, 3, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 4, 2, 6, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 7, 
	5, 9, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 10, 8, 12, 3, 3, 
	3, 3, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 12, 11, 4, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 11, 11, 
	11, 11, 11, 11, 11, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 11, 
	11, 11, 11, 13, 11, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 11, 
	8, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 1, 1, 1, 1, 1, 
	1, 1, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 1, 1, 1, 1, 
	14, 1, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 1, 16, 16, 16, 
	16, 16, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 16, 15, 17, 15, 
	19, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 20, 18, 22, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 23, 21, 
	21, 24, 25, 26, 26, 26, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	24, 11, 27, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 11, 11, 11, 11, 11, 11, 
	11, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 11, 11, 11, 11, 28, 
	11, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 11, 11, 29, 11, 30, 
	31, 3, 3, 3, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 30, 11, 
	4, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	11, 11, 11, 11, 11, 11, 11, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 11, 11, 11, 11, 13, 11, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 11, 11, 32, 11, 3, 3, 3, 
	3, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 4, 2, 
	33, 34, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 33, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 35, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 36, 2, 37, 38, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 37, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 12, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 32, 1, 1, 40, 41, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 40, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	42, 39, 39, 39, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 39, 39, 
	39, 39, 39, 39, 39, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 39, 
	39, 39, 39, 43, 39, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 39, 
	39, 44, 39, 45, 1, 47, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 46, 46, 46, 
	46, 46, 46, 46, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 46, 46, 
	46, 46, 48, 46, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 46, 46, 
	15, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	12, 0, 0, 2, 3, 4, 15, 6, 
	4, 15, 6, 0, 5, 18, 20, 0, 
	8, 9, 10, 22, 11, 10, 22, 11, 
	13, 14, 2, 3, 18, 19, 13, 14, 
	19, 16, 17, 5, 19, 16, 17, 0, 
	16, 17, 5, 18, 19, 17, 0, 21, 
	20
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 2, 0, 0, 4, 5, 4, 
	0, 6, 0, 8, 0, 9, 9, 11, 
	0, 0, 4, 13, 4, 0, 14, 0, 
	16, 16, 16, 16, 17, 16, 0, 0, 
	0, 21, 21, 21, 21, 0, 0, 24, 
	25, 25, 25, 0, 25, 27, 29, 30, 
	0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 1, 3, 3, 7, 3, 0, 
	10, 12, 12, 12, 15, 18, 19, 20, 
	22, 22, 23, 26, 28, 31, 0
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
	attr_accessor :bel_en_list_node
end
self.bel_en_list_node = 1;


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
	when 9 then
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 30 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 24 then
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
	when 4 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
	when 2 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 11 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 16 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
  		end
	when 27 then
		begin

    trace('LIST stop_list')
    @list_closed = true
  		end
	when 21 then
		begin

    trace('LIST add_string')
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
	when 25 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('LIST add_ident')
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
	when 6 then
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
	when 8 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 17 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 5 then
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
	when 31 then
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
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
	when 1 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 10 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    $stderr.puts 'STRING string_node_eof'
    yield @buffers[:string]
  		end
	when 22 then
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 3 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
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

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    $stderr.puts 'STRING string_node_eof'
    yield @buffers[:string]
  		end
	when 26 then
		begin

    trace('LIST stop_list')
    @list_closed = true
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 20 then
		begin

    trace('LIST add_string')
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 19 then
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 18 then
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

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 7 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
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

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 15 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
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

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 23 then
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

    trace('LIST add_ident')
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
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
    module Common
      module List

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
	0, 0, 123, 123, 9, 34, 
	34, 92, 34, 92, 9, 
	122, 0, 0, 48, 122, 
	9, 34, 34, 92, 34, 92, 
	0, 0, 9, 125, 9, 
	125, 9, 34, 9, 125, 
	9, 125, 0, 0, 9, 125, 
	10, 10, 10, 122, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 1, 26, 59, 59, 114, 0, 75, 
	26, 59, 59, 0, 117, 117, 26, 117, 
	117, 0, 117, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 29, 89, 149, 264, 265, 
	341, 368, 428, 488, 489, 607, 725, 752, 
	870, 988, 989, 1107, 1109, 1223, 1224
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 3, 3, 3, 3, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 4, 2, 6, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 7, 
	5, 9, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 10, 8, 12, 3, 3, 
	3, 3, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 12, 11, 4, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 11, 11, 
	11, 11, 11, 11, 11, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 11, 
	11, 11, 11, 13, 11, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 11, 
	8, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 1, 1, 1, 1, 1, 
	1, 1, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 1, 1, 1, 1, 
	14, 1, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 1, 16, 16, 16, 
	16, 16, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 15, 15, 15, 15, 
	15, 15, 15, 15, 16, 15, 17, 15, 
	19, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 20, 18, 22, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 21, 21, 
	21, 21, 21, 21, 21, 21, 23, 21, 
	21, 24, 25, 26, 26, 26, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	24, 11, 27, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 11, 11, 11, 11, 11, 11, 
	11, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 11, 11, 11, 11, 28, 
	11, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 11, 11, 29, 11, 30, 
	31, 3, 3, 3, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 30, 11, 
	4, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	11, 11, 11, 11, 11, 11, 11, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 11, 11, 11, 11, 13, 11, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 11, 11, 32, 11, 3, 3, 3, 
	3, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 4, 2, 
	33, 34, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 33, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 35, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 36, 2, 37, 38, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 37, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 12, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 32, 1, 1, 40, 41, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 40, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	42, 39, 39, 39, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 39, 39, 
	39, 39, 39, 39, 39, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 39, 
	39, 39, 39, 43, 39, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 39, 
	39, 44, 39, 45, 1, 47, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 46, 46, 46, 46, 46, 
	46, 46, 46, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 46, 46, 46, 
	46, 46, 46, 46, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 46, 46, 
	46, 46, 48, 46, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 48, 48, 
	48, 48, 48, 48, 48, 48, 46, 46, 
	15, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	12, 0, 0, 2, 3, 4, 15, 6, 
	4, 15, 6, 0, 5, 18, 20, 0, 
	8, 9, 10, 22, 11, 10, 22, 11, 
	13, 14, 2, 3, 18, 19, 13, 14, 
	19, 16, 17, 5, 19, 16, 17, 0, 
	16, 17, 5, 18, 19, 17, 0, 21, 
	20
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 2, 0, 0, 4, 5, 4, 
	0, 6, 0, 8, 0, 9, 9, 11, 
	0, 0, 4, 13, 4, 0, 14, 0, 
	16, 16, 16, 16, 17, 16, 0, 0, 
	0, 21, 21, 21, 21, 0, 0, 24, 
	25, 25, 25, 0, 25, 27, 29, 30, 
	0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 1, 3, 3, 7, 3, 0, 
	10, 12, 12, 12, 15, 18, 19, 20, 
	22, 22, 23, 26, 28, 31, 0
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
	attr_accessor :bel_en_list_node
end
self.bel_en_list_node = 1;


      # end: ragel
          end

          def each
            @buffers      = {}
            @incomplete   = {}
            @list_opened  = false
            @list_closed  = false
            data          = @content.unpack('C*')
            p             = 0
            pe            = data.length
            eof           = data.length

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
	when 9 then
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 30 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 24 then
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
	when 4 then
		begin

    trace('STRING start_string')
    @string_opened = true
    p_start = p
  		end
	when 2 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
	when 11 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 16 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
  		end
	when 27 then
		begin

    trace('LIST stop_list')
    @list_closed = true
  		end
	when 21 then
		begin

    trace('LIST add_string')
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
	when 25 then
		begin

    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('LIST add_ident')
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
	when 6 then
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
	when 8 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 17 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  		end
	when 5 then
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
	when 31 then
		begin

    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
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
	when 1 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 10 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    $stderr.puts 'STRING string_node_eof'
    yield @buffers[:string]
  		end
	when 22 then
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 3 then
		begin

    trace('STRING eof_string')
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
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

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
		begin

    $stderr.puts 'STRING string_node_eof'
    yield @buffers[:string]
  		end
	when 26 then
		begin

    trace('LIST stop_list')
    @list_closed = true
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 20 then
		begin

    trace('LIST add_string')
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 19 then
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 18 then
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

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 7 then
		begin

    $stderr.puts 'STRING a_string_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
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

    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    trace('LIST list_node_eof')
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 15 then
		begin

    trace('LIST start_list')
    @list_opened = true
    @incomplete[:list] = list()
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

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
  		end
	when 23 then
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

    trace('LIST add_ident')
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
		begin

    trace('LIST list_end')
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  		end
		begin

    trace('LIST yield_list')
    yield @buffers[:list]
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
    BELParser::Parsers::Common::List.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
