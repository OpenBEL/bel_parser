require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing identifiers' do
  subject(:parser) { parsers::Common::Identifier }

  it 'is incomplete for \'\'' do
    output = parse_ast(parser, '')
    expect(output).to be_a(ast::Identifier)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  it 'is incomplete for newline' do
    output = parse_ast(parser, "\n")
    expect(output).to be_a(ast::Identifier)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  teststr = random_identifier

  it "is complete for valid identifiers #{teststr}" do
    output = parse_ast(parser, teststr)
    expect(output).to be_a(ast::Identifier)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  teststr += "\n"
  it 'is complete for valid identifiers with trailing newlines' do
    output = parse_ast(parser, teststr)
    expect(output).to be_a(ast::Identifier)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end
end
