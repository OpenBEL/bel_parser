# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';

  action add_ident_param_value {
    $stderr.puts "PARAMETER add_ident_param_value"
    ident = @buffers.delete(:ident)
    value_node = value(ident, complete: ident.complete)
    @buffers[:param_value] = value_node
  }

  action add_string_param_value {
    $stderr.puts "PARAMETER add_string_param_value"
    string_node = @buffers.delete(:string)
    value_node = value(string_node, complete: string_node.complete)
    @buffers[:param_value] = value_node
  }

  action parameter_end {
    $stderr.puts "PARAMETER parameter_end"
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        $stderr.puts "PN incomplete"
        completed = false
      end
    end

    value_node = @buffers.delete(:param_value)
    unless value_node.nil?
      param_node <<= value_node
      unless value_node.complete
        $stderr.puts "VN incomplete"
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  }

  action add_prefix {
    $stderr.puts "PARAMETER add_prefix"
    ident = @buffers.delete(:ident)
    prefix_node = prefix(ident, complete: ident.complete)
    @buffers[:param_prefix] = prefix_node
  }

  action a_parameter_eof {
    $stderr.puts "PARAMETER a_parameter_eof"
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    @buffers[:parameter] = param_node
  }

  action parameter_node_eof {
    $stderr.puts "PARAMETER parameter_node_eof"
    param_node = parameter()
    completed = true
    prefix_node = @buffers.delete(:param_prefix)
    unless prefix_node.nil?
      param_node <<= prefix_node
      unless prefix_node.complete
        completed = false
      end
    end

    string_value_node = @buffers.delete(:string)
    unless string_value_node.nil?
      param_node <<= string_value_node
      unless string_value_node.complete
        completed = false
      end
    else
      completed = false
    end

    param_node.complete = completed
    yield param_node
  }

  action yield_parameter {
    $stderr.puts "PARAMETER yield_parameter"
    yield @buffers[:parameter]
  }

  prefix =
    an_ident
    COLON
    ;

  ident_value =
    an_ident
    %add_ident_param_value
    ;

  string_value =
    a_string
    %add_string_param_value
    ;

  value =
    ident_value |
    string_value
    ;

  parameter_prefix_value =
    prefix
    %add_prefix
    SP*
    value
    ;

  parameter_prefix_maybe_value =
    prefix
    %add_prefix
    SP*
    value?
    ;

  parameter_value =
    SP*
    value
    ;

  a_parameter =
    (
      parameter_prefix_value |
      parameter_value |
      parameter_prefix_maybe_value
    )

    @eof(a_parameter_eof)
    %parameter_end
    ;

  parameter_node :=
    (
      parameter_prefix_value |
      parameter_value |
      parameter_prefix_maybe_value
    )
    @eof(parameter_node_eof)
    %parameter_end
    %yield_parameter
    NL?
    ;

  #BEL_PARAMETER  = (an_ident ':')? @prefix SP* (a_string %string | an_ident %ident);
  #bel_parameter := BEL_PARAMETER %yield_parameter_ast NL;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
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
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST::Sexp

          def initialize(content)
            @content = content
            $stderr.puts "content: " + @content.to_s
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
            p_start     = 0
            p_end       = 0
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
    BELParser::Parsers::Expression::Parameter.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
