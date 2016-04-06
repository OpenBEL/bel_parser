$LOAD_PATH.unshift('lib')

require 'bel/language/version1'
require 'bel/language/semantic_ast'
require 'bel/language/version1/signatures/protein_abundance'
require 'bel/parsers/expression'

protein_term_ast = nil
BELParser::Parsers::Expression::Term.parse("p(HGNC:AKT1)\n") do |obj|
  protein_term_ast = obj
end

puts 'Input AST:'
puts protein_term_ast.inspect

puts 'Protein Abundance Semantic AST:'
puts BELParser::Language::Version1::Signatures::ProteinAbundance.semantic_ast.to_s(1)

puts 'Success'
puts BELParser::Language::Semantics
  .match(
    protein_term_ast,
    BELParser::Language::Version1::Signatures::ProteinAbundance.semantic_ast,
    BELParser::Language::Version1::Specification.new
  )
  .select(&:success?)
  .map { |x| x.semantic_node.class }

puts "\nFailure"
puts BELParser::Language::Semantics
  .match(
    protein_term_ast,
    BELParser::Language::Version1::Signatures::ProteinAbundance.semantic_ast,
    BELParser::Language::Version1::Specification.new
  )
  .select(&:failure?)
  .map { |x| x.semantic_node.class }
