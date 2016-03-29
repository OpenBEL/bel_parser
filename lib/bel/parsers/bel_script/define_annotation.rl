# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';
  include 'list.rl';

  DEFINE_KW     = [dD][eE][fF][iI][nN][eE];
  ANNOTATION_KW = [aA][nN][nN][oO][tT][aA][tT][iI][oO][nN];
  AS_KW         = [aA][sS];
  LIST_KW       = [lL][iI][sS][tT];
  PATTERN_KW    = [pP][aA][tT][tT][eE][rR][nN];
  URL_KW        = [uU][rR][lL];

  action annotation_keyword {
    @buffers[:define_annotation] = s(:define_annotation)
  }

  action keyword {
    @buffers[:define_annotation] = s(:define_annotation,
                                     s(:keyword, @buffers[:ident]))
  }

  action list_keyword {
    @buffers[:define_annotation] = @buffers[:define_annotation] << s(:domain)
  }

  action pattern_keyword {
    @buffers[:define_annotation] = @buffers[:define_annotation] << s(:domain, s(:pattern))
  }

  action url_keyword {
    @buffers[:define_annotation] = @buffers[:define_annotation] << s(:domain, s(:url))
  }

  action pattern {
    keyword, domain              = @buffers[:define_annotation].children
    domain                       = s(:domain,
                                     domain.children[0] << @buffers[:string])
    @buffers[:define_annotation] = s(:define_annotation, keyword, domain)
  }

  action url {
    keyword, domain              = @buffers[:define_annotation].children
    domain                       = s(:domain,
                                     domain.children[0] << @buffers[:string])
    @buffers[:define_annotation] = s(:define_annotation, keyword, domain)
  }

  action list {
    keyword, domain              = @buffers[:define_annotation].children
    domain                       = s(:domain,
                                     @buffers[:list])
    @buffers[:define_annotation] = s(:define_annotation, keyword, domain)
  }

  action yield_define_annotation {
    yield @buffers[:define_annotation]
  }

  # Define FSM
  define_annotation :=
    DEFINE_KW SP+ ANNOTATION_KW @annotation_keyword SP+
      IDENT %keyword SP+
    AS_KW SP+
      (
        (LIST_KW    %list_keyword    SP+ LIST   %list    SP* NL @yield_define_annotation) |
        (PATTERN_KW %pattern_keyword SP+ STRING %pattern SP* NL @yield_define_annotation) |
        (URL_KW     %url_keyword     SP+ STRING %url     SP* NL @yield_define_annotation)
      );
}%%
=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
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
          include ::AST::Sexp
          include BEL::Parsers::Buffer

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            @buffers = {}
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length
            eof      = data.length

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
