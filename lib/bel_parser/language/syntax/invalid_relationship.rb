require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # InvalidRelationship represents a syntax error with invalid
      # relationship according to a BEL specification.
      class InvalidRelationship
        include SyntaxFunction

        private_class_method :new

        def self.map(stmt_node, spec, _namespaces)
          return nil unless stmt_node.is_a?(BELParser::Parsers::AST::Statement)
          return nil unless stmt_node.relationship?

          rel_name = stmt_node.relationship.string_literal
          return nil if rel_name.nil?

          unless spec.relationship(rel_name.to_sym)
            InvalidRelationshipSyntaxError.new(stmt_node, spec, rel_name)
          end
        end
      end

      # InvalidRelationshipSyntaxError indicates a relationship was invalid.
      class InvalidRelationshipSyntaxError < SyntaxError
        # Gets the relationship literal that was invalid according to a
        # BEL specification.
        attr_reader :relationship

        def initialize(stmt_node, spec, relationship)
          super(stmt_node, spec)
          @relationship = relationship
        end

        def msg
          %(Invalid relationship "#{relationship}".)
        end
      end
    end
  end
end
