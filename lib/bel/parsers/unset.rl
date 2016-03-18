# begin: ragel
%%{
  machine unset;

  UNSET  = [uU][nN][sS][eE][tT];
  IDENT  = [a-zA-Z0-9_]+;
  SP     = ' ' | '\t';
  NL     = '\n';

  action unset {
    @unset_node = s(:unset)
  }
  action s     { buffer = []  }
  action n     { buffer << fc }
  action name  {
    name = buffer.pack('C*').force_encoding('utf-8')
    @unset_node = @unset_node << s(:name, name)
    yield @unset_node
  }

  unset :=
    UNSET %unset SP+ IDENT >s $n %name NL;
}%%
# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module UNSET

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

if __FILE__ == $0
  $stdin.each_line do |line|
    UNSET.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
