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

        def to_s(_)
          if @namespace
            prefix = "#{@namespace.keyword}:"
          else
            prefix = ''
          end
          %Q{#{prefix}#{quote_if_needed(@value)}}
        end
      end
    end
  end
end
