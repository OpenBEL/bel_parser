require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/expression'
require_relative '../language'
require_relative '../language/expression_validator'
require_relative 'model'

module BELParser
  module Expression
    # Parser for BEL Expression.
    class Validator
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression

      TYPES = [
        :parameter,
        :term,
        :simple_statement,
        :observed_term,
        :nested_statement
      ]

      def initialize(specification, namespaces, uri_reader, url_reader)
        @spec      = specification
        @validator = BELParser::Language::ExpressionValidator.new(
          @spec, namespaces, uri_reader, url_reader)
      end

      def each(io)
        if block_given?
          filter = BELParser::ASTFilter.new(
            BELParser::ASTGenerator.new(io),
            *TYPES)
          filter.each do |(num, line, results)|
            results.each do |ast|
              yield [num, line, ast, @validator.validate(ast)]
            end
          end
        else
          enum_for(:each, io)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  unless ARGV.first
    program = File.basename($PROGRAM_NAME)
    $stderr.puts <<-USAGE.gsub(/ {6}/, '')
      usage: #{program} [BEL specification version] [PREFIX=URI]...
    USAGE
    exit 1
  end

  namespaces =
    Hash[
      ARGV[1..-1]
      .map do |ns|
        keyword, identifier = ns.split('=')
        [keyword, BELParser::Expression::Model::Namespace.new(keyword, identifier, nil)]
      end
    ]

  BELParser::Expression::Validator
    .new(
      BELParser::Language.specification(ARGV.first),
      namespaces,
      BELParser::Resource.default_uri_reader,
      BELParser::Resource.default_url_reader)
    .each($stdin) do |(line_number, line, ast, result)|
      puts "#{line_number}: #{line}"
      puts "AST Type:  #{ast.type}"
      puts result
    end
end
