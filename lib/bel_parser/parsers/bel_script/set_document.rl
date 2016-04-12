# begin: ragel
=begin
%%{
  machine bel;

  include 'set.rl';

  DOCUMENT_KW = [dD][oO][cC][uU][mM][eE][nN][tT];

  action yield_document_property {
    yield(
      document_property(
        *@buffers[:set].children))
  }

  set_document :=
	  SET_KW %set_keyword
    SP+
    DOCUMENT_KW
    SP+
    IDENT %name
    SP+
    EQL
    SP+
    (
      STRING %string_value |
      LIST %list_value     |
      IDENT %ident_value
    ) NL @yield_document_property;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module BELScript
      module SetDocument

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
    BELParser::Parsers::BELScript::SetDocument.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
