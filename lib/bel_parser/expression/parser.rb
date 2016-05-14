require_relative '../ast_generator'
require_relative '../language'
require_relative '../parsers/common'
require_relative '../parsers/expression'
require_relative '../resource'
require_relative 'filter'
require_relative 'model'

module BELParser
  module Expression

    def self.parse(
      input,
      spec       = BELParser::Language.latest_supported_specification,
      namespaces = {})

      parser = Parser.new(input, Expression.filter, spec, namespaces)
      parser.parse
    end

    def self.parse_parameters(
      input,
      spec       = BELParser::Language.latest_supported_specification,
      namespaces = {})

      parser = Parser.new(input, Expression.parameter_filter, spec, namespaces)
      parser.parse
    end

    def self.parse_terms(
      input,
      spec       = BELParser::Language.latest_supported_specification,
      namespaces = {})

      parser = Parser.new(input, Expression.term_filter, spec, namespaces)
      parser.parse
    end

    def self.parse_statements(
      input,
      spec       = BELParser::Language.latest_supported_specification,
      namespaces = {})

      parser = Parser.new(input, Expression.statement_filter, spec, namespaces)
      parser.parse
    end

    # Parser for BEL expressions that return common objects.
    class Parser
      include BELParser::Expression::Model::Converters
      include BELParser::Parsers::AST

      def initialize(
        input,
        filter     = Expression.filter,
        spec       = BELParser::Language.latest_supported_specification,
        namespaces = {})

        @input      = input
        @filter     = filter
        @spec       = spec
        @namespaces = namespaces
      end

      def parse
        case @input
        when ::String # conflicts with ...AST::String
          results = parse_string(@input, @filter)
          return nil if results.nil?
          convert_ast(
            @spec,
            @namespaces,
            results.first)
        when Array
          convert_multiple(
            parse_array(@input, @filter),
            @spec,
            @namespaces)
        when IO, StringIO
          convert_stream(
            parse_io(@input, @filter),
            @spec,
            @namespaces)
        else
          raise ArgumentError,
            %(expected "input" to be one of String, Array, IO: #{@input.class})
        end
      end

      private

      def convert_ast(spec, namespaces, ast)
        case ast
        when Parameter
          ast_to_parameter(ast, namespaces)
        when Term
          ast_to_term(ast, spec, namespaces)
        when Statement, ObservedTerm, SimpleStatement, NestedStatement
          ast_to_statement(ast, spec, namespaces)
        else
          nil
        end
      end

      def convert_multiple(asts, spec, namespaces)
        mult = method(:convert_ast).to_proc.curry[spec][namespaces]
        asts.lazy.map do |ast|
          if ast.respond_to?(:each)
            ast.map(&mult)
          else
            convert_ast(spec, namespaces, ast)
          end
        end
      end

      def convert_stream(asts, spec, namespaces)
        mult = method(:convert_ast).to_proc.curry[spec][namespaces]
        asts.lazy.flat_map do |ast|
          if ast.respond_to?(:each)
            ast.map(&mult)
          else
            convert_ast(spec, namespaces, ast)
          end
        end
      end

      def parse_string(string, filter)
        enum = filter.each(
          BELParser::ASTGenerator.new(StringIO.new(string)))
        num, line, results = enum.first
        if block_given?
          yield results
          nil
        else
          results
        end
      end

      def parse_array(array, filter)
        if block_given?
          array.each do |expression|
            yield parse_string(expression.to_s, filter)
          end
          nil
        else
          array.map do |expression|
            parse_string(expression.to_s, filter)
          end
        end
      end

      def parse_io(io, filter)
        if block_given?
          enum = filter.each(BELParser::ASTGenerator.new(io))
          enum.each do |(num, line, results)|
            yield results
          end
          nil
        else
          enum_for(:parse_io, io, filter)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BELParser::Expression.parse($stdin).each do |obj|
    puts "  #{obj.class.name.split('::')[-1]}: #{obj}"
  end
end
