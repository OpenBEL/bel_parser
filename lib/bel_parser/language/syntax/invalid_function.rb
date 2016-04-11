require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # InvalidFunction represents a syntax error with invalid function name
      # according to a BEL specification.
      class InvalidFunction
        include SyntaxFunction

        private_class_method :new

        def self.map(expression_ast, spec, namespaces)
          errors = []
          expression_ast.traverse.map do |node|
            next unless node.is_a?(BELParser::Parsers::AST::Function)
            function_name = node.identifier.string_literal
            unless spec.function(function_name.to_sym)
              errors << InvalidFunctionSyntaxError.new(
                expression_ast, spec, node, spec.functions)
            end
          end
          errors
        end
      end

      # InvalidFunctionSyntaxError indicates a function name was invalid.
      class InvalidFunctionSyntaxError < SyntaxError
        # Gets the functions defined by a BEL specification.
        attr_reader :bel_functions

        def initialize(expression_node, spec, error_node, bel_functions)
          super(expression_node, spec, error_node)
          @bel_functions = bel_functions
        end

        def msg
          invalid_function = error_node.identifier.string_literal
          %Q{Invalid function "#{invalid_function}".}
        end
      end
    end
  end
end
