require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Version1_0
      module Syntax
        # Function will add syntax errors to
        # {BELParser::Parsers::AST::Function} nodes that do not have a valid
        # BEL 1.0 functon name.
        class Function

          private_class_method :new

          V1 = ::BELParser::Language::Version1_0::Specification.new

          def self.match(input_ast)
            input_ast.traverse do |node|
              next unless node.is_a?(BELParser::Parsers::AST::Function)
              function_name = node.identifier.string_literal
              unless V1.function(function_name.to_sym)
                node.add_syntax_error(:FunctionV1)
              end
            end
          end
        end
      end
    end
  end
end
