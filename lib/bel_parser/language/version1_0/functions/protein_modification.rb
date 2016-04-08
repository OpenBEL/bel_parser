require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # ProteinModification: Denotes a covalently modified protein abundance
        class ProteinModification
          extend Function

          SHORT       = :pmod
          LONG        = :proteinModification
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::ProteinModification
          DESCRIPTION = 'Denotes a covalently modified protein abundance'.freeze

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
  
            class ProteinModificationWithCovalentAminoPositionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinModification))),
                argument(
                  parameter(
                    prefix(
                      any),
                    value(
                      value_type(
                        encoding_of(:*))))),
                argument(
                  parameter(
                    prefix(
                      any),
                    value(
                      value_type(
                        encoding_of(:*))))),
                argument(
                  parameter(
                    prefix(
                      any),
                    value(
                      value_type(
                        encoding_of(:*))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinModification(E:*,E:*,E:*)proteinModification'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ProteinModificationWithCovalentAminoSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinModification))),
                argument(
                  parameter(
                    prefix(
                      any),
                    value(
                      value_type(
                        encoding_of(:*))))),
                argument(
                  parameter(
                    prefix(
                      any),
                    value(
                      value_type(
                        encoding_of(:*))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinModification(E:*,E:*)proteinModification'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ProteinModificationWithCovalentSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinModification))),
                argument(
                  parameter(
                    prefix(
                      any),
                    value(
                      value_type(
                        encoding_of(:*))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinModification(E:*)proteinModification'.freeze
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
