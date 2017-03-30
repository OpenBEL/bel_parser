require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # FunctionDeprecation implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::Function} to a {SemanticsWarning} if the
      # referenced function is deprecated for the
      # {BELParser::Language::Specification}.
      class FunctionDeprecation
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces, will_match_partial = false)
          return nil unless node.is_a?(BELParser::Parsers::AST::Function)
          return nil unless node.identifier

          function_name = node.identifier.string_literal
          func          = spec.function(function_name.to_sym)
          return nil unless func

          FunctionDeprecationWarning.new(node, spec, func) if func.deprecated?
        end
      end

      # Represents a {SemanticsWarning} when a
      # {BELParser::Parsers::AST::Function} references a deprecated function
      # for the {BELParser::Language::Specification}.
      class FunctionDeprecationWarning < SemanticsWarning
        attr_reader :deprecated_function

        def initialize(function_node, spec, deprecated_function)
          super(function_node, spec)
          @deprecated_function = deprecated_function
        end

        def to_s
          %(Function "#{deprecated_function}" is deprecated.)
        end
      end
    end
  end
end
