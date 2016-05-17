# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';

  action add_name {
    trace('UNSET add_name')
    key = @buffers.delete(:ident)
    @buffers[:unset_name] = key
  }

  action unset_end {
    trace('UNSET unset_end')
    name = @buffers.delete(:unset_name)
    unless name.nil?
      unset_node = unset(name, complete: name.complete)
    else
      unset_node = unset(complete: false)
    end
    @buffers[:unset] = unset_node
  }

  action yield_unset {
    trace('UNSET yield_unset')
    yield @buffers[:unset]
  }

  action set_node_eof {
    trace('UNSET set_node_eof')
  }

  an_unset =
    KW_UNSET
    SP+
    an_ident
    %add_name
    @eof(set_node_eof)
    %unset_end
    ;

  unset_ast_node :=
    KW_UNSET
    SP+?
    an_ident?
    %add_name
    @eof(set_node_eof)
    %unset_end
    %yield_unset
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
    module BELScript
      module Unset

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
    BELParser::Parsers::BELScript::Unset.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
