# begin: ragel
=begin
%%{
  machine define_annotation;

  # name and value accumulator actions
  action s       { buffer = []  }
  action n       { buffer << fc }
  action keyword {
    value = buffer.pack('C*').force_encoding('utf-8')
    @define_anno = @define_anno << s(:keyword, value) 
  }
  action value  {
    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    value = buffer.pack('C*').force_encoding('utf-8')
    value.gsub!('\"', '"')
    @define_anno = @define_anno.updated(nil, [
      @define_anno.children[0],
      s(:domain,
        s(@type, value))
    ])
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

    @define_anno = @define_anno.updated(nil, [
      @define_anno.children[0],
      s(:domain,
        s(@type, *@listvals))
    ])
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
  action annotation_keyword {
    @define_anno = s(:define_annotation)
  }
  action list_keyword {
    @type = :list
  }
  action pattern_keyword {
    @type = :pattern
  }
  action url_keyword {
    @type = :url
  }
  action define_annotation {
    yield @define_anno
  }

  # Define FSM
  define_annotation :=
    DEFINE_KW SP+ ANNOTATION_KW @annotation_keyword SP+
      IDENT >s $n %keyword SP+
    AS_KW SP+
      (
        (LIST_KW @list_keyword SP+ LIST SP* NL @define_annotation) |
        (PATTERN_KW @pattern_keyword SP+ STRING SP* NL @define_annotation) |
        (URL_KW @url_keyword SP+ STRING SP* NL @define_annotation)
      );
}%%
=end
# end: ragel

require          'ast'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELScript
      module DefineAnnotation

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
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::BELScript::DefineAnnotation.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
