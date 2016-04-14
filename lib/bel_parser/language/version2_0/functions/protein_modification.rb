require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../amino_acid'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # ProteinModification: Denotes a covalently modified protein
        # abundance
        class ProteinModification
          extend Function

          SHORT       = :pmod
          LONG        = :proteinModification
          RETURN_TYPE =
            BELParser::Language::Version2_0::ReturnTypes::ProteinModification
          DESCRIPTION = 'Denotes a covalently modified protein
          bundance'.freeze

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
            # ProteinModificationWithTypeSignature
            class ProteinModificationWithTypeSignature
              extend BELParser::Language::Signature

              private_class_method :new

              # TODO: More strict prefix validation for modification type?
              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinModification))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:ModificationType))))))
              end
              private_constant :AST

              STRING_FORM =
                'proteinModification(E:modificationType)proteinModification'
                .freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinModificationWithTypeAminoSignature
            class ProteinModificationWithTypeAminoSignature
              extend BELParser::Language::Signature

              private_class_method :new

              # TODO: More strict prefix validation for modification type?
              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinModification))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:ModificationType))))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        value_type(
                          amino_acid_of(*AminoAcid.values))))))
              end
              private_constant :AST

              STRING_FORM =
                'proteinModification(E:modificationType,T:AminoAcid)proteinModification'
                .freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinModificationWithTypeAminoPositionSignature
            class ProteinModificationWithTypeAminoPositionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              # TODO: More strict prefix validation for modification type?
              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinModification))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:ModificationType))))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        value_type(
                          amino_acid_of(*AminoAcid.values))))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        value_type(
                          encoding_of(:*))))))
              end
              private_constant :AST

              STRING_FORM =
                'proteinModification(E:modificationType,T:AminoAcid,E:*)proteinModification'
                .freeze
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
