require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version1
      module Functions
        # PeptidaseActivity: Denotes the frequency or abundance of events in which a member acts to cleave a protein
        class PeptidaseActivity
          extend Function

          SHORT       = :pep
          LONG        = :peptidaseActivity
          RETURN_TYPE = BELParser::Language::Version1::ReturnTypes::PeptidaseActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member acts to cleave a protein'.freeze

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
  
            class PeptidaseActivityOfComplexAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(PeptidaseActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::ComplexAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'peptidaseActivity(F:complexAbundance)peptidaseActivity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class PeptidaseActivityOfProteinAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(PeptidaseActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::ProteinAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'peptidaseActivity(F:proteinAbundance)peptidaseActivity'.freeze
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
