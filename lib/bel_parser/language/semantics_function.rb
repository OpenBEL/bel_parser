module BELParser
  module Language
    module Semantics
      # SemanticsFunction provides a {#map} function that maps a
      # {BELParser::Parsers::AST::Node} to one or more
      # {SemanticsResult semantics results}.
      module SemanticsFunction
        # @abstract Include {SemanticsFunction} and override {#map} to check
        # term semantics (e.g. signatures).
        def self.map(_term_ast, _spec, _namespaces)
          raise NotImplementedError, "#{__method__} is not implemented."
        end
      end
    end
  end
end
