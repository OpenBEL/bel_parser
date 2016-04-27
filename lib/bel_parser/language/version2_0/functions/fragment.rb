require_relative '../../version2_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version2_0
      module Functions
        # Fragment: Denotes a protein fragment, e.g., a product of
        # proteolytic cleavage.
        class Fragment
          extend Function

          SHORT       = :frag
          LONG        = :fragment
          RETURN_TYPE = BELParser::Language::Version2_0::ReturnTypes::Fragment
          DESCRIPTION = 'Denotes a protein fragment, e.g., a product of
          roteolytic cleavage.'.freeze

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
            # FragmentWithRangeSignature
            class FragmentWithRangeSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Fragment))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        is_amino_acid_range_pattern))))
              end
              private_constant :AST

              STRING_FORM = 'fragment(E:aminoAcidRange)abundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # FragmentWithRangeDescriptorSignature
            class FragmentWithRangeDescriptorSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(Fragment))),
                  argument(
                    parameter(
                      prefix(any),
                      value(
                        is_amino_acid_range_pattern))),
                  argument(
                    parameter(
                      prefix(any),
                      value(any))))
              end
              private_constant :AST

              STRING_FORM = 'fragment(E:aminoAcidRange,E:*)abundance'.freeze
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
