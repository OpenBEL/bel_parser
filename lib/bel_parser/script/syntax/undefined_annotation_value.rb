require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_warning'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../keywords'

module BELParser
  module Script
    module Syntax
      class UndefinedAnnotationValue
        extend BELParser::Language::Syntax::SyntaxFunction
        extend BELParser::Script::Keyword

        TARGET_NODE       = BELParser::Parsers::AST::Set
        LIST_NODE         = BELParser::Parsers::AST::List

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name, value  = ast_node.children
          name_string  = ast_node.name.identifier.string_literal

          return nil if is_implicit_annotation?(name_string)
          type, dataset = annotation(name_string, script_context)
          return nil unless type == :uri || type == :url

          reader =
            case type
            when :uri
              script_context[:uri_reader]
            when :url
              script_context[:url_reader]
            end
          value_node = ast_node.value.children[0]
          if value_node.is_a?(LIST_NODE)
            value_node
              .list_items.map { |li| li.children[0].string_literal }
              .map do |string|
                map_value(ast_node, name_string, string, dataset.identifier, reader)
              end
          else
            map_value(
              ast_node,
              name_string,
              value_node.string_literal,
              dataset.identifier,
              reader)
          end
        end

        def self.annotation(name_string, script_context)
          hash =
            script_context[:annotation_definitions] ||= Concurrent::Hash.new
          hash[name_string]
        end

        def self.map_value(ast_node, name_string, value_string, identifier, reader)
          value = reader.retrieve_value_from_resource(identifier, value_string)
          UndefinedAnnotationValueWarning.new(
            ast_node,
            name_string,
            value_string) unless value
        end
      end

      # UndefinedAnnotationValueWarning represents an undefined annotation value
      # while checking a SET annotation.
      class UndefinedAnnotationValueWarning < BELParser::Language::Syntax::SyntaxWarning
        # Gets the prefix.
        attr_reader :prefix
        # Gets the undefined annotation value.
        attr_reader :value

        def initialize(set_node, prefix, value)
          super(set_node, nil)
          @prefix = prefix
          @value  = value
        end

        def msg
          %(Undefined annotation value "#@value" for annotation "#@prefix".)
        end
      end
    end
  end
end
