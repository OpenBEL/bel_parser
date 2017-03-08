require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # FromLocation: Denotes the from cellular location of the
        # abundance.
        class FromLocation
          extend Function

          SHORT       = :fromLoc
          LONG        = :fromLocation
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::FromLocation
          A_ENC       = Version2_0::ValueEncodings::Abundance
          DESCRIPTION = 'Denotes the from cellular location of the
          abundance.'.freeze

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
            # FromLocationSignature
            class FromLocationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(FromLocation))),
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

              STRING_FORM = 'fromLocation(E:location)fromLocation'.freeze
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
