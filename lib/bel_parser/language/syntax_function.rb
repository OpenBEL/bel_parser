module BELParser
  module Language
    module Syntax
      module SyntaxFunction
        # @abstract Include {SyntaxFunction} and override {#map} to check
        # expression syntax.
        def self.map(expression_ast, spec, namespaces)
          raise NotImplementedError, "#{__method__} is not implemented."
        end
      end
    end
  end
end
