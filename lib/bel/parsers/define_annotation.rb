# begin: ragel

# end: ragel

require_relative 'nonblocking_io_wrapper'

module DEFINE_ANNOTATION

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
			attr_accessor :_define_annotation_actions 
			private :_define_annotation_actions, :_define_annotation_actions=
		end
		self._define_annotation_actions = [
		0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 8, 1, 9, 1, 10, 2, 0, 1, 2, 1, 5, 2, 3, 6, 2, 3, 9, 2, 3, 10, 2, 6, 7, 3, 0, 1, 5, 3, 3, 6, 7, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_key_offsets 
			private :_define_annotation_key_offsets, :_define_annotation_key_offsets=
		end
		self._define_annotation_key_offsets = [
		0, 0, 2, 4, 6, 8, 10, 12, 14, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 47, 56, 60, 62, 64, 72, 74, 76, 78, 80, 83, 93, 95, 99, 103, 106, 107, 118, 120, 122, 124, 126, 128, 130, 132, 135, 137, 140, 143, 144, 146, 148, 150, 153, 155, 158, 161, 162, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_trans_keys 
			private :_define_annotation_trans_keys, :_define_annotation_trans_keys=
		end
		self._define_annotation_trans_keys = [
		68, 100, 69, 101, 70, 102, 73, 105, 78, 110, 69, 101, 9, 32, 9, 32, 65, 97, 78, 110, 78, 110, 79, 111, 84, 116, 65, 97, 84, 116, 73, 105, 79, 111, 78, 110, 9, 32, 9, 32, 95, 48, 57, 65, 90, 97, 122, 9, 32, 95, 48, 57, 65, 90, 97, 122, 9, 32, 65, 97, 83, 115, 9, 32, 9, 32, 76, 80, 85, 108, 112, 117, 73, 105, 83, 115, 84, 116, 9, 32, 9, 32, 123, 9, 32, 34, 95, 48, 57, 65, 90, 97, 122, 34, 92, 9, 32, 44, 125, 9, 32, 44, 125, 9, 10, 32, 92, 9, 32, 44, 95, 125, 48, 57, 65, 90, 97, 122, 65, 97, 84, 116, 84, 116, 69, 101, 82, 114, 78, 110, 9, 32, 9, 32, 34, 34, 92, 9, 10, 32, 9, 10, 32, 92, 82, 114, 76, 108, 9, 32, 9, 32, 34, 34, 92, 9, 10, 32, 9, 10, 32, 92, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_single_lengths 
			private :_define_annotation_single_lengths, :_define_annotation_single_lengths=
		end
		self._define_annotation_single_lengths = [
		0, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 4, 2, 2, 8, 2, 2, 2, 2, 3, 4, 2, 4, 4, 3, 1, 5, 2, 2, 2, 2, 2, 2, 2, 3, 2, 3, 3, 1, 2, 2, 2, 3, 2, 3, 3, 1, 0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_range_lengths 
			private :_define_annotation_range_lengths, :_define_annotation_range_lengths=
		end
		self._define_annotation_range_lengths = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_index_offsets 
			private :_define_annotation_index_offsets, :_define_annotation_index_offsets=
		end
		self._define_annotation_index_offsets = [
		0, 0, 3, 6, 9, 12, 15, 18, 21, 26, 29, 32, 35, 38, 41, 44, 47, 50, 53, 56, 63, 70, 75, 78, 81, 90, 93, 96, 99, 102, 106, 114, 117, 122, 127, 131, 133, 142, 145, 148, 151, 154, 157, 160, 163, 167, 170, 174, 178, 180, 183, 186, 189, 193, 196, 200, 204, 206, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_trans_cond_spaces 
			private :_define_annotation_trans_cond_spaces, :_define_annotation_trans_cond_spaces=
		end
		self._define_annotation_trans_cond_spaces = [
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_trans_offsets 
			private :_define_annotation_trans_offsets, :_define_annotation_trans_offsets=
		end
		self._define_annotation_trans_offsets = [
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_trans_lengths 
			private :_define_annotation_trans_lengths, :_define_annotation_trans_lengths=
		end
		self._define_annotation_trans_lengths = [
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_cond_keys 
			private :_define_annotation_cond_keys, :_define_annotation_cond_keys=
		end
		self._define_annotation_cond_keys = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_cond_targs 
			private :_define_annotation_cond_targs, :_define_annotation_cond_targs=
		end
		self._define_annotation_cond_targs = [
		2, 2, 0, 3, 3, 0, 4, 4, 0, 5, 5, 0, 6, 6, 0, 7, 7, 0, 8, 8, 0, 8, 8, 9, 9, 0, 10, 10, 0, 11, 11, 0, 12, 12, 0, 13, 13, 0, 14, 14, 0, 15, 15, 0, 16, 16, 0, 17, 17, 0, 18, 18, 0, 19, 19, 0, 19, 19, 20, 20, 20, 20, 0, 21, 21, 20, 20, 20, 20, 0, 21, 21, 22, 22, 0, 23, 23, 0, 24, 24, 0, 24, 24, 25, 37, 49, 25, 37, 49, 0, 26, 26, 0, 27, 27, 0, 28, 28, 0, 29, 29, 0, 29, 29, 30, 0, 30, 30, 31, 36, 36, 36, 36, 0, 32, 35, 31, 33, 33, 30, 34, 0, 33, 33, 30, 34, 0, 34, 57, 34, 0, 35, 31, 33, 33, 30, 36, 34, 36, 36, 36, 0, 38, 38, 0, 39, 39, 0, 40, 40, 0, 41, 41, 0, 42, 42, 0, 43, 43, 0, 44, 44, 0, 44, 44, 45, 0, 46, 48, 45, 47, 57, 47, 0, 47, 57, 47, 0, 48, 45, 50, 50, 0, 51, 51, 0, 52, 52, 0, 52, 52, 53, 0, 54, 56, 53, 55, 57, 55, 0, 55, 57, 55, 0, 56, 53, 0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_cond_actions 
			private :_define_annotation_cond_actions, :_define_annotation_cond_actions=
		end
		self._define_annotation_cond_actions = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 19, 19, 19, 0, 3, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 37, 9, 9, 9, 9, 0, 22, 22, 22, 5, 5, 25, 41, 0, 0, 0, 11, 34, 0, 0, 13, 0, 0, 22, 22, 0, 0, 11, 9, 34, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, 1, 1, 1, 5, 28, 5, 0, 0, 15, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, 1, 1, 1, 5, 31, 5, 0, 0, 17, 0, 0, 1, 1, 0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_nfa_targs 
			private :_define_annotation_nfa_targs, :_define_annotation_nfa_targs=
		end
		self._define_annotation_nfa_targs = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_nfa_offsets 
			private :_define_annotation_nfa_offsets, :_define_annotation_nfa_offsets=
		end
		self._define_annotation_nfa_offsets = [
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_nfa_push_actions 
			private :_define_annotation_nfa_push_actions, :_define_annotation_nfa_push_actions=
		end
		self._define_annotation_nfa_push_actions = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :_define_annotation_nfa_pop_trans 
			private :_define_annotation_nfa_pop_trans, :_define_annotation_nfa_pop_trans=
		end
		self._define_annotation_nfa_pop_trans = [
		0, 0 , 
		]
		
		class << self
			attr_accessor :define_annotation_start 
		end
		self.define_annotation_start  = 1;
		
		class << self
			attr_accessor :define_annotation_first_final 
		end
		self.define_annotation_first_final  = 57;
		
		class << self
			attr_accessor :define_annotation_error 
		end
		self.define_annotation_error  = 0;
		
		class << self
			attr_accessor :define_annotation_en_define_annotation 
		end
		self.define_annotation_en_define_annotation  = 1;
		
		# end: ragel        
	end
	
	def each
		buffer = []
		data   = @content.unpack('C*')
		p      = 0
		pe     = data.length
		
		# begin: ragel        
		begin
			cs = define_annotation_start;
			
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
									_keys = _define_annotation_key_offsets[cs] ;
									_trans = _define_annotation_index_offsets[cs];
									_have = 0;
									_klen = _define_annotation_single_lengths[cs];
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
													if ( ( data[p ].ord) < _define_annotation_trans_keys[_mid ] )
														_upper = _mid - 1;
														
														elsif ( ( data[p ].ord) > _define_annotation_trans_keys[_mid ] )
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
											_klen = _define_annotation_range_lengths[cs];
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
															if ( ( data[p ].ord) < _define_annotation_trans_keys[_mid ] )
																_upper = _mid - 2;
																
																elsif ( ( data[p ].ord) > _define_annotation_trans_keys[_mid + 1 ] )
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
									_ckeys = _define_annotation_trans_offsets[_trans] ;
									_klen = _define_annotation_trans_lengths[_trans];
									_cond = _define_annotation_trans_offsets[_trans];
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
												if ( _cpc < _define_annotation_cond_keys[_mid ] )
													_upper = _mid - 1;
													
													elsif ( _cpc > _define_annotation_cond_keys[_mid ] )
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
									cs = _define_annotation_cond_targs[_cond];
									if ( _define_annotation_cond_actions[_cond] != 0  )
										begin
											_acts = _define_annotation_cond_actions[_cond] ;
											_nacts = _define_annotation_actions[_acts ];
											_acts += 1;
											while ( _nacts > 0  )
												begin
													case  _define_annotation_actions[_acts ] 
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
															@name = buffer.pack('C*').force_encoding('utf-8')
															
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
															
														end
														
													end
													when 4  then
													begin
														begin
															@listvals = []
															@listbuffer = []
															
														end
														
													end
													when 5  then
													begin
														begin
															@listbuffer << ( data[p ].ord)
															
														end
														
													end
													when 6  then
													begin
														begin
															if @listbuffer[0] == 34 && @listbuffer[-1] == 34
																@listbuffer = @listbuffer[1...-1]
															end
															tmp_listvalue = @listbuffer.pack('C*').force_encoding('utf-8')
															tmp_listvalue.gsub!('\"', '"')
															
															@listvals << tmp_listvalue
															@listbuffer = []
															
														end
														
													end
													when 7  then
													begin
														begin
															@value = @listvals
															
														end
														
													end
													when 8  then
													begin
														begin
															puts "Annotation List: #{@name}, #{@value}"
															
														end
														
													end
													when 9  then
													begin
														begin
															puts "Annotation Pattern: #{@name}, #{@value}"
															
														end
														
													end
													when 10  then
													begin
														begin
															puts "Annotation Pattern: #{@name}, #{@value}"
															
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
	DEFINE_ANNOTATION.parse(line) { |obj|
		puts obj
	}
	end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
