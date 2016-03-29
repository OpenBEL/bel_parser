require_relative 'ast_generator'
require_relative 'parsers/ast/node'
require_relative 'parsers/ast/sexp'
require_relative 'parsers/ast/mapped_traversal'

module BEL
  # ASTValidator applies observers to an AST traversal.
  class ASTValidator
    def initialize(observers: [])
      @observers = observers
    end

    def each(ast_source, &block)
      if block_given?
        traversal = observable_traversal
        ast_source.each do |(line_number, line, ast_results)|
          traverse(traversal, line_number, line, ast_results, &block)
        end
      else
        enum_for(:each, ast_source)
      end
    end

    def traverse(traversal, line_number, line, ast_results)
      ast_results.each do |ast|
        traversal.traverse(ast) do |node, results|
          yield([line_number, line, node, (results && results.compact)])
        end
      end
    end

    def observable_traversal
      traversal = BEL::Parsers::AST::MappedTraversal.new
      @observers.each do |observer|
        traversal.add_observer(observer)
      end
      traversal
    end
  end
end
