require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../amino_acid'
require_relative '../../covalent_protein_modification'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # ProteinModification: Denotes a covalently modified protein
        # abundance
        class ProteinModification
          extend Function

          SHORT       = :pmod
          LONG        = :proteinModification
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::
            ProteinModification
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
            # ProteinModificationWithCovalentAminoPositionSignature
            class ProteinModificationWithCovalentAminoPositionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinModification))),
                  argument(
                    parameter(
                      prefix(
                        any),
                      value(
                        value_type(
                          covalent_protein_modification_of(
                            *CovalentProteinModification.values))))),
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
                          is_sequence_position)))))
              end
              private_constant :AST

              STRING_FORM =
                <<-SIG.delete("\s\n").freeze
                proteinModification(
                  T:CovalentProteinModification,
                  T:AminoAcid,
                  T:SequencePosition)proteinModification
                SIG
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinModificationWithCovalentAminoSignature
            class ProteinModificationWithCovalentAminoSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinModification))),
                  argument(
                    parameter(
                      prefix(
                        any),
                      value(
                        value_type(
                          covalent_protein_modification_of(
                            *CovalentProteinModification.values))))),
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
                <<-SIG.delete("\s\n").freeze
                proteinModification(
                  T:CovalentProteinModification,
                  T:AminoAcid)proteinModification
                SIG
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinModificationWithCovalentSignature
            class ProteinModificationWithCovalentSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinModification))),
                  argument(
                    parameter(
                      prefix(
                        any),
                      value(
                        value_type(
                          covalent_protein_modification_of(
                            *CovalentProteinModification.values))))))
              end
              private_constant :AST

              STRING_FORM =
                <<-SIG.delete("\s\n").freeze
                proteinModification(
                  T:CovalentProteinModification)proteinModification
                SIG
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
