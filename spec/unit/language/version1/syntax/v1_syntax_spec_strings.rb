require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'
require 'bel_parser/parsers/bel_script'
require 'bel_parser/language/quoting'
include AST::Sexp
include BELParser::Quoting

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing strings' do
  subject(:parser) { parsers::Common::String }

  it 'is a nil-parse for \'\'' do
    output = parse_ast(parser, '')
    expect(output).to be_nil
  end

  it 'is incomplete for \'"f\'' do
    output = parse_ast(parser, '"f')
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
    expect(output.children?).to be(true)
    expect(output).to eq(
      s(:string, "f\n")
    )
  end

  it 'is incomplete for \'"f \'' do
    output = parse_ast(parser, '"f ')
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
    expect(output.children?).to be(true)
    expect(output).to eq(
      s(:string, "f \n")
    )
  end

  it 'is complete for quoted empty strings ""' do
    output = parse_ast(parser, '""')
    expect(output).to be_a(ast::String)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
    expect(output.children?).to be(true)
    expect(output).to eq(
      s(:string, '')
    )
  end

  context 'when given random strings' do
    teststr = random_string
    it "is complete for quoted strings #{teststr}" do
      output = parse_ast(parser, teststr)
      expect(output).to be_a(ast::String)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output).to eq(
        s(:string, unquote(teststr))
      )
    end
  end

  context 'when given random nested strings' do
    nestedstr = '"abc\"#{random_string}\"ghe"'
    it "is complete for quoted strings #{nestedstr}" do
      output = parse_ast(parser, nestedstr)
      expect(output).to be_a(ast::String)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output).to eq(
        s(:string, unquote(nestedstr))
      )
    end
  end

  context 'when given random strings with spaces' do
    teststr = "#{random_string} #{random_string}"
    it "is complete for #{teststr}" do
      output = parse_ast(parser, teststr)
      expect(output).to be_a(ast::String)
    end
  end
end
