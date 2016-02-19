# begin: ragel

# end: ragel

require_relative 'nonblocking_io_wrapper'

module SET

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
	
	class 	Parser
	include Enumerable
	
	def initialize(content)
		@content = content
		# begin: ragel        
		class << self
			attr_accessor :_set_actions 
			private :_set_actions, :_set_actions=
		end
		self._set_actions = [
		0, 1, 0, 1, 2, 1, 3, 1, 4, 2, 1, 2, 0 , 
		]
		
		class << self
			attr_accessor :_set_key_offsets 
			private :_set_key_offsets, :_set_key_offsets=
		end
		self._set_key_offsets = [
		0, 0, 2, 4, 6, 8, 17, 26, 29, 31, 41, 43, 44, 45, 53, 0 , 
		]
		
		class << self
			attr_accessor :_set_trans_keys 
			private :_set_trans_keys, :_set_trans_keys=
		end
		self._set_trans_keys = [
		83, 115, 69, 101, 84, 116, 9, 32, 9, 32, 95, 48, 57, 65, 90, 97, 122, 9, 32, 95, 48, 57, 65, 90, 97, 122, 9, 32, 61, 9, 32, 9, 32, 34, 95, 48, 57, 65, 90, 97, 122, 34, 92, 10, 92, 10, 95, 48, 57, 65, 90, 97, 122, 0 , 
		]
		
		class << self
			attr_accessor :_set_single_lengths 
			private :_set_single_lengths, :_set_single_lengths=
		end
		self._set_single_lengths = [
		0, 2, 2, 2, 2, 3, 3, 3, 2, 4, 2, 1, 1, 2, 0, 0 , 
		]
		
		class << self
			attr_accessor :_set_range_lengths 
			private :_set_range_lengths, :_set_range_lengths=
		end
		self._set_range_lengths = [
		0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 0, 0, 3, 0, 0 , 
		]
		
		class << self
			attr_accessor :_set_index_offsets 
			private :_set_index_offsets, :_set_index_offsets=
		end
		self._set_index_offsets = [
		0, 0, 3, 6, 9, 12, 19, 26, 30, 33, 41, 44, 46, 48, 54, 0 , 
		]
		
		class << self
			attr_accessor :_set_trans_cond_spaces 
			private :_set_trans_cond_spaces, :_set_trans_cond_spaces=
		end
		self._set_trans_cond_spaces = [
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0 , 
		]
		
		class << self
			attr_accessor :_set_trans_offsets 
			private :_set_trans_offsets, :_set_trans_offsets=
		end
		self._set_trans_offsets = [
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 0 , 
		]
		
		class << self
			attr_accessor :_set_trans_lengths 
			private :_set_trans_lengths, :_set_trans_lengths=
		end
		self._set_trans_lengths = [
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 , 
		]
		
		class << self
			attr_accessor :_set_cond_keys 
			private :_set_cond_keys, :_set_cond_keys=
		end
		self._set_cond_keys = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_set_cond_targs 
			private :_set_cond_targs, :_set_cond_targs=
		end
		self._set_cond_targs = [
		2, 2, 0, 3, 3, 0, 4, 4, 0, 5, 5, 0, 5, 5, 6, 6, 6, 6, 0, 7, 7, 6, 6, 6, 6, 0, 7, 7, 8, 0, 9, 9, 0, 9, 9, 10, 13, 13, 13, 13, 0, 11, 12, 10, 14, 0, 12, 10, 14, 13, 13, 13, 13, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_set_cond_actions 
			private :_set_cond_actions, :_set_cond_actions=
		end
		self._set_cond_actions = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 9, 9, 9, 9, 0, 5, 5, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 0, 3, 3, 3, 7, 0, 3, 3, 7, 3, 3, 3, 3, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_set_nfa_targs 
			private :_set_nfa_targs, :_set_nfa_targs=
		end
		self._set_nfa_targs = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_set_nfa_offsets 
			private :_set_nfa_offsets, :_set_nfa_offsets=
		end
		self._set_nfa_offsets = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_set_nfa_push_actions 
			private :_set_nfa_push_actions, :_set_nfa_push_actions=
		end
		self._set_nfa_push_actions = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_set_nfa_pop_trans 
			private :_set_nfa_pop_trans, :_set_nfa_pop_trans=
		end
		self._set_nfa_pop_trans = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :set_start 
		end
		self.set_start  = 1;
		
		class << self
			attr_accessor :set_first_final 
		end
		self.set_first_final  = 14;
		
		class << self
			attr_accessor :set_error 
		end
		self.set_error  = 0;
		
		class << self
			attr_accessor :set_en_set 
		end
		self.set_en_set  = 1;
		
		# end: ragel        
	end
	
	def each
		buffer = []
		data = @content.unpack('C*')
		p   = 0
		pe  = data.length
		
		# begin: ragel        
		begin
			cs = set_start;
			
		end
		begin
			_klen= 0
			;
			_trans = 0;
			_cond = 0;
			_have = 0;
			_cont = 1;
			_acts = 0;
			_nacts= 0
			;
			_keys = 0;
			_ckeys = 0;
			_cpc= 0
			;
			while ( _cont == 1  )
				begin
					if ( cs == 0  )
						_cont = 0;
						
					end
					_have = 0;
					if ( p == pe  )
						begin
							if ( _have == 0  )
								_cont = 0;
								
							end
							
						end
						
					end
					if ( _cont == 1  )
						begin
							if ( _have == 0  )
								begin
									_keys = _set_key_offsets[cs] ;
									_trans = _set_index_offsets[cs];
									_have = 0;
									_klen = _set_single_lengths[cs];
									if ( _klen > 0  )
										begin
											_lower = 0;
											_mid = 0;
											_upper = 0;
											_lower = _keys;
											_upper = _keys + _klen - 1;
											while ( _upper >= _lower && _have == 0  )
												begin
													_mid = _lower + ((_upper-_lower) >> 1);
													if ( ( data[p ].ord) < _set_trans_keys[_mid ] )
														_upper = _mid - 1;
														
														elsif ( ( data[p ].ord) > _set_trans_keys[_mid ] )
														_lower = _mid + 1;
														
														else
														begin
															_trans += (_mid - _keys);
															_have = 1;
															
														end
														
													end
													
												end
												
											end
											if ( _have == 0  )
												begin
													_keys += _klen;
													_trans += _klen;
													
												end
												
											end
											
										end
										
									end
									if ( _have == 0  )
										begin
											_klen = _set_range_lengths[cs];
											if ( _klen > 0  )
												begin
													_lower = 0;
													_mid = 0;
													_upper = 0;
													_lower = _keys;
													_upper = _keys + (_klen<<1) - 2;
													while ( _have == 0 && _lower <= _upper  )
														begin
															_mid = _lower + (((_upper-_lower) >> 1) & ~1);
															if ( ( data[p ].ord) < _set_trans_keys[_mid ] )
																_upper = _mid - 2;
																
																elsif ( ( data[p ].ord) > _set_trans_keys[_mid + 1 ] )
																_lower = _mid + 2;
																
																else
																begin
																	_trans += ((_mid - _keys)>>1);
																	_have = 1;
																	
																end
																
															end
															
														end
														
													end
													if ( _have == 0  )
														_trans += _klen;
														
													end
													
												end
												
											end
											
										end
										
									end
									_ckeys = _set_trans_offsets[_trans] ;
									_klen = _set_trans_lengths[_trans];
									_cond = _set_trans_offsets[_trans];
									_have = 0;
									_cpc = 0;
									begin
										_lower = 0;
										_mid = 0;
										_upper = 0;
										_lower = _ckeys;
										_upper = _ckeys + _klen - 1;
										while ( _have == 0 && _lower <= _upper  )
											begin
												_mid = _lower + ((_upper-_lower) >> 1);
												if ( _cpc < _set_cond_keys[_mid ] )
													_upper = _mid - 1;
													
													elsif ( _cpc > _set_cond_keys[_mid ] )
													_lower = _mid + 1;
													
													else
													begin
														_cond += (_mid - _ckeys);
														_have = 1;
														
													end
													
												end
												
											end
											
										end
										if ( _have == 0  )
											begin
												cs = 0;
												_cont = 0;
												
											end
											
										end
										
									end
									
								end
								
							end
							if ( _cont == 1  )
								begin
									cs = _set_cond_targs[_cond];
									if ( _set_cond_actions[_cond] != 0  )
										begin
											_acts = _set_cond_actions[_cond] ;
											_nacts = _set_actions[_acts ];
											_acts += 1;
											while ( _nacts > 0  )
												begin
													case  _set_actions[_acts ] 
													when -2 then
													begin
													end
													when 0  then
													begin
														begin
															puts "SET"   
														end
														
													end
													when 1  then
													begin
														begin
															buffer = []  
														end
														
													end
													when 2  then
													begin
														begin
															buffer << ( data[p ].ord) 
														end
														
													end
													when 3  then
													begin
														begin
															@name = buffer.pack('C*').force_encoding('utf-8')
															puts "name: #{@name}"
															
														end
														
													end
													when 4  then
													begin
														begin
															if buffer[0] == 34 && buffer[-1] == 34
																buffer = buffer[1...-1]
															end
															tmp_value = buffer.pack('C*').force_encoding('utf-8')
															tmp_value.gsub!('\"', '"')
															@value = tmp_value
															puts "val: #{@value}"
															
														end
														
														
													end
												end
												_nacts -= 1;
												_acts += 1;
												
											end
											
										end
										
									end
									
								end
								if ( cs == 0  )
									_cont = 0;
									
								end
								if ( _cont == 1  )
									p += 1;
									
								end
								
							end
							
						end
						
					end
					
				end
				
			end
			
		end
		
	end
	# end: ragel        
end
end
	end

if __FILE__ == $0
	$stdin.each_line do |line|
	SET.parse(line) { |obj|
		puts obj
	}
	end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
