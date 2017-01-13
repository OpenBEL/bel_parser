# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_identifier {
    trace('IDENTIFIER start_identifier')
    @identifier_started = true
    id_start = p;
  }

  action end_identifier {
    trace('IDENTIFIER end_identifier')
    id_end = p
    chars = data[id_start...id_end]
    completed = !chars.empty?
    ast_node = identifier(utf8_string(chars), complete: completed, character_range: [id_start, id_end])
    @buffers[:ident] = ast_node
  }

  action an_ident_err {
    trace('IDENTIFIER an_ident_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false, character_range: [id_start, id_end])
    @buffers[:ident] = ast_node
  }

  action ident_node_err {
    trace('IDENTIFIER ident_node_err')
    id_end = p
    chars = data[id_start...id_end]
    ast_node = identifier(utf8_string(chars), complete: false, character_range: [id_start, id_end])
    yield ast_node
  }

  action yield_identifier {
    trace('IDENTIFIER yield_identifier')
    yield @buffers[:ident]
  }

  action an_ident_eof {
    trace('IDENTIFIER an_ident_eof')
    if @identifier_started
      id_end = p
      chars = data[id_start...id_end]
      completed = !chars.empty?
      ast_node = identifier(utf8_string(chars), complete: completed, character_range: [id_start, id_end])
      @buffers[:ident] = ast_node
    end
  }

  ident =
    ID_CHARS
    >start_identifier
    %end_identifier
    ;

  maybe_ident =
    ident?
    ;

  an_ident =
    ident
    $eof(an_ident_eof)
    $err(an_ident_err)
    ;

  ident_node :=
    ident
    NL?
    $err(ident_node_err)
    %yield_identifier
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
    module Common
      module Identifier

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
            id_start    = 0
            id_end      = 0
            pe          = data.length
            eof         = data.length

            identifier_started = false
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
    BELParser::Parsers::Common::Identifier.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
