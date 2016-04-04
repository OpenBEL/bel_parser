require 'ast'
require_relative '../parsers/ast/node'
require 'pry'

module BEL
  module Language
    # Semantics capture BEL version-independent semantics for terms and
    # statements.
    module Semantics
      # rubocop:disable Metrics/MethodLength
      def self.match(input_ast, semantic_ast, spec, match_results = [])
        res = semantic_ast.match(input_ast, spec)
        match_results << res
        if res.success? && !semantic_ast.terminal?
          semantic_ast
            .children
            .zip(input_ast.children)
            .each do |semantic_child, input_child|
              match(input_child, semantic_child, spec, match_results)
            end
        end
        match_results
      end

      # MatchResult holds the results of an input AST to semantic AST match.
      class MatchResult
        attr_reader :input_node, :semantic_node

        def initialize(success, input_node, semantic_node)
          @success       = success
          @input_node    = input_node
          @semantic_node = semantic_node
        end

        def success?
          @success
        end

        def failure?
          !@success
        end

        def to_s
          msg
        end
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

        def prefix(has_namespace, **properties)
          SemanticPrefix.new([has_namespace], **properties)
        end

        def value(value_type, **properties)
          SemanticValue.new([value_type], **properties)
        end

        def value_type(*value_patterns, **properties)
          SemanticValueType.new(value_patterns, **properties)
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

        def covalent_modification_of(*covalent_mod_types, **properties)
          SemanticCovalentModificationOf.new(covalent_mod_types, **properties)
        end

        def amino_acid_of(*amino_acids, **properties)
          SemanticAminoAcidOf.new(amino_acids, **properties)
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

        def success(node)
          MatchResult.new(true, node, self)
        end

        def failure(node)
          MatchResult.new(false, node, self)
        end
      end

      # AST node for Term is a semantic AST.
      class SemanticTerm < SemanticASTNode
        def initialize(children = [], **properties)
          super(:term, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for Statement is a semantic AST.
      class SemanticStatement < SemanticASTNode
        def initialize(children = [], **properties)
          super(:statement, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for Parameter is a semantic AST.
      class SemanticParameter < SemanticASTNode
        def initialize(children = [], **properties)
          super(:parameter, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for Function is a semantic AST.
      class SemanticFunction < SemanticASTNode
        def initialize(children = [], **properties)
          super(:function, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for Argument is a semantic AST.
      class SemanticArgument < SemanticASTNode
        def initialize(children = [], **properties)
          super(:argument, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for Prefix is a semantic AST.
      class SemanticPrefix < SemanticASTNode
        def initialize(children = [], **properties)
          super(:prefix, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for Value is a semantic AST.
      class SemanticValue < SemanticASTNode
        def initialize(children = [], **properties)
          super(:value, children, properties)
        end

        def match(parse_node, _)
          type == parse_node.type ? success(parse_node) : failure(parse_node)
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

        def match(parse_node, _)
          parse_node.nil? ? success(parse_node) : failure(parse_node)
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
          return failure(identifier) if type != identifier.type

          value_patterns
            .map { |pattern| pattern.match(identifier, spec) }
            .find(&:failure?) || success(identifier)
        end
      end

      # AST node for HasNamespace is a semantic AST.
      class SemanticHasNamespace < SemanticASTNode
        def initialize(**properties)
          super(:has_namespace, [], properties)
        end

        def match(identifier, _)
          if identifier.respond_to?(:namespace)
            success(identifier)
          else
            failure(identifier)
          end
        end
      end

      # AST node for NamespaceOf is a semantic AST.
      class SemanticNamespaceOf < SemanticASTNode
        def initialize(namespaces, **properties)
          super(:namespace_of, namespaces, properties)
        end

        def match(identifier, _)
          return failure(identifier) unless identifier.respond_to?(:namespace)
          input_namespace = identifier.namespace
          return failure(identifier) if input_namespace.nil?

          namespace_set = children
          if namespace_set.any? { |i| i == :* || i == input_namespace }
            success(identifier)
          else
            failure(identifier)
          end
        end
      end

      # AST node for HasEncoding is a semantic AST.
      class SemanticHasEncoding < SemanticASTNode
        def initialize(**properties)
          super(:has_encoding, [], properties)
        end

        def match(value_type, _)
          if value_type.respond_to?(:encoding)
            success(value_type)
          else
            failure(value_type)
          end
        end
      end

      # AST node for EncodingOf is a semantic AST.
      class SemanticEncodingOf < SemanticASTNode
        def initialize(encodings, **properties)
          super(:encoding_of, encodings, properties)
        end

        def match(value_type, _)
          return failure(value_type) unless value_type.respond_to?(:encoding)
          input_encoding = value_type.encoding
          return failure(value_type) if input_encoding.nil?

          encoding_set = children
          if encoding_set.any? { |i| i == :* || i == input_encoding }
            success(value_type)
          else
            failure(value_type)
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
          return success(identifier) if functions.include?(:*)

          function = spec.function(identifier.children[0].to_sym)
          if functions.include?(function)
            success(identifier)
          else
            failure(identifier)
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
          return success(identifier) if return_types.include?(:*)

          fx_return = spec.function(identifier.children[0].to_sym).return_type
          if return_types.any? { |rt| fx_return <= rt }
            success(identifier)
          else
            failure(identifier)
          end
        end
      end

      # AST node for ValueType is a semantic AST.
      class SemanticValueType < SemanticASTNode
        TYPES = [
          BEL::Parsers::AST::Identifier.ast_type,
          BEL::Parsers::AST::String.ast_type
        ].freeze

        def initialize(children = [], **properties)
          super(:valueType, children, properties)
        end

        def terminal?
          true
        end

        def value_patterns
          children
        end

        def match(value_type, spec)
          return failure(value_type) unless TYPES.include?(value_type.type)

          value_patterns
            .map { |pattern| pattern.match(value_type, spec) }
            .find(&:failure?) || success(value_type)
        end
      end

      # AST node for CovalentModificationOf is a semantic AST.
      class SemanticCovalentModificationOf < SemanticASTNode
        def initialize(covalent_mod_types, **properties)
          properties[:hashed] = Hash[covalent_mod_types.map { |t| [t, true] }]
          super(:covalent_modification_of, covalent_mod_types, properties)
        end

        def covalent_mod_types
          children
        end

        def match(value_type, _)
          string_literal_sym = value_type.children[0].to_sym
          return success(value_type) if @hashed[:*]

          if @hashed.key?(string_literal_sym)
            success(value_type)
          else
            failure(value_type)
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

        def match(value_type, _)
          string_literal_sym = value_type.children[0].to_sym
          return success(value_type) if @hashed[:*]

          if @hashed.key?(string_literal_sym)
            success(value_type)
          else
            failure(value_type)
          end
        end
      end
    end
  end
end
