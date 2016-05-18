# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_relationship {
    trace('RELATIONSHIP start_relationship')
    p_start = p;
  }

  action stop_relationship {
    trace('RELATIONSHIP stop_relationship')
    # It's not you, it's me. You're a p and I'm a non-protein coding r. It
    # would never work, I just can't reach you.
    p_end = p;
  }

  action relationship_end {
    trace('RELATIONSHIP relationship_end')
    chars = data[p_start...p_end]
    completed = !chars.empty?
    ast_node = relationship(utf8_string(chars), complete: completed)
    @buffers[:relationship] = ast_node
  }

  action yield_relationship {
    yield @buffers[:relationship]
  }

  relationship =
    RELATIONSHIP
    >start_relationship
    %stop_relationship
    ;

  relationship_node :=
    relationship
    %relationship_end
    %yield_relationship
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module Expression
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
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST::Sexp
          include BELParser::Parsers::Tracer

          def initialize(content)
            @content = content
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers    = {}
            @incomplete = {}
            stack       = []
            data        = @content.unpack('C*')
            p           = 0
            p_start     = 0
            p_end       = 0
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
    BELParser::Parsers::Expression::Relationship.parse(line.strip) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
