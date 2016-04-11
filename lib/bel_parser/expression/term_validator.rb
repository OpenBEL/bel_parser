require_relative '../ast_filter'
require_relative '../ast_generator'
require_relative '../parsers/expression'
require_relative '../language'
require_relative '../language/expression_validator'

module BELParser
  module Expression
    # Parser for BEL Expression.
    class TermValidator
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression

      FILTER = BELParser::ASTFilter.new(:term)

      def initialize(specification_version, namespaces)
        @spec      = BELParser::Language.specification(specification_version)
        @validator = BELParser::Language::ExpressionValidator.new(@spec, namespaces)
      end

      def each(io)
        if block_given?
          filtered_ast = FILTER.each(BELParser::ASTGenerator.new.each(io))
          filtered_ast.each do |results|
            term = results.last.first
            yield @validator.validate(term)
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
  namespaces = Hash[ARGV[1..-1].map { |ns| ns.split('=') }]
  BELParser::Expression::TermValidator.new(ARGV.first, namespaces).each($stdin) do |res|
    res.each do |res|
      puts "  #{res}"
    end
  end
end
