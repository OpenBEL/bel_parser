require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # MultipleSubjectObject implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Statement} to a {SemanticsWarning} if the
      # subject term is referenced as an argument of the object list term.
      class MultipleSubjectObject
        include SemanticsFunction

        private_class_method :new

        def self.map(stmt_node, spec, _namespaces)
          return nil unless stmt_node.is_a?(BELParser::Parsers::AST::Statement)
          return nil unless stmt_node.relationship?
          return nil if stmt_node.relationship.string_literal.nil?
          rel = spec.relationship(stmt_node.relationship.string_literal.to_sym)
          return nil unless rel
          return nil unless rel.listable?

          list_func = spec.function(:list)
          return nil unless list_func
          return nil unless stmt_node.object?
          return nil unless stmt_node.object.term?

          map_subject_object(stmt_node, rel, spec)
        end

        def self.map_subject_object(stmt_node, rel, spec)
          sub_term  = stmt_node.subject.term
          list_term = stmt_node.object.child

          return nil if list_term.arguments.empty?
          if list_term.arguments.any? { |arg| arg.child && sub_term == arg.child }
            puts "warning!"
            MultipleSubjectObjectWarning.new(stmt_node, spec, rel)
          end
        end
      end

      # Represents a {SemanticsWarning} when a
      # {BELParser::Parsers::AST::Statement} includes the subject term as an
      # argument of an object list term.
      class MultipleSubjectObjectWarning < SemanticsWarning
        def initialize(stmt_node, spec, rel)
          super(stmt_node, spec)
          @rel = rel
        end

        def to_s
          <<-MSG.gsub(/ {12}/, '').delete("\n")
            A "#{@rel.long}" statement cannot use the subject term as an
             object list() argument.
          MSG
        end
      end
    end
  end
end
