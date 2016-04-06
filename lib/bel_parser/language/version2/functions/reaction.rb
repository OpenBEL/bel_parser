require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version2
      module Functions
        # Reaction: Denotes the frequency or abundance of events in a reaction
        class Reaction
          extend Function

          SHORT       = :rxn
          LONG        = :reaction
          RETURN_TYPE = BELParser::Language::Version2::ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events in a reaction'.freeze

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
  
            class ReactionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(Reaction))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version2::ReturnTypes::Reactants))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version2::ReturnTypes::Products))))))              
              end
              private_constant :AST

              STRING_FORM = 'reaction(F:reactants,F:products)abundance'.freeze
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
