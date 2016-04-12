require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # Translocation: Denotes the frequency or abundance of events in which members move between locations
        class Translocation
          extend Function

          SHORT       = :tloc
          LONG        = :translocation
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::Abundance
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
            class TranslocationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Translocation))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Abundance))))),
                  argument(
                    parameter(
                      prefix(
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:Abundance))))),
                  argument(
                    parameter(
                      prefix(
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:Abundance))))))
              end
              private_constant :AST

              STRING_FORM = 'translocation(F:abundance,E:abundance,E:abundance)abundance'.freeze
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
