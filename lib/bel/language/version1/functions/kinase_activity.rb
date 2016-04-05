require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Functions
        # KinaseActivity: Denotes the frequency or abundance of events in which a member acts as a kinase, performing enzymatic phosphorylation of a substrate
        class KinaseActivity
          extend Function

          SHORT       = :kin
          LONG        = :kinaseActivity
          RETURN_TYPE = BEL::Language::Version1::ReturnTypes::KinaseActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member acts as a kinase, performing enzymatic phosphorylation of a substrate'.freeze

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
  
            class KinaseActivityOfComplexAbundanceSignature
              extend BEL::Language::Signature

              private_class_method :new

              AST = BEL::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(KinaseActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version1::ReturnTypes::ComplexAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'kinaseActivity(F:complexAbundance)kinaseActivity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class KinaseActivityOfProteinAbundanceSignature
              extend BEL::Language::Signature

              private_class_method :new

              AST = BEL::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(KinaseActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version1::ReturnTypes::ProteinAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'kinaseActivity(F:proteinAbundance)kinaseActivity'.freeze
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
