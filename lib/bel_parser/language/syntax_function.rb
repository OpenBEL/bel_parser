module BELParser
  module Language
    module Syntax
      module SyntaxFunction
        # @abstract Include {SyntaxFunction} and override {#map} to check
        # expression syntax.
        def self.map(_expression_ast, _spec, _namespaces)
          raise NotImplementedError, "#{__method__} is not implemented."
        end
      end
    end
  end
end
