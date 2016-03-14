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
    comment    = @comment_buffer.pack('C*').force_encoding('utf-8')
    @comment   = @comment.updated(nil, [comment])
    @statement = @statement.updated(nil, [@subject, @relationship, @object, @comment])
  }

  action statement_init {
    @statement    = s(:statement)
    @subject      = s(:subject)
    @comment      = s(:comment, nil)
    @statement    = @statement.updated(nil, [@subject, @comment])
    @relationship = s(:relationship, nil)
    @object       = s(:object, nil)
  }

  action statement_subject {
    @subject   = @subject << term_to_ast(@term)
    @statement = @statement.updated(nil, [@subject, @relationship, @object, @comment])
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
    include AST::Sexp

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

    private

    def term_to_ast(term, ast=s(:term))
      fx, rest = *term
      ast = ast << s(:function, fx)
      rest.each do |arg|
        if arg.is_a?(String)
          ast = ast << s(:argument, s(:prefix, nil), s(:value, arg))
        elsif arg.first.is_a?(Symbol)
          ast = ast << s(:argument, term_to_ast(arg))
        else
          if arg.size == 1
            ast = ast << s(:argument, s(:prefix, nil), s(:value, arg[0]))
          else
            ast = ast << s(:argument, s(:prefix, arg[0]), s(:value, arg[1]))
          end
        end
      end

      ast
    end

    def statement_to_ast(statement, ast=s(:term))
      fx, rest = *term
      ast = ast << s(:function, fx)
      rest.each do |arg|
        if arg.is_a?(String)
          ast = ast << s(:argument, s(:prefix, nil), s(:value, arg))
        elsif arg.first.is_a?(Symbol)
          ast = ast << s(:argument, term_to_ast(arg))
        else
          if arg.size == 1
            ast = ast << s(:argument, s(:prefix, nil), s(:value, arg[0]))
          else
            ast = ast << s(:argument, s(:prefix, arg[0]), s(:value, arg[1]))
          end
        end
      end

      ast
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
