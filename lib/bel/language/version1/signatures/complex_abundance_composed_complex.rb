require_relative '../functions/complex_abundance'
require_relative '../return_types/abundance'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # Composed complex signature.
        class ComplexAbundanceComposedComplex
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(
                    Functions::ComplexAbundance))),
              variadic_arguments(
                term(
                  function(
                    identifier(
                      return_type_of(
                        ReturnTypes::Abundance))))))
          end
          private_constant :AST

          def self.string_form
            # TODO: This should return the traditional signature.
            #       complex(RT:A)abundance
            AST.to_s
          end

          def self.semantic_ast
            AST
          end
        end
      end
    end
  end
end
