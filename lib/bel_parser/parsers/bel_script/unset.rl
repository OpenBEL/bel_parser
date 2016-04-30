# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';

  action start_unset_keyword {
    #$stderr.puts 'start_unset_keyword'
    @incomplete[:unset_keyword] = []
  }

  action accum_unset_keyword {
    #$stderr.puts 'accum_unset_keyword "' + fc.chr + '"'
    @incomplete[:unset_keyword] << fc
  }

  action end_unset_keyword {
    #$stderr.puts 'end_unset_keyword'
  }

  action eof_unset_keyword {
    #$stderr.puts 'eof_unset_keyword'
  }

  action eof_unset {
    #$stderr.puts 'eof_unset'
  }

  action unset_end {
    #$stderr.puts "unset_end"
    unless @buffers.key?(:ident)
      @buffers[:ident] = identifier(nil, complete: false)
    end
    name = @buffers.delete(:ident)

    keyword = ord_to_str(@incomplete.delete(:unset_keyword))
    unless keyword == 'UNSET'
      keyword_complete = false
    else
      keyword_complete = true
    end

    completed = keyword_complete && name.complete
    ast_node = unset(name, complete: completed)
    @buffers[:unset] = ast_node
    yield @buffers[:unset]
  }

  action yield_set {
    yield @buffers[:unset]
  }

  UNSET =
    [uU]
    [nN]?
    [sS]?
    [eE]?
    [tT]?
    ;

  unset =
    (UNSET | alnum+)
    >start_unset_keyword
    $accum_unset_keyword
    %end_unset_keyword
    $eof(eof_unset_keyword)
    ;

  unset_ast :=
    (unset SP+ id_ident |
     unset SP*)
    NL?
    $unset_end
    $eof(eof_unset)
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
      module Unset

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
    BELParser::Parsers::BELScript::Unset.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
