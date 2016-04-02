require_relative '../functions/protein_modification'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # Protein modification signature.
        class ProteinAbundanceModification
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(
                    Functions::ProteinAbundance.new))),
              argument(
                parameter(
                  prefix(
                    identifier(
                      has_namespace,
                      namespace_of(:*))),
                  value(
                    value_type(
                      has_encoding,
                      encoding_of(:Protein)
                    )))),
              argument(
                term(
                  function(
                    identifier(
                      function_of(
                        Functions::ProteinModification.new)))))
            )
          end
          private_constant :AST

          def self.string_form
            # TODO: This should return the traditional signature.
            #       p(E:P,F:proteinModification)p
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
