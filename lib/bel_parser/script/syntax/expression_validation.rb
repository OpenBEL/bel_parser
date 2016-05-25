require 'bel_parser/language'
require 'bel_parser/language/expression_validator'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_warning'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'

module BELParser
  module Script
    module Syntax
      class ExpressionValidation
        extend BELParser::Language::Syntax::SyntaxFunction
        extend BELParser::Quoting

        TARGET_NODES = [
          BELParser::Parsers::AST::ObservedTerm,
          BELParser::Parsers::AST::SimpleStatement,
          BELParser::Parsers::AST::NestedStatement
        ]
        EXP_VALIDATOR = BELParser::Language::ExpressionValidator

        def self.map(ast_node, script_context)
          return nil unless TARGET_NODES.include?(ast_node.class)
          return nil unless script_context.key?(:specification)

          validator = expression_validator(script_context)
          validator.validate(ast_node).select(&:failure?)
        end

        def self.expression_validator(script_context)
          unless defined? @expression_validator
            spec, namespaces, uri_reader, url_reader =
              script_context.values_at(
                :specification,
                :namespace_definitions,
                :uri_reader,
                :url_reader)
            @expression_validator = EXP_VALIDATOR.new(
              spec, namespaces, uri_reader, url_reader)
          end
          @expression_validator
        end
      end
    end
  end
end
