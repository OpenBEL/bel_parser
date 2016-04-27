require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # List: Groups a list of terms together
        class List
          extend Function

          SHORT       = :list
          LONG        = :list
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::List
          A_ENC       = Version1_0::ValueEncodings::Abundance
          DESCRIPTION = 'Groups a list of terms together'.freeze

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
            # ListOfAbundanceEncodingSignature
            class ListOfAbundanceEncodingSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(List))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(A_ENC)))))
              end
              private_constant :AST

              STRING_FORM = 'list(E:abundance...)list'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # ListOfAbundanceSignature
            class ListOfAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(List))),
                  variadic_arguments(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Abundance))))))
              end
              private_constant :AST

              STRING_FORM = 'list(F:abundance...)list'.freeze
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
