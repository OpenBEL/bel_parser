require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version1
      module Functions
        # MicroRNAAbundance: Denotes the abundance of a processed, functional microRNA
        class MicroRNAAbundance
          extend Function

          SHORT       = :m
          LONG        = :microRNAAbundance
          RETURN_TYPE = BELParser::Language::Version1::ReturnTypes::MicroRNAAbundance
          DESCRIPTION = 'Denotes the abundance of a processed, functional microRNA'.freeze

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
  
            class MicroRNAAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(MicroRNAAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:MicroRNAAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'microRNAAbundance(E:microRNAAbundance)microRNAAbundance'.freeze
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
