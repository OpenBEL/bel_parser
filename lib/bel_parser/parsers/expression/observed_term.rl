# begin: ragel
=begin
%%{
  machine bel;

  include 'term.rl';
  include 'comment.rl';

  action yield_observed_term {
    @buffers[:comment] ||= comment(nil)
    comment = @buffers[:comment]
    term = @buffers[:term_stack][-1]
    subject_term = subject(term)
    rel = relationship(nil)
    obj = object(nil)
    stmt = observed_term(statement(subject_term, rel, obj, comment))
    stmt.complete = true
    $stderr.puts stmt.inspect
    yield stmt
  }

  observed_term :=
    outer_term
    SP*
    comment? %yield_observed_term
    NL?;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module Expression
      module ObservedTerm

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
            stack       = []
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
    BELParser::Parsers::Expression::ObservedTerm.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
