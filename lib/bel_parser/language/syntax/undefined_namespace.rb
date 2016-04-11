require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # Undefined namespace finds parameter prefixes that reference an
      # undefined namespace.
      class UndefinedNamespace
        include SyntaxFunction

        private_class_method :new

        def self.map(expression_ast, spec, namespaces)
          errors = []
          expression_ast.traverse.map do |node|
            next unless node.is_a?(BELParser::Parsers::AST::Prefix)
            next if node.identifier.nil?

            namespace_prefix = node.identifier.string_literal
            unless namespaces[namespace_prefix]
              errors << UndefinedNamespaceError.new(
                expression_ast, node, namespaces)
            end
          end
          errors
        end
      end

      # UndefinedNamespaceError indicates a parameter prefix is referencing
      # an undefined namespace.
      class UndefinedNamespaceError < SyntaxError
        # Gets the defined namespaces.
        attr_reader :defined_namespaces

        def initialize(expression_node, spec, error_node, defined_namespaces)
          super(expression_node, spec, error_node)
          @defined_namespaces = defined_namespaces.dup
        end

        def msg
          undefined_namespace = error_node.identifier.string_literal
          %Q{Undefined namespace "#{undefined_namespace}".}
        end
      end
    end
  end
end

