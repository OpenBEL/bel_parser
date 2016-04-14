require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # Substitution: Indicates the abundance of proteins with amino
        # acid substitution sequence
        class Substitution
          extend Function

          SHORT       = :sub
          LONG        = :substitution
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::Substitution
          DESCRIPTION = 'Indicates the abundance of proteins with amino
          cid substitution sequence'.freeze

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
            # SubstitutionWithReferencePositionVariantSignature
            class SubstitutionWithReferencePositionVariantSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Substitution))),
                  argument(
                    parameter(
                      prefix(
                        any),
                      value(
                        value_type(
                          amino_acid_of(*AminoAcid.values))))),
                  argument(
                    parameter(
                      prefix(
                        any),
                      value(
                        value_type(
                          is_sequence_position)))),
                  argument(
                    parameter(
                      prefix(
                        any),
                      value(
                        value_type(
                          amino_acid_of(*AminoAcid.values))))))
              end
              private_constant :AST

              STRING_FORM =
                'substitution(T:AminoAcid,E:*,T:AminoAcid)substitution'.freeze
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
