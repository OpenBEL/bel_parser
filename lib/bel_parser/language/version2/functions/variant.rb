require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version2
      module Functions
        # Variant: Denotes a sequence variant of the specified abundance.
        class Variant
          extend Function

          SHORT       = :var
          LONG        = :variant
          RETURN_TYPE = BELParser::Language::Version2::ReturnTypes::Variant
          DESCRIPTION = 'Denotes a sequence variant of the specified abundance.'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.return_type
            RETURN_TYPE
          end

          def self.description
            DESCRIPTION
          end

          def self.signatures
            SIGNATURES
          end

          module Signatures
  
            class VariantSignature
              extend BELParser::Language::Signature

              private_class_method :new

              # TODO: More strict prefix validation for variant namespace?
              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(Variant))),
                argument(
                  parameter(
                    prefix(any),
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

          SIGNATURES = Signatures.constants.map do |const|
            Signatures.const_get(const)
          end.freeze
        end
      end
    end
  end
end
