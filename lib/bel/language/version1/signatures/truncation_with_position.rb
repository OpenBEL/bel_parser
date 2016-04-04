require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # TruncationWithPosition signature.
        class TruncationWithPosition
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version1::Functions::Truncation))),
              argument(
                parameter(
                  prefix(
                    any),
                  value(
                    value_type(
                      encoding_of(:*))))))
          end
          private_constant :AST

          STRING_FORM = 'truncation(E:*)truncation'.freeze
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
