require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # CompositeAbundance: Denotes the frequency or abundance of
        # events in which members are present.
        class CompositeAbundance
          extend Function

          SHORT       = :composite
          LONG        = :compositeAbundance
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events
          in which members are present.'.freeze

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
            # CompositeAbundanceSignature
            class CompositeAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(CompositeAbundance))),
                  variadic_arguments(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version2_0::ReturnTypes::Abundance))))))
              end
              private_constant :AST

              STRING_FORM = 'compositeAbundance(F:abundance...)abundance'.freeze
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
