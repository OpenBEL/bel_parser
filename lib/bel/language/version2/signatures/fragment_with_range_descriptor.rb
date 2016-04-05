require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version2
      module Signatures
        # FragmentWithRangeDescriptor signature.
        class FragmentWithRangeDescriptor
          extend BEL::Language::Version2
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::Fragment))),
              argument(
                parameter(
                  prefix(any),
                  value(
                    value_type(
                      is_amino_acid_range_pattern)))),
              argument(
                parameter(
                  prefix(any),
                  value(
                    value_type(
                      encoding_of(:*))))))
          end
          private_constant :AST

          STRING_FORM = 'fragment(E:aminoAcidRange,E:*)abundance'.freeze
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
