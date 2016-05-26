require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # Activity: Denotes the frequency or abundance of events in
        # which a member acts as a causal agent at the molecular scale.
        class Activity
          extend BELParser::Language::Function

          SHORT       = :act
          LONG        = :activity
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::Activity
          DESCRIPTION = 'Denotes the frequency or abundance of events
          in which a member acts as a causal agent at the
          molecular scale.'.freeze

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
            # ActivitySignature
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
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Abundance))))))
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

            # ActivityWithSpecificActivityTypeSignature
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
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Abundance))))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::MolecularActivity))))))
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
