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
    @buffers[:define_namespace] = define_namespace()
  }

  action keyword {
    @buffers[:define_namespace] = @buffers[:define_namespace] << keyword(@buffers[:ident])
  }

  action url_keyword {
    @buffers[:define_namespace] = @buffers[:define_namespace] << domain(url())
  }

  action string {
    keyword, domain             = @buffers[:define_namespace].children
    domain                      = domain(
                                     domain.children[0] << @buffers[:string])
    @buffers[:define_namespace] = define_namespace(keyword, domain)
  }

  action yield_define_namespace {
    yield @buffers[:define_namespace]
  }

  # Define FSM
  define_namespace :=
    DEFINE_KW
    SP+
    NAMESPACE_KW @namespace_keyword
    SP+
    IDENT %keyword
    SP+
    AS_KW
    SP+
    URL_KW @url_keyword
    SP+
    STRING %string
    SP*
    NL @yield_define_namespace;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
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
          include BEL::Parsers::Buffer
          include BEL::Parsers::AST::Sexp

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            @buffers = {}
            stack    = []
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
    BEL::Parsers::BELScript::DefineNamespace.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
