require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # FragmentWithRangeDescriptor signature.
        class FragmentWithRangeDescriptor
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::Fragment))),
              argument(
                parameter(
                  prefix(
                    identifier(
                      has_namespace(),
                      namespace_of(:*))),
                  value(
                    value_type(
                      has_encoding(),
                      encoding_of(:AminoAcidRange))))),
              argument(
                parameter(
                  prefix(
                    any()),
                  value(
                    value_type(
                      encoding_of(:*))))))
          end
          private_constant :AST

          STRING_FORM = 'fragment(E:aminoAcidRange,E:*)abundance'
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
