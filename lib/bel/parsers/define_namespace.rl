# begin: ragel
%%{
  machine define_namespace;

  # name and value accumulator actions
  action s      { buffer = []  }
  action n      { buffer << fc }
  action name   {
    @define_ns = @define_ns << s(:keyword, buffer.pack('C*').force_encoding('utf-8'))
  }
  action value  {
    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    value = buffer.pack('C*').force_encoding('utf-8')
    value.gsub!('\"', '"')
    @define_ns = @define_ns << s(:url, value)
  }

  # keywords
  DEFINE_KW     = [dD][eE][fF][iI][nN][eE];
  NAMESPACE_KW  = [nN][aA][mM][eE][sS][pP][aA][cC][eE];
  AS_KW         = [aA][sS];
  URL_KW        = [uU][rR][lL];

  # tokens
  SP            = ' ' | '\t';
  NL            = '\n';
	EQL           = '=';
  IDENT         = [a-zA-Z0-9_]+;
  STRING        = ('"' ('\\\"' | [^"])** '"') >s $n %value;

  # main actions
  action namespace_keyword {
    @define_ns = s(:define_namespace)
  }
  action define_namespace {
    yield @define_ns
  }

  # Define FSM
  define_namespace :=
    DEFINE_KW SP+ NAMESPACE_KW @namespace_keyword SP+
      IDENT >s $n %name SP+
    AS_KW SP+
      URL_KW SP+ STRING SP* NL @define_namespace;
}%%
# end: ragel

require          'ast'
require_relative 'nonblocking_io_wrapper'

module DEFINE_NAMESPACE

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
      stack  = []
      data   = @content.unpack('C*')
      p      = 0
      pe     = data.length

# begin: ragel        
      %% write init;
      %% write exec;
# end: ragel        
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    DEFINE_NAMESPACE.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
