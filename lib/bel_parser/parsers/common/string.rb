
# begin: ragel
=begin


=end
# end: ragel
# ('\"' | ^(0 .. 31 | 34))* ^'\\"'

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module Common
      module String

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
	0, 0, 9, 39, 34, 92, 
	34, 92, 0, 0, 39, 
	92, 39, 92, 0, 0, 
	0, 0, 0
]

class << self
	attr_accessor :_bel_key_spans
	private :_bel_key_spans, :_bel_key_spans=
end
self._bel_key_spans = [
	0, 31, 59, 59, 0, 54, 54, 0, 
	0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 32, 92, 152, 153, 208, 263, 
	264
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 2, 0, 0, 0, 0, 3, 0, 
	5, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 4, 4, 4, 4, 4, 4, 
	4, 4, 6, 4, 8, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 9, 7, 
	7, 5, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 11, 10, 
	8, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 13, 12, 12, 
	0, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 1, 2, 5, 3, 8, 4, 3, 
	8, 4, 6, 7, 6, 7
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	2, 0, 0, 0, 4, 5, 4, 0, 
	6, 0, 4, 4, 0, 0
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 1, 3, 3, 3, 3, 3, 3, 
	0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 8;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_string_node
end
self.bel_en_string_node = 1;


      # end: ragel
          end

          def each
            @buffers        = {}
            @incomplete     = {}
            @string_opened  = false
            @string_closed  = false
            data            = @content.unpack('C*')
            p_start         = 0
            p_end           = 0
            p               = 0
            pe              = data.length
            eof             = data.length

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

    $stderr.puts 'STRING start_string'
    @string_opened = true
    p_start = p
  		end
	when 2 then
		begin

    $stderr.puts 'STRING string_node_err'
    p_end = p
    chars = data[p_start...p_end]
    ast_node = string(utf8_string(chars), complete: false)
    yield ast_node
  		end
	when 6 then
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
	when 5 then
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
	when 1 then
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
	when 3 then
		begin

    $stderr.puts 'STRING eof_string'
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
    BELParser::Parsers::Common::String.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
