require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing strings' do
  subject(:parser) { parsers::Common::String }

  it 'is incomplete for \'\'' do
    output = parse_ast(parser, '')
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  it 'is incomplete for \'"\'' do
    output = parse_ast(parser, '"')
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  teststr = random_string
  nestedstr = '"abc\"def\"ghe"'

  it 'is complete for quoted empty strings ""' do
    output = parse_ast(parser, '""')
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  it "is complete for quoted strings #{teststr}" do
    output = parse_ast(parser, teststr)
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  it "is complete for quoted strings #{nestedstr}" do
    output = parse_ast(parser, nestedstr)
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end
end
