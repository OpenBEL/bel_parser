require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # ProteinAbundance: Denotes the abundance of a protein
        class ProteinAbundance
          extend Function

          SHORT       = :p
          LONG        = :proteinAbundance
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::ProteinAbundance
          P_ENC       = Version2_0::ValueEncodings::ProteinAbundance
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
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))))
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

            # ProteinAbundanceWithFragmentSignature
            class ProteinAbundanceWithFragmentSignature
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
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Fragment))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:fragment)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

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
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Fusion))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(F:fusion)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinAbundanceWithLocationSignature
            class ProteinAbundanceWithLocationSignature
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
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Location))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:location)proteinAbundance'.freeze
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
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))),
                  variadic_arguments(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::ProteinModification))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:proteinModification...)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ProteinAbundanceWithVariantSignature
            class ProteinAbundanceWithVariantSignature
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
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(P_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Variant))))))
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:variant)proteinAbundance'.freeze
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
