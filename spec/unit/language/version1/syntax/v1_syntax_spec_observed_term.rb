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

describe 'when parsing terms' do
  subject(:parser) { parsers::Expression::ObservedTerm }

  context 'with well-formed observed terms' do
    input = 'fx(PREFIX:VALUE)'
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::ObservedTerm)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Statement)

      expect(output).to eq(
        s(:observed_term,
          s(:statement,
            s(:subject,
              s(:term,
                s(:function,
                  s(:identifier, 'fx')),
                s(:argument,
                  s(:parameter,
                    s(:prefix,
                      s(:identifier, 'PREFIX')),
                    s(:value,
                      s(:identifier, 'VALUE')))))),
            s(:relationship, nil),
            s(:object, nil),
            s(:comment, nil)))
      )
    end
  end

  context 'with malformed observed terms' do
    input = 'fx(PREFIX:"VALUE)'
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
