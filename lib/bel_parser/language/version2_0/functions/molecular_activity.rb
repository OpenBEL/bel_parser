require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # MolecularActivity: Denotes the frequency or abundance of events
        # in which a member acts as a causal agent at the molecular scale
        class MolecularActivity
          extend Function

          SHORT       = :ma
          LONG        = :molecularActivity
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::MolecularActivity
          T_ENC       = Version2_0::ValueEncodings::Activity
          DESCRIPTION = 'Denotes the frequency or abundance of events
          n which a member acts as a causal agent at the
          molecular scale'.freeze

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
            # MolecularActivitySignature
            class MolecularActivitySignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(MolecularActivity))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(T_ENC)))))
              end
              private_constant :AST

              STRING_FORM = 'molecularActivity(E:activity)molecularActivity'.freeze
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
