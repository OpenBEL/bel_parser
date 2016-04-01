require 'ast'
require_relative '../parsers/ast/node'

module BEL
  module Language
    module Semantics
      # Builder contains methods to build semantic AST nodes.
      # A convenient {Builder.build} method allows you to use these
      # methods within a block scope.
      #
      # see Builder.build
      module Builder
        def self.build(&block)
          raise ArgumentError, 'expecting block' unless block_given?

          builder = builder_class.new
          builder.instance_eval(&block)
          builder.result
        end

        def self._builder_class
          Class.new do
            include Builder

            attr_reader :result

            def term(function, arguments, **properties)
              @result = super
            end
          end
        end
        private_class_method :_builder_class

        def term(function, arguments, **properties)
          SemanticTerm.new([function, *arguments], **properties)
        end

        def function(identifier, **properties)
          SemanticFunction.new([identifier], **properties)
        end

        def argument(param_or_term, **properties)
          if param_or_term.class != SemanticParameter ||
             param_or_term.class != SemanticTerm
            raise ArgumentError, 'expected SemanticParameter or SemanticTerm'
          end

          SemanticArgument.new([parameter_or_term], **properties)
        end

        def parameter(prefix, value, **properties)
          SemanticParameter.new([prefix, value], **properties)
        end

        def identifier(*value_patterns, **properties)
          SemanticIdentifier.new(value_patterns, **properties)
        end

        def prefix(has_namespace, **properties)
          SemanticParameter.new([has_namespace], **properties)
        end

        def value(value_type, **properties)
          SemanticValue.new([value_type], **properties)
        end

        def value_type(*value_patterns, **properties)
          SemanticValueType.new(value_patterns, **properties)
        end

        def function_of(*functions, **properties)
          SemanticFunctionOf.new(functions, **properties)
        end

        # rubocop:disable Style/PredicateName
        def has_namespace(namespace_type, **properties)
          SemanticHasNamespace.new(namespace_type, **properties)
        end

        def has_encoding(encoding_type, **properties)
          SemanticHasEncoding.new(encoding_type, **properties)
        end
      end

      # AST node for Term is a semantic AST.
      class SemanticTerm < AST::Node
        def initialize(children = [], **properties)
          super(:term, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end

        def to_s
          super
        end
      end

      # AST node for Statement is a semantic AST.
      class SemanticStatement < AST::Node
        def initialize(children = [], **properties)
          super(:statement, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end
      end

      # AST node for Parameter is a semantic AST.
      class SemanticParameter < AST::Node
        def initialize(children = [], **properties)
          super(:parameter, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end
      end

      # AST node for Function is a semantic AST.
      class SemanticFunction < AST::Node
        def initialize(children = [], **properties)
          super(:function, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end
      end

      # AST node for Argument is a semantic AST.
      class SemanticArgument < AST::Node
        def initialize(children = [], **properties)
          super(:argument, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end
      end

      # AST node for Prefix is a semantic AST.
      class SemanticPrefix < AST::Node
        def initialize(children = [], **properties)
          super(:prefix, children, properties)
        end

        def match(parse_node)
          type == parse_node.type &&
            (properties.keys - parse_node.properties).empty?
        end
      end

      # AST node for Value is a semantic AST.
      class SemanticValue < AST::Node
        def initialize(children = [], **properties)
          super(:value, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end
      end

      # AST node for Identifier is a semantic AST.
      class SemanticIdentifier < AST::Node
        def initialize(children = [], **properties)
          super(:identifier, children, properties)
        end

        def match(parse_node)
          type == parse_node.type
        end
      end

      # AST node for HasNamespace is a semantic AST.
      class SemanticHasNamespace < AST::Node
        def initialize(namespace_type, **properties)
          super(:has_namespace, [namespace_type.to_sym], properties)
        end

        def match(parse_node)
          # TODO: Implement match.
        end
      end

      # AST node for HasEncoding is a semantic AST.
      class SemanticHasEncoding < AST::Node
        def initialize(encoding_type, **properties)
          super(:has_encoding, [encoding_type.to_sym], properties)
        end

        def match(parse_node)
          # TODO: Implement match.
        end
      end

      # AST node for FunctionOf is a semantic AST.
      class SemanticFunctionOf < AST::Node
        def initialize(functions, **properties)
          super(:function_of, functions.map(&:to_s).map(&:to_sym), properties)
        end

        def match(parse_node)
          parse_node_sym = parse_node.to_s.to_sym
          children.include?(parse_node_sym)
        end
      end

      # AST node for ValueType is a semantic AST.
      class SemanticValueType < AST::Node
        VALUE_TYPES = [
          BEL::Parsers::AST::Identifier,
          BEL::Parsers::AST::String
        ].freeze

        def initialize(children = [], **properties)
          super(:valueType, children, properties)
        end

        def match(parse_node)
          VALUE_TYPES.include?(parse_node.type)
        end
      end
    end
  end
end
