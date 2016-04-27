require 'bel_parser/parsers/ast/node'
require_relative 'semantics_warning'

module BELParser
  module Language
    module Semantics
      class SemanticsTypeWarning < SemanticsWarning
        attr_reader :expected_type, :actual_type

        def initialize(expression_node, expected_type, actual_type, spec)
          super(expression_node, spec)
          @expected_type = expected_type
          @actual_type   = actual_type
        end

        def to_s
          %(Expected #{expected_type} type, but saw #{actual_type} type.)
        end
      end
    end
  end
end
