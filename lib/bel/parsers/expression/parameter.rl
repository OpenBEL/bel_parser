# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';

  action prefix {
    @buffers[:parameter] = parameter(prefix(@buffers[:ident]))
  }

  action string {
    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:string])
  }

  action ident {
    @buffers[:parameter] ||= parameter(prefix(nil))
    @buffers[:parameter]   = @buffers[:parameter] << value(@buffers[:ident])
  }

  action yield_parameter_ast {
    yield @buffers[:parameter]
  }

  BEL_PARAMETER  = (IDENT ':')? @prefix SP* (STRING %string | IDENT %ident);
  bel_parameter := BEL_PARAMETER %yield_parameter_ast NL;
}%%
=end
# end: ragel

require          'ast'
require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module Expression
      module Parameter

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
    BEL::Parsers::Expression::Parameter.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
