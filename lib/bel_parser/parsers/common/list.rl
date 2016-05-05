# begin: ragel
=begin
%%{
  machine bel;

  include 'identifier.rl';
  include 'string.rl';

  action list_start {
    $stderr.puts 'list_start'
    @opened = true
    @buffers[:list] = list()
  }

  action add_string {
    $stderr.puts 'add_string'
    string = @buffers.delete(:string)
    item = list_item(string, complete: string.complete)
    @buffers[:list] <<= item
  }

  action add_ident {
    $stderr.puts 'add_ident'
    ident = @buffers.delete(:ident)
    item = list_item(ident, complete: ident.complete)
    @buffers[:list] <<= item
  }

  action list_finish {
    $stderr.puts 'list_finish'
    @list_closed = true
  }

  action list_end {
    $stderr.puts "list_end"
    $stderr.puts "incomplete: " + @incomplete.inspect.to_s
    $stderr.puts "buffers: " + @buffers.inspect.to_s
    arg = @incomplete.delete(:list_arg)
    $stderr.puts "'#{arg}'"
    if @incomplete.key?(:string)
      # strings need to be closed; so set complete false
      ast_node = string(utf8_string(arg), complete: false)
      # the list item is complete if its child is complete
      item = list_item(ast_node, complete: ast_node.complete)
      @buffers[:list] <<= item
    elsif @incomplete.key?(:ident)
      # identifiers need not be closed; so set complete true
      ast_node = identifier(utf8_string(arg), complete: true)
      # the list item is complete if its child is complete
      item = list_item(ast_node, complete: ast_node.complete)
      @buffers[:list] <<= item
    end

    $stderr.puts 'closed? ' + @list_closed.to_s
    @buffers[:list].complete = @list_closed
  }

  action yield_list {
    $stderr.puts "yield_list"
    yield @buffers[:list]
  }

  action clear {
    #$stderr.puts "clear"
    @buffers.delete(:string)
    @buffers.delete(:ident)
  }

  action start_list {
    $stderr.puts "start_list"
    @buffers[:list] = list()
  }

  start_list = '{' SP* >list_start;
  end_list = SP* '}' %list_finish;

  string_item =
    a_string
    %add_string
    ;

  ident_item =
    an_ident
    %add_ident
    ;

  item =
    (string_item | ident_item)
    ;

  list_item_0 =
    item
    ;

  list_item_n =
    COMMA_DELIM
    item
    ;

  items =
    (
      list_item_0 list_item_n* |
      any* - NL
    )
    ;

  maybe_list =
    start_list?
    items?
    end_list?
    %list_end
    ;

  a_list =
    start_list
    items
    end_list
    %list_end
    ;

  list_node :=
    start_list
    items?
    end_list?
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
            $stderr.puts "\ncontent: " + content
            @content = content
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers      = {}
            @incomplete   = {}
            @opened       = false
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
