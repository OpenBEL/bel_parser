require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version2
      module Signatures
        # Reaction signature.
        class Reaction
          extend BEL::Language::Version2
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::Reaction))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(BEL::Language::Version2::ReturnTypes::Reactants))))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(BEL::Language::Version2::ReturnTypes::Products))))))
          end
          private_constant :AST

          STRING_FORM = 'reaction(F:reactants,F:products)abundance'.freeze
          private_constant :STRING_FORM

          def self.semantic_ast
            AST
          end

          def self.string_form
            STRING_FORM
          end
        end
      end
    end
  end
end
