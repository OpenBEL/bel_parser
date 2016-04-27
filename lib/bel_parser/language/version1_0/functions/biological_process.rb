require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # BiologicalProcess: Denotes a process or population of events
        class BiologicalProcess
          extend Function

          SHORT       = :bp
          LONG        = :biologicalProcess
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::BiologicalProcess
          B_ENC       = Version1_0::ValueEncodings::BiologicalProcess
          DESCRIPTION = 'Denotes a process or population of events'.freeze

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
            # BiologicalProcessSignature
            class BiologicalProcessSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(BiologicalProcess))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(B_ENC)))))
              end
              private_constant :AST

              STRING_FORM = 'biologicalProcess(E:biologicalProcess)biologicalProcess'.freeze
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
