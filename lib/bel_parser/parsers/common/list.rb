
# begin: ragel
=begin

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 123, 123, 9, 39, 
	34, 92, 34, 92, 9, 
	122, 39, 92, 39, 92, 
	0, 0, 0, 0, 48, 122, 
	9, 39, 34, 92, 34, 
	92, 0, 0, 39, 92, 
	39, 92, 0, 0, 9, 125, 
	9, 125, 9, 39, 9, 
	125, 9, 125, 0, 0, 
	9, 125, 10, 10, 10, 122, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 1, 31, 59, 59, 114, 54, 54, 
	0, 0, 75, 31, 59, 59, 0, 54, 
	54, 0, 117, 117, 31, 117, 117, 0, 
	117, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 34, 94, 154, 269, 324, 
	379, 380, 381, 457, 489, 549, 609, 610, 
	665, 720, 721, 839, 957, 989, 1107, 1225, 
	1226, 1344, 1346, 1460, 1461
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 2, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 1, 3, 1, 1, 1, 1, 
	4, 1, 6, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 7, 5, 9, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	10, 8, 12, 2, 2, 2, 2, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 12, 11, 3, 11, 11, 11, 11, 
	4, 11, 11, 11, 11, 11, 11, 11, 
	11, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 11, 11, 11, 11, 11, 
	11, 11, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 11, 11, 11, 11, 
	13, 11, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 11, 6, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 15, 14, 9, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 17, 16, 16, 8, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 1, 
	1, 1, 1, 1, 1, 1, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	1, 1, 1, 1, 18, 1, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	1, 19, 19, 19, 19, 19, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	19, 1, 20, 1, 1, 1, 1, 21, 
	1, 23, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 24, 22, 26, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 27, 
	25, 25, 23, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 29, 
	28, 26, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 31, 30, 
	30, 32, 33, 34, 34, 34, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	32, 11, 35, 11, 11, 11, 11, 36, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 11, 11, 11, 11, 11, 11, 
	11, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 11, 11, 11, 11, 37, 
	11, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 11, 11, 38, 11, 39, 
	40, 2, 2, 2, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 39, 11, 
	3, 11, 11, 11, 11, 4, 11, 11, 
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
	13, 11, 11, 41, 11, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 2, 1, 3, 1, 
	1, 1, 1, 4, 1, 42, 43, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 42, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	44, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 45, 1, 46, 47, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 46, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 12, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 41, 
	1, 1, 48, 49, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 48, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 50, 11, 11, 
	11, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 11, 11, 11, 11, 11, 
	11, 11, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 11, 11, 11, 11, 
	51, 11, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 11, 11, 52, 11, 
	53, 1, 55, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 54, 54, 54, 54, 54, 54, 
	54, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 54, 54, 54, 54, 56, 
	54, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 54, 54, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	18, 0, 2, 3, 6, 4, 21, 9, 
	4, 21, 9, 0, 5, 24, 7, 8, 
	7, 8, 26, 11, 12, 15, 13, 28, 
	14, 13, 28, 14, 16, 17, 16, 17, 
	19, 20, 2, 3, 6, 24, 25, 19, 
	20, 25, 22, 23, 5, 25, 22, 23, 
	22, 23, 5, 24, 25, 23, 0, 27, 
	26
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 3, 4, 3, 
	0, 5, 0, 7, 0, 8, 3, 3, 
	0, 0, 8, 0, 0, 0, 3, 11, 
	3, 0, 12, 0, 3, 3, 0, 0, 
	14, 14, 14, 14, 14, 15, 14, 0, 
	0, 0, 19, 19, 19, 19, 0, 0, 
	22, 22, 22, 0, 22, 24, 26, 27, 
	0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 1, 2, 2, 6, 2, 2, 
	2, 2, 0, 9, 10, 10, 10, 10, 
	10, 10, 13, 16, 17, 18, 20, 20, 
	21, 23, 25, 28, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 18;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 10;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 11;
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
	when 8 then
		begin

    $stderr.puts 'IDENTIFIER start_identifier'
    @identifier_started = true
    @id_start = p;
  		end
	when 27 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 7 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 26 then
		begin

    $stderr.puts 'IDENTIFIER ident_node_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 3 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
	when 14 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
	when 24 then
		begin

    $stderr.puts "LIST stop_list"
    @list_closed = true
  		end
	when 19 then
		begin

    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
	when 22 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
	when 5 then
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 15 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    $stderr.puts 'IDENTIFIER start_identifier'
    @identifier_started = true
    @id_start = p;
  		end
	when 4 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 12 then
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING yield_string'
    yield @buffers[:string]
  		end
	when 11 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING yield_string'
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
	when 28 then
		begin

    $stderr.puts 'IDENTIFIER yield_identifier'
    yield @buffers[:ident]
  		end
	when 9 then
		begin

    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  		end
	when 1 then
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 25 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts 'IDENTIFIER yield_identifier'
    yield @buffers[:ident]
  		end
	when 10 then
		begin

    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  		end
	when 2 then
		begin

    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 20 then
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 6 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 23 then
		begin

    $stderr.puts "LIST stop_list"
    @list_closed = true
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 18 then
		begin

    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 17 then
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 16 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 13 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 21 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
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
	0, 0, 123, 123, 9, 39, 
	34, 92, 34, 92, 9, 
	122, 39, 92, 39, 92, 
	0, 0, 0, 0, 48, 122, 
	9, 39, 34, 92, 34, 
	92, 0, 0, 39, 92, 
	39, 92, 0, 0, 9, 125, 
	9, 125, 9, 39, 9, 
	125, 9, 125, 0, 0, 
	9, 125, 10, 10, 10, 122, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 1, 31, 59, 59, 114, 54, 54, 
	0, 0, 75, 31, 59, 59, 0, 54, 
	54, 0, 117, 117, 31, 117, 117, 0, 
	117, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 34, 94, 154, 269, 324, 
	379, 380, 381, 457, 489, 549, 609, 610, 
	665, 720, 721, 839, 957, 989, 1107, 1225, 
	1226, 1344, 1346, 1460, 1461
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 2, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 1, 3, 1, 1, 1, 1, 
	4, 1, 6, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 7, 5, 9, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	10, 8, 12, 2, 2, 2, 2, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 12, 11, 3, 11, 11, 11, 11, 
	4, 11, 11, 11, 11, 11, 11, 11, 
	11, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 11, 11, 11, 11, 11, 
	11, 11, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 11, 11, 11, 11, 
	13, 11, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 11, 6, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 15, 14, 9, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 17, 16, 16, 8, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 1, 
	1, 1, 1, 1, 1, 1, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	1, 1, 1, 1, 18, 1, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	1, 19, 19, 19, 19, 19, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	19, 1, 20, 1, 1, 1, 1, 21, 
	1, 23, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 24, 22, 26, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 27, 
	25, 25, 23, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 29, 
	28, 26, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 31, 30, 
	30, 32, 33, 34, 34, 34, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	32, 11, 35, 11, 11, 11, 11, 36, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 11, 11, 11, 11, 11, 11, 
	11, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 11, 11, 11, 11, 37, 
	11, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 11, 11, 38, 11, 39, 
	40, 2, 2, 2, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 39, 11, 
	3, 11, 11, 11, 11, 4, 11, 11, 
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
	13, 11, 11, 41, 11, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 2, 1, 3, 1, 
	1, 1, 1, 4, 1, 42, 43, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 42, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	44, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 45, 1, 46, 47, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 46, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 12, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 41, 
	1, 1, 48, 49, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 48, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 50, 11, 11, 
	11, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 11, 11, 11, 11, 11, 
	11, 11, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 11, 11, 11, 11, 
	51, 11, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 11, 11, 52, 11, 
	53, 1, 55, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 54, 54, 54, 54, 54, 54, 
	54, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 54, 54, 54, 54, 56, 
	54, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 54, 54, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	18, 0, 2, 3, 6, 4, 21, 9, 
	4, 21, 9, 0, 5, 24, 7, 8, 
	7, 8, 26, 11, 12, 15, 13, 28, 
	14, 13, 28, 14, 16, 17, 16, 17, 
	19, 20, 2, 3, 6, 24, 25, 19, 
	20, 25, 22, 23, 5, 25, 22, 23, 
	22, 23, 5, 24, 25, 23, 0, 27, 
	26
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 3, 4, 3, 
	0, 5, 0, 7, 0, 8, 3, 3, 
	0, 0, 8, 0, 0, 0, 3, 11, 
	3, 0, 12, 0, 3, 3, 0, 0, 
	14, 14, 14, 14, 14, 15, 14, 0, 
	0, 0, 19, 19, 19, 19, 0, 0, 
	22, 22, 22, 0, 22, 24, 26, 27, 
	0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 1, 2, 2, 6, 2, 2, 
	2, 2, 0, 9, 10, 10, 10, 10, 
	10, 10, 13, 16, 17, 18, 20, 20, 
	21, 23, 25, 28, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 18;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 10;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 11;
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
	when 8 then
		begin

    $stderr.puts 'IDENTIFIER start_identifier'
    @identifier_started = true
    @id_start = p;
  		end
	when 27 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 7 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 26 then
		begin

    $stderr.puts 'IDENTIFIER ident_node_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 3 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
	when 14 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
	when 24 then
		begin

    $stderr.puts "LIST stop_list"
    @list_closed = true
  		end
	when 19 then
		begin

    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
	when 22 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
	when 5 then
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 15 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    $stderr.puts 'IDENTIFIER start_identifier'
    @identifier_started = true
    @id_start = p;
  		end
	when 4 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 12 then
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING yield_string'
    yield @buffers[:string]
  		end
	when 11 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING yield_string'
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
	when 28 then
		begin

    $stderr.puts 'IDENTIFIER yield_identifier'
    yield @buffers[:ident]
  		end
	when 9 then
		begin

    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  		end
	when 1 then
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 25 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts 'IDENTIFIER yield_identifier'
    yield @buffers[:ident]
  		end
	when 10 then
		begin

    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  		end
	when 2 then
		begin

    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 20 then
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 6 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 23 then
		begin

    $stderr.puts "LIST stop_list"
    @list_closed = true
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 18 then
		begin

    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 17 then
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 16 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 13 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 21 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
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

          def initialize(content)
            @content = content
            $stderr.puts "\n---\ncontent: '" + @content + "'"
      # begin: ragel
            
