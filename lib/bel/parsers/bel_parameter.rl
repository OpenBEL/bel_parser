# begin: ragel
%%{
  machine bel_parameter;

  IDENT  = [a-zA-Z0-9_]+;
  STRING = ('"' ('\\\"' | [^"])** '"');
  SP     = ' ' | '\t';
  NL     = '\n';

  action s    { buffer = []  }
  action n    { buffer << fc }
  action prefix {
    @prefix = buffer.pack('C*').force_encoding('utf-8')
    buffer  = []
  }
  action value {
    if buffer[0] == 34 && buffer[-1] == 34
      buffer = buffer[1...-1]
    end
    tmp_value = buffer.pack('C*').force_encoding('utf-8')
    tmp_value.gsub!('\"', '"')
    @value = tmp_value

    puts "BEL Parameter, prefix: #{@prefix}, value: #{@value}"
  }

  bel_parameter :=
    (IDENT >s $n ':')? @prefix SP* (STRING >s $n | IDENT >s $n) %value NL;
}%%
# end: ragel

require_relative 'nonblocking_io_wrapper'

module BelParameter

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
    BelParameter.parse(line) { |obj|
      puts obj
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
