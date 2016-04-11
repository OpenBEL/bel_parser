module BELParser
  module Language
    module Semantics
      module SemanticsFunction
        # @abstract Include {SemanticsFunction} and override {#map} to check
        # term semantics (e.g. signatures).
        def self.map(term_ast, spec, namespaces)
          raise NotImplementedError, "#{__method__} is not implemented."
        end
      end
    end
  end
end
