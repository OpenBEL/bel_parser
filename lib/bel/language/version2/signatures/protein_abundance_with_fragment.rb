require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # ProteinAbundanceWithFragment signature.
        class ProteinAbundanceWithFragment
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::ProteinAbundance))),
              argument(
                parameter(
                  prefix(
                    identifier(
                      has_namespace(),
                      namespace_of(:*))),
                  value(
                    value_type(
                      has_encoding(),
                      encoding_of(:ProteinAbundance))))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(BEL::Language::Version2::ReturnTypes::Fragment))))))
          end
          private_constant :AST

          STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:fragment)proteinAbundance'
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
