require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'
include AST::Sexp

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing functions' do
  subject(:parser) { parsers::Common::Function }

  it 'is a nil-parse for \'\'' do
    output = parse_ast(parser, '')
    expect(output).to be_nil
  end

  context 'when given random valid functions' do
    testfx = random_alpha
    it "is complete given #{testfx}" do
      output = parse_ast(parser, testfx)
      expect(output).to be_a(ast::Function)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Identifier)
      expect(output).to eq(
        s(:function,
          s(:identifier, testfx))
      )
    end
  end

  context 'when given invalid functions' do
    testfx = random_alpha + '_'
    it "is complete given #{testfx}" do
      output = parse_ast(parser, testfx)
      expect(output).to be_a(ast::Function)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Identifier)
      expect(output).to eq(
        s(:function,
          s(:identifier, testfx))
      )
    end
  end
end
