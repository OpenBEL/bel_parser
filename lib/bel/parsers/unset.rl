# begin: ragel
%%{
  machine unset;

  UNSET  = [uU][nN][sS][eE][tT];
  IDENT  = [a-zA-Z0-9_]+;
  SP     = ' ' | '\t';
  NL     = '\n';

  action unset { puts "UNSET" }
  action s     { buffer = []  }
  action n     { buffer << fc }
  action name  {
    @name = buffer.pack('C*').force_encoding('utf-8')
    puts "name: #{@name}"
  }

  unset :=
    UNSET %unset SP+ IDENT >s $n %name NL;
}%%
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

  class Parser
    include Enumerable

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
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
