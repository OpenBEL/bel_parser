require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # PeptidaseActivityOfProteinAbundance signature.
        class PeptidaseActivityOfProteinAbundance
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version1::Functions::PeptidaseActivity))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(BEL::Language::Version1::ReturnTypes::ProteinAbundance))))))
          end
          private_constant :AST

          STRING_FORM = 'peptidaseActivity(F:proteinAbundance)peptidaseActivity'.freeze
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
