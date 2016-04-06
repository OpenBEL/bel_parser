require './lib/bel/ast_generator'
require './lib/bel/ast_validator'
require './lib/bel/language/version1'
require './lib/bel/language/syntax/expression/incomplete_node'
require './lib/bel/language/syntax/expression/invalid_term_function'

# Parse to an enumerator of AST.
ast_enum = BELParser::ASTGenerator.new.each($stdin)

# Map to validated AST.
version1 = BELParser::Language::Version1::Specification.new
validator = BELParser::ASTValidator.new(
  observers: [
    # BELParser::Language::Syntax::Expression::IncompleteNode.new,
    BELParser::Language::Syntax::Expression::InvalidTermFunction.new(version1)
  ]
)
validator.each(ast_enum) do |(line_number, line, node, results)|
  puts "#{line_number}: #{line}"
  puts '  node:'
  puts node.to_s(2)

  next unless results
  results.each do |res|
    puts "  result: #{res}"
  end
end
