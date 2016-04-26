require_relative '../../../spec_helper'
require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

ast = BELParser::Parsers::AST
parsers = BELParser::Parsers

describe 'when parsing lists' do
  subject(:parser) { parsers::Common::List }

  it 'is incomplete for \'\'' do
    output = parse_ast(parser, '')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  it 'is incomplete for {' do
    output = parse_ast(parser, '{')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  it 'is complete for {}' do
    output = parse_ast(parser, '{}')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  it 'is complete for { foo }' do
    output = parse_ast(parser, '{ foo }')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  it 'is incomplete for { "foo, bar }' do
    output = parse_ast(parser, '{ "foo, bar }')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
    expect(output.first_child).to be_a(ast::ListItem)
    expect(output.first_child.first_child).to be_a(ast::String)
    expect(output.first_child.complete).to be(false)
    expect(output.first_child.first_child.complete).to be(false)
  end

  it 'is incomplete for { "foo }' do
    output = parse_ast(parser, '{ "foo }')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end

  it 'is complete for { "foo" }' do
    output = parse_ast(parser, '{ "foo" }')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(true)
  end

  it 'is incomplete for { "foo", "bar }' do
    output = parse_ast(parser, '{ "foo", "bar }')
    expect(output).to be_a(ast::List)
    expect(output).to respond_to(:complete)
    expect(output.complete).to be(false)
  end
end
