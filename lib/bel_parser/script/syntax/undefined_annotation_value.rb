require 'bel_parser/language'
require 'bel_parser/language/syntax_function'
require 'bel_parser/language/syntax_warning'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'

module BELParser
  module Script
    module Syntax
      class UndefinedAnnotationValue
        extend BELParser::Language::Syntax::SyntaxFunction
        extend BELParser::Quoting

        TARGET_NODE       = BELParser::Parsers::AST::Set
        LIST_NODE         = BELParser::Parsers::AST::List
        IMPLICIT_KEYWORDS = ['Citation', 'Evidence', 'STATEMENT_GROUP']

        def self.map(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name, value  = ast_node.children
          name_string  = ast_node.name.identifier.string_literal

          return nil if IMPLICIT_KEYWORDS.include?(name_string)
          dataset = annotation(name_string, script_context)
          return nil unless dataset

          rr         = script_context[:resource_reader]
          value_node = ast_node.value.children[0]
          if value_node.is_a?(LIST_NODE)
            value_node
              .list_items.map { |li| li.children[0].string_literal }
              .map do |string|
                map_value(ast_node, name_string, string, dataset.identifier, rr)
              end
          else
            map_value(
              ast_node,
              name_string,
              value_node.string_literal,
              dataset.identifier,
              rr)
          end
        end

        def self.annotation(name_string, script_context)
          hash =
            script_context[:annotation_definitions] ||= Concurrent::Hash.new
          type, definition = hash[name_string]
          type == :url ? definition : nil
        end

        def self.map_value(ast_node, name_string, value_string, identifier, rr)
          value_string = unquote(value_string)
          value = rr.retrieve_value_from_resource(identifier, value_string)
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
