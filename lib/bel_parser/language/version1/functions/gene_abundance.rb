require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1
      module Functions
        # GeneAbundance: Denotes the abundance of a gene
        class GeneAbundance
          extend Function

          SHORT       = :g
          LONG        = :geneAbundance
          RETURN_TYPE = BELParser::Language::Version1::ReturnTypes::GeneAbundance
          DESCRIPTION = 'Denotes the abundance of a gene'.freeze

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
  
            class GeneAbundanceWithFusionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(GeneAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:GeneAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::Fusion))))))              
              end
              private_constant :AST

              STRING_FORM = 'geneAbundance(E:geneAbundance,F:fusion)geneAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class GeneAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(GeneAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:GeneAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'geneAbundance(E:geneAbundance)geneAbundance'.freeze
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
