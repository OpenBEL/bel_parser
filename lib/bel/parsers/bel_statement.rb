
# begin: ragel

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 2, 1, 4, 1, 
	5, 1, 8, 1, 10, 1, 11, 1, 
	15, 1, 16, 1, 18, 1, 21, 1, 
	23, 2, 0, 1, 2, 7, 3, 2, 
	8, 2, 2, 10, 1, 2, 16, 4, 
	2, 16, 18, 2, 17, 13, 2, 19, 
	20, 2, 20, 21, 2, 22, 23, 2, 
	23, 4, 2, 23, 18, 2, 23, 21, 
	2, 23, 22, 3, 2, 7, 3, 3, 
	6, 7, 3, 3, 9, 12, 4, 3, 
	10, 0, 1, 3, 14, 25, 4, 3, 
	15, 14, 4, 3, 15, 19, 20, 3, 
	21, 17, 13, 3, 23, 16, 4, 3, 
	23, 16, 18, 3, 23, 17, 13, 3, 
	24, 14, 4, 4, 2, 6, 7, 3, 
	4, 8, 9, 12, 4, 4, 16, 14, 
	25, 4, 4, 18, 14, 25, 4, 4, 
	23, 21, 17, 13, 4, 23, 24, 19, 
	20, 4, 24, 14, 4, 25, 4, 24, 
	14, 25, 4, 5, 6, 7, 3, 17, 
	13, 5, 16, 18, 14, 25, 4, 5, 
	23, 24, 19, 20, 21, 5, 23, 24, 
	19, 20, 22, 5, 24, 14, 4, 18, 
	25, 6, 21, 6, 7, 3, 17, 13, 
	6, 23, 6, 7, 3, 17, 13, 6, 
	24, 14, 4, 16, 18, 25, 7, 23, 
	21, 6, 7, 3, 17, 13
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
	303, 314, 325, 337, 349, 359, 361, 365, 
	369, 370, 383, 388, 398, 409, 416, 426, 
	429, 430, 430, 437, 437
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
	57, 65, 90, 97, 122, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 34, 
	92, 9, 32, 41, 44, 9, 32, 41, 
	44, 92, 9, 32, 40, 41, 44, 58, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 95, 48, 57, 65, 90, 97, 
	122, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 40, 10, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 0
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
	5, 5, 6, 6, 4, 2, 4, 4, 
	1, 7, 5, 4, 5, 1, 4, 3, 
	1, 0, 1, 0, 1
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
	3, 3, 3, 3, 3, 0, 0, 0, 
	0, 3, 0, 3, 3, 3, 3, 0, 
	0, 0, 3, 0, 3
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
	261, 270, 279, 289, 299, 307, 310, 315, 
	320, 322, 333, 339, 347, 356, 361, 369, 
	373, 375, 376, 381, 382
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 0, 0, 0, 1, 2, 2, 3, 
	0, 0, 0, 0, 1, 2, 2, 3, 
	1, 4, 5, 4, 6, 7, 7, 7, 
	7, 1, 8, 8, 8, 8, 1, 9, 
	9, 10, 11, 11, 11, 11, 1, 12, 
	12, 13, 14, 14, 14, 14, 1, 15, 
	16, 15, 17, 1, 18, 19, 18, 20, 
	1, 21, 1, 1, 22, 24, 23, 25, 
	25, 26, 14, 14, 14, 14, 1, 25, 
	25, 26, 1, 27, 28, 27, 29, 30, 
	1, 31, 19, 31, 32, 20, 1, 33, 
	33, 34, 11, 11, 11, 11, 1, 35, 
	35, 36, 14, 14, 14, 14, 1, 37, 
	38, 37, 29, 39, 1, 40, 1, 1, 
	41, 43, 44, 44, 44, 44, 42, 45, 
	43, 45, 46, 47, 47, 47, 47, 42, 
	48, 43, 48, 49, 50, 50, 50, 50, 
	42, 51, 52, 51, 53, 44, 44, 44, 
	44, 42, 54, 55, 54, 56, 44, 44, 
	44, 44, 42, 43, 57, 44, 44, 44, 
	44, 42, 43, 59, 59, 59, 59, 58, 
	55, 61, 61, 61, 61, 60, 62, 55, 
	62, 63, 64, 64, 64, 64, 60, 65, 
	55, 65, 66, 67, 67, 67, 67, 60, 
	68, 52, 68, 69, 61, 61, 61, 61, 
	60, 70, 55, 70, 71, 61, 61, 61, 
	61, 60, 55, 72, 61, 61, 61, 61, 
	60, 55, 59, 59, 59, 59, 58, 73, 
	55, 73, 74, 64, 64, 64, 64, 60, 
	75, 55, 75, 76, 67, 67, 67, 67, 
	60, 77, 78, 77, 79, 80, 61, 61, 
	61, 61, 60, 81, 55, 81, 82, 71, 
	61, 61, 61, 61, 60, 83, 43, 83, 
	84, 47, 47, 47, 47, 42, 85, 43, 
	85, 86, 50, 50, 50, 50, 42, 87, 
	78, 87, 88, 89, 44, 44, 44, 44, 
	42, 90, 55, 90, 91, 56, 44, 44, 
	44, 44, 42, 92, 92, 93, 94, 94, 
	94, 94, 1, 95, 96, 93, 97, 97, 
	98, 99, 1, 100, 100, 101, 92, 1, 
	96, 93, 102, 102, 103, 98, 99, 105, 
	104, 104, 104, 104, 1, 106, 106, 107, 
	101, 92, 1, 108, 108, 93, 109, 109, 
	109, 109, 1, 97, 97, 98, 99, 109, 
	109, 109, 109, 1, 110, 110, 110, 110, 
	1, 111, 111, 112, 113, 113, 113, 113, 
	1, 114, 114, 115, 1, 116, 1, 1, 
	8, 8, 8, 8, 1, 1, 110, 110, 
	110, 110, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 3, 4, 4, 5, 20, 6, 
	6, 7, 8, 17, 7, 8, 13, 9, 
	57, 10, 9, 57, 10, 11, 12, 12, 
	57, 14, 15, 16, 57, 9, 10, 16, 
	9, 18, 19, 18, 19, 16, 57, 10, 
	21, 22, 22, 5, 23, 24, 25, 40, 
	24, 25, 40, 26, 58, 27, 26, 58, 
	27, 28, 29, 30, 29, 30, 31, 32, 
	36, 31, 32, 36, 33, 34, 33, 34, 
	35, 37, 38, 37, 38, 39, 58, 33, 
	34, 39, 33, 41, 42, 41, 42, 43, 
	26, 27, 43, 26, 44, 45, 49, 46, 
	48, 47, 59, 44, 47, 59, 50, 47, 
	49, 51, 50, 47, 51, 52, 54, 55, 
	56, 54, 55, 56, 60
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 71, 0, 87, 15, 91, 
	46, 21, 95, 49, 0, 43, 0, 19, 
	130, 19, 0, 83, 0, 0, 52, 23, 
	150, 0, 71, 17, 125, 37, 17, 0, 
	5, 21, 185, 0, 155, 40, 161, 40, 
	0, 52, 23, 111, 140, 61, 135, 167, 
	23, 107, 140, 58, 179, 58, 23, 145, 
	23, 23, 64, 173, 23, 140, 61, 135, 
	167, 23, 107, 140, 58, 58, 23, 23, 
	23, 61, 206, 23, 192, 103, 199, 99, 
	103, 23, 55, 61, 206, 23, 192, 103, 
	99, 103, 23, 55, 0, 11, 79, 11, 
	11, 9, 120, 9, 0, 75, 31, 67, 
	34, 13, 0, 28, 0, 11, 25, 3, 
	115, 1, 0, 71, 7
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 57;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 44;
class << self
	attr_accessor :bel_en_term_main
