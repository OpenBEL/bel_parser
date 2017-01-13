require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # ListFunctionSubject implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Subject} to {SemanticsWarning} if a _list_
      # {BELParser::Parsers::AST::Term} is used as the
      # {BELParser::Parsers::AST::Subject} of a
      # {BELParser::Parsers::AST::Statement}.
      class ListFunctionSubject
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::Subject)

          list_func = spec.function(:list)
          return nil unless list_func

          return nil unless node.term.function
          return nil unless node.term.function.identifier
          func_name = node.term.function.identifier.string_literal
          sub_func  = spec.function(func_name.to_sym)
          ListFunctionSubjectWarning.new(node, spec) if sub_func == list_func
        end
      end

      # ListFunctionSubjectWarning defines a {SemanticsWarning} that indicates
      # that a _list_ {BELParser::Parsers::AST::Term} was used as the
      # {BELParser::Parsers::AST::Subject} of a
      # {BELParser::Parsers::AST::Statement}.
      class ListFunctionSubjectWarning < SemanticsWarning
        def initialize(subject_node, spec)
          super(subject_node, spec)
        end

        def to_s
          <<-MSG.gsub(/ {12}/, '').delete("\n")
            List term is only valid in the Object of a Statement.
          MSG
        end
      end
    end
  end
end
