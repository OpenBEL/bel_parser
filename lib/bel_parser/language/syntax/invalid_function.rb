require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # InvalidFunction represents a syntax error with invalid function name
      # according to a BEL specification.
      class InvalidFunction
        include SyntaxFunction

        private_class_method :new

        def self.map(func_node, spec, _namespaces)
          return nil unless func_node.is_a?(BELParser::Parsers::AST::Function)

          function_name =
            if func_node.identifier
              func_node.identifier.string_literal
            else
              ''
            end
          unless spec.function(function_name.to_sym)
            InvalidFunctionSyntaxError.new(func_node, spec, function_name)
          end
        end
      end

      # InvalidFunctionSyntaxError indicates a function name was invalid.
      class InvalidFunctionSyntaxError < SyntaxError
        # Gets the invalid function literal.
        attr_reader :invalid_function

        def initialize(function, spec, invalid_function)
          super(function, spec)
          @invalid_function = invalid_function
        end

        def msg
          %(Invalid function "#{invalid_function}".)
        end
      end
    end
  end
end
