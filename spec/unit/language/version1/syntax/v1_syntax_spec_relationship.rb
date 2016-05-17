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

describe 'when parsing relationships' do
  subject(:parser) { parsers::Expression::Relationship }

  context 'with well-formed relationships' do
    rnd_rel = random_alpha
    it "is complete for #{rnd_rel}" do
      output = parse_ast_no_nl(parser, rnd_rel)
      expect(output).to be_a(ast::Relationship)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(String)

      expect(output).to eq(
        s(:relationship, rnd_rel)
      )
    end
  end

  context 'with malformed input' do
    input = "0#{random_alpha}"
    it "is a nil-parse #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_nil
    end
  end
end
