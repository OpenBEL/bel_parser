require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # RelationshipNotListable implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Statement} to a {SemanticsWarning} if the
      # relationship cannot be used for multiple terms in a list.
      class RelationshipNotListable
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::Statement)
          return nil unless node.relationship?
          return nil unless node.object.term?

          map_statement(node, spec)
        end

        def self.map_statement(stmt_node, spec)
          list_func = spec.function(:list)
          return nil unless list_func

          obj_func = stmt_node.object.child.function.identifier.string_literal
          return nil unless spec.function(obj_func.to_sym) == list_func

          rel = spec.relationship(stmt_node.relationship.string_literal.to_sym)
          return nil unless rel

          RelationshipNotMultipleWarning.new(stmt_node, spec, rel) unless
            rel.listable?
        end
      end

      # Represents a {SemanticsWarning} when a statement has a relationship
      # that cannot reference multiple objects.
      class RelationshipNotMultipleWarning < SemanticsWarning
        def initialize(statement_node, spec, rel)
          super(statement_node, spec)
          @rel = rel
        end

        def to_s
          multiple_relationships =
            @specification
            .listable_relationships
            .map(&:long)
            .join(', ')
          <<-MSG.gsub(/ {12}/, '').strip
            Statement must use a multiple relationship with a list object.
              The "#{@rel.long}" relationship cannot reference multiple objects.
              Multiple Relationships: #{multiple_relationships}
          MSG
        end
      end
    end
  end
end
