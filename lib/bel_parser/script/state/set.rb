require 'bel_parser/language'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../state_function'

module BELParser
  module Script
    module State
      class Set
        extend StateFunction
        extend BELParser::Quoting

        TARGET_NODE = BELParser::Parsers::AST::Set
        LIST_NODE   = BELParser::Parsers::AST::List

        def self.consume(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name, value = ast_node.children
          name_string = name.identifier.string_literal
          value_node  = ast_node.value.children[0]
          if value_node.is_a?(LIST_NODE)
            value_node
              .list_items.map { |li| li.children[0].string_literal }
              .each do |string|
                handle_annotation(name_string, string, script_context)
              end
          else
            value_string = value_node.string_literal
            case name_string
            when /\ASTATEMENT_GROUP\Z/
              handle_statement_group(value_string, script_context)
            else
              handle_annotation(name_string, value_string, script_context)
            end
          end
        end

        def self.handle_annotation(name, value, script_context)
          # add to annotation state
          script_context[:annotations]       ||= Concurrent::Hash.new
          script_context[:annotations][name]   = value
        end
        private_class_method :handle_annotation

        def self.handle_statement_group(value, script_context)
          script_context[:statement_group] = value

          # clear annotation state
          script_context[:annotations]     ||= Concurrent::Hash.new
          script_context[:annotations].clear
        end
        private_class_method :handle_statement_group
      end
    end
  end
end
