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

describe 'when parsing set document statements' do
  subject(:parser) { parsers::BELScript::SetDocument }

  context 'that are well-formed Authors properties' do
    input = 'SET DOCUMENT Authors = Selventa'
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::Identifier)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Authors'),
          s(:identifier, 'Selventa'))
      )
    end
  end

  context 'that are well-formed ContactInfo properties' do
    rnd_str = random_string
    input = "SET DOCUMENT ContactInfo = #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::String)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'ContactInfo'),
          s(:string, unquote(rnd_str)))
      )
    end
  end

  context 'that are well-formed Copyright properties' do
    rnd_str = random_string
    input = "SET DOCUMENT Copyright = #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::String)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Copyright'),
          s(:string, unquote(rnd_str)))
      )
    end
  end

  context 'that are well-formed Description properties' do
    rnd_str = random_string
    input = "SET DOCUMENT Description = #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::String)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Description'),
          s(:string, unquote(rnd_str)))
      )
    end
  end

  context 'that are well-formed Licenses properties' do
    rnd_str = random_string
    input = "SET DOCUMENT Licenses = #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::String)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Licenses'),
          s(:string, unquote(rnd_str)))
      )
    end
  end

  context 'that are well-formed Name properties' do
    rnd_str = random_string
    input = "SET DOCUMENT Name = #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::String)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Name'),
          s(:string, unquote(rnd_str)))
      )
    end
  end

  context 'that are well-formed Version properties' do
    rnd_str = random_string
    input = "SET DOCUMENT Version = #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::String)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Version'),
          s(:string, unquote(rnd_str)))
      )
    end
  end

  context 'that are well-formed properties with lists' do
    rnd_str = random_string
    list = "{ #{rnd_str} }"
    input = "SET DOCUMENT Version = #{list}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(2)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)
      expect(output.second_child).to be_a(ast::List)
      expect(output.second_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Version'),
          s(:list,
            s(:list_item,
              s(:string, unquote(rnd_str))))
         )
      )
    end
  end

  context 'that are malformed properties without values' do
    input = 'SET DOCUMENT Version ='
    it "is incomplete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::DocumentProperty)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.num_children).to be(1)

      expect(output.first_child).to be_a(ast::Identifier)
      expect(output.first_child.complete).to be(true)

      expect(output).to eq(
        s(:document_property,
          s(:identifier, 'Version'))
      )
    end
  end
end
