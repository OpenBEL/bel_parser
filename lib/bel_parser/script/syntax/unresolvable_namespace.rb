require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_error'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'

module BELParser
  module Script
    module Syntax
      class UnresolvableNamespace
        extend BELParser::Language::Syntax::SyntaxFunction
        extend BELParser::Quoting

        TARGET_NODE = BELParser::Parsers::AST::NamespaceDefinition

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          resource_reader = script_context[:resource_reader]

          keyword, domain = ast_node.children
          if domain.url?
            url = unquote(domain.url.string.string_literal)
            unless resource_reader.retrieve_resource(url)
              prefix = keyword.identifier.string_literal
              return UnresolvableNamespaceError.new(ast_node, prefix, url)
            end
          end

          nil
        end
      end

      # UnresolvableNamespaceError indicates that a namespace resource could
      # not be resolved.
      class UnresolvableNamespaceError < BELParser::Language::Syntax::SyntaxError
        # Gets the unresolvable namespace prefix.
        attr_reader :prefix
        # Gets the unresolvable namespace identifier.
        attr_reader :identifier

        def initialize(define_namespace_node, prefix, identifier)
          super(define_namespace_node, nil)
          @prefix     = prefix
          @identifier = identifier
        end

        def msg
          %(Could not resolve "#@prefix" with identifier "#@identifier".)
        end
      end
    end
  end
end
