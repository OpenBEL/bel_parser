require_relative 'parsers/ast/node'

module BELParser
  # ASTFilter filters types of {BELParser::Parsers::AST::Node}.
  class ASTFilter
    def initialize(*types)
      @types = types
    end

    def each(ast_source)
      if block_given?
        ast_source.each do |(line_number, line, ast_results)|
          selected = filter(ast_results)
          yield([line_number, line, selected]) unless selected.empty?
        end
      else
        enum_for(:each, ast_source)
      end
    end

    def filter(ast_enum)
      ast_enum.select do |node|
        @types.include?(node.type)
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  require_relative 'ast_generator'

  types = ARGV.map(&:to_sym)
  ast   = BELParser::ASTGenerator.new.each($stdin)
  BELParser::ASTFilter.new(*types).each(ast) do |(line_number, line, results)|
    puts "#{line_number}: #{line}"
    results.each do |result_ast|
      puts result_ast.to_s(1)
    end
  end
end
