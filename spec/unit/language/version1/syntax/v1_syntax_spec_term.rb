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

describe 'when parsing terms' do
  subject(:parser) { parsers::Expression::Term }

  context 'with well-formed terms composed of prefix-value argument' do
    input = 'fx(PREFIX:VALUE)'
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Term)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Function)

      expect(output).to eq(
        s(:term,
          s(:function,
            s(:identifier, 'fx')),
          s(:argument,
            s(:parameter,
              s(:prefix,
                s(:identifier, 'PREFIX')),
              s(:value,
                s(:identifier, 'VALUE')))))
      )
    end
  end

  context 'with well-formed terms composed of value argument' do
    input = 'fx(VALUE)'
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Term)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Function)

      expect(output).to eq(
        s(:term,
          s(:function,
            s(:identifier, 'fx')),
          s(:argument,
            s(:parameter,
              s(:value,
                s(:identifier, 'VALUE')))))
      )
    end
  end

  context 'with well-formed terms composed of term argument' do
    input = 'fx(fy(PREFIX:VALUE))'
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Term)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Function)

      expect(output).to eq(
        s(:term,
          s(:function,
            s(:identifier, 'fx')),
          s(:argument,
            s(:term,
              s(:function,
                s(:identifier, 'fy')),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, 'PREFIX')),
                  s(:value,
                    s(:identifier, 'VALUE')))))))
      )
    end
  end

  context 'with malformed terms composed of strings' do
    input = 'fx("foo)'
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Term)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Function)

      expect(output).to eq(
        s(:term,
          s(:function,
            s(:identifier, 'fx')))
      )
    end
  end

  context 'with malformed terms with missing parameter values' do
    input = 'fx(foo:)'
    it "is incomplete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::Term)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Function)

      expect(output).to eq(
        s(:term,
          s(:function,
            s(:identifier, 'fx')))
      )
    end
  end
end
