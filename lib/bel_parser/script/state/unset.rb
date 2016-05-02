require 'bel_parser/language'
require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'
require 'concurrent/hash'
require_relative '../keywords'
require_relative '../state_function'

module BELParser
  module Script
    module State
      class Unset
        extend StateFunction
        extend BELParser::Script::Keyword
        extend BELParser::Quoting

        TARGET_NODE = BELParser::Parsers::AST::Unset

        def self.consume(ast_node, script_context)
          return nil unless ast_node.is_a?(TARGET_NODE)
          name_string = ast_node.name.identifier.string_literal
          case name_string
          when /\ASTATEMENT_GROUP\Z/
            handle_statement_group(script_context)
          else
            handle_annotation(name_string, script_context)
          end
        end

        def self.handle_annotation(name, script_context)
          script_context[:annotations] ||= Concurrent::Hash.new
          script_context[:annotations].delete(name)
          script_context[:citation] = nil if is_citation?(name)
        end
        private_class_method :handle_annotation

        def self.handle_statement_group(script_context)
          script_context.delete(:statement_group)
          script_context[:annotations] ||= Concurrent::Hash.new
          script_context[:annotations].clear
          script_context[:citation] = nil
        end
        private_class_method :handle_statement_group
      end
    end
  end
end
