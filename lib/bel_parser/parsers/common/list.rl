# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';

  action start_list {
    $stderr.puts "LIST start_list"
    @list_opened = true
    @incomplete[:list] = list()
  }

  action stop_list {
    $stderr.puts "LIST stop_list"
    @list_closed = true
  }

  action add_string {
    $stderr.puts "LIST add_string"
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @incomplete[:list] <<= item
  }

  action add_ident {
    $stderr.puts "LIST add_ident"
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @incomplete[:list] <<= item
  }

  action list_end {
    $stderr.puts "LIST list_end"
    if @list_opened && @list_closed
      list = @incomplete.delete(:list)
      list.complete = true
    elsif !@list_closed
      list = @incomplete.delete(:list)
      list.complete = false
    end
    @buffers[:list] = list
  }

  action list_node_eof {
    $stderr.puts "LIST list_node_eof"
    list = @incomplete.delete(:list)
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    list <<= item
    list.complete = false
    yield list
  }

  action yield_list {
    $stderr.puts "LIST yield_list"
    yield @buffers[:list]
  }

  START_LIST = '{' SP* >start_list;
  END_LIST = '}' %stop_list;

  string_item =
    a_string
    %add_string
    ;

  ident_item =
    an_ident
    %add_ident
    ;

  item =
    string_item |
    ident_item
    ;

  list_item_0 =
    item
    ;

  list_item_n =
    COMMA_DELIM
    item
    ;

  items =
    list_item_0
    list_item_n*
    SP*
    ;

  a_list = START_LIST;

  list_node :=
    START_LIST
    items?
    @eof(list_node_eof)
    END_LIST?
    @eof(list_node_eof)
    NL?
    %list_end
    %yield_list
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
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
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST::Sexp

          def initialize(content)
            @content = content
            $stderr.puts "\n---\ncontent: '" + @content + "'"
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers      = {}
            @incomplete   = {}
            @list_opened  = false
            @list_closed  = false
            data          = @content.unpack('C*')
            p             = 0
            pe            = data.length
            eof           = data.length

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
    BELParser::Parsers::Common::List.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
