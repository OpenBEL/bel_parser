require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'parsing' do
  context 'incomplete' do
    context 'identifiers' do
      subject(:parser) { parsers::Common::Identifier }

      it 'works for empty strings' do
        output = parse_ast(parser, '')
        expect(output).to be_a(ast::Identifier)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end
    end
  end

  context 'complete' do
    context 'identifiers' do
      subject(:parser) { parsers::Common::Identifier }

      it 'works for valid identifiers' do
        output = parse_ast(parser, random_identifier)
        expect(output).to be_a(ast::Identifier)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end
    end
  end
end
