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

describe 'when parsing define annotation statements' do
  subject(:parser) { parsers::BELScript::DefineAnnotation }

  context 'with list values' do
    rnd_id = random_identifier
    rnd_str = random_string
    value = "{ #{rnd_str} }"
    input = "DEFINE ANNOTATION #{rnd_id} AS LIST #{value}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::AnnotationDefinition)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Domain)

      expect(output).to eq(
        s(:annotation_definition,
          s(:domain,
            s(:list,
              s(:list_item,
                s(:string, unquote(rnd_str))))))
      )
    end
  end

  context 'with incomplete list values' do
    rnd_id = random_identifier
    rnd_str = random_string
    value = "{ #{rnd_str}"
    input = "DEFINE ANNOTATION #{rnd_id} AS LIST #{value}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::AnnotationDefinition)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(false)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Domain)

      expect(output).to eq(
        s(:annotation_definition,
          s(:domain,
            s(:list,
              s(:list_item,
                s(:string, unquote(rnd_str))))))
      )
    end
  end

  context 'with pattern values' do
    rnd_id = random_identifier
    rnd_str = random_string
    input = "DEFINE ANNOTATION #{rnd_id} AS PATTERN #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::AnnotationDefinition)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Domain)

      expect(output).to eq(
        s(:annotation_definition,
          s(:domain,
            s(:pattern,
              s(:string, unquote(rnd_str)))))
      )
    end
  end

  context 'with url values' do
    rnd_id = random_identifier
    rnd_str = random_string
    input = "DEFINE ANNOTATION #{rnd_id} AS URL #{rnd_str}"
    it "is complete for #{input}" do
      output = parse_ast_no_nl(parser, input)
      expect(output).to be_a(ast::AnnotationDefinition)
      expect(output).to respond_to(:complete)
      expect(output.complete).to be(true)
      expect(output.children?).to be(true)
      expect(output.first_child).to be_a(ast::Domain)

      expect(output).to eq(
        s(:annotation_definition,
          s(:domain,
            s(:url,
              s(:string, unquote(rnd_str)))))
      )
    end
  end
end
