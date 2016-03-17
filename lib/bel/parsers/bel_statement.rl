# begin: ragel
%%{
  machine bel;

  include 'bel_term.rl';

  action call_statement {fcall statement;}
  action statement {
    @statement = @statement_stack.pop
    @statement.annotations = @annotations.clone()

    if @statement_group
      @statement_group.statements << @statement
    end

    if @statement.relationship == :hasComponents
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasComponent, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    elsif @statement.relationship == :hasMembers
      @statement.object.arguments.each do |arg|
        statement = BEL::Model::Statement.new(
          @statement.subject, :hasMember, arg, @statement.comment
        )
        statement.annotations = @statement.annotations
        yield statement
      end
    else
      yield @statement
    end
  }
  action statement_init {
    @statement = BEL::Model::Statement.new()
    @statement_stack = [@statement]
  }
  action statement_subject {
    @statement_stack.last.subject = @term
  }
  action statement_oterm {
    @statement_stack.last.object = @term
  }
  action statement_ostmt {
    nested = BEL::Model::Statement.new()
    @statement_stack.last.object = nested
    @statement_stack.push nested
  }
  action statement_pop {
    @statement = @statement_stack.pop
  }
  action rels {@relbuffer = []}
  action reln {@relbuffer << fc}
  action rele {
    rel = @relbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.last.relationship = rel.to_sym
  }
  action cmts {@cmtbuffer = []}
  action cmtn {@cmtbuffer << fc}
  action cmte {
    comment = @cmtbuffer.pack('C*').force_encoding('utf-8')
    @statement_stack.first.comment = comment
  }

  include bel_term 'bel_term.rl';

  comment = '//' ^NL+ >cmts $cmtn %cmte;

  statement :=
    IDENT SP* '(' @term_init @term_fx @call_term SP* %statement_subject comment? NL? @statement @return
    IDENT >rels $reln %rele SP*
    (
      IDENT SP* '(' @term_init @term_fx @call_term %statement_oterm SP* ')'? @return
      |
      '(' @statement_ostmt @call_statement %statement_pop
    ) SP* comment? %statement NL @{n = 0} @return;
}%%
# end: ragel

require_relative 'nonblocking_io_wrapper'

module BelStatement

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

    def initialize(content)
      @content = content
# begin: ragel        
      %% write data;
# end: ragel        
    end

    def each
      buffer = []
      data = @content.unpack('C*')
      p   = 0
      pe  = data.length

# begin: ragel        
      %% write init;
      %% write exec;
# end: ragel        
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BelStatement.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
