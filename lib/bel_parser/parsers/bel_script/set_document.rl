# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';
  include 'list.rl';

  action add_property {
    trace('SET_DOCUMENT add_property')
    key = @buffers.delete(:ident)
    @buffers[:set_document_name] = key
  }

  action add_ident_value {
    trace('SET_DOCUMENT add_ident_value')
    ident = @buffers.delete(:ident)
    @buffers[:set_document_value] = ident
  }

  action add_string_value {
    trace('SET_DOCUMENT add_string_value')
    string = @buffers.delete(:string)
    @buffers[:set_document_value] = string
  }

  action add_list_value {
    trace('SET_DOCUMENT add_list_value')
    list = @buffers.delete(:list)
    @buffers[:set_document_value] = list
  }

  action set_document_end {
    trace('SET_DOCUMENT set_document_end')
    set_document_node = document_property()
    completed = true

    name = @buffers.delete(:set_document_name)
    unless name.nil?
      set_document_node <<= name
    end

    value = @buffers.delete(:set_document_value)
    unless value.nil?
      set_document_node <<= value
    end

    completed = false
    unless name.nil? || value.nil?
      completed = name.complete && value.complete
    end

    set_document_node.complete = completed
    @buffers[:set_document] = set_document_node
  }

  action yield_set_document {
    trace('SET_DOCUMENT yield_set')
    yield @buffers[:set_document]
  }

  action set_document_node_eof {
    trace('SET_DOCUMENT set_document_node_eof')
    name = @buffers.delete(:set_document_name)
    set_document_node = set(name)
    completed = name.complete
    if @buffers.key?(:string)
      value = @buffers.delete(:string)
      set_document_node <<= value
      completed = completed && value.complete
    elsif @buffers.key?(:ident)
      value = @buffers.delete(:ident)
      set_document_node <<= value
      completed = completed && value.complete
    elsif @buffers.key?(:list)
      value = @buffers.delete(:list)
      set_document_node <<= value
      completed = completed && value.complete
    end
    set_document_node.complete = completed
    yield set_document_node
  }

  document_property =
    an_ident &
    DOCUMENT_PROPERTY
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

  set_document_node :=
    KW_SET
    SP+
    KW_DOCUMENT
    SP+
    document_property
    %add_property
    @eof(set_document_node_eof)
    SP+
    EQL?
    SP+?
    value?
    @eof(set_document_node_eof)
    %set_document_end
    %yield_set_document
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
    BELParser::Parsers::BELScript::SetDocument.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
