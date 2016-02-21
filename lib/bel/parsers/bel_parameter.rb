# begin: ragel

# end: ragel

require_relative 'nonblocking_io_wrapper'

module BelParameter

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
			attr_accessor :_bel_parameter_actions 
			private :_bel_parameter_actions, :_bel_parameter_actions=
		end
		self._bel_parameter_actions = [
		0, 1, 1, 1, 2, 1, 3, 2, 0, 1, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_key_offsets 
			private :_bel_parameter_key_offsets, :_bel_parameter_key_offsets=
		end
		self._bel_parameter_key_offsets = [
		0, 0, 10, 20, 22, 23, 24, 32, 41, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_trans_keys 
			private :_bel_parameter_trans_keys, :_bel_parameter_trans_keys=
		end
		self._bel_parameter_trans_keys = [
		9, 32, 34, 95, 48, 57, 65, 90, 97, 122, 9, 32, 34, 95, 48, 57, 65, 90, 97, 122, 34, 92, 10, 92, 10, 95, 48, 57, 65, 90, 97, 122, 10, 58, 95, 48, 57, 65, 90, 97, 122, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_single_lengths 
			private :_bel_parameter_single_lengths, :_bel_parameter_single_lengths=
		end
		self._bel_parameter_single_lengths = [
		0, 4, 4, 2, 1, 1, 2, 3, 0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_range_lengths 
			private :_bel_parameter_range_lengths, :_bel_parameter_range_lengths=
		end
		self._bel_parameter_range_lengths = [
		0, 3, 3, 0, 0, 0, 3, 3, 0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_index_offsets 
			private :_bel_parameter_index_offsets, :_bel_parameter_index_offsets=
		end
		self._bel_parameter_index_offsets = [
		0, 0, 8, 16, 19, 21, 23, 29, 36, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_trans_cond_spaces 
			private :_bel_parameter_trans_cond_spaces, :_bel_parameter_trans_cond_spaces=
		end
		self._bel_parameter_trans_cond_spaces = [
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_trans_offsets 
			private :_bel_parameter_trans_offsets, :_bel_parameter_trans_offsets=
		end
		self._bel_parameter_trans_offsets = [
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_trans_lengths 
			private :_bel_parameter_trans_lengths, :_bel_parameter_trans_lengths=
		end
		self._bel_parameter_trans_lengths = [
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_cond_keys 
			private :_bel_parameter_cond_keys, :_bel_parameter_cond_keys=
		end
		self._bel_parameter_cond_keys = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_cond_targs 
			private :_bel_parameter_cond_targs, :_bel_parameter_cond_targs=
		end
		self._bel_parameter_cond_targs = [
		2, 2, 3, 7, 7, 7, 7, 0, 2, 2, 3, 6, 6, 6, 6, 0, 4, 5, 3, 8, 0, 5, 3, 8, 6, 6, 6, 6, 0, 8, 2, 7, 7, 7, 7, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_cond_actions 
			private :_bel_parameter_cond_actions, :_bel_parameter_cond_actions=
		end
		self._bel_parameter_cond_actions = [
		0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 7, 7, 7, 7, 7, 0, 1, 1, 1, 5, 0, 1, 1, 5, 1, 1, 1, 1, 0, 5, 3, 1, 1, 1, 1, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_nfa_targs 
			private :_bel_parameter_nfa_targs, :_bel_parameter_nfa_targs=
		end
		self._bel_parameter_nfa_targs = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_nfa_offsets 
			private :_bel_parameter_nfa_offsets, :_bel_parameter_nfa_offsets=
		end
		self._bel_parameter_nfa_offsets = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_nfa_push_actions 
			private :_bel_parameter_nfa_push_actions, :_bel_parameter_nfa_push_actions=
		end
		self._bel_parameter_nfa_push_actions = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_bel_parameter_nfa_pop_trans 
			private :_bel_parameter_nfa_pop_trans, :_bel_parameter_nfa_pop_trans=
		end
		self._bel_parameter_nfa_pop_trans = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :bel_parameter_start 
		end
		self.bel_parameter_start  = 1;
		
		class << self
			attr_accessor :bel_parameter_first_final 
		end
		self.bel_parameter_first_final  = 8;
		
		class << self
			attr_accessor :bel_parameter_error 
		end
		self.bel_parameter_error  = 0;
		
		class << self
			attr_accessor :bel_parameter_en_bel_parameter 
		end
		self.bel_parameter_en_bel_parameter  = 1;
		
		# end: ragel        
	end
	
	def each
		buffer = []
		data = @content.unpack('C*')
		p   = 0
		pe  = data.length
		
		# begin: ragel        
		begin
			cs = bel_parameter_start;
			
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
									_keys = _bel_parameter_key_offsets[cs] ;
									_trans = _bel_parameter_index_offsets[cs];
									_have = 0;
									_klen = _bel_parameter_single_lengths[cs];
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
													if ( ( data[p ].ord) < _bel_parameter_trans_keys[_mid ] )
														_upper = _mid - 1;
														
														elsif ( ( data[p ].ord) > _bel_parameter_trans_keys[_mid ] )
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
											_klen = _bel_parameter_range_lengths[cs];
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
															if ( ( data[p ].ord) < _bel_parameter_trans_keys[_mid ] )
																_upper = _mid - 2;
																
																elsif ( ( data[p ].ord) > _bel_parameter_trans_keys[_mid + 1 ] )
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
									_ckeys = _bel_parameter_trans_offsets[_trans] ;
									_klen = _bel_parameter_trans_lengths[_trans];
									_cond = _bel_parameter_trans_offsets[_trans];
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
												if ( _cpc < _bel_parameter_cond_keys[_mid ] )
													_upper = _mid - 1;
													
													elsif ( _cpc > _bel_parameter_cond_keys[_mid ] )
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
									cs = _bel_parameter_cond_targs[_cond];
									if ( _bel_parameter_cond_actions[_cond] != 0  )
										begin
											_acts = _bel_parameter_cond_actions[_cond] ;
											_nacts = _bel_parameter_actions[_acts ];
											_acts += 1;
											while ( _nacts > 0  )
												begin
													case  _bel_parameter_actions[_acts ] 
													when -2 then
													begin
													end
													when 0  then
													begin
														begin
															buffer = []  
														end
														
													end
													when 1  then
													begin
														begin
															buffer << ( data[p ].ord) 
														end
														
													end
													when 2  then
													begin
														begin
															@prefix = buffer.pack('C*').force_encoding('utf-8')
															buffer  = []
															
														end
														
													end
													when 3  then
													begin
														begin
															if buffer[0] == 34 && buffer[-1] == 34
																buffer = buffer[1...-1]
															end
															tmp_value = buffer.pack('C*').force_encoding('utf-8')
															tmp_value.gsub!('\"', '"')
															@value = tmp_value
															
															puts "BEL Parameter, prefix: #{@prefix}, value: #{@value}"
															
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
	BelParameter.parse(line) { |obj|
		puts obj
	}
	end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
