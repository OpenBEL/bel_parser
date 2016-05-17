require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'
require 'bel_parser/quoting'
include AST::Sexp
include BELParser::Quoting

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing comment lines' do
  subject(:parser) { parsers::Expression::Comment }

  context 'with well-formed identifier input' do
    rnd_id = random_identifier
    input = "// #{rnd_id}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Comment)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(String)

      expect(output).to eq(
        s(:comment, rnd_id)
      )
    end
  end

  context 'with well-formed string input' do
    rnd_str = random_string
    input = "// #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Comment)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(String)

      expect(output).to eq(
        s(:comment, rnd_str)
      )
    end
  end
end
