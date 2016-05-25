require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../state_function'

module BELParser
  module Script
    module State
      class DocumentProperty
        extend StateFunction

        TARGET_NODE = BELParser::Parsers::AST::DocumentProperty

        def self.consume(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          hash = script_context[:document_properties] ||= Concurrent::Hash.new

          name, value = ast_node.children
          if name && value
            name_string  = name.identifier.string_literal
            value_string = value.children[0].string_literal
            hash[name_string] = value_string
          end
        end
      end
    end
  end
end
