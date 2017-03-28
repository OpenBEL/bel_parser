require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # RelationshipDeprecation implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Relationship} to a {SemanticsWarning} if the
      # referenced relationship is deprecated for the
      # {BELParser::Language::Specification}.
      class RelationshipDeprecation
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces, will_match_partial = false)
          return nil unless node.is_a?(BELParser::Parsers::AST::Relationship)
          return nil if node.string_literal.nil?

          relationship_name = node.string_literal
          rel               = spec.relationship(relationship_name.to_sym)
          return nil unless rel

          RelationshipDeprecationWarning.new(node, spec, rel) if rel.deprecated?
        end
      end

      # Represents a {SemanticsWarning} when a
      # {BELParser::Parsers::AST::Relationship} references a deprecated
      # relationship for the {BELParser::Language::Specification}.
      class RelationshipDeprecationWarning < SemanticsWarning
        attr_reader :deprecated_relationship

        def initialize(relationship_node, spec, deprecated_relationship)
          super(relationship_node, spec)
          @deprecated_relationship = deprecated_relationship
        end

        def to_s
          %(Relationship "#{deprecated_relationship}" is deprecated.)
        end
      end
    end
  end
end
