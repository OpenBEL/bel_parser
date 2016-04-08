require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # TransportActivity: Denotes the frequency or abundance of events in which a member directs acts to enable the directed movement of substances into, out of, within, or between cells
        class TransportActivity
          extend Function

          SHORT       = :tport
          LONG        = :transportActivity
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::TransportActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member directs acts to enable the directed movement of substances into, out of, within, or between cells'.freeze

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
  
            class TransportActivityOfComplexAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(TransportActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1_0::ReturnTypes::ComplexAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'transportActivity(F:complexAbundance)transportActivity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class TransportActivityOfProteinAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(TransportActivity))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1_0::ReturnTypes::ProteinAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'transportActivity(F:proteinAbundance)transportActivity'.freeze
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
