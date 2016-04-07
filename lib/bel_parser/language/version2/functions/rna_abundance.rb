require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2
      module Functions
        # RNAAbundance: Denotes the abundance of a gene
        class RNAAbundance
          extend Function

          SHORT       = :r
          LONG        = :rnaAbundance
          RETURN_TYPE = BELParser::Language::Version2::ReturnTypes::GeneAbundance
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
  
            class RNAAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(RNAAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:RnaAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'rnaAbundance(E:rnaAbundance)geneAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class RNAAbundanceWithFusionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(RNAAbundance))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version2::ReturnTypes::Fusion))))))              
              end
              private_constant :AST

              STRING_FORM = 'rnaAbundance(F:fusion)geneAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class RNAAbundanceWithLocationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(RNAAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:RnaAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version2::ReturnTypes::Location))))))              
              end
              private_constant :AST

              STRING_FORM = 'rnaAbundance(E:rnaAbundance,F:location)geneAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class RNAAbundanceWithVariantSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(RNAAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:RnaAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version2::ReturnTypes::Variant))))))              
              end
              private_constant :AST

              STRING_FORM = 'rnaAbundance(E:rnaAbundance,F:variant)geneAbundance'.freeze
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
