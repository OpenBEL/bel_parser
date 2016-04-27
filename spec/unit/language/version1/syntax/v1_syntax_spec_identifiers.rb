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
    expect(output.children?).to be(true)
    expect(output.first_child).to be_a(String)
    expect(output).to eq(
      s(:identifier, '')
    )
  end

  it 'is incomplete for newline' do
    output = parse_ast(parser, "\n")
    expect(output).to be_a(ast::Identifier)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
    expect(output.children?).to be(true)
    expect(output.first_child).to be_a(String)
    expect(output).to eq(
      s(:identifier, '')
    )
  end

  context 'when given random identifiers' do
    teststr = random_identifier
    it "is complete given random identifier #{teststr}" do
      output = parse_ast(parser, teststr)
      expect(output).to be_a(ast::Identifier)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(String)
      expect(output).to eq(
        s(:identifier, teststr)
      )
    end
  end

  context 'when given random identifiers with trailing newlines' do
    teststr = random_identifier
    it 'is complete for valid identifiers with trailing newlines' do
      output = parse_ast(parser, teststr + "\n")
      expect(output).to be_a(ast::Identifier)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(String)
      expect(output).to eq(
        s(:identifier, teststr)
      )
    end
  end
end
