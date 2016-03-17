# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';

  action prefix {
    @bel_parameter ||= s(:parameter)
    @bel_parameter   = @bel_parameter << s(:prefix, @buffers[:ident])
  }

  action string {
    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:string])
  }

  action ident {
    @bel_parameter ||= s(:parameter, s(:prefix, nil))
    @bel_parameter   = @bel_parameter << s(:value, @buffers[:ident])
  }

  action yield_bel_parameter {
    yield @bel_parameter
  }

  BEL_PARAMETER  = (IDENT ':')? @prefix SP* (STRING %string | IDENT %ident);
  bel_parameter := BEL_PARAMETER %yield_bel_parameter NL;
}%%
=end
# end: ragel

require          'ast'
require_relative 'mixin/buffer'
require_relative 'nonblocking_io_wrapper'

module BelParameter

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
      %% write data;
# end: ragel        
    end

    def each
			@buffers = {}
      data = @content.unpack('C*')
      p   = 0
      pe  = data.length

# begin: ragel        
      %% write init;
      %% write exec;
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
