require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version2
      module Signatures
        # Variant signature.
        class Variant
          extend BEL::Language::Version2
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::Variant))),
              argument(
                parameter(
                  prefix(
                    identifier(
                      has_namespace,
                      namespace_of(:*))),
                  value(
                    value_type(
                      has_encoding,
                      encoding_of(:HgvsVariantDescription))))))
          end
          private_constant :AST

          STRING_FORM = 'variant(E:hgvsVariantDescription)variant'.freeze
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
