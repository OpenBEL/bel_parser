require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # Degradation: Denotes the frequency or abundance of events
        # in which a member is degraded in some way such that it is no
        # longer a member.
        class Degradation
          extend Function

          SHORT       = :deg
          LONG        = :degradation
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events
          in which a member is degraded in some way such
          that it is no longer a member.'.freeze

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
            # DegradationSignature
            class DegradationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Degradation))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Abundance))))))
              end
              private_constant :AST

              STRING_FORM = 'degradation(F:abundance)abundance'.freeze
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