end
self.bel_en_term_main = 53;
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

    buffer = []
  		end
when 1 then
		begin

    buffer << data[p].ord
  		end
when 2 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 3 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 44
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 4 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 5 then
		begin

    yield term_to_ast(@term)
  		end
when 6 then
		begin
 @term_stack = [] 		end
when 7 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 8 then
		begin

    val = @pbuf.map(&:chr).join()
    if not val.empty?
      if val.start_with? '"' and val.end_with? '"'
        val = val.strip()[1...-1]
      end

      if @pfx
        @term_stack.last[1] << [@pfx, val]
      else
        @term_stack.last[1] << val
      end
    end
    @pbuf = []
    @pfx = nil
  		end
when 9 then
		begin

    @term = @term_stack.pop
    if not @term_stack.empty?
      @term_stack.last[1] << @term
    end
  		end
when 10 then
		begin
 @pbuf << data[p].ord 		end
when 11 then
		begin

    @pfx = @pbuf.map(&:chr).join()
    @pbuf = []
  		end
when 12 then
		begin
n = 0		end
when 13 then
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
when 14 then
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
when 15 then
		begin

    @statement_stack.last.subject = @term
  		end
when 16 then
		begin

    @statement_stack.last.object = @term
  		end
when 17 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 18 then
		begin

    @statement = @statement_stack.pop
  		end
