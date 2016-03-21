# begin: ragel
=begin
%%{
  machine bel;

  include 'identifier.rl';
  include 'string.rl';

  action string {
    @buffers[:list_arg] = s(:list_item, @buffers[:string])
  }

  action ident {
    @buffers[:list_arg] = s(:list_item, @buffers[:ident])
  }

  action start_list {
    @buffers[:list] = []
  }

  action append_list {
    @buffers[:list] << @buffers[:list_arg]
  }

  action finish_list {
    #FIXME: Mark list as complete?
    @buffers[:list] = s(:list, *@buffers[:list])
  }

  action yield_list {
    yield @buffers[:list]
  }

  LIST  =
    '{' @start_list SP*
      (STRING %string | IDENT %ident) %append_list SP*
      (',' SP* (STRING %string | IDENT %ident) %append_list SP*)*
    '}' @finish_list;

  list := LIST %yield_list NL;
}%%
=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module Common
      module List

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
          include BEL::Parser::Buffer

          def initialize(content)
            @content = content
      # begin: ragel        
            %% write data;
      # end: ragel        
          end

          def each
            @buffers = {}
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
    BEL::Parsers::Common::List.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
