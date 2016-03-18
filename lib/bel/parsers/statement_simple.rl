# begin: ragel
=begin
%%{
  machine bel;

  include 'term.rl';

  action start_comment {
    @buffers[:comment] = []
  }

  action append_comment {
    @buffers[:comment] << fc
  }

  action finish_comment {
    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  }

  action yield_statement_observed_term {
    @buffers[:comment] ||= s(:comment, nil)
    yield s(:observed_term,
            @buffers[:term_stack][-1], @buffers[:comment])
  }

  comment = '//' ^NL+ >start_comment $append_comment %finish_comment;

  statement_observed_term :=
    outer_term 
    SP*
    comment? %yield_statement_observed_term
    NL;
}%%
=end
# end: ragel

require_relative 'nonblocking_io_wrapper'

module StatementSimple

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
    StatementSimple.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