when 19 then
		begin
@relbuffer = []		end
when 20 then
		begin
@relbuffer << data[p].ord		end
when 21 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 22 then
		begin
@cmtbuffer = []		end
when 23 then
		begin
@cmtbuffer << data[p].ord		end
when 24 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 25 then
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
	0, 1, 1, 1, 2, 1, 4, 1, 
	5, 1, 8, 1, 10, 1, 11, 1, 
	15, 1, 16, 1, 18, 1, 21, 1, 
	23, 2, 0, 1, 2, 7, 3, 2, 
	8, 2, 2, 10, 1, 2, 16, 4, 
	2, 16, 18, 2, 17, 13, 2, 19, 
	20, 2, 20, 21, 2, 22, 23, 2, 
	23, 4, 2, 23, 18, 2, 23, 21, 
	2, 23, 22, 3, 2, 7, 3, 3, 
	6, 7, 3, 3, 9, 12, 4, 3, 
	10, 0, 1, 3, 14, 25, 4, 3, 
	15, 14, 4, 3, 15, 19, 20, 3, 
	21, 17, 13, 3, 23, 16, 4, 3, 
	23, 16, 18, 3, 23, 17, 13, 3, 
	24, 14, 4, 4, 2, 6, 7, 3, 
	4, 8, 9, 12, 4, 4, 16, 14, 
	25, 4, 4, 18, 14, 25, 4, 4, 
	23, 21, 17, 13, 4, 23, 24, 19, 
	20, 4, 24, 14, 4, 25, 4, 24, 
	14, 25, 4, 5, 6, 7, 3, 17, 
	13, 5, 16, 18, 14, 25, 4, 5, 
	23, 24, 19, 20, 21, 5, 23, 24, 
	19, 20, 22, 5, 24, 14, 4, 18, 
	25, 6, 21, 6, 7, 3, 17, 13, 
	6, 23, 6, 7, 3, 17, 13, 6, 
	24, 14, 4, 16, 18, 25, 7, 23, 
	21, 6, 7, 3, 17, 13
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
	303, 314, 325, 337, 349, 359, 361, 365, 
	369, 370, 383, 388, 398, 409, 416, 426, 
	429, 430, 430, 437, 437
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
	57, 65, 90, 97, 122, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 34, 
	92, 9, 32, 41, 44, 9, 32, 41, 
	44, 92, 9, 32, 40, 41, 44, 58, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 95, 48, 57, 65, 90, 97, 
	122, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 40, 10, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 0
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
	5, 5, 6, 6, 4, 2, 4, 4, 
	1, 7, 5, 4, 5, 1, 4, 3, 
	1, 0, 1, 0, 1
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
	3, 3, 3, 3, 3, 0, 0, 0, 
	0, 3, 0, 3, 3, 3, 3, 0, 
	0, 0, 3, 0, 3
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
	261, 270, 279, 289, 299, 307, 310, 315, 
	320, 322, 333, 339, 347, 356, 361, 369, 
	373, 375, 376, 381, 382
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	0, 0, 0, 0, 1, 2, 2, 3, 
	0, 0, 0, 0, 1, 2, 2, 3, 
	1, 4, 5, 4, 6, 7, 7, 7, 
	7, 1, 8, 8, 8, 8, 1, 9, 
	9, 10, 11, 11, 11, 11, 1, 12, 
	12, 13, 14, 14, 14, 14, 1, 15, 
	16, 15, 17, 1, 18, 19, 18, 20, 
	1, 21, 1, 1, 22, 24, 23, 25, 
	25, 26, 14, 14, 14, 14, 1, 25, 
	25, 26, 1, 27, 28, 27, 29, 30, 
	1, 31, 19, 31, 32, 20, 1, 33, 
	33, 34, 11, 11, 11, 11, 1, 35, 
	35, 36, 14, 14, 14, 14, 1, 37, 
	38, 37, 29, 39, 1, 40, 1, 1, 
	41, 43, 44, 44, 44, 44, 42, 45, 
	43, 45, 46, 47, 47, 47, 47, 42, 
	48, 43, 48, 49, 50, 50, 50, 50, 
	42, 51, 52, 51, 53, 44, 44, 44, 
	44, 42, 54, 55, 54, 56, 44, 44, 
	44, 44, 42, 43, 57, 44, 44, 44, 
	44, 42, 43, 59, 59, 59, 59, 58, 
	55, 61, 61, 61, 61, 60, 62, 55, 
	62, 63, 64, 64, 64, 64, 60, 65, 
	55, 65, 66, 67, 67, 67, 67, 60, 
	68, 52, 68, 69, 61, 61, 61, 61, 
	60, 70, 55, 70, 71, 61, 61, 61, 
	61, 60, 55, 72, 61, 61, 61, 61, 
	60, 55, 59, 59, 59, 59, 58, 73, 
	55, 73, 74, 64, 64, 64, 64, 60, 
	75, 55, 75, 76, 67, 67, 67, 67, 
	60, 77, 78, 77, 79, 80, 61, 61, 
	61, 61, 60, 81, 55, 81, 82, 71, 
	61, 61, 61, 61, 60, 83, 43, 83, 
	84, 47, 47, 47, 47, 42, 85, 43, 
	85, 86, 50, 50, 50, 50, 42, 87, 
	78, 87, 88, 89, 44, 44, 44, 44, 
	42, 90, 55, 90, 91, 56, 44, 44, 
	44, 44, 42, 92, 92, 93, 94, 94, 
	94, 94, 1, 95, 96, 93, 97, 97, 
	98, 99, 1, 100, 100, 101, 92, 1, 
	96, 93, 102, 102, 103, 98, 99, 105, 
	104, 104, 104, 104, 1, 106, 106, 107, 
	101, 92, 1, 108, 108, 93, 109, 109, 
	109, 109, 1, 97, 97, 98, 99, 109, 
	109, 109, 109, 1, 110, 110, 110, 110, 
	1, 111, 111, 112, 113, 113, 113, 113, 
	1, 114, 114, 115, 1, 116, 1, 1, 
	8, 8, 8, 8, 1, 1, 110, 110, 
	110, 110, 1, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	2, 0, 3, 4, 4, 5, 20, 6, 
	6, 7, 8, 17, 7, 8, 13, 9, 
	57, 10, 9, 57, 10, 11, 12, 12, 
	57, 14, 15, 16, 57, 9, 10, 16, 
	9, 18, 19, 18, 19, 16, 57, 10, 
	21, 22, 22, 5, 23, 24, 25, 40, 
	24, 25, 40, 26, 58, 27, 26, 58, 
	27, 28, 29, 30, 29, 30, 31, 32, 
	36, 31, 32, 36, 33, 34, 33, 34, 
	35, 37, 38, 37, 38, 39, 58, 33, 
	34, 39, 33, 41, 42, 41, 42, 43, 
	26, 27, 43, 26, 44, 45, 49, 46, 
	48, 47, 59, 44, 47, 59, 50, 47, 
	49, 51, 50, 47, 51, 52, 54, 55, 
	56, 54, 55, 56, 60
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	0, 0, 0, 71, 0, 87, 15, 91, 
	46, 21, 95, 49, 0, 43, 0, 19, 
	130, 19, 0, 83, 0, 0, 52, 23, 
	150, 0, 71, 17, 125, 37, 17, 0, 
	5, 21, 185, 0, 155, 40, 161, 40, 
	0, 52, 23, 111, 140, 61, 135, 167, 
	23, 107, 140, 58, 179, 58, 23, 145, 
	23, 23, 64, 173, 23, 140, 61, 135, 
	167, 23, 107, 140, 58, 58, 23, 23, 
	23, 61, 206, 23, 192, 103, 199, 99, 
	103, 23, 55, 61, 206, 23, 192, 103, 
	99, 103, 23, 55, 0, 11, 79, 11, 
	11, 9, 120, 9, 0, 75, 31, 67, 
	34, 13, 0, 28, 0, 11, 25, 3, 
	115, 1, 0, 71, 7
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 57;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 44;
class << self
	attr_accessor :bel_en_term_main
