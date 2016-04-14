require_relative 'semantics_match'
require_relative 'quoting'
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

        def prefix(has_namespace, **properties)
          SemanticPrefix.new([has_namespace], **properties)
        end

        def value(value_type, **properties)
          SemanticValue.new([value_type], **properties)
        end

        def value_type(*value_patterns, **properties)
          SemanticValueType.new(value_patterns, **properties)
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

        def covalent_modification_of(*covalent_mod_types, **properties)
          SemanticCovalentModificationOf.new(covalent_mod_types, **properties)
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

        def success(node)
          [SemanticMatch.new(true, node, self)]
        end

        def failure(node)
          [SemanticMatch.new(false, node, self)]
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

        def match(parse_node, _)
          return failure(nil) if parse_node.nil?
          return failure(parse_node) unless parse_node.type == type

          # Return success if semantic AST does not supply argument patterns.
          if arguments.empty? || variadic_arguments?
            success(parse_node)
          else
            # Otherwise, check argument length.
            if arguments.length == parse_node.arguments.length
              success(parse_node)
            else
              failure(parse_node)
            end
          end
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
          return failure(nil) if parse_node.nil?
          type == parse_node.type ? success(parse_node) : failure(parse_node)
        end
      end

      # AST node for VariadicArguments is a semantic AST.
      class SemanticVariadicArguments < SemanticASTNode
        def initialize(children = [], **properties)
          super(:variadic_arguments, children, properties)
        end

        def match(parse_node, _)
          if parse_node.type == BELParser::Parsers::AST::Argument.ast_type
            success(parse_node)
          else
            failure(parse_node)
          end
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
          parse_node.nil? ? success(parse_node) : failure(nil)
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
          return failure(nil) if identifier.nil?
          return failure(identifier) if type != identifier.type

          value_results  = match_value_patterns(identifier, spec)
          failure_result = value_results.flatten.find(&:failure?)

          if failure_result
            [failure(identifier), failure_result]
          else
            value_results.unshift(success(identifier))
          end
        end

        private

        def match_value_patterns(identifier, spec)
          value_patterns.map { |pattern| pattern.match(identifier, spec) }
        end
      end

      # AST node for Any is a semantic AST.
      class SemanticAny < SemanticASTNode
        def initialize(**properties)
          super(:any, [], properties)
        end

        def match(parse_node, _)
          success(parse_node)
        end
      end

      # AST node for HasNamespace is a semantic AST.
      class SemanticHasNamespace < SemanticASTNode
        def initialize(**properties)
          super(:has_namespace, [], properties)
        end

        def match(identifier, _)
          # FIXME: Implement :namespace property assignment to AST.
          return success(identifier)
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
          # FIXME: Implement :namespace property assignment to AST.
          return success(identifier)
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
          # FIXME: Implement :encoding property assignment to AST.
          return success(value_type)
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
          # FIXME: Implement :encoding property assignment to AST.
          return success(value_type)
          encoding_set = children
          return success(value_type) if encoding_set.include?(:*)

          return failure(value_type) unless value_type.respond_to?(:encoding)

          input_encoding = value_type.encoding
          return failure(value_type) if input_encoding.nil?

          if encoding_set.include?(input_encoding)
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
          BELParser::Parsers::AST::Identifier.ast_type,
          BELParser::Parsers::AST::String.ast_type
        ].freeze

        def initialize(children = [], **properties)
          super(:value_type, children, properties)
        end

        def terminal?
          true
        end

        def value_patterns
          children
        end

        def match(value_type, spec)
          return failure(value_type) unless TYPES.include?(value_type.type)

          value_results = value_patterns.map do |pattern|
            pattern.match(value_type, spec)
          end

          failure_result = value_results.flatten.find(&:failure?)

          if failure_result
            [failure(value_type), failure_result]
          else
            value_results.unshift(success(value_type))
          end
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

      # AST node for IsAminoAcidRange is a semantic AST.
      class SemanticIsAminoAcidRange < SemanticASTNode
        START_STOP         = /[1-9][0-9]*_[1-9][0-9]*/
        UNDETERMINED       = /[1?]_[?*]/
        UNKNOWN_START_STOP = '?'.freeze

        include BELParser::Quoting

        def initialize(**properties)
          super(:is_amino_acid_range, [], properties)
        end

        def match(value_type, _)
          string_literal = unquote(value_type.children[0])
          case string_literal
          when START_STOP, UNDETERMINED, UNKNOWN_START_STOP
            success(value_type)
          else
            failure(value_type)
          end
        end
      end

      # AST node for IsSequencePosition is a semantic AST.
      class SemanticIsSequencePosition < SemanticASTNode
        include BELParser::Quoting

        def initialize(**properties)
          super(:is_sequence_position, [], properties)
        end

        def match(value_type, _)
          string_literal = unquote(value_type.string_literal)
          integer_position = Integer(string_literal) rescue nil
          if integer_position && integer_position > 0
            success(value_type)
          else
            failure(value_type)
          end
        end
      end
    end
  end
end
