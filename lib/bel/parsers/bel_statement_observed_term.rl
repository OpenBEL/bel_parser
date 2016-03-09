# begin: ragel
=begin
%%{
  machine bel_statement_observed_term;

  include bel_term 'bel_term.rl';

  action comment_start {
    @comment_buffer = []
  }

  action comment_next {
    @comment_buffer << fc
  }

  action comment_finish {
    comment = @comment_buffer.pack('C*').force_encoding('utf-8')
    @statement[:comment] = comment
  }

  action statement_init {
    @subject   = []
    @statement = {
      :subject => @subject,
      :comment => nil
    }
  }

  action statement_subject {
    @statement[:subject] = @term
  }

  action statement {
    yield @statement
  }

  comment = '//' ^NL+ >comment_start $comment_next %comment_finish;

  observed_term :=
    IDENT        >s $n %name
      SP*
    '('          @statement_init    @term_init @term_fx @call_term
      SP*        %statement_subject
      comment?
      NL         @statement @return;
}%%
=end
# end: ragel

module BelStatementObservedTerm

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
      stack  = []
      buffer = []
      data   = @content.unpack('C*')
      p      = 0
      pe     = data.length

# begin: ragel        
      %% write init;
      %% write exec;
# end: ragel        
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BelStatementObservedTerm.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
