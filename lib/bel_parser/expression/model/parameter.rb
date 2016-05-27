require 'bel_parser/quoting'
require 'bel_parser/parsers/ast/node'

module BELParser
  module Expression
    module Model

      class Parameter
        include BELParser::Quoting
        include Comparable

        attr_reader :namespace, :value, :encoding

        def initialize(namespace, value, encoding = nil)
          assert_namespace_type(namespace)
          assert_value_type(value)
          @namespace = namespace
          @value     = value
          @encoding  = encoding
        end

        def namespace=(namespace)
          assert_namespace_type(namespace)
          @namespace = namespace
        end

        def value=(value)
          assert_value_type(value)
          @value = value
        end

        def valid?
          return true if @namespace.nil?
          @namespace.include?(@value)
        end

        def invalid?
          !valid?
        end

        def <=>(other)
          namespace_compare = @namespace <=> other.namespace
          if namespace_compare == 0
            @value <=> other.value
          else
            namespace_compare
          end
        end

        def hash
          [@namespace, @value].hash
        end

        def ==(other)
          return false if other == nil
          @namespace == other.namespace && @value == other.value
        end
        alias_method :eql?, :'=='

        def to_s(_ = :short)
          if @namespace
            prefix = "#{@namespace.keyword}:"
          else
            prefix = ''
          end
          %Q{#{prefix}#{quote_if_needed(@value)}}
        end

        private

        def assert_namespace_type(namespace)
          unless namespace.nil? || namespace.is_a?(Namespace)
            msg = "namespace: expected nil or Namespace, actual #{namespace.class}"
            raise(ArgumentError, msg)
          end
        end

        def assert_value_type(value)
          unless value.is_a?(String)
            msg = "value: expected String, actual #{value.class}"
            raise(ArgumentError, msg)
          end
        end
      end

      module Converters
        def ast_to_parameter(ast, namespace_hash = {})
          return nil if ast.nil? ||
            !ast.is_a?(BELParser::Parsers::AST::Parameter)
          namespace = ast_to_namespace(ast.prefix, namespace_hash)
          namespace[ast.value.children[0].string_literal]
        end
      end
    end
  end
end
