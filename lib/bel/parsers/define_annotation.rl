# begin: ragel
%%{
  machine define_annotation;

  # name and value accumulator actions
  action s      { buffer = []  }
  action n      { buffer << fc }
  action name   {
    @name = buffer.pack('C*').force_encoding('utf-8')
  }
  action value  {
    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    tmp_value = buffer.pack('C*').force_encoding('utf-8')
    tmp_value.gsub!('\"', '"')
    @value = tmp_value
  }

  # list accumulator actions
  action lists {
    @listvals = []
    @listbuffer = []
  }
  action listn {
    @listbuffer << fc
  }
  action liste {
    if @listbuffer[0] == 34 && @listbuffer[-1] == 34
      @listbuffer = @listbuffer[1...-1]
    end
    tmp_listvalue = @listbuffer.pack('C*').force_encoding('utf-8')
    tmp_listvalue.gsub!('\"', '"')

    @listvals << tmp_listvalue
    @listbuffer = []
  }
  action listv {
    @value = @listvals
  }

  # keywords
  DEFINE_KW     = [dD][eE][fF][iI][nN][eE];
  ANNOTATION_KW = [aA][nN][nN][oO][tT][aA][tT][iI][oO][nN];
  AS_KW         = [aA][sS];
  LIST_KW       = [lL][iI][sS][tT];
  PATTERN_KW    = [pP][aA][tT][tT][eE][rR][nN];
  URL_KW        = [uU][rR][lL];

  # tokens
  SP            = ' ' | '\t';
  NL            = '\n';
	EQL           = '=';
  IDENT         = [a-zA-Z0-9_]+;
  STRING        = ('"' ('\\\"' | [^"])** '"') >s $n %value;
  LIST          = '{' @lists SP*
                    (STRING | IDENT) $listn SP*
                    (',' @liste SP* (STRING | IDENT) $listn SP*)*
                  '}' @liste @listv;

  # main actions
  action define_annotation_list {
    yield ({ :prefix => @name, :type => :list, :list => @value })
  }
  action define_annotation_pattern {
    yield ({ :prefix => @name, :type => :pattern, :pattern => @value })
  }
  action define_annotation_uri {
    yield ({ :prefix => @name, :type => :url, :url => @value })
  }

  # Define FSM
  define_annotation :=
    DEFINE_KW SP+ ANNOTATION_KW SP+
      IDENT >s $n %name SP+
    AS_KW SP+
      (
        (LIST_KW SP+ LIST SP* NL @define_annotation_list) |
        (PATTERN_KW SP+ STRING SP* NL @define_annotation_pattern) |
        (URL_KW SP+ STRING SP* NL @define_annotation_uri)
      );
}%%
# end: ragel

require_relative 'nonblocking_io_wrapper'

module DEFINE_ANNOTATION

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

    def initialize(content)
      @content = content
# begin: ragel        
      %% write data;
# end: ragel        
    end

    def each
      buffer = []
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
    DEFINE_ANNOTATION.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