end
self.bel_en_term_main = 53;
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

    buffer = []
  		end
when 1 then
		begin

    buffer << data[p].ord
  		end
when 2 then
		begin

    @name = buffer.pack('C*').force_encoding('utf-8')
  		end
when 3 then
		begin
 	begin
		stack[top] = cs
		top+= 1
		cs = 44
		_trigger_goto = true
		_goto_level = _again
		break
	end
           		end
when 4 then
		begin
 	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end
                 		end
when 5 then
		begin

    yield term_to_ast(@term)
  		end
when 6 then
		begin
 @term_stack = [] 		end
when 7 then
		begin

    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  		end
when 8 then
		begin

    val = @pbuf.map(&:chr).join()
    if not val.empty?
      if val.start_with? '"' and val.end_with? '"'
        val = val.strip()[1...-1]
      end

      if @pfx
        @term_stack.last[1] << [@pfx, val]
      else
        @term_stack.last[1] << val
      end
    end
    @pbuf = []
    @pfx = nil
  		end
when 9 then
		begin

    @term = @term_stack.pop
    if not @term_stack.empty?
      @term_stack.last[1] << @term
    end
  		end
when 10 then
		begin
 @pbuf << data[p].ord 		end
when 11 then
		begin

    @pfx = @pbuf.map(&:chr).join()
    @pbuf = []
  		end
when 12 then
		begin
n = 0		end
when 13 then
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
when 14 then
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
when 15 then
		begin

    @statement_stack.last.subject = @term
  		end
when 16 then
		begin

    @statement_stack.last.object = @term
  		end
when 17 then
		begin

    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  		end
when 18 then
		begin

    @statement = @statement_stack.pop
  		end
when 19 then
		begin
@relbuffer = []		end
when 20 then
		begin
@relbuffer << data[p].ord		end
when 21 then
		begin

    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  		end
when 22 then
		begin
@cmtbuffer = []		end
when 23 then
		begin
@cmtbuffer << data[p].ord		end
when 24 then
		begin

    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  		end
when 25 then
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
