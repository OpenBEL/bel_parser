require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # NestedStatementWithoutObject implements a {SemanticsFunction} that maps a
      # nested {BELParser::Parsers::AST::Statement} to {SemanticsWarning} if
      # the nested statement does not have an object.
      class NestedStatementWithoutObject
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::Statement)
          return nil unless node.object? && node.object.statement?

          nested = node.object.child

          unless nested.object?
            NestedStatementWithoutObjectWarning.new(node, spec)
          end
        end
      end

      # Represents a {SemanticsWarning} when a nested
      # {BELParser::Parsers::AST::Statement} does not have an object.
      class NestedStatementWithoutObjectWarning < SemanticsWarning
        attr_reader :non_causal_relationship

        def initialize(stmt_node, spec)
          super(stmt_node, spec)
        end

        def to_s
          <<-MSG.gsub(/ {12}/, '')
            Nested statement does not have an object.
          MSG
        end
      end
    end
  end
end
