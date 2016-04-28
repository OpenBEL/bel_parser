require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/expression'
require_relative '../language'
require_relative '../language/expression_validator'

module BELParser
  module Expression
    # Parser for BEL Expression.
    class Validator
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression

      FILTER = BELParser::ASTFilter.new(
        :parameter,
        :term,
        :observed_term,
        :simple_statement,
        :nested_statement)

      def initialize(specification_version, namespaces, resource_reader)
        @spec      = BELParser::Language.specification(specification_version)
        @validator = BELParser::Language::ExpressionValidator.new(
          @spec, namespaces, resource_reader)
      end

      def each(io)
        if block_given?
          filtered_ast = FILTER.each(BELParser::ASTGenerator.new.each(io))
          filtered_ast.each do |(line_number, line, ast_results)|
            ast_results.each do |ast|
              yield [line_number, line, ast, @validator.validate(ast)]
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

  require 'bel_parser/resource/resource_file_reader'

  resource_reader = BELParser::Resource::ResourceFileReader.new
  namespaces      =
    Hash[
      ARGV[1..-1]
      .map do |ns|
        prefix, identifier = ns.split('=')
        [prefix, resource_reader.retrieve_resource(identifier)]
      end
    ]
  BELParser::Expression::Validator
    .new(ARGV.first, namespaces, resource_reader)
    .each($stdin) do |(line_number, line, ast, results)|
      results.select { |res| res.is_a? BELParser::Language::Syntax::SyntaxError }
      puts "#{line_number}: #{line}"
      puts "  AST Type: #{ast.type}"
      puts results
        .map { |r| "#{r}\n" }
        .join
        .each_line
        .map { |l| "  #{l}" }
        .join
    end
end
