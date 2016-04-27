require 'bel_parser/parsers/ast/node'
require_relative 'semantics_warning'

module BELParser
  module Language
    module Semantics
      class SemanticsNilNodeWarning < SemanticsWarning
        attr_reader :expected_type

        def initialize(expression_node, spec, expected)
          super(expression_node, spec)
          @expected_type = expected.ast_type
        end

        def to_s
          %(Missing the #{@expected_type} type.)
        end
      end

      class SemanticsNotNilNodeWarning < SemanticsWarning
        attr_reader :actual_type

        def initialize(expression_node, spec)
          super(expression_node, spec)
          @actual_type = expression_node.type
        end

        def to_s
          %(Expected nothing, but saw #{actual_type} type.)
        end
      end

      class SemanticsTypeWarning < SemanticsWarning
        attr_reader :expected_type, :actual_type

        def initialize(expression_node, spec, expected, actual)
          super(expression_node, spec)
          @expected_type = expected.ast_type
          @actual_type   = actual.type
        end

        def to_s
          %(Expected #{expected_type} type, but saw #{actual_type} type.)
        end
      end

      class SemanticsArgumentLengthWarning < SemanticsWarning
        attr_reader :expected_type, :actual_type

        def initialize(expression_node, spec, expected, actual)
          super(expression_node, spec)
          @expected_length = expected.arguments.length
          @actual_length   = actual.arguments.length
        end

        def to_s
          %(Expected #@expected_length arguments, but saw #@actual_length arguments.)
        end
      end

      class SemanticsMissingNamespaceWarning < SemanticsWarning
        def initialize(expression_node, spec)
          super(expression_node, spec)
        end

        def to_s
          prefix = @expression_node.identifier.string_literal
          %(Missing namespace for prefix "#{prefix}".)
        end
      end

      class SemanticsInvalidNamespaceWarning < SemanticsWarning
        def initialize(expression_node, spec, expected_namespaces)
          super(expression_node, spec)
          @expected_namespaces = expected_namespaces
        end

        def to_s
          namespace =
            @expression_node.namespace &&
            @expression_node.namespace.identifier
          %(Invalid namespace "#{namespace}". Was expecting one of: #{@expected_namespaces.join(', ')})
        end
      end

      class SemanticsMissingEncodingWarning < SemanticsWarning
        def initialize(expression_node, spec)
          super(expression_node, spec)
        end

        def to_s
          value = @expression_node.children[0].string_literal
          %(Missing encoding for value "#{value}".)
        end
      end

      class SemanticsInvalidEncodingWarning < SemanticsWarning
        def initialize(expression_node, spec, expected_encodings)
          super(expression_node, spec)
          @expected_encodings = expected_encodings
        end

        def to_s
          encoding = @expression_node.encoding
          %(Encoding of "#{encoding}" does not match expected: #{@expected_encodings.join(', ')})
        end
      end

      class SemanticsInvalidFunctionWarning < SemanticsWarning
        def initialize(expression_node, spec, expected_functions)
          super(expression_node, spec)
          @expected_functions = expected_functions
        end

        def to_s
          function = @expression_node.string_literal
          %(Function of "#{function}" does not match expected: #{@expected_functions.join(', ')})
        end
      end

      class SemanticsInvalidReturnTypeWarning < SemanticsWarning
        def initialize(expression_node, spec, expected_return_types)
          super(expression_node, spec)
          @expected_return_types = expected_return_types
        end

        def to_s
          function = @expression_node.string_literal
          %(Function of "#{function}" does not match return types: #{@expected_return_types.join(', ')})
        end
      end

      class SemanticsInvalidProteinModificationWarning < SemanticsWarning
        def initialize(expression_node, spec, expected_protein_modifications)
          super(expression_node, spec)
          @expected_protein_modifications = expected_protein_modifications
        end

        def to_s
          pmod = @expression_node.children[0].string_literal
          %(Protein modification of "#{pmod}" does not match allowed protein modifications: #{@expected_protein_modifications.join(', ')})
        end
      end

      class SemanticsInvalidAminoAcidWarning < SemanticsWarning
        def initialize(expression_node, spec, expected_amino_acids)
          super(expression_node, spec)
          @expected_amino_acids = expected_amino_acids
        end

        def to_s
          amino_acid = @expression_node.children[0].string_literal
          %(Amino acid of "#{amino_acid}" does not match allowed amino acids: #{@expected_amino_acids.join(', ')})
        end
      end

      class SemanticsInvalidAminoAcidRangeWarning < SemanticsWarning
        def initialize(expression_node, spec)
          super(expression_node, spec)
        end

        def to_s
          amino_acid_range = @expression_node.children[0].string_literal
          %(Invalid amino acid range "#{amino_acid_range}".)
        end
      end

      class SemanticsInvalidSequencePositionWarning < SemanticsWarning
        def initialize(expression_node, spec)
          super(expression_node, spec)
        end

        def to_s
          pos = @expression_node.children[0].string_literal
          %(Sequence position of "#{pos}" is not a positive number.)
        end
      end
    end
  end
end
