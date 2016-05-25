require 'bel_parser/language'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../state_function'
require_relative '../apply_resource_uri'

module BELParser
  module Script
    module State
      class AnnotationDefinition
        extend StateFunction

        TARGET_NODE = BELParser::Parsers::AST::AnnotationDefinition

        def self.consume(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          uri_reader = script_context[:uri_reader]
          url_reader = script_context[:url_reader]

          keyword, domain = ast_node.children
          prefix          = keyword.identifier.string_literal
          case
          when domain.list?
            handle_list(prefix, domain.child, script_context)
          when domain.uri?
            uri = domain.child.string.string_literal
            handle_uri(prefix, uri, script_context)
          when domain.url?
            ApplyResourceURI.new.process(ast_node)
            if ast_node.uri
              handle_uri(prefix, ast_node.uri, script_context)
            else
              url = domain.child.string.string_literal
              handle_url(prefix, url, script_context)
            end
          when domain.pattern?
            handle_pattern(prefix, domain.child, script_context)
          end
        end

        def self.handle_list(prefix, list_node, script_context)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [
            :list,
            list_node.list_items.map do |li|
              li.children[0].string_literal
            end
          ]
        end
        private_class_method :handle_list

        def self.handle_pattern(prefix, pattern_node, script_context)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [
            :pattern,
            pattern_node.string
          ]
        end
        private_class_method :handle_pattern

        def self.handle_uri(prefix, uri, script_context)
          dataset = script_context[:uri_reader].retrieve_resource(uri)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [:uri, dataset]
        end
        private_class_method :handle_uri

        def self.handle_url(prefix, url, script_context)
          dataset = script_context[:url_reader].retrieve_resource(url)
          script_context[:annotation_definitions] ||= Concurrent::Hash.new
          script_context[:annotation_definitions][prefix] = [:url, dataset]
        end
        private_class_method :handle_url
      end
    end
  end
end
