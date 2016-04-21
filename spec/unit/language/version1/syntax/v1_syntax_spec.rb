require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'parsing input that is' do
  context 'incomplete' do
    context 'for identifiers' do
      subject(:parser) { parsers::Common::Identifier }

      it 'works for \'\'' do
        output = parse_ast(parser, '')
        expect(output).to be_a(ast::Identifier)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end

      it 'works for newline' do
        output = parse_ast(parser, "\n")
        expect(output).to be_a(ast::Identifier)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end
    end

    context 'for strings' do
      subject(:parser) { parsers::Common::String }

      it 'works for \'\'' do
        output = parse_ast(parser, '')
        expect(output).to be_a(ast::String)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end

      it 'works for \'"\'' do
        output = parse_ast(parser, '"')
        expect(output).to be_a(ast::String)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end
    end

    context 'for comment lines' do
      subject(:parser) { parsers::Common::CommentLine }

      it 'works for \'\'' do
        output = parse_ast(parser, '')
        expect(output).to be_a(ast::CommentLine)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end
    end

    context 'for lists' do
      subject(:parser) { parsers::Common::List }

      it 'works for \'\'' do
        output = parse_ast(parser, '')
        expect(output).to be_a(ast::List)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(false)
      end

      it 'works for {}' do
        parser.parse('{ foo }') { |x| $stderr.puts x }
        # expect(output).to be_a(ast::List)
        # expect(output).to respond_to(:complete)
        # expect(output.complete).to be(false)
      end
    end
  end

  context 'complete' do
    context 'for identifiers' do
      subject(:parser) { parsers::Common::Identifier }
      teststr = random_identifier

      it "works for valid identifiers #{teststr}" do
        output = parse_ast(parser, teststr)
        expect(output).to be_a(ast::Identifier)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end

      teststr += "\n"
      it 'works for valid identifiers with trailing newlines' do
        output = parse_ast(parser, teststr)
        expect(output).to be_a(ast::Identifier)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end
    end

    context 'for strings' do
      subject(:parser) { parsers::Common::String }
      teststr = random_string
      nestedstr = '"abc\"def\"ghe"'

      it 'works for quoted empty strings ""' do
        output = parse_ast(parser, '""')
        expect(output).to be_a(ast::String)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end

      it "works for quoted strings #{teststr}" do
        output = parse_ast(parser, teststr)
        expect(output).to be_a(ast::String)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end

      it "works for quoted strings #{nestedstr}" do
        output = parse_ast(parser, nestedstr)
        expect(output).to be_a(ast::String)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end
    end

    context 'for blank lines' do
      subject(:parser) { parsers::Common::BlankLine }

      it 'works for \'\'' do
        output = parse_ast(parser, '')
        expect(output).to be_a(ast::BlankLine)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end

      it 'works for \'\n\'' do
        output = parse_ast(parser, "\n")
        expect(output).to be_a(ast::BlankLine)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end
    end

    context 'for comment lines' do
      subject(:parser) { parsers::Common::CommentLine }

      it 'works for single character input #' do
        output = parse_ast(parser, '#')
        expect(output).to be_a(ast::CommentLine)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end

      it 'works with leading spaces' do
        output = parse_ast(parser, '  #')
        expect(output).to be_a(ast::CommentLine)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end

      it 'works with typical input' do
        output = parse_ast(parser, '# Blah blah.')
        expect(output).to be_a(ast::CommentLine)
        expect(output).to respond_to(:complete)
        expect(output.complete).to be(true)
      end
    end
  end
end
