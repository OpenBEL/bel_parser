# begin: ragel
=begin
%%{
  machine bel;

  include 'identifier.rl';
  include 'string.rl';
  include 'list.rl';

  action start_set_keyword {
    #$stderr.puts 'start_set_keyword'
    @incomplete[:set_keyword] = []
  }

  action accum_set_keyword {
    #$stderr.puts 'accum_set_keyword "' + fc.chr + '"'
    @incomplete[:set_keyword] << fc
    @accum_set = true
  }

  action start_value {
    @incomplete[:set_value] = []
  }

  action accum_value {
    @incomplete[:set_value] << fc
  }

  action eof_value {
    $stderr.puts 'handle eof - what is incomplete?'
    $stderr.puts @incomplete.inspect
  }

  action end_set_keyword {
    #$stderr.puts 'end_set_keyword'
    # have we accumulated part of the set keyword?
    unless @accum_set
      fbreak;
    end
    buf = @incomplete.delete(:set_keyword)
    keyword = ord_to_str(buf)
    if keyword == 'SET'
      @have_set = true
    end
  }

  action eof_set_keyword {
    #$stderr.puts 'eof_set_keyword'
  }

  action eof_set {
    #$stderr.puts 'eof_set'
  }

  action set_name_end {
    #$stderr.puts "set_name_end"
    name = @buffers.delete(:ident)
    unless ident.nil?
      @have_name = true
      @buffers[:set_name] = name
    end
  }

  action set_value_end {
    $stderr.puts 'set_value_end'
    $stderr.puts @buffers.inspect
    if @buffers.key?(:ident)
      @have_value = true
      ident = @buffers.delete(:ident)
      @buffers[:set_value] = ident
    elsif @buffers.key?(:list)
      $stderr.puts "I got a list!"
      @have_value = true
      list = @buffers.delete(:list)
      @buffers[:set_value] = list
    elsif @buffers.key?(:string)
      @have_value = true
      string = @buffers.delete(:string)
      @buffers[:set_value] = string
    end
  }

  action set_end {
    #$stderr.puts "set_end"
    children = []
    if @have_name
      children << @buffers.delete(:set_name)
    end
    if @have_value
      children << @buffers.delete(:set_value)
    end
    completed = @have_set && @have_name && @have_value
    ast_node = set(*children, complete: completed)
    @buffers[:set] = ast_node
    yield @buffers[:set]
  }

  SET_KW = [sS][eE][tT];

  action set_keyword {
    @buffers[:set] = set()
  }

  action name {
    @buffers[:set] = @buffers[:set] << name(@buffers[:ident])
  }

  action string_value {
    @buffers[:set] = @buffers[:set] << value(@buffers[:string])
  }

  action ident_value {
    @buffers[:set] = @buffers[:set] << value(@buffers[:ident])
  }

  action list_value {
    @buffers[:set] = @buffers[:set] << value(@buffers[:list])
  }

  action yield_set {
    yield @buffers[:set]
  }

  SET =
    [sS]
    [eE]?
    [tT]?
    ;

  set =
    (SET | alnum+)
    >start_set_keyword
    $accum_set_keyword
    %end_set_keyword
    $eof(eof_set_keyword)
    ;

  name =
    an_ident
    %set_name_end
    ;

  value =
    (
      a_string |
      a_list |
      an_ident
    )
    >start_value
    $accum_value
    $eof(eof_value)
    %set_value_end
    ;

  set_ast :=
    (
      set? SP+ name? SP+ EQL? SP+ value?
    )
    NL?
    $set_end
    $eof(eof_set)
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

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
