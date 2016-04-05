require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Functions
        # PhosphataseActivity: Denotes the frequency or abundance of events in which a member acts as a phosphatase
        class PhosphataseActivity
          extend Function

          SHORT       = :phos
          LONG        = :phosphataseActivity
          RETURN_TYPE = BEL::Language::Version1::ReturnTypes::PhosphataseActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member acts as a phosphatase'.freeze

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
  
            class PhosphataseActivityOfComplexAbundanceSignature
              extend BEL::Language::Signature

              private_class_method :new

              AST = BEL::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(PhosphataseActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version1::ReturnTypes::ComplexAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'phosphataseActivity(F:complexAbundance)phosphataseActivity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class PhosphataseActivityOfProteinAbundanceSignature
              extend BEL::Language::Signature

              private_class_method :new

              AST = BEL::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(PhosphataseActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version1::ReturnTypes::ProteinAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'phosphataseActivity(F:proteinAbundance)phosphataseActivity'.freeze
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
