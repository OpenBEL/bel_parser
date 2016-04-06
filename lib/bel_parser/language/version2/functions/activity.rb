require_relative '../../version2'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version2
      module Functions
        # Activity: Denotes the frequency or abundance of events in which a member acts as a causal agent at the molecular scale.
        class Activity
          extend BELParser::Language::Function

          SHORT       = :act
          LONG        = :activity
          RETURN_TYPE = BELParser::Language::Version2::ReturnTypes::Activity
          DESCRIPTION = 'Denotes the frequency or abundance of events in which a member acts as a causal agent at the molecular scale.'.freeze

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
  
            class ActivitySignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Activity))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2::ReturnTypes::Abundance))))))
              end
              private_constant :AST

              STRING_FORM = 'activity(F:abundance)activity'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ActivityWithSpecificActivityTypeSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Activity))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2::ReturnTypes::Abundance))))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2::ReturnTypes::MolecularActivity))))))
              end
              private_constant :AST

              STRING_FORM = 'activity(F:abundance, F:molecularActivity)activity'.freeze
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