class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	0, 0, 123, 123, 9, 39, 
	34, 92, 34, 92, 9, 
	122, 39, 92, 39, 92, 
	0, 0, 0, 0, 48, 122, 
	9, 39, 34, 92, 34, 
	92, 0, 0, 39, 92, 
	39, 92, 0, 0, 9, 125, 
	9, 125, 9, 39, 9, 
	125, 9, 125, 0, 0, 
	9, 125, 10, 10, 10, 122, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 1, 31, 59, 59, 114, 54, 54, 
	0, 0, 75, 31, 59, 59, 0, 54, 
	54, 0, 117, 117, 31, 117, 117, 0, 
	117, 1, 113, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 34, 94, 154, 269, 324, 
	379, 380, 381, 457, 489, 549, 609, 610, 
	665, 720, 721, 839, 957, 989, 1107, 1225, 
	1226, 1344, 1346, 1460, 1461
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 2, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 1, 3, 1, 1, 1, 1, 
	4, 1, 6, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 7, 5, 9, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	8, 8, 8, 8, 8, 8, 8, 8, 
	10, 8, 12, 2, 2, 2, 2, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 12, 11, 3, 11, 11, 11, 11, 
	4, 11, 11, 11, 11, 11, 11, 11, 
	11, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 11, 11, 11, 11, 11, 
	11, 11, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 11, 11, 11, 11, 
	13, 11, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 11, 6, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 14, 14, 14, 14, 14, 14, 
	14, 14, 15, 14, 9, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 16, 16, 16, 16, 16, 16, 16, 
	16, 17, 16, 16, 8, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 1, 
	1, 1, 1, 1, 1, 1, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	1, 1, 1, 1, 18, 1, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	1, 19, 19, 19, 19, 19, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	19, 1, 20, 1, 1, 1, 1, 21, 
	1, 23, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 22, 22, 22, 22, 22, 
	22, 22, 22, 24, 22, 26, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 27, 
	25, 25, 23, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 28, 28, 28, 29, 
	28, 26, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 31, 30, 
	30, 32, 33, 34, 34, 34, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	32, 11, 35, 11, 11, 11, 11, 36, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 11, 11, 11, 11, 11, 11, 
	11, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 11, 11, 11, 11, 37, 
	11, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 37, 37, 37, 37, 37, 
	37, 37, 37, 11, 11, 38, 11, 39, 
	40, 2, 2, 2, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 39, 11, 
	3, 11, 11, 11, 11, 4, 11, 11, 
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
	13, 11, 11, 41, 11, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 2, 1, 3, 1, 
	1, 1, 1, 4, 1, 42, 43, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 42, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	44, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 45, 1, 46, 47, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 46, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 12, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 41, 
	1, 1, 48, 49, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 48, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 50, 11, 11, 
	11, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 11, 11, 11, 11, 11, 
	11, 11, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 11, 11, 11, 11, 
	51, 11, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 51, 51, 51, 51, 
	51, 51, 51, 51, 11, 11, 52, 11, 
	53, 1, 55, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	54, 54, 54, 54, 54, 54, 54, 54, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 54, 54, 54, 54, 54, 54, 
	54, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 54, 54, 54, 54, 56, 
	54, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 56, 56, 56, 56, 56, 
	56, 56, 56, 54, 54, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	18, 0, 2, 3, 6, 4, 21, 9, 
	4, 21, 9, 0, 5, 24, 7, 8, 
	7, 8, 26, 11, 12, 15, 13, 28, 
	14, 13, 28, 14, 16, 17, 16, 17, 
	19, 20, 2, 3, 6, 24, 25, 19, 
	20, 25, 22, 23, 5, 25, 22, 23, 
	22, 23, 5, 24, 25, 23, 0, 27, 
	26
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 0, 0, 3, 4, 3, 
	0, 5, 0, 7, 0, 8, 3, 3, 
	0, 0, 8, 0, 0, 0, 3, 11, 
	3, 0, 12, 0, 3, 3, 0, 0, 
	14, 14, 14, 14, 14, 15, 14, 0, 
	0, 0, 19, 19, 19, 19, 0, 0, 
	22, 22, 22, 0, 22, 24, 26, 27, 
	0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 0, 1, 2, 2, 6, 2, 2, 
	2, 2, 0, 9, 10, 10, 10, 10, 
	10, 10, 13, 16, 17, 18, 20, 20, 
	21, 23, 25, 28, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 18;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident_node
