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
  subject(:parser) { parsers::Expression::SimpleStatement }

  context 'with well-formed terms composed of prefix-value argument' do
    sfx = 'fx'
    sprefix = 'PREFIX'
    svalue = 'VALUE'
    rel = 'increases'
    ofx = 'fy'
    oprefix = 'PREFIX'
    ovalue = 'VALUE'
    input = "#{sfx}(#{sprefix}:#{svalue}) #{rel} #{ofx}(#{oprefix}:#{ovalue})"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::SimpleStatement)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Statement)

      expect(output).to eq(
        s(:simple_statement,
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
                      s(:identifier, 'VALUE')))))), nil,
            s(:object,
              s(:term,
                s(:function,
                  s(:identifier, 'fy')),
                s(:argument,
                  s(:parameter,
                    s(:prefix,
                      s(:identifier, 'PREFIX')),
                    s(:value,
                      s(:identifier, 'VALUE')))))),
            s(:comment, nil)))
      )
    end
  end
end
