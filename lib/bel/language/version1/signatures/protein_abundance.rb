require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # Protein abundance signature.
        class ProteinAbundance
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(:p, :proteinAbundance)
                )
              ),
              argument(
                parameter(
                  prefix(
                    has_namespace(:*)
                  ),
                  value(
                    value_type(
                      has_encoding(:Protein)
                    )
                  )
                )
              )
            )
          end
          private_constant :AST

          def self.string_form
            # TODO: This should return the traditional signature.
            #       p(E:P)p
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
