require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # InvalidFunction represents a syntax error with invalid function name
      # according to a BEL specification.
      class InvalidFunction
        include SyntaxFunction

        private_class_method :new

        def self.map(term_node, spec, namespaces)
          function_name = term_node.function.identifier.string_literal
          unless spec.function(function_name.to_sym)
            InvalidFunctionSyntaxError.new(term_node, spec, function_name)
          end
        end
      end

      # InvalidFunctionSyntaxError indicates a function name was invalid.
      class InvalidFunctionSyntaxError < SyntaxError
        # Gets the function literal that was invalid according to a
        # BEL specification.
        attr_reader :function

        def initialize(term_node, spec, function)
          super(term_node, spec)
          @function = function
        end

        def msg
          %Q{Invalid function "#{function}".}
        end
      end
    end
  end
end
