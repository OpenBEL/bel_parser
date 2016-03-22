
# begin: ragel
=begin

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 5, 1, 10, 1, 
	12, 1, 13, 2, 0, 1, 2, 2, 
	3, 2, 4, 5, 2, 6, 7, 3, 
	2, 9, 11, 3, 6, 8, 11, 4, 
	2, 9, 11, 12, 4, 6, 8, 11, 
	12
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 1, 11, 13, 17, 21, 22, 
	23, 34, 41, 49, 50, 52, 53, 54, 
	54, 54
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	123, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 34, 92, 9, 32, 44, 
	125, 9, 32, 44, 125, 10, 92, 9, 
	32, 44, 95, 125, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 34, 34, 92, 10, 92, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 2, 4, 4, 1, 1, 
	5, 1, 2, 1, 2, 1, 1, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 3, 0, 0, 0, 0, 0, 
	3, 3, 3, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 10, 13, 18, 23, 25, 
	27, 36, 41, 47, 49, 52, 54, 56, 
	57, 58
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 2, 2, 3, 4, 4, 4, 
	4, 1, 6, 7, 5, 8, 8, 9, 
	10, 1, 11, 11, 2, 12, 1, 13, 
	1, 7, 5, 14, 14, 15, 16, 17, 
	16, 16, 16, 1, 18, 18, 18, 18, 
	1, 19, 20, 20, 20, 20, 1, 21, 
	1, 23, 24, 22, 25, 1, 24, 22, 
	1, 1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 2, 3, 8, 3, 4, 7, 
	5, 2, 6, 5, 6, 15, 5, 2, 
	8, 6, 10, 16, 10, 12, 12, 13, 
	14, 17
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	5, 0, 0, 17, 11, 3, 3, 3, 
	27, 27, 36, 0, 7, 9, 23, 23, 
	1, 31, 11, 14, 1, 17, 3, 3, 
	3, 20
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 15;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 9;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 11;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 1;


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
	_trans = _bel_indicies[_trans]
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

    yield @buffers[:ident]
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

    yield @buffers[:string]
  		end
when 8 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 9 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 10 then
		begin

    @buffers[:list] = []
  		end
when 11 then
		begin

    @buffers[:list] << @buffers[:list_arg]
  		end
when 12 then
		begin

    #FIXME: Mark list as complete?
    @buffers[:list] = s(:list, *@buffers[:list])
  		end
when 13 then
		begin

    yield @buffers[:list]
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

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 5, 1, 10, 1, 
	12, 1, 13, 2, 0, 1, 2, 2, 
	3, 2, 4, 5, 2, 6, 7, 3, 
	2, 9, 11, 3, 6, 8, 11, 4, 
	2, 9, 11, 12, 4, 6, 8, 11, 
	12
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 1, 11, 13, 17, 21, 22, 
	23, 34, 41, 49, 50, 52, 53, 54, 
	54, 54
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	123, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 34, 92, 9, 32, 44, 
	125, 9, 32, 44, 125, 10, 92, 9, 
	32, 44, 95, 125, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 34, 34, 92, 10, 92, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 2, 4, 4, 1, 1, 
	5, 1, 2, 1, 2, 1, 1, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 3, 0, 0, 0, 0, 0, 
	3, 3, 3, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 10, 13, 18, 23, 25, 
	27, 36, 41, 47, 49, 52, 54, 56, 
	57, 58
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 2, 2, 3, 4, 4, 4, 
	4, 1, 6, 7, 5, 8, 8, 9, 
	10, 1, 11, 11, 2, 12, 1, 13, 
	1, 7, 5, 14, 14, 15, 16, 17, 
	16, 16, 16, 1, 18, 18, 18, 18, 
	1, 19, 20, 20, 20, 20, 1, 21, 
	1, 23, 24, 22, 25, 1, 24, 22, 
	1, 1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 2, 3, 8, 3, 4, 7, 
	5, 2, 6, 5, 6, 15, 5, 2, 
	8, 6, 10, 16, 10, 12, 12, 13, 
	14, 17
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	5, 0, 0, 17, 11, 3, 3, 3, 
	27, 27, 36, 0, 7, 9, 23, 23, 
	1, 31, 11, 14, 1, 17, 3, 3, 
	3, 20
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 15;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 9;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 11;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 1;


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
	_trans = _bel_indicies[_trans]
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

    yield @buffers[:ident]
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

    yield @buffers[:string]
  		end
when 8 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 9 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 10 then
		begin

    @buffers[:list] = []
  		end
when 11 then
		begin

    @buffers[:list] << @buffers[:list_arg]
  		end
when 12 then
		begin

    #FIXME: Mark list as complete?
    @buffers[:list] = s(:list, *@buffers[:list])
  		end
when 13 then
		begin

    yield @buffers[:list]
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


=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
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
	0, 1, 1, 1, 5, 1, 10, 1, 
	12, 1, 13, 2, 0, 1, 2, 2, 
	3, 2, 4, 5, 2, 6, 7, 3, 
	2, 9, 11, 3, 6, 8, 11, 4, 
	2, 9, 11, 12, 4, 6, 8, 11, 
	12
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 1, 11, 13, 17, 21, 22, 
	23, 34, 41, 49, 50, 52, 53, 54, 
	54, 54
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	123, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 34, 92, 9, 32, 44, 
	125, 9, 32, 44, 125, 10, 92, 9, 
	32, 44, 95, 125, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 10, 95, 48, 57, 65, 90, 97, 
	122, 34, 34, 92, 10, 92, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 2, 4, 4, 1, 1, 
	5, 1, 2, 1, 2, 1, 1, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 0, 3, 0, 0, 0, 0, 0, 
	3, 3, 3, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 2, 10, 13, 18, 23, 25, 
	27, 36, 41, 47, 49, 52, 54, 56, 
	57, 58
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 1, 2, 2, 3, 4, 4, 4, 
	4, 1, 6, 7, 5, 8, 8, 9, 
	10, 1, 11, 11, 2, 12, 1, 13, 
	1, 7, 5, 14, 14, 15, 16, 17, 
	16, 16, 16, 1, 18, 18, 18, 18, 
	1, 19, 20, 20, 20, 20, 1, 21, 
	1, 23, 24, 22, 25, 1, 24, 22, 
	1, 1, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 2, 3, 8, 3, 4, 7, 
	5, 2, 6, 5, 6, 15, 5, 2, 
	8, 6, 10, 16, 10, 12, 12, 13, 
	14, 17
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	5, 0, 0, 17, 11, 3, 3, 3, 
	27, 27, 36, 0, 7, 9, 23, 23, 
	1, 31, 11, 14, 1, 17, 3, 3, 
	3, 20
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 15;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 9;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 11;
class << self
	attr_accessor :bel_en_list
end
self.bel_en_list = 1;


      # end: ragel        
          end

          def each
            @buffers = {}
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length

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
	_trans = _bel_indicies[_trans]
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

    yield @buffers[:ident]
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

    yield @buffers[:string]
  		end
when 8 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  		end
when 9 then
		begin

    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  		end
when 10 then
		begin

    @buffers[:list] = []
  		end
when 11 then
		begin

    @buffers[:list] << @buffers[:list_arg]
  		end
when 12 then
		begin

    #FIXME: Mark list as complete?
    @buffers[:list] = s(:list, *@buffers[:list])
  		end
when 13 then
		begin

    yield @buffers[:list]
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
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::Common::List.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
