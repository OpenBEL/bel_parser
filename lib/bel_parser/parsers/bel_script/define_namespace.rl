# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';

  DEFINE_KW     = [dD][eE][fF][iI][nN][eE];
  NAMESPACE_KW  = [nN][aA][mM][eE][sS][pP][aA][cC][eE];
  AS_KW         = [aA][sS];
  URL_KW        = [uU][rR][lL];

  action namespace_keyword {
    @buffers[:namespace_definition] = namespace_definition()
  }

  action keyword {
    @buffers[:namespace_definition] = @buffers[:namespace_definition] << keyword(@buffers[:ident])
  }

  action url_keyword {
    @buffers[:namespace_definition] = @buffers[:namespace_definition] << domain(url())
  }

  action string {
    keyword, domain                 = @buffers[:namespace_definition].children
    domain                          = domain(
                                        domain.children[0] << @buffers[:string])
    @buffers[:namespace_definition] = namespace_definition(keyword, domain)
  }

  action yield_namespace_definition {
    yield @buffers[:namespace_definition]
  }

  # Define FSM
  define_namespace :=
    DEFINE_KW
    SP+
    NAMESPACE_KW @namespace_keyword
    SP+
    an_ident %keyword
    SP+
    AS_KW
    SP+
    URL_KW @url_keyword
    SP+
    a_string %string
    SP*
    NL @yield_namespace_definition;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module BELScript
      module DefineNamespace

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
            @buffers =    {}
            @incomplete = {}
            stack       = []
            data        = @content.unpack('C*')
            p           = 0
            pe          = data.length
            eof         = data.length

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
    BELParser::Parsers::BELScript::DefineNamespace.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
