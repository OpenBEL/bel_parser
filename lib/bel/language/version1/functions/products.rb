require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Functions
        # Products: Denotes the products of a reaction
        class Products
          extend Function

          SHORT       = :products
          LONG        = :products
          RETURN_TYPE = BEL::Language::Version1::ReturnTypes::Products
          DESCRIPTION = 'Denotes the products of a reaction'.freeze

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
  
            class ProductsSignature
              extend BEL::Language::Signature

              private_class_method :new

              AST = BEL::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(Products))),
                variadic_arguments(
                  term(
                    function(
                      identifier(
                        return_type_of(BEL::Language::Version1::ReturnTypes::Abundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'products(F:abundance...)products'.freeze
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
