require_relative 'parsers/ast/node'

module BELParser
  # ASTFilter filters types of {BELParser::Parsers::AST::Node}.
  class ASTFilter
    def initialize(ast_enum, *types)
      @ast_enum = ast_enum
      @types    = types
    end

    def each(enum = @ast_enum)
      if block_given?
        enum.each do |(line_number, line, ast_results)|
          selected = filter(ast_results)
          yield([line_number, line, selected]) unless selected.empty?
        end
      else
        enum_for(:each, enum)
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

  types     = ARGV.map(&:to_sym)
  generator = BELParser::ASTGenerator.new($stdin)
  BELParser::ASTFilter.new(
    generator,
    *types
  ).each do |(line_number, line, results)|
    puts "#{line_number}: #{line}"
    results.each do |result_ast|
      puts result_ast.to_s(1)
    end
  end
end
