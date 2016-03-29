# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';
  include 'list.rl';

  SET_KW = [sS][eE][tT];

  action set_keyword {
    @buffers[:set] = s(:set)
  }

  action name {
    @buffers[:set] = @buffers[:set] << s(:name, @buffers[:ident])
  }

  action string_value {
    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:string])
  }

  action ident_value {
    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:ident])
  }

  action list_value {
    @buffers[:set] = @buffers[:set] << s(:value, @buffers[:list])
  }

  action yield_set {
    yield @buffers[:set]
  }

  set :=
	  SET_KW %set_keyword
    SP+
    IDENT %name
    SP+
    EQL
    SP+
    (
      STRING %string_value |
      LIST %list_value     |
      IDENT %ident_value
    ) NL @yield_set;
}%%
=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELScript
      module Set

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
    BEL::Parsers::BELScript::Set.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
