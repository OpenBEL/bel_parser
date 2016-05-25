require 'bel_parser/language'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../keywords'
require_relative '../state_function'

module BELParser
  module Script
    module State
      class BELVersion
        extend StateFunction
        extend Keyword

        TARGET_NODE         = BELParser::Parsers::AST::DocumentProperty
        DEFAULT_BEL_VERSION = '2.0'

        def self.consume(ast_node, script_context)
          return unless ast_node.is_a?(TARGET_NODE)
          name, value = ast_node.children
          name_string  = name.identifier.string_literal
          return unless is_bel_version?(name_string)

          value_string = value.children[0].string_literal
          begin
            spec = BELParser::Language.specification(value_string)
          rescue ArgumentError
            spec = BELParser::Language.specification(DEFAULT_BEL_VERSION)
          end
          script_context[:specification] = spec
        end
      end
    end
  end
end
