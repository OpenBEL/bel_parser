require_relative '../functions/protein_modification'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # Protein modification signature with covalent modification specified.
        class ProteinModificationCovalentModification
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(
                    Functions::ProteinModification))),
              argument(
                parameter(
                  prefix(
                    is_nil),
                  value(
                    value_type(
                      covalent_modification_of(
                        :Phosphorylation, :P,
                        :Glycosylation, :G,
                        :Ribosylation, :R,
                        :Acetylation, :A,
                        :Hydroxylation, :H,
                        :Sumoylation, :S,
                        :Farnesylation, :F,
                        :Methylation, :M,
                        :Ubiquitination, :U))))))
          end
          private_constant :AST

          def self.string_form
            # TODO: This should return the traditional signature.
            #       pmod()pmod
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
