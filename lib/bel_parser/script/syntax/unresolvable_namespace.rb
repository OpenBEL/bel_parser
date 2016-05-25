require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_error'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'

module BELParser
  module Script
    module Syntax
      class UnresolvableNamespace
        extend BELParser::Language::Syntax::SyntaxFunction

        TARGET_NODE = BELParser::Parsers::AST::NamespaceDefinition

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          uri_reader, url_reader = script_context.values_at(:uri_reader, :url_reader)

          keyword, domain = ast_node.children
          if domain.url?
            ApplyResourceURI.new.process(ast_node)
            if ast_node.uri
              uri = ast_node.uri
              unless uri_reader.retrieve_resource(uri)
                prefix = keyword.identifier.string_literal
                return UnresolvableNamespaceError.new(ast_node, prefix, uri)
              end
            else
              url = domain.child.string.string_literal
              unless url_reader.retrieve_resource(url)
                prefix = keyword.identifier.string_literal
                return UnresolvableNamespaceError.new(ast_node, prefix, url)
              end
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
