require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing blank lines' do
  subject(:parser) { parsers::Common::BlankLine }

  it 'is complete for \'\'' do
    output = parse_ast(parser, '')
    expect(output).to be_a(ast::BlankLine)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  it 'is complete for \'\n\'' do
    output = parse_ast(parser, "\n")
    expect(output).to be_a(ast::BlankLine)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end
end
