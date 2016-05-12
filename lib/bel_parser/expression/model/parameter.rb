require 'bel_parser/quoting'

module BELParser
  module Expression
    module Model

      class Parameter
        include BELParser::Quoting
        include Comparable

        attr_accessor :namespace, :value

        def initialize(namespace, value)
          raise(ArgumentError, 'value is nil') unless value
          unless namespace.nil? || namespace.is_a?(Namespace)
            raise(
              ArgumentError,
              "namespace: expected nil or Namespace, actual #{namespace.class}")
          end
          @namespace = namespace
          @value     = value
        end

        def encoding
          nsv = @namespace[@value]
          return nil unless nsv
          nsv.first.encodings
        end

        def valid?
          return false unless @value
          return true unless @namespace
          !@namespace[@value].nil?
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
      end

      module Converters
        include BELParser::Quoting

        def ast_to_parameter(ast, namespace_hash = {})
          return nil if ast.nil? ||
            !ast.is_a?(BELParser::Parsers::AST::Parameter)
          prefix, value = ast.children
          namespace =
            if prefix.identifier
              keyword = prefix.identifier.string_literal
              namespace_hash[keyword]
            else
              nil
            end
          Parameter.new(
            namespace,
            unquote(value.children[0].string_literal))
        end
      end
    end
  end
end
