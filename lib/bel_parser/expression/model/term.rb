module BELParser
  module Expression
    module Model
      class Term
        include Comparable

        attr_accessor :function, :arguments

        def initialize(function, *arguments)
          unless function && function.is_a?(BELParser::Language::Function)
            raise(
              ArgumentError,
              %(function: expected Function, actual #{function.class}))
          end
          @function  = function
          @arguments = (arguments ||= []).flatten
        end

        def <<(item)
          @arguments << item
        end

        def valid?
          # TODO Use expression validator.
        end

        def hash
          [@function, @arguments].hash
        end

        def ==(other)
          return false if other == nil
          @function == other.function && @arguments == other.arguments
        end
        alias :eql? :'=='

        def to_s(form = :short)
          args = [@arguments].flatten.map { |arg| arg.to_s(form) }.join(',')
          case form
          when :short
            "#{@function.short}(#{args})"
          when :long
            "#{@function.long}(#{args})"
          else
            nil
          end
        end
      end
    end
  end
end

