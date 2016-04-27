require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # ProteinAbundance: Denotes the abundance of a protein
        class ProteinAbundance
          extend Function

          SHORT       = :p
          LONG        = :proteinAbundance
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::ProteinAbundance
          PROTEIN_ENC = BELParser::Language::Version1_0::ValueEncodings::ProteinAbundance
          DESCRIPTION = 'Denotes the abundance of a protein'.freeze

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
            # ProteinAbundanceWithFusionSignature
            class ProteinAbundanceWithFusionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace),
                      value(
                        has_encoding,
                        encoding_of(PROTEIN_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Fusion))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:fusion)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinAbundanceWithProteinModificationSignature
            class ProteinAbundanceWithProteinModificationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace),
                      value(
                        has_encoding,
                        encoding_of(PROTEIN_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::ProteinModification))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:proteinModification)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinAbundanceWithSubstitutionSignature
            class ProteinAbundanceWithSubstitutionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace),
                      value(
                        has_encoding,
                        encoding_of(PROTEIN_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Substitution))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:substitution)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinAbundanceWithTruncationSignature
            class ProteinAbundanceWithTruncationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace),
                      value(
                        has_encoding,
                        encoding_of(PROTEIN_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Truncation))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:truncation)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinAbundanceSignature
            class ProteinAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(ProteinAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace),
                      value(
                        has_encoding,
                        encoding_of(PROTEIN_ENC)))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance)proteinAbundance'.freeze
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
