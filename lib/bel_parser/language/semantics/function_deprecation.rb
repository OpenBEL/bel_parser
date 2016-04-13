require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      class FunctionDeprecation
        include SemanticsFunction

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::Function)

          function_name = node.identifier.string_literal
          func          = spec.function(function_name.to_sym)
          return nil unless func

          FunctionDeprecationWarning.new(node, spec, func) if func.deprecated?
        end
      end

      class FunctionDeprecationWarning < SemanticsWarning
        attr_reader :deprecated_function

        def initialize(function_node, spec, deprecated_function)
          super(function_node, spec)
          @deprecated_function = deprecated_function
        end

        def to_s
          %Q{Function "#{deprecated_function}" is deprecated.}
        end
      end
    end
  end
end
