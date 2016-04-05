require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version2
      module Functions
        # Translocation: Denotes the frequency or abundance of events in which members move between locations
        class Translocation
          extend Function

          SHORT       = :tloc
          LONG        = :translocation
          RETURN_TYPE = BEL::Language::Version2::ReturnTypes::Abundance
          DESCRIPTION = 'Denotes the frequency or abundance of events in which members move between locations'.freeze

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
  
            class Translocation
              extend BEL::Language::Signature

              private_class_method :new

              AST = BEL::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(Translocation))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version2::ReturnTypes::Abundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version2::ReturnTypes::FromLocation))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version2::ReturnTypes::ToLocation))))))              
              end
              private_constant :AST

              STRING_FORM = 'translocation(F:abundance,F:fromLocation,F:toLocation)abundance'.freeze
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
