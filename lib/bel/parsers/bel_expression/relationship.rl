# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_relationship {
    @buffers[:relationship] = []
  }

  action append_relationship {
    @buffers[:relationship] << fc
  }

  action finish_relationship {
    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  }

  action yield_relationship {
    yield @buffers[:relationship]
  }

  RELATIONSHIP =
    (0x21..0x7e)+ >start_relationship $append_relationship %finish_relationship;

  relationship :=
    RELATIONSHIP %yield_relationship
    NL;
}%%
=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELExpression
      module Relationship

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
            stack    = []
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length

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
    BEL::Parsers::BELExpression::Relationship.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
