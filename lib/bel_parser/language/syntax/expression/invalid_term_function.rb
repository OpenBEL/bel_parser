module BELParser
  module Language
    module Syntax
      module Expression
        # AST traversal observer that reports if term functions are invalid
        # according to a {BELParser::Language::Specification}.
        class InvalidTermFunction
          def initialize(specification)
            @specification = specification
          end

          def update(node)
            return unless node.type == :term
            function_string = node.children[0].children[0].children[0]
            msg = "[#{node.type}] Invalid function: #{function_string}"
            msg unless @specification.function(function_string.to_sym)
          end
        end
      end
    end
  end
end
