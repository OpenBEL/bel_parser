require 'bel_parser/quoting'
require_relative 'semantics_match'
require_relative 'semantics_result'
require_relative 'semantics_ast_warnings'
require_relative '../parsers/ast/node'

module BELParser
  module Language
    # Semantics capture BEL version-independent semantics for terms
    # and statements.
    module Semantics
      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def self.match(input_ast, semantic_ast, spec, match_results = [])
        res = semantic_ast.match(input_ast, spec)
        match_results.concat(res)
        if res.flatten.all?(&:success?) && !semantic_ast.terminal?
          return match_results if semantic_ast.children.empty?

          var_test = semantic_ast.children.any? do |x|
            x.is_a?(SemanticVariadicArguments)
          end
          if var_test
            test_pairs =
              input_ast
              .children
              .zip(semantic_ast.children)
              .select do |pair|
                !pair.include?(nil)
              end

            test_pairs.each do |(input_child, semantic_child)|
              if semantic_child.is_a?(SemanticVariadicArguments)
                input_children   = input_ast.children
                input_arguments  =
                  input_children[input_children.index(input_child)..-1]
                argument_pattern = semantic_child.children.first
                input_arguments.each do |argument_child|
                  res = semantic_child.match(argument_child, spec)
                  match_results << res
                  if res.all?(&:success?)
                    param_or_term = argument_child.children.first
                    match(param_or_term, argument_pattern, spec, match_results)
                  end
                end
              else
                match(input_child, semantic_child, spec, match_results)
              end
            end
          else
            semantic_ast
              .children
              .zip(input_ast.children)
              .each do |semantic_child, input_child|
                match(input_child, semantic_child, spec, match_results)
              end
          end
        end
        match_results.flatten
      end

      # Builder contains methods to build semantic AST nodes.
      # A convenient {Builder.build} method allows you to use these
      # methods within a block scope.
      #
      # see Builder.build
      module Builder
        def self.build(&block)
          raise ArgumentError, 'expecting block' unless block_given?

          builder = _builder_class.new
          builder.instance_eval(&block)
          builder.result
        end

        def self._builder_class
          Class.new do
            include Builder

            attr_reader :result

            def term(function, *arguments, **properties)
              @result = super
            end
          end
        end
        private_class_method :_builder_class

        def term(function, *arguments, **properties)
          SemanticTerm.new([function, *arguments], **properties)
        end

        def function(identifier, **properties)
          SemanticFunction.new([identifier], **properties)
        end

        def argument(param_or_term, **properties)
          cls = param_or_term.class
          if cls != SemanticParameter && cls != SemanticTerm
            raise ArgumentError, 'expected SemanticParameter or SemanticTerm'
          end

          SemanticArgument.new([param_or_term], **properties)
        end

        def parameter(prefix, value, **properties)
          SemanticParameter.new([prefix, value], **properties)
        end

        def identifier(*value_patterns, **properties)
          SemanticIdentifier.new(value_patterns, **properties)
        end

        def prefix(*prefix_patterns, **properties)
          SemanticPrefix.new(prefix_patterns, **properties)
        end

        def value(*value_patterns, **properties)
          SemanticValue.new(value_patterns, **properties)
        end

        def any(**properties)
          SemanticAny.new(**properties)
        end

        # rubocop:disable Style/PredicateName
        def is_nil(**properties)
          SemanticIsNil.new(**properties)
        end

        def has_namespace(**properties)
          SemanticHasNamespace.new(**properties)
        end

        def has_encoding(**properties)
          SemanticHasEncoding.new(**properties)
        end

        def function_of(*functions, **properties)
          SemanticFunctionOf.new(functions, **properties)
        end

        def return_type_of(*return_types, **properties)
          SemanticReturnTypeOf.new(return_types, **properties)
        end

        def namespace_of(*namespaces, **properties)
          SemanticNamespaceOf.new(namespaces, **properties)
        end

        def encoding_of(*encoding_types, **properties)
          SemanticEncodingOf.new(encoding_types, **properties)
        end

        def covalent_protein_modification_of(*mod_types, **properties)
          SemanticCovalentProteinModificationOf.new(mod_types, **properties)
        end

        def amino_acid_of(*amino_acids, **properties)
          SemanticAminoAcidOf.new(amino_acids, **properties)
        end

        def is_amino_acid_range_pattern(**properties)
          SemanticIsAminoAcidRange.new(**properties)
        end

        def is_sequence_position(**properties)
          SemanticIsSequencePosition.new(**properties)
        end

        def variadic_arguments(*params_or_terms, **properties)
          SemanticVariadicArguments.new(params_or_terms, **properties)
        end
      end

      # SemanticASTNode represents a node in the semantic tree structure.
      class SemanticASTNode < AST::Node
        def initialize(type, children = [], **properties)
          super(type, children, properties)
        end

        def terminal?
          false
        end

        protected

        def updated(_ = nil, children = nil, properties = nil)
          new_children   = children   || @children
          new_properties = properties || {}

          if @children == new_children && properties.nil?
            self
          else
            # Maybe change call?
            original_dup.send :initialize, new_children, new_properties
          end
        end

        def success(node, spec)
          [SemanticsResult.new(node, spec)]
        end

        def nil_node_warning(node, spec, expected)
          [SemanticsNilNodeWarning.new(node, spec, expected)]
        end

        def not_nil_node_warning(node, spec)
          [SemanticsNotNilNodeWarning.new(node, spec)]
        end

        def type_warning(node, spec, expected, actual)
          [SemanticsTypeWarning.new(node, spec, expected, actual)]
        end

        def argument_length_warning(node, spec, expected, actual)
          [SemanticsArgumentLengthWarning.new(node, spec, expected, actual)]
        end

        def missing_namespace_warning(node, spec)
          [SemanticsMissingNamespaceWarning.new(node, spec)]
        end

        def invalid_namespace(node, spec, expected)
          [SemanticsInvalidNamespaceWarning.new(node, spec, expected)]
        end

        def missing_encoding_warning(node, spec)
          [SemanticsMissingEncodingWarning.new(node, spec)]
        end

        def invalid_encoding_warning(node, spec, expected)
          [SemanticsInvalidEncodingWarning.new(node, spec, expected)]
        end

        def invalid_function_warning(node, spec, expected)
          [SemanticsInvalidFunctionWarning.new(node, spec, expected)]
        end

        def invalid_return_type_warning(node, spec, expected)
          [SemanticsInvalidReturnTypeWarning.new(node, spec, expected)]
        end

        def invalid_protein_modification_warning(node, spec, expected)
          [SemanticsInvalidProteinModificationWarning.new(node, spec, expected)]
        end

        def invalid_amino_acid_warning(node, spec, expected)
          [SemanticsInvalidAminoAcidWarning.new(node, spec, expected)]
        end

        def invalid_amino_acid_range_warning(node, spec)
          [SemanticsInvalidAminoAcidRangeWarning.new(node, spec)]
        end

        def invalid_sequence_position_warning(node, spec)
          [SemanticsInvalidSequencePositionWarning.new(node, spec)]
        end
      end

      # AST node for Term is a semantic AST.
      class SemanticTerm < SemanticASTNode
        def initialize(children = [], **properties)
          super(:term, children, properties)
        end

        def function
          children[0]
        end

        def variadic_arguments?
          children[1].type == :variadic_arguments
        end

        def arguments
          children[1..-1]
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Term) if parse_node.nil?
          return type_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Term,
            parse_node) if parse_node.type != type

          # Return success if semantic AST does not supply argument patterns.
          if arguments.empty? || variadic_arguments?
            success(parse_node, spec)
          # Or, check argument length.
          elsif arguments.length == parse_node.arguments.length
            success(parse_node, spec)
          else
            argument_length_warning(
              parse_node,
              spec,
              self,
              parse_node)
          end
        end
      end

      # AST node for Statement is a semantic AST.
      class SemanticStatement < SemanticASTNode
        def initialize(children = [], **properties)
          super(:statement, children, properties)
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Statement) if parse_node.nil?

          if parse_node.type == type
            success(parse_node, spec)
          else
            type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Statement,
              parse_node)
          end
        end
      end

      # AST node for Parameter is a semantic AST.
      class SemanticParameter < SemanticASTNode
        def initialize(children = [], **properties)
          super(:parameter, children, properties)
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Parameter) if parse_node.nil?

          if parse_node.type == type
            success(parse_node, spec)
          else
            type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Parameter,
              parse_node)
          end
        end
      end

      # AST node for Function is a semantic AST.
      class SemanticFunction < SemanticASTNode
        def initialize(children = [], **properties)
          super(:function, children, properties)
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Function) if parse_node.nil?

          if parse_node.type == type
            success(parse_node, spec)
          else
            type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Function,
              parse_node)
          end
        end
      end

      # AST node for Argument is a semantic AST.
      class SemanticArgument < SemanticASTNode
        def initialize(children = [], **properties)
          super(:argument, children, properties)
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Argument) if parse_node.nil?

          if parse_node.type == type
            success(parse_node, spec)
          else
            type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Argument,
              parse_node)
          end
        end
      end

      # AST node for VariadicArguments is a semantic AST.
      class SemanticVariadicArguments < SemanticASTNode
        def initialize(children = [], **properties)
          super(:variadic_arguments, children, properties)
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Argument) if parse_node.nil?

          if parse_node.type == BELParser::Parsers::AST::Argument.ast_type
            success(parse_node, spec)
          else
            type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Argument,
              parse_node)
          end
        end
      end

      # AST node for Prefix is a semantic AST.
      class SemanticPrefix < SemanticASTNode
        def initialize(children = [], **properties)
          super(:prefix, children, properties)
        end

        def terminal?
          true
        end

        def prefix_patterns
          children
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Prefix) if parse_node.nil?

          if parse_node.type != BELParser::Parsers::AST::Prefix.ast_type
            return type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Prefix,
              parse_node)
          end

          prefix_patterns.map do |pattern|
            pattern.match(parse_node, spec)
          end
        end
      end

      # AST node for Value is a semantic AST.
      class SemanticValue < SemanticASTNode
        def initialize(children = [], **properties)
          super(:value, children, properties)
        end

        def terminal?
          true
        end

        def value_patterns
          children
        end

        def match(parse_node, spec)
          return nil_node_warning(
            parse_node,
            spec,
            BELParser::Parsers::AST::Value) if parse_node.nil?

          if parse_node.type != BELParser::Parsers::AST::Value.ast_type
            return type_warning(
              parse_node,
              spec,
              BELParser::Parsers::AST::Value,
              parse_node)
          end

          value_patterns.map do |pattern|
            pattern.match(parse_node, spec)
          end
        end
      end

      # AST node for Nil is a semantic AST.
      class SemanticIsNil < SemanticASTNode
        def initialize(**properties)
          super(:is_nil, [], properties)
        end

        def terminal?
          true
        end

        def match(parse_node, spec)
          if parse_node.nil?
            success(parse_node, spec)
          else
            not_nil_node_warning(parse_node, spec)
          end
        end
      end

      # AST node for Identifier is a semantic AST.
      class SemanticIdentifier < SemanticASTNode
        def initialize(children = [], **properties)
          super(:identifier, children, properties)
        end

        def terminal?
          true
        end

        def value_patterns
          children
        end

        def match(identifier, spec)
          return nil_node_warning(
            identifier,
            spec,
            BELParser::Parsers::AST::Identifier) if identifier.nil?

          if identifier.type != BELParser::Parsers::AST::Identifier.ast_type
            return type_warning(
              identifier,
              spec,
              BELParser::Parsers::AST::Identifier,
              identifier)
          end

          value_patterns.map { |pattern| pattern.match(identifier, spec) }
        end
      end

      # AST node for Any is a semantic AST.
      class SemanticAny < SemanticASTNode
        def initialize(**properties)
          super(:any, [], properties)
        end

        def match(parse_node, spec)
          success(parse_node, spec)
        end
      end

      # AST node for HasNamespace is a semantic AST.
      class SemanticHasNamespace < SemanticASTNode
        def initialize(**properties)
          super(:has_namespace, [], properties)
        end

        def match(prefix, spec)
          if prefix.respond_to?(:namespace) && prefix.namespace
            success(prefix, spec)
          else
            missing_namespace_warning(prefix, spec)
          end
        end
      end

      # AST node for NamespaceOf is a semantic AST.
      class SemanticNamespaceOf < SemanticASTNode
        def initialize(namespaces, **properties)
          super(:namespace_of, namespaces, properties)
        end

        def namespaces
          children
        end

        def match(prefix_node, spec)
          unless prefix_node.respond_to?(:namespace) && prefix_node.namespace
            return invalid_namespace(prefix_node, spec, namespaces)
          end
          
          if namespaces.any? { |i| i == :* || i == input_namespace }
            success(prefix_node, spec)
          else
            invalid_namespace(prefix_node, spec, namespaces)
          end
        end
      end

      # AST node for HasEncoding is a semantic AST.
      class SemanticHasEncoding < SemanticASTNode
        def initialize(**properties)
          super(:has_encoding, [], properties)
        end

        def match(value_node, spec)
          if value_node.respond_to?(:encoding) && value_node.encoding
            success(value_node, spec)
          else
            missing_encoding_warning(value_node, spec)
          end
        end
      end

      # AST node for EncodingOf is a semantic AST.
      class SemanticEncodingOf < SemanticASTNode
        def initialize(encodings, **properties)
          super(:encoding_of, encodings, properties)
        end

        def match_encoding
          children
        end

        def match(value_node, spec)
          unless value_node.respond_to?(:encoding) && value_node.encoding
            return invalid_encoding_warning(value_node, spec, match_encoding)
          end

          input     = value_node.encoding
          match     = match_encoding
          enc_match = input.product(match).any? do |(value_enc, match_enc)|
            value_enc.subtype_of?(match_enc)
          end

          if enc_match
            success(value_node, spec)
          else
            invalid_encoding_warning(value_node, spec, match_encoding)
          end
        end
      end

      # AST node for FunctionOf is a semantic AST.
      class SemanticFunctionOf < SemanticASTNode
        def initialize(functions, **properties)
          super(:function_of, functions, properties)
        end

        def functions
          children
        end

        def match(identifier, spec)
          return success(identifier, spec) if functions.include?(:*)

          function = spec.function(identifier.string_literal.to_sym)
          if functions.include?(function)
            success(identifier, spec)
          else
            invalid_function_warning(identifier, spec, functions)
          end
        end
      end

      # AST node for ReturnTypeOf is a semantic AST.
      class SemanticReturnTypeOf < SemanticASTNode
        def initialize(return_types, **properties)
          super(:return_type_of, return_types, properties)
        end

        def return_types
          children
        end

        def match(identifier, spec)
          return success(identifier, spec) if return_types.include?(:*)

          fxret = spec.function(identifier.string_literal.to_sym).return_type
          if return_types.any? { |rt| fxret <= rt }
            success(identifier, spec)
          else
            invalid_return_type_warning(identifier, spec, return_types)
          end
        end
      end

      # AST node for CovalentProteinModificationOf is a semantic AST.
      class SemanticCovalentProteinModificationOf < SemanticASTNode
        def initialize(mod_types, **properties)
          properties[:hashed] = Hash[mod_types.map { |t| [t, true] }]
          super(:covalent_protein_modification_of, mod_types, properties)
        end

        def covalent_protein_modification_types
          children
        end

        def match(value_node, spec)
          string_literal_sym = value_node.children[0].string_literal.to_sym
          return success(value_node, spec) if @hashed[:*]

          if @hashed.key?(string_literal_sym)
            success(value_node, spec)
          else
            invalid_protein_modification_warning(
              value_node,
              spec,
              @hashed.keys)
          end
        end
      end

      # AST node for AminoAcidOf is a semantic AST.
      class SemanticAminoAcidOf < SemanticASTNode
        def initialize(amino_acids, **properties)
          properties[:hashed] = Hash[amino_acids.map { |t| [t, true] }]
          super(:amino_acid_of, amino_acids, properties)
        end

        def amino_acids
          children
        end

        def match(value_node, spec)
          string_literal_sym = value_node.children[0].string_literal.to_sym
          return success(value_node, spec) if @hashed[:*]

          if @hashed.key?(string_literal_sym)
            success(value_node, spec)
          else
            invalid_amino_acid_warning(value_node, spec, @hashed.keys)
          end
        end
      end

      # AST node for IsAminoAcidRange is a semantic AST.
      class SemanticIsAminoAcidRange < SemanticASTNode
        START_STOP         = /[1-9][0-9]*_[1-9][0-9]*/
        UNDETERMINED       = /[1?]_[?*]/
        UNKNOWN_START_STOP = '?'.freeze

        include BELParser::Quoting

        def initialize(**properties)
          super(:is_amino_acid_range, [], properties)
        end

        def match(value_node, spec)
          string_literal = unquote(value_node.children[0])
          case string_literal
          when START_STOP, UNDETERMINED, UNKNOWN_START_STOP
            success(value_node, spec)
          else
            invalid_amino_acid_range_warning(value_node, spec)
          end
        end
      end

      # AST node for IsSequencePosition is a semantic AST.
      class SemanticIsSequencePosition < SemanticASTNode
        include BELParser::Quoting

        def initialize(**properties)
          super(:is_sequence_position, [], properties)
        end

        def match(value_node, spec)
          string_literal = unquote(value_node.children[0].string_literal)
          integer_position =
            begin
              Integer(string_literal)
            rescue
              nil
            end
          if integer_position && integer_position > 0
            success(value_node, spec)
          else
            invalid_sequence_position_warning(value_node, spec)
          end
        end
      end
    end
  end
end
