require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # Fusion: Specifies the abundance of a protein translated from
        # the fusion of a gene.
        class Fusion
          extend Function

          SHORT       = :fus
          LONG        = :fusion
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::Fusion
          G_ENC       = Version2_0::ValueEncodings::GeneAbundance
          P_ENC       = Version2_0::ValueEncodings::ProteinAbundance
          R_ENC       = Version2_0::ValueEncodings::RNAAbundance
          DESCRIPTION = 'Specifies the abundance of a protein translated
          from the fusion of a gene.'.freeze

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
            # FusionWithGeneEncodingSignature
            class FusionWithGeneEncodingSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Fusion))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(G_ENC)))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(G_ENC)))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:geneAbundance,E:*,E:geneAbundance,E:*)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionWithProteinEncodingSignature
            class FusionWithProteinEncodingSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Fusion))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:proteinAbundance,E:*,E:proteinAbundance,E:*)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionWithRNAEncodingSignature
            class FusionWithRNAEncodingSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Fusion))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(R_ENC)))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(R_ENC)))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:rnaAbundance,E:*,E:rnaAbundance,E:*)fusion'.freeze
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
