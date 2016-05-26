require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # Undefined namespace value finds values that are missing from their
      # purported namespaces.
      class UndefinedNamespaceValue
        include SyntaxFunction

        private_class_method :new

        def self.map(value_node, spec, namespaces)
          return nil unless value_node.is_a?(BELParser::Parsers::AST::Value)
          return nil unless value_node.namespace

          nsv = value_node.namespace_value
          if nsv.nil? || nsv.encoding.nil?
            value = value_node.children[0].string_literal
            UndefinedNamespaceValueWarning.new(value_node, spec, value)
          end
        end
      end

      # UndefinedNamespaceValueWarning indicates a value is missing from a
      # namespace.
      class UndefinedNamespaceValueWarning < SyntaxWarning
        # Gets the undefined value.
        attr_reader :undefined_value

        def initialize(value_node, spec, value)
          super(value_node, spec)
          @value = value
        end

        def msg
          prefix = @expression_node.prefix
          %(Undefined namespace value "#@value" for namespace "#{prefix}".)
        end
      end
    end
  end
end