end
self.bel_en_ident_node = 10;
class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 11;
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
	when 8 then
		begin

    $stderr.puts 'IDENTIFIER start_identifier'
    @identifier_started = true
    @id_start = p;
  		end
	when 27 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
	when 7 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
	when 26 then
		begin

    $stderr.puts 'IDENTIFIER ident_node_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 3 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
	when 14 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
	when 24 then
		begin

    $stderr.puts "LIST stop_list"
    @list_closed = true
  		end
	when 19 then
		begin

    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
	when 22 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
	when 5 then
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 15 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    $stderr.puts 'IDENTIFIER start_identifier'
    @identifier_started = true
    @id_start = p;
  		end
	when 4 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
	when 12 then
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING yield_string'
    yield @buffers[:string]
  		end
	when 11 then
		begin

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
		begin

    $stderr.puts 'STRING stop_string'
    @string_closed = true
    p_end = p
  		end
		begin

    $stderr.puts 'STRING string_end'
    completed = @string_opened && @string_closed
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: true)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING yield_string'
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
	when 28 then
		begin

    $stderr.puts 'IDENTIFIER yield_identifier'
    yield @buffers[:ident]
  		end
	when 9 then
		begin

    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  		end
	when 1 then
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 25 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts 'IDENTIFIER yield_identifier'
    yield @buffers[:ident]
  		end
	when 10 then
		begin

    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts 'STRING eof_main; yielding'
    yield @buffers[:string]
  		end
	when 2 then
		begin

    $stderr.puts 'STRING eof_string'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    @buffers[:string] = ast_node
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 20 then
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 6 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_err'
    @id_end = p
    chars = data[@id_start...@id_end]
    ast_node = identifier(utf8_string(chars), complete: false)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
	when 23 then
		begin

    $stderr.puts "LIST stop_list"
    @list_closed = true
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 18 then
		begin

    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 17 then
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 16 then
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 13 then
		begin

    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  		end
	when 21 then
		begin

    $stderr.puts 'IDENTIFIER end_identifier'
    @id_end = p
    chars = data[@id_start...@id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed)
    @buffers[:ident] = ast_node
  		end
		begin

    $stderr.puts 'IDENTIFIER an_ident_eof'
    if @identifier_started
      @id_end = p
      chars = data[@id_start...@id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed)
      @buffers[:ident] = ast_node
    end
  		end
		begin

    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  		end
		begin

    $stderr.puts "LIST list_end"
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

    $stderr.puts "LIST yield_list"
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
