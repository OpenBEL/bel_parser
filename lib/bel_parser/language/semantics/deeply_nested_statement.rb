require 'bel_parser/parsers/ast/node'

module BELParser
  module Language
    module Semantics
      # DeeplyNestedStatement implements a {SemanticsFunction} that maps a
      # {BELParser::Parsers::AST::NestedStatement} to {SemanticsWarning} if
      # the number of nested statements exceeds
      # {DeeplyNestedStatement::NESTING_THRESHOLD}.
      #
      # @see DeeplyNestedStatement::NESTING_THRESHOLD
      class DeeplyNestedStatement
        include SemanticsFunction

        # Represents how many nested statments must be exceeded before a
        # {SemanticsWarning} results.
        NESTING_THRESHOLD = 1

        private_class_method :new

        def self.map(node, spec, _namespaces)
          return nil unless node.is_a?(BELParser::Parsers::AST::NestedStatement)

          nested_number = count_nested_statements(node)
          DeeplyNestedStatementWarning.new(
            node,
            spec,
            NESTING_THRESHOLD,
            nested_number) if nested_number > NESTING_THRESHOLD
        end

        def self.count_nested_statements(node)
          node
            .traverse
            .select { |n| n.is_a?(BELParser::Parsers::AST::Object) }
            .reduce(0) do |sum, object|
              sum += 1 if object.statement?
              sum
            end
        end
      end

      # DeeplyNestedStatementWarning defines a {SemanticsWarning} that
      # indicates the nested statement threshold was exceeded.
      #
      # @see DeeplyNestedStatement::NESTING_THRESHOLD
      class DeeplyNestedStatementWarning < SemanticsWarning
        attr_reader :nested_threshold, :nested_number

        def initialize(stmt_node, spec, nested_threshold, nested_number)
          super(stmt_node, spec)
          @nested_number    = nested_number
          @nested_threshold = nested_threshold
        end

        def to_s
          <<-MSG.gsub(/ {12}/, '').delete("\n")
            Statement contains more than #{nested_threshold} nested statements
             (#{nested_number} nested statements).
          MSG
        end
      end
    end
  end
end
