require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # GTPBoundActivity: Denotes the frequency or abundance of events
        # in which a member of a G-protein abundance is GTP-bound
        class GTPBoundActivity
          extend Function

          SHORT       = :gtp
          LONG        = :gtpBoundActivity
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::GTPBoundActivity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member of a G-protein abundance is GTP-bound'.freeze

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
            # GTPBoundActivityOfComplexAbundanceSignature
            class GTPBoundActivityOfComplexAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(GTPBoundActivity))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::ComplexAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'gtpBoundActivity(F:complexAbundance)gtpBoundActivity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # GTPBoundActivityOfProteinAbundanceSignature
            class GTPBoundActivityOfProteinAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(GTPBoundActivity))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::ProteinAbundance))))))
              end
              private_constant :AST

              STRING_FORM = 'gtpBoundActivity(F:proteinAbundance)gtpBoundActivity'.freeze
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
