require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # NonObjectList implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Object} to a {SemanticsWarning} if the
      # object of a multiple relationship *is not* a list term.
      class NonObjectList
        include SemanticsFunction

        private_class_method :new

        def self.map(stmt_node, spec, _namespaces, will_match_partial = false)
          return nil unless stmt_node.is_a?(BELParser::Parsers::AST::Statement)
          return nil unless stmt_node.relationship?
          return nil unless stmt_node.object?
          return nil if stmt_node.relationship.string_literal.nil?

          list_func = spec.function(:list)
          return nil unless list_func

          rel = spec.relationship(stmt_node.relationship.string_literal.to_sym)
          return nil unless rel
          return nil unless rel.listable?

          map_object(stmt_node.object, rel, list_func, spec)
        end

        def self.map_object(obj_node, rel, list_func, spec)
          return NonObjectListWarning.new(
            obj_node,
            spec,
            rel) unless obj_node.term?

          return nil unless obj_node.child.function
          obj_func = obj_node.child.function.identifier.string_literal
          NonObjectListWarning.new(
            obj_node,
            spec,
            rel) unless spec.function(obj_func.to_sym) == list_func
        end
      end

      # Represents a {SemanticsWarning} when a
      # multiple relationship {BELParser::Parsers::AST::Statement} does not
      # reference an object list term.
      class NonObjectListWarning < SemanticsWarning
        def initialize(statement_node, spec, rel)
          super(statement_node, spec)
          @rel = rel
        end

        def to_s
          %(The "#{@rel.long}" relationship must take a list() object term.)
        end
      end
    end
  end
end
