# begin: ragel
=begin
%%{
  machine bel;

  include 'statement_simple.rl';

  action statement_init {
    @buffers[:statement_stack] = [ s(:statement) ]
  }

  action inner_statement_init {
    @buffers[:statement_stack] << s(:statement)
  }

  action ast_subject {
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  }

  action ast_relationship {
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  }

  action ast_object {
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  }

  action statement_object_statement {
    @buffers[:object] = @buffers[:statement_stack][-1]
  }

  action call_nested_statement {
    fcall inner_statement;
  }

  action fret {
    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    fret;
  }

  action yield_statement_nested {
    yield @buffers[:statement_stack][-1]
  }

  inner_statement :=
    outer_term >inner_statement_init %statement_subject %ast_subject
    SP+
    RELATIONSHIP %ast_relationship
    SP+
    (
      outer_term @statement_object @ast_object |
      '(' @call_nested_statement ')'
    ) @fret;

  outer_statement =
    outer_term >statement_init %statement_subject %ast_subject
    SP+
    RELATIONSHIP %ast_relationship
    SP+
    '(' @call_nested_statement
    ')'
    # ')' @ast_object
    ;

  statement_nested :=
    outer_statement
    SP*
    COMMENT? %yield_statement_nested
    NL;
}%%
=end
# end: ragel

require          'ast'
require_relative 'mixin/buffer'
require_relative 'nonblocking_io_wrapper'

module StatementNested

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
    include AST::Sexp
		include BEL::Parser::Buffer

    def initialize(content)
      @content = content
# begin: ragel        
      %% write data;
# end: ragel        
    end

    def each
      @buffers = {}
      eof      = :ignored
      stack    = []
      data     = @content.unpack('C*')
      p        = 0
      pe       = data.length

# begin: ragel        
      %% write init;
      %% write exec;
# end: ragel        
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    StatementNested.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
