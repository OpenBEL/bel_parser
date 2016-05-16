# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';
  include 'list.rl';

  action add_name {
    trace('SET add_name')
    key = @buffers.delete(:ident)
    @buffers[:set_name] = key
  }

  action add_ident_value {
    trace('SET add_ident_value')
    ident = @buffers.delete(:ident)
    @buffers[:set_value] = ident
  }

  action add_string_value {
    trace('SET add_string_value')
    string = @buffers.delete(:string)
    @buffers[:set_value] = string
  }

  action add_list_value {
    trace('SET add_list_value')
    list = @buffers.delete(:list)
    @buffers[:set_value] = list
  }

  action set_end {
    trace('SET set_end')
    set_node = set()
    completed = true

    name = @buffers.delete(:set_name)
    if name.nil?
      completed = false
    else
      set_node <<= name
    end

    value = @buffers.delete(:set_value)
    if value.nil?
      completed = false
    else
      set_node <<= value
    end
    set_node.complete = completed
    @buffers[:set] = set_node
  }

  action yield_set {
    trace('SET yield_set')
    yield @buffers[:set]
  }

  action set_node_eof {
    trace('SET set_node_eof')
    name = @buffers.delete(:set_name)
    set_node = set(name)
    completed = name.complete
    if @buffers.key?(:string)
      value = @buffers.delete(:string)
      set_node <<= value
      completed = completed && value.complete
    elsif @buffers.key?(:ident)
      value = @buffers.delete(:ident)
      set_node <<= value
      completed = completed && value.complete
    elsif @buffers.key?(:list)
      value = @buffers.delete(:list)
      set_node <<= value
      completed = completed && value.complete
    end
    set_node.complete = completed
    yield set_node
  }

  key =
    an_ident
    %add_name
    ;

  ident_value =
    an_ident
    %add_ident_value
    ;

  string_value =
    a_string
    %add_string_value
    ;

  list_value =
    a_list
    %add_list_value
    ;

  value =
    ident_value |
    string_value |
    list_value
    ;

  set_node :=
    KW_SET
    SP+
    an_ident
    %add_name
    @eof(set_node_eof)
    SP+
    EQL?
    SP+?
    value?
    @eof(set_node_eof)
    %set_end
    %yield_set
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
            @accum_set  = false
            @have_set   = false
            @have_name  = false
            @have_value = false
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
    BELParser::Parsers::BELScript::Set.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
