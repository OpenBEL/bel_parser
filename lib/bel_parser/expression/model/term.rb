require 'bel_parser/quoting'

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

      module Converters
        include BELParser::Quoting

        def ast_to_term(ast, spec, namespaces = {})
          return nil if ast.nil? ||
            !ast.is_a?(BELParser::Parsers::AST::Term)
          spec    ||= BELParser::Language.latest_supported_specification
          convert   = method(:convert_argument).to_proc.curry[spec][namespaces]

          Term.new(
            convert_function(ast.function, spec),
            ast.arguments.map(&convert))
        end

        def convert_function(ast, spec)
          func      = ast.identifier.string_literal
          spec_func = spec.function(func.to_sym)

          unless spec_func
            raise(
              ArgumentError,
              %(ast has invalid function "#{func}" for BEL #{spec.version}))
          end
          spec_func
        end

        def convert_argument(spec, namespaces, argument)
          child = argument.child
          case child
          when BELParser::Parsers::AST::Parameter
            ast_to_parameter(child, namespaces)
          when BELParser::Parsers::AST::Term
            ast_to_term(child, spec, namespaces)
          else
            nil
          end
        end
      end
    end
  end
end

