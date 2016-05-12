require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'
require 'bel_parser/language/quoting'
include AST::Sexp
include BELParser::Quoting

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing define namespace statements' do
  subject(:parser) { parsers::BELScript::DefineNamespace }

  context 'with string values' do
    rnd_id = random_identifier
    rnd_str = random_string
    input = "DEFINE NAMESPACE #{rnd_id} AS URL #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::NamespaceDefinition)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Domain)

      expect(output).to eq(
        s(:namespace_definition,
          s(:domain,
            s(:url,
              s(:string, unquote(rnd_str)))))
      )
    end
  end

  context 'with unterminated string values' do
    rnd_id1 = random_identifier
    rnd_id2 = random_identifier
    input = "DEFINE NAMESPACE #{rnd_id1} AS URL \"#{rnd_id2}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::NamespaceDefinition)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Domain)

      expect(output).to eq(
        s(:namespace_definition,
          s(:domain,
            s(:url,
              s(:string, unquote(rnd_id2)))))
      )
    end
  end
end
