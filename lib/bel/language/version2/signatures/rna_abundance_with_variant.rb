require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version2
      module Signatures
        # RNAAbundanceWithVariant signature.
        class RNAAbundanceWithVariant
          extend BEL::Language::Version2
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::RnaAbundance))),
              argument(
                parameter(
                  prefix(
                    identifier(
                      has_namespace,
                      namespace_of(:*))),
                  value(
                    value_type(
                      has_encoding,
                      encoding_of(:RnaAbundance))))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(BEL::Language::Version2::ReturnTypes::Variant))))))
          end
          private_constant :AST

          STRING_FORM = 'rnaAbundance(E:rnaAbundance,F:variant)geneAbundance'.freeze
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
