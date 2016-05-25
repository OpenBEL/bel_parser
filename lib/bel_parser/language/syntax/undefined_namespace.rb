require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # Undefined namespace finds parameter prefixes that reference an
      # undefined namespace.
      class UndefinedNamespace
        include SyntaxFunction

        private_class_method :new

        def self.map(prefix_node, spec, namespaces)
          return nil unless prefix_node.is_a?(BELParser::Parsers::AST::Prefix)

          prefix_identifier = prefix_node.identifier
          return nil if prefix_identifier.nil?

          prefix = prefix_identifier.string_literal
          unless namespaces[prefix.downcase]
            UndefinedNamespaceError.new(prefix_node, spec, prefix, namespaces)
          end
        end
      end

      # UndefinedNamespaceError indicates a parameter prefix is referencing
      # an undefined namespace.
      class UndefinedNamespaceError < SyntaxError
        # Gets the invalid prefix.
        attr_reader :invalid_prefix
        # Gets the defined namespaces.
        attr_reader :defined_namespaces

        def initialize(prefix_node, spec, invalid_prefix, defined_namespaces)
          super(prefix_node, spec)
          @invalid_prefix     = invalid_prefix
          @defined_namespaces = defined_namespaces.dup
        end

        def msg
          <<-MSG.gsub(/ {10}/, '')
            Undefined namespace "#{invalid_prefix}".
            Defined namespaces are: #{defined_namespaces.keys.join(', ')}
          MSG
        end
      end
    end
  end
end
