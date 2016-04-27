require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing unset statements' do
  subject(:parser) { parsers::BELScript::Unset }

  context 'with a random identifier' do
    identifier = random_identifier
    input = "UNSET #{identifier}"
    it "is complete for #{input}" do
      output = parse_ast(parser, input)
      expect(output).to be_a(ast::Unset)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.name).to eq(identifier)

      expect(output).to eq(
        s(:unset,
          s(:identifier, identifier))
      )
    end
  end

  context 'without an identifier' do
    input = 'UNSET'
    it "is complete for #{input}" do
      output = parse_ast(parser, input)
      expect(output).to be_a(ast::Unset)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.name).to be(nil)

      expect(output).to eq(
        s(:unset,
          s(:identifier, nil))
      )
    end
  end

  context 'without completing the keyword' do
    input = 'UNSE'
    it "is incomplete for #{input}" do
      output = parse_ast(parser, input)
      expect(output).to be_a(ast::Unset)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.name).to be(nil)

      expect(output).to eq(
        s(:unset,
          s(:identifier, nil))
      )
    end
  end
end
