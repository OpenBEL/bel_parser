require 'bel_parser/language'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../state_function'

module BELParser
  module Script
    module State
      class NamespaceDefinition
        extend StateFunction
        extend BELParser::Quoting

        TARGET_NODE = BELParser::Parsers::AST::NamespaceDefinition

        def self.consume(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          resource_reader = script_context[:resource_reader]

          keyword, domain = ast_node.children
          if domain.url?
            prefix  = keyword.identifier.string_literal
            url     = unquote(domain.url.string.string_literal)
            dataset = resource_reader.retrieve_resource(url)
            script_context[:namespace_definitions] ||= Concurrent::Hash.new
            script_context[:namespace_definitions][prefix] = dataset
          end
        end
      end
    end
  end
end
