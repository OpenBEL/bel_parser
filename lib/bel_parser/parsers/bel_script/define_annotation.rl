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
    @buffers[:annotation_definition] = annotation_definition()
  }

  action keyword {
    @buffers[:annotation_definition] = annotation_definition(
                                         keyword(@buffers[:ident]))
  }

  action list_keyword {
    @buffers[:annotation_definition] = @buffers[:annotation_definition] << domain()
  }

  action pattern_keyword {
    @buffers[:annotation_definition] = @buffers[:annotation_definition] << domain(pattern())
  }

  action url_keyword {
    @buffers[:annotation_definition] = @buffers[:annotation_definition] << domain(url())
  }

  action pattern {
    keyword, domain                  = @buffers[:annotation_definition].children
    domain                           = domain(
                                         domain.children[0] << @buffers[:string])
    @buffers[:annotation_definition] = annotation_definition(keyword, domain)
  }

  action url {
    keyword, domain                  = @buffers[:annotation_definition].children
    domain                           = domain(
                                         domain.children[0] << @buffers[:string])
    @buffers[:annotation_definition] = annotation_definition(keyword, domain)
  }

  action list {
    keyword, domain                  = @buffers[:annotation_definition].children
    domain                           = domain(
                                         @buffers[:list])
    @buffers[:annotation_definition] = annotation_definition(keyword, domain)
  }

  action yield_annotation_definition {
    yield @buffers[:annotation_definition]
  }

  # Define FSM
  annotation_definition :=
    DEFINE_KW SP+ ANNOTATION_KW @annotation_keyword SP+
      IDENT %keyword SP+
    AS_KW SP+
      (
        (LIST_KW    %list_keyword    SP+ LIST   %list    SP* NL @yield_annotation_definition) |
        (PATTERN_KW %pattern_keyword SP+ STRING %pattern SP* NL @yield_annotation_definition) |
        (URL_KW     %url_keyword     SP+ STRING %url     SP* NL @yield_annotation_definition)
      );
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
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
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST::Sexp

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            @buffers = {}
            @incomplete = {}
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
    BELParser::Parsers::BELScript::DefineAnnotation.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
