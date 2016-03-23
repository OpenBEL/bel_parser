require_relative 'parsers/common'
require_relative 'parsers/bel_expression'
require_relative 'parsers/bel_script'
require_relative 'mixin/line_mapping'

module BEL
  class ASTGenerator
    include LineMapping

    PARSERS = [
      BEL::Parsers::Common.constants.map { |c|
        BEL::Parsers::Common.const_get(c)
      },
      BEL::Parsers::BELExpression.constants.map { |c|
        BEL::Parsers::BELExpression.const_get(c)
      },
      BEL::Parsers::BELScript.constants.map { |c|
        BEL::Parsers::BELScript.const_get(c)
      }
    ].flatten!

    # Yields AST results for each line of the IO.
    #
    # @example Receive AST results in given block.
    #   # doctest setup
    #   require 'lib/bel/ast_generator'
    #   require 'ast'
    #   self.class.include AST::Sexp
    #
    #   # example usage
    #   line_io = StringIO.new("\"AKT1\"\n")
    #   line    = nil
    #   ast_res = nil
    #   ::BEL::ASTGenerator.new.each(line_io) { |results|
    #     line, ast_res = results
    #   }
    #
    #   # tests
    #   line       == %Q{"AKT1"\n}                 #=> true
    #   ast_res[0] == s(:string, %Q{"AKT1"})       #=> true
    #   ast_res[1] == s(:parameter,
    #                   s(:prefix, nil),
    #                   s(:value,
    #                     s(:string, "\"AKT1\""))) #=> true
    #   ast_res[2] == s(:relationship, %Q{"AKT1"}) #=> true
    #
    # @example Receive AST results as an enumerator.
    #   # doctest setup
    #   require 'lib/bel/ast_generator'
    #   require 'ast'
    #   self.class.include AST::Sexp
    #
    #   # example usage
    #   line_io = StringIO.new("\"AKT1\"\n")
    #   line, ast_res = ::BEL::ASTGenerator.new.each(line_io).first.to_a
    #
    #   # tests
    #   line       == %Q{"AKT1"\n}                 #=> true
    #   ast_res[0] == s(:string, %Q{"AKT1"})       #=> true
    #   ast_res[1] == s(:parameter,
    #                   s(:prefix, nil),
    #                   s(:value,
    #                     s(:string, "\"AKT1\""))) #=> true
    #   ast_res[2] == s(:relationship, %Q{"AKT1"}) #=> true
    #
    # @param  [IO] io the IO-object to read each line from
    # @yield  [[String, Array<AST::Node>]] to the block for each line
    # @return [IO, #<Enumerator: #<BEL::ASTGenerator#each>] the {IO}
    #         object is returned if a block is given, otherwise an
    #         {Enumerator} object is returned that can be iterated
    #         with {Enumerator#each}
    def each(io)
      if block_given?
        line_enumerator = map_lines(io.each_line.lazy)

        line_enumerator.each do |line|
          ast_results = []
          PARSERS.map { |parser|
            parser.parse(line) { |ast| ast_results << ast }
          }
          yield([line, ast_results])
        end
      else
        enum_for(:each, io)
      end
    end
  end
end

if __FILE__ == $0
  INDENT = 2
  BEL::ASTGenerator.new.each($stdin) do |(line, ast_results)|
    puts "Line: #{line}"
    ast_results.each do |ast|
      puts ast.to_s(INDENT)
    end
  end
end
