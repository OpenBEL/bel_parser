# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';

  action start_multi_identifier {
    trace('IDENTIFIER start_multi_identifier')
    @multi_identifier_started = true
    multi_id_start = p;
  }

  action end_multi_identifier {
    trace('IDENTIFIER end_multi_identifier')
    # exclude the NL from the chars
    multi_id_end = p - 1
    chars = data[multi_id_start...multi_id_end]
    completed = !chars.empty?
    ast_node = multi_identifier(utf8_string(chars), complete: completed, character_range: [multi_id_start, multi_id_end])
    @buffers[:multi_ident] = ast_node
  }

  action an_ident_err {
    trace('IDENTIFIER a_multi_ident_err')
    multi_id_end = p
    chars = data[multi_id_start...multi_id_end]
    ast_node = multi_identifier(utf8_string(chars), complete: false, character_range: [multi_id_start, multi_id_end])
    @buffers[:multi_ident] = ast_node
  }

  action multi_ident_node_err {
    trace('IDENTIFIER multi_ident_node_err')
    multi_id_end = p
    chars = data[multi_id_start...multi_id_end]
    ast_node = multi_identifier(utf8_string(chars), complete: false, character_range: [multi_id_start, multi_id_end])
    yield ast_node
  }

  action yield_multi_identifier {
    trace('IDENTIFIER yield_multi_identifier')
    yield @buffers[:multi_ident]
  }

  action a_multi_ident_eof {
    trace('IDENTIFIER a_multi_ident_eof')
    if @multi_identifier_started
      multi_id_end = p
      chars = data[multi_id_start...multi_id_end]
      completed = !chars.empty?
      ast_node = multi_identifier(utf8_string(chars), complete: completed, character_range: [multi_id_start, multi_id_end])
      @buffers[:multi_ident] = ast_node
    end
  }

  multi_ident =
    ALL_BUT_NL
    >start_multi_identifier
    %end_multi_identifier
    ;

  multi_ident_node :=
    multi_ident
    NL?
    $err(multi_ident_node_err)
    %yield_multi_identifier
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
      module MultiIdentifier

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
    BELParser::Parsers::Common::MultiIdentifier.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
