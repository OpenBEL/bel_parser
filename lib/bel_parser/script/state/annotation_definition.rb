require 'bel_parser/language'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../state_function'

module BELParser
  module Script
    module State
      class AnnotationDefinition
        extend StateFunction
        extend BELParser::Quoting

        TARGET_NODE = BELParser::Parsers::AST::AnnotationDefinition

        def self.consume(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          resource_reader = script_context[:resource_reader]

          keyword, domain = ast_node.children
          prefix          = keyword.identifier.string_literal
          case
          when domain.list?
            handle_list(prefix, domain.child, script_context)
          when domain.url?
            handle_url(prefix, domain.child, script_context)
          when domain.pattern?
            handle_pattern(prefix, domain.child, script_context)
          end
        end

        def self.handle_list(prefix, list_node, script_context)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [
            :list,
            list_node.list_items.map do |li|
              unquote(li.children[0].string_literal)
            end
          ]
        end
        private_class_method :handle_list

        def self.handle_pattern(prefix, pattern_node, script_context)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [
            :pattern,
            unquote(pattern_node.string)
          ]
        end
        private_class_method :handle_pattern

        def self.handle_url(prefix, url_node, script_context)
          url     = unquote(url_node.string.string_literal)
          dataset = script_context[:resource_reader].retrieve_resource(url)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [:url, dataset]
        end
        private_class_method :handle_url
      end
    end
  end
end
