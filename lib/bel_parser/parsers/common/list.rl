# begin: ragel
=begin
%%{
  machine bel;

  include 'identifier.rl';
  include 'string.rl';

  action list_start {
    $stderr.puts('list start')
    @opened = true
  }

  action list_finish {
    $stderr.puts('list finish')
    @closed = true
  }

  action list_end {
    $stderr.puts('list end')
    completed = @opened && @closed
    ast_node = list(complete: completed)
    @buffers[:list] = ast_node
  }

  action list_eof {
    $stderr.puts "list_eof"
  }

  action list_yield {
    $stderr.puts('list yield')
    yield @buffers[:list]
  }

  action clear {
    @buffers.delete(:string)
    @buffers.delete(:ident)
  }

  action string {
    @buffers[:list_arg] = list_item(@buffers[:string])
  }

  action ident {
    @buffers[:list_arg] = list_item(@buffers[:ident])
  }

  action start_list {
    @buffers[:list] = list()
  }

  action append_list {
    # Append list argument if its value is not empty.
    if @buffers[:list_arg]
      list_arg_value = @buffers[:list_arg].children[0].children[0]
      if list_arg_value != ''
        @buffers[:list] <<= @buffers[:list_arg]
      end
    end
  }

  action finish_list {
    #TODO: Mark @buffers[:list] as complete.
  }

  action error_list_string {
    #TODO: Mark @buffers[:list_arg] string as error.
    @buffers[:list_arg] = list_item(@buffers[:string])
  }

  action error_list_ident {
    #TODO: Mark @buffers[:list_arg] identifier as error.
    @buffers[:list_arg] = list_item(@buffers[:ident])
  }

  action yield_complete_list {
    yield @buffers[:list]
  }

  action yield_error_list {
    @buffers[:list] ||= list()
    yield @buffers[:list]
  }

  start_list = '{' %list_start;
  end_list = '}' %list_finish;

  ident_list_member = id_ident;
  string_list_member = str_string;
  list_member = string_list_member | ident_list_member;

  list = start_list end_list @list_end;
  list_ast := ( start_list SP* list_member? |
                start_list SP* list_member* SP* end_list |
                start_list list_member |
                start_list !list_member |
                start_list? |
                start_list end_list? |
                start_list list_member* end_list? |
                start_list end_list) NL? $list_end $list_yield;

  LIST  =
    '{' @start_list
    SP*
    (
      str_string %string $err(error_list_string) |
      id_ident  %ident  $err(error_list_ident)
    ) $err(append_list) %append_list
    SP*
    (
      ',' @clear
      SP*
      (
        str_string %string $err(error_list_string) |
        id_ident  %ident  $err(error_list_ident)
      ) $err(append_list) %append_list
      SP*
    )*
    '}' @finish_list;
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
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers    = {}
            @incomplete = {}
            @opened     = false
            @closed     = false
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
    BELParser::Parsers::Common::List.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
