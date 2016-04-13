require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # NonCausalNestedStatement implements a {SemanticsFunction} that maps a
      # nested {BELParser::Parsers::AST::Statement} to {SemanticsWarning} if
      # the relationship is non-causal.
      class NonCausalNestedStatement
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::Statement)
          return nil unless node.object? && node.object.statement?

          rel = node.relationship.string_literal.to_sym
          unless spec.causal_relationships.include?(rel)
            NonCausalNestedStatementWarning.new(node, spec, rel)
          end
        end
      end

      # Represents a {SemanticsWarning} when a nested
      # {BELParser::Parsers::AST::Statement} has a non-causal relationship.
      class NonCausalNestedStatementWarning < SemanticsWarning
        attr_reader :non_causal_relationship

        def initialize(stmt_node, spec, rel)
          super(stmt_node, spec)
          @non_causal_relationship = spec.relationship(rel)
        end

        def to_s
          causal_relationships =
            @specification
            .causal_relationships
            .map(&:long)
            .join(', ')
          <<-MSG.gsub(/ {12}/, '')
            Nested statement is not a causal relationship.
             The "#{non_causal_relationship.long}" relationship is not causal.
             Causal Relationships: #{causal_relationships}
          MSG
        end

        private

        def causal_relationships
        end
      end
    end
  end
end
