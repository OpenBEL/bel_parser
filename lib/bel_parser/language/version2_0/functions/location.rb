require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # Location: Denotes the cellular location of the abundance.
        class Location
          extend Function

          SHORT       = :loc
          LONG        = :location
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::Location
          DESCRIPTION = 'Denotes the cellular location of the abundance.'.freeze

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
            class LocationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Location))),
                  argument(
                    parameter(
                      prefix(
                        identifier(
                          has_namespace,
                          namespace_of(:*))),
                      value(
                        value_type(
                          has_encoding,
                          encoding_of(:Location))))))
              end
              private_constant :AST

              STRING_FORM = 'location(E:location)location'.freeze
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
