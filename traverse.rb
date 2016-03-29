require './lib/bel/ast_generator'
require './lib/bel/ast_validator'
require './lib/bel/language/version10'
require './lib/bel/language/syntax/bel_expression/incomplete_node'
require './lib/bel/language/syntax/bel_expression/invalid_term_function'

# Parse to an enumerator of AST.
ast_enum = BEL::ASTGenerator.new.each($stdin)

# Map to validated AST.
version10 = BEL::Language::Version10::Version10Specification.new
validator = BEL::ASTValidator.new(
  observers: [
    # BEL::Language::Syntax::BELExpression::IncompleteNode.new,
    BEL::Language::Syntax::BELExpression::InvalidTermFunction.new(version10)
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
