require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # TranscriptionalActivity: Denotes the frequency or abundance of events in which a member directly acts to control transcription of genes
        class TranscriptionalActivity
          extend Function

          SHORT       = :tscript
          LONG        = :transcriptionalActivity
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::TranscriptionalActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member directly acts to control transcription of genes'.freeze

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
            # TranscriptionalActivityOfComplexAbundanceSignature
            class TranscriptionalActivityOfComplexAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(TranscriptionalActivity))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::ComplexAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'transcriptionalActivity(F:complexAbundance)transcriptionalActivity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # TranscriptionalActivityOfProteinAbundanceSignature
            class TranscriptionalActivityOfProteinAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(TranscriptionalActivity))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::ProteinAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'transcriptionalActivity(F:proteinAbundance)transcriptionalActivity'.freeze
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
