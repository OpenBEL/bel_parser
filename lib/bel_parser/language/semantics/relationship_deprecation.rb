require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      class RelationshipDeprecation
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::Relationship)

          relationship_name = node.string_literal
          rel               = spec.relationship(relationship_name.to_sym)
          return nil unless rel

          RelationshipDeprecationWarning.new(node, spec, rel) if rel.deprecated?
        end
      end

      class RelationshipDeprecationWarning < SemanticsWarning
        attr_reader :deprecated_relationship

        def initialize(relationship_node, spec, deprecated_relationship)
          super(relationship_node, spec)
          @deprecated_relationship = deprecated_relationship
        end

        def to_s
          %Q{Relationship "#{deprecated_relationship}" is deprecated.}
        end
      end
    end
  end
end
