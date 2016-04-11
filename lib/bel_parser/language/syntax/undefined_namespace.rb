require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Syntax
      # Undefined namespace finds parameter prefixes that reference an
      # undefined namespace.
      class UndefinedNamespace
        include SyntaxFunction

        private_class_method :new

        def self.map(term_node, spec, namespaces)
          syntax_results = []
          term_node.arguments
            .select(&:has_parameter?)
            .map(&:child)
            .each do |child_parameter|
              prefix_identifier = child_parameter.prefix.identifier
              next if prefix_identifier.nil?

              namespace_prefix = prefix_identifier.string_literal
              unless namespaces[namespace_prefix]
                syntax_results << UndefinedNamespaceError.new(
                  term_node, spec, namespace_prefix, namespaces)
              end
            end
          syntax_results
        end
      end

      # UndefinedNamespaceError indicates a parameter prefix is referencing
      # an undefined namespace.
      class UndefinedNamespaceError < SyntaxError
        # Gets the invalid prefix.
        attr_reader :invalid_prefix
        # Gets the defined namespaces.
        attr_reader :defined_namespaces

        def initialize(term_node, spec, invalid_prefix, defined_namespaces)
          super(term_node, spec)
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

