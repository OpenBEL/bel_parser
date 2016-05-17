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

describe 'when parsing parameters' do
  subject(:parser) { parsers::Expression::Parameter }

  context 'with well-formed string parameters' do
    rnd_prefix = random_identifier
    rnd_value = random_string
    input = "#{rnd_prefix}:#{rnd_value}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Parameter)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Prefix)

      expect(output).to eq(
        s(:parameter,
          s(:prefix,
            s(:identifier, rnd_prefix)),
          s(:value,
            s(:string, unquote(rnd_value))))
      )
    end
  end

  context 'with well-formed identifier parameters' do
    rnd_prefix = random_identifier
    rnd_value = random_identifier
    input = "#{rnd_prefix}:#{rnd_value}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Parameter)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Prefix)

      expect(output).to eq(
        s(:parameter,
          s(:prefix,
            s(:identifier, rnd_prefix)),
          s(:value,
            s(:identifier, rnd_value)))
      )
    end
  end

  context 'with well-formed default values' do
    rnd_value = random_identifier
    input = "#{rnd_value}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Parameter)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Value)

      expect(output).to eq(
        s(:parameter,
          s(:value,
            s(:identifier, rnd_value)))
      )
    end
  end

  context 'with malformed values' do
    rnd_prefix = random_identifier
    input = "#{rnd_prefix}:"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Parameter)  # foo!
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Prefix)

      expect(output).to eq(
        s(:parameter,
          s(:prefix,
            s(:identifier, input)))
      )
    end
  end
end
