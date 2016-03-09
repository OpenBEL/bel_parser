# begin: ragel
%%{
machine bel;

  IDENT  = [a-zA-Z0-9_]+;
  STRING = ('"' ('\\\"' | [^"])** '"');
  SP     = ' ' | '\t';
  NL     = '\n';

  action s {
    buffer = []
  }

  action n {
    buffer << fc
  }

  action name {
    @name = buffer.pack('C*').force_encoding('utf-8')
  }
  action call_term { fcall term;           }
  action return    { fret;                 }
  action term      { yield @term           }
  action term_init { @term_stack = [] }
  action term_fx {
    fx = @name.to_sym
    @term_stack.push([fx, []])
    @pfx = nil
    @pbuf = []
  }
  action term_arg {
    val = @pbuf.map(&:chr).join()
    if not val.empty?
      if val.start_with? '"' and val.end_with? '"'
        val = val.strip()[1...-1]
      end

      if @pfx
        @term_stack.last[1] << [@pfx, val]
      else
        @term_stack.last[1] << val
      end
    end
    @pbuf = []
    @pfx = nil
  }
  action term_pop {
    @term = @term_stack.pop
    if not @term_stack.empty?
      @term_stack.last[1] << @term
    end
  }
  action pbuf  { @pbuf << fc }
  action pns {
    @pfx = @pbuf.map(&:chr).join()
    @pbuf = []
  }

  term :=
    (
      SP* (IDENT $pbuf ':')? @pns SP* (STRING $pbuf | IDENT $pbuf) %term_arg |
      SP* IDENT >s $n %name SP* '(' @term_fx @call_term
    )
    (
      SP* ',' SP* 
      (
        (IDENT $pbuf ':')? @pns SP* (STRING $pbuf | IDENT $pbuf) %term_arg |
        IDENT >s $n %name SP* '(' @term_fx @call_term
      )
    )* SP* ')' >term_pop @{n = 0} @return;

  term_main :=
    (
      IDENT >s $n %name SP* '(' @term_init @term_fx @call_term NL @term
    )+;
}%%
# end: ragel

require_relative 'nonblocking_io_wrapper'

module BelTerm

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
      stack  = []
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
    BelTerm.parse(line) { |obj|
      puts obj.join(', ')
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
