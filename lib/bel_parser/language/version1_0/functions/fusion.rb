require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # Fusion: Specifies the abundance of a protein translated from
        # the fusion of a gene
        class Fusion
          extend Function

          SHORT       = :fus
          LONG        = :fusion
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::Fusion
          DESCRIPTION = 'Specifies the abundance of a protein translated
          rom the fusion of a gene'.freeze

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
            # FusionGeneAbundanceWithBreakpointsSignature
            class FusionGeneAbundanceWithBreakpointsSignature
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
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:GeneAbundance))))),
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
                          is_sequence_position)))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:geneAbundance,E:*,E:*)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionGeneAbundanceSignature
            class FusionGeneAbundanceSignature
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
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:GeneAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:geneAbundance)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionProteinAbundanceWithBreakpointsSignature
            class FusionProteinAbundanceWithBreakpointsSignature
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
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:ProteinAbundance))))),
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
                          is_sequence_position)))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:proteinAbundance,E:*,E:*)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionProteinAbundanceSignature
            class FusionProteinAbundanceSignature
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
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:ProteinAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:proteinAbundance)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionRNAAbundanceWithBreakpointsSignature
            class FusionRNAAbundanceWithBreakpointsSignature
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
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:RnaAbundance))))),
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
                          is_sequence_position)))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:rnaAbundance,E:*,E:*)fusion'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FusionRNAAbundanceSignature
            class FusionRNAAbundanceSignature
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
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:RnaAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'fusion(E:rnaAbundance)fusion'.freeze
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
