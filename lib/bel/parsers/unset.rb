# begin: ragel

# end: ragel

require_relative 'nonblocking_io_wrapper'

module UNSET

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
			attr_accessor :_unset_actions 
			private :_unset_actions, :_unset_actions=
		end
		self._unset_actions = [
		0, 1, 0, 1, 2, 1, 3, 2, 1, 2, 0 , 
		]
		
		class << self
			attr_accessor :_unset_key_offsets 
			private :_unset_key_offsets, :_unset_key_offsets=
		end
		self._unset_key_offsets = [
		0, 0, 2, 4, 6, 8, 10, 12, 21, 29, 0 , 
		]
		
		class << self
			attr_accessor :_unset_trans_keys 
			private :_unset_trans_keys, :_unset_trans_keys=
		end
		self._unset_trans_keys = [
		85, 117, 78, 110, 83, 115, 69, 101, 84, 116, 9, 32, 9, 32, 95, 48, 57, 65, 90, 97, 122, 10, 95, 48, 57, 65, 90, 97, 122, 0 , 
		]
		
		class << self
			attr_accessor :_unset_single_lengths 
			private :_unset_single_lengths, :_unset_single_lengths=
		end
		self._unset_single_lengths = [
		0, 2, 2, 2, 2, 2, 2, 3, 2, 0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_range_lengths 
			private :_unset_range_lengths, :_unset_range_lengths=
		end
		self._unset_range_lengths = [
		0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_index_offsets 
			private :_unset_index_offsets, :_unset_index_offsets=
		end
		self._unset_index_offsets = [
		0, 0, 3, 6, 9, 12, 15, 18, 25, 31, 0 , 
		]
		
		class << self
			attr_accessor :_unset_trans_cond_spaces 
			private :_unset_trans_cond_spaces, :_unset_trans_cond_spaces=
		end
		self._unset_trans_cond_spaces = [
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0 , 
		]
		
		class << self
			attr_accessor :_unset_trans_offsets 
			private :_unset_trans_offsets, :_unset_trans_offsets=
		end
		self._unset_trans_offsets = [
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0 , 
		]
		
		class << self
			attr_accessor :_unset_trans_lengths 
			private :_unset_trans_lengths, :_unset_trans_lengths=
		end
		self._unset_trans_lengths = [
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 , 
		]
		
		class << self
			attr_accessor :_unset_cond_keys 
			private :_unset_cond_keys, :_unset_cond_keys=
		end
		self._unset_cond_keys = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_cond_targs 
			private :_unset_cond_targs, :_unset_cond_targs=
		end
		self._unset_cond_targs = [
		2, 2, 0, 3, 3, 0, 4, 4, 0, 5, 5, 0, 6, 6, 0, 7, 7, 0, 7, 7, 8, 8, 8, 8, 0, 9, 8, 8, 8, 8, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_cond_actions 
			private :_unset_cond_actions, :_unset_cond_actions=
		end
		self._unset_cond_actions = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 7, 7, 7, 7, 0, 5, 3, 3, 3, 3, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_nfa_targs 
			private :_unset_nfa_targs, :_unset_nfa_targs=
		end
		self._unset_nfa_targs = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_nfa_offsets 
			private :_unset_nfa_offsets, :_unset_nfa_offsets=
		end
		self._unset_nfa_offsets = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_nfa_push_actions 
			private :_unset_nfa_push_actions, :_unset_nfa_push_actions=
		end
		self._unset_nfa_push_actions = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_unset_nfa_pop_trans 
			private :_unset_nfa_pop_trans, :_unset_nfa_pop_trans=
		end
		self._unset_nfa_pop_trans = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :unset_start 
		end
		self.unset_start  = 1;
		
		class << self
			attr_accessor :unset_first_final 
		end
		self.unset_first_final  = 9;
		
		class << self
			attr_accessor :unset_error 
		end
		self.unset_error  = 0;
		
		class << self
			attr_accessor :unset_en_unset 
		end
		self.unset_en_unset  = 1;
		
		# end: ragel        
	end
	
	def each
		buffer = []
		data = @content.unpack('C*')
		p   = 0
		pe  = data.length
		
		# begin: ragel        
		begin
			cs = unset_start;
			
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
									_keys = _unset_key_offsets[cs] ;
									_trans = _unset_index_offsets[cs];
									_have = 0;
									_klen = _unset_single_lengths[cs];
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
													if ( ( data[p ].ord) < _unset_trans_keys[_mid ] )
														_upper = _mid - 1;
														
														elsif ( ( data[p ].ord) > _unset_trans_keys[_mid ] )
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
											_klen = _unset_range_lengths[cs];
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
															if ( ( data[p ].ord) < _unset_trans_keys[_mid ] )
																_upper = _mid - 2;
																
																elsif ( ( data[p ].ord) > _unset_trans_keys[_mid + 1 ] )
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
									_ckeys = _unset_trans_offsets[_trans] ;
									_klen = _unset_trans_lengths[_trans];
									_cond = _unset_trans_offsets[_trans];
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
												if ( _cpc < _unset_cond_keys[_mid ] )
													_upper = _mid - 1;
													
													elsif ( _cpc > _unset_cond_keys[_mid ] )
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
									cs = _unset_cond_targs[_cond];
									if ( _unset_cond_actions[_cond] != 0  )
										begin
											_acts = _unset_cond_actions[_cond] ;
											_nacts = _unset_actions[_acts ];
											_acts += 1;
											while ( _nacts > 0  )
												begin
													case  _unset_actions[_acts ] 
													when -2 then
													begin
													end
													when 0  then
													begin
														begin
															puts "UNSET" 
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
	UNSET.parse(line) { |obj|
		puts obj
	}
	end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
