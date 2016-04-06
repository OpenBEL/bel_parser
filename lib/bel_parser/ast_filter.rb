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
