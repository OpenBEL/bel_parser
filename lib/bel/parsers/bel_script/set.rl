# begin: ragel
=begin
%%{
  machine set;

  SET    = [sS][eE][tT];
  IDENT  = [a-zA-Z0-9_]+;
  STRING = ('"' ('\\\"' | [^"])** '"');
  SP     = ' ' | '\t';
	EQL    = '=';
  NL     = '\n';

  action set  {
    @set_node = s(:set)
  }
  action s    { buffer = []  }
  action n    { buffer << fc }
  action name {
    name = buffer.pack('C*').force_encoding('utf-8')
    @set_node = @set_node << s(:name, name)
  }
  action value {
    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    value = buffer.pack('C*').force_encoding('utf-8')
    value.gsub!('\"', '"')
    @set_node = @set_node << s(:value, value)

    yield @set_node
  }

  set :=
	  SET %set SP+ IDENT >s $n %name SP+ EQL SP+ (STRING | IDENT) >s $n %value NL;
}%%
=end
# end: ragel

require          'ast'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELScript
      module Set

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

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            buffer = []
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
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::BELScript::Set.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
