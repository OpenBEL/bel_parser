require_relative 'spec_helper'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

include BELParser::Parsers::Common
include BELParser::Parsers::Expression
include BELParser::Parsers::BELScript

describe BELParser::Parsers::Common::BlankLine, '#parse' do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(BELParser::Parsers::Common::BlankLine, "\t\t\t\t\t", s(:blank_line))
    assert_ast(BELParser::Parsers::Common::BlankLine, '          ', s(:blank_line))
    assert_ast(BELParser::Parsers::Common::BlankLine, "    \t    ", s(:blank_line))
    assert_ast(BELParser::Parsers::Common::BlankLine, '',           s(:blank_line))
  end
end

describe BELParser::Parsers::Common::CommentLine, '#parse' do
  include AST::Sexp
  let(:parser) { BELParser::Parsers::Common::CommentLine }

  it 'yields correct AST' do
    assert_ast(parser, "  #\tHi", s(:comment_line, "\tHi"))
    assert_ast(parser, '# Hi', s(:comment_line, ' Hi'))
    assert_ast(parser, '      #Hi', s(:comment_line, 'Hi'))
  end
end

describe BELParser::Parsers::Common::Identifier, '#parse' do
  include AST::Sexp
  let(:parser) { BELParser::Parsers::Common::Identifier }

  it 'yields correct AST' do
    assert_ast(parser, 'AKT1', s(:identifier, 'AKT1'))
    assert_ast(parser, 'AKT1_HUMAN', s(:identifier, 'AKT1_HUMAN'))
    assert_ast(parser, 'MAPK1_GAMMA', s(:identifier, 'MAPK1_GAMMA'))
  end
end

describe BELParser::Parsers::Common::String, '#parse' do
  include AST::Sexp
  let(:parser) { BELParser::Parsers::Common::String }

  it 'yields correct AST' do
    assert_ast(parser, '"cat-scratch disease"',
               s(:string, '"cat-scratch disease"'))
    assert_ast(parser, '"This is a \"quote\""',
               s(:string, '"This is a \"quote\""'))
  end
end

describe BELParser::Parsers::Common::List, '#parse' do
  include AST::Sexp
  let(:parser) { BELParser::Parsers::Common::List }

  it 'yields correct AST' do
    assert_ast(
      parser,
      '{"Adipose Tissue","white adipose"}',
      s(:list,
        s(:list_item,
          s(:string, '"Adipose Tissue"')),
        s(:list_item,
          s(:string, '"white adipose"')))
    )
  end

  it 'yields correct AST' do
    assert_ast(
      parser,
      '{"PubMed","Forensic Sci 1999 Jan 25 99(3) 197-208","10098258","","",""}',
      s(:list,
        s(:list_item,
          s(:string, '"PubMed"')),
        s(:list_item,
          s(:string, '"Forensic Sci 1999 Jan 25 99(3) 197-208"')),
        s(:list_item,
          s(:string, '"10098258"')),
        s(:list_item,
          s(:string, '""')),
        s(:list_item,
          s(:string, '""')),
        s(:list_item,
          s(:string, '""')))
    )
  end
end

describe BELParser::Parsers::Expression::Parameter, '#parse' do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::Expression::Parameter,
      'HGNC:AKT1',
      s(:parameter,
        s(:prefix,
          s(:identifier, 'HGNC')),
        s(:value,
          s(:identifier, 'AKT1')))
    )
    assert_ast(
      BELParser::Parsers::Expression::Parameter,
      'GOBP:"apoptotic process"',
      s(:parameter,
        s(:prefix,
          s(:identifier, 'GOBP')),
        s(:value,
          s(:string, '"apoptotic process"')))
    )
    assert_ast(
      BELParser::Parsers::Expression::Parameter,
      'meshpp: "cat-scratch disease"',
      s(:parameter,
        s(:prefix,
          s(:identifier, 'meshpp')),
        s(:value,
          s(:string, '"cat-scratch disease"')))
    )
    assert_ast(
      BELParser::Parsers::Expression::Parameter,
      '"free entity name"',
      s(:parameter,
        s(:prefix, nil),
        s(:value,
          s(:string, '"free entity name"')))
    )
  end
end

describe BELParser::Parsers::Expression::Term, '#parse' do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::Expression::Term,
      'p(HGNC:AKT1)',
      s(:term,
        s(:function,
          s(:identifier, 'p')),
        s(:argument,
          s(:parameter,
            s(:prefix,
              s(:identifier, 'HGNC')),
            s(:value,
              s(:identifier, 'AKT1')))))
    )
    assert_ast(
      BELParser::Parsers::Expression::Term,
      'tscript(p(HGNC:AKT1,pmod(P,S,317)))',
      s(:term,
        s(:function,
          s(:identifier, 'tscript')),
        s(:argument,
          s(:term,
            s(:function,
              s(:identifier, 'p')),
            s(:argument,
              s(:parameter,
                s(:prefix,
                  s(:identifier, 'HGNC')),
                s(:value,
                  s(:identifier, 'AKT1')))),
            s(:argument,
              s(:term,
                s(:function,
                  s(:identifier, 'pmod')),
                s(:argument,
                  s(:parameter,
                    s(:prefix, nil),
                    s(:value,
                      s(:identifier, 'P')))),
                s(:argument,
                  s(:parameter,
                    s(:prefix, nil),
                    s(:value,
                      s(:identifier, 'S')))),
                s(:argument,
                  s(:parameter,
                    s(:prefix, nil),
                    s(:value,
                      s(:identifier, '317')))))))))
    )
  end
end

describe BELParser::Parsers::Expression::Relationship, '#parse' do
  include AST::Sexp
  let(:parser) { BELParser::Parsers::Expression::Relationship }

  it 'yields correct AST' do
    # Ok, a koala, fish, and a robot walk into a bar. (Ha!)
    assert_ast(parser, '@(*O*)@',  s(:relationship, '@(*O*)@'))
    assert_ast(parser, "><(((('>", s(:relationship, "><(((('>"))
    assert_ast(parser, 'd[o_0]b',  s(:relationship, 'd[o_0]b'))
  end
end

describe ObservedTerm do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::Expression::ObservedTerm,
      'p(HGNC:AKT1)',
      s(:observed_term,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'p')),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, 'HGNC')),
                  s(:value,
                    s(:identifier, 'AKT1')))))),
          s(:relationship, nil),
          s(:object, nil),
          s(:comment, nil)))
    )
    assert_ast(
      BELParser::Parsers::Expression::ObservedTerm,
      'p(HGNC:AKT1) //observed in lung',
      s(:observed_term,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'p')),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, 'HGNC')),
                  s(:value,
                    s(:identifier, 'AKT1')))))),
          s(:relationship, nil),
          s(:object, nil),
          s(:comment, 'observed in lung')))
    )
    assert_ast(
      BELParser::Parsers::Expression::ObservedTerm,
      'kin(complex(SCOMP:"p85/p110 PI3Kinase Complex"))',
      s(:observed_term,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'kin')),
              s(:argument,
                s(:term,
                  s(:function,
                    s(:identifier, 'complex')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, 'SCOMP')),
                      s(:value,
                        s(:string, '"p85/p110 PI3Kinase Complex"')))))))),
          s(:relationship, nil),
          s(:object, nil),
          s(:comment, nil)))
    )
  end
end

describe BELParser::Parsers::Expression::SimpleStatement do
  include AST::Sexp

  xit 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::Expression::SimpleStatement,
      'p(SP:AKT1_HUMAN) ^(*(oo)*)^ bp(MESHPP:Apoptosis)',
      s(:simple_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'p')),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, 'SP')),
                  s(:value,
                    s(:identifier, 'AKT1_HUMAN')))))),
          s(:relationship, '^(*(oo)*)^'),
          s(:object,
            s(:term,
              s(:function,
                s(:identifier, 'bp')),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, 'MESHPP')),
                  s(:value,
                    s(:identifier, 'Apoptosis')))))),
          s(:comment, nil)))
    )
    assert_ast(
      BELParser::Parsers::Expression::SimpleStatement,
      'complex(p(SFAM:"RXR Family"),p(HGNC:PPARG)) directlyIncreases '\
      'tscript(p(HGNC:PPARG))//Comment on the end of the unverse.',
      s(:simple_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'complex')),
              s(:argument,
                s(:term,
                  s(:function,
                    s(:identifier, 'p')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, 'SFAM')),
                      s(:value,
                        s(:string, '"RXR Family"')))))),
              s(:argument,
                s(:term,
                  s(:function,
                    s(:identifier, 'p')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, 'HGNC')),
                      s(:value,
                        s(:identifier, 'PPARG')))))))),
          s(:relationship, 'directlyIncreases'),
          s(:object,
            s(:term,
              s(:function,
                s(:identifier, 'tscript')),
              s(:argument,
                s(:term,
                  s(:function,
                    s(:identifier, 'p')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, 'HGNC')),
                      s(:value,
                        s(:identifier, 'PPARG')))))))),
          s(:comment, 'Comment on the end of the unverse.')))
    )
  end
end

describe BELParser::Parsers::Expression::NestedStatement do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::Expression::NestedStatement,
      'a(A) => (b(B) -| c(C))',
      s(:nested_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'a')),
              s(:argument,
                s(:parameter,
                  s(:prefix, nil),
                  s(:value,
                    s(:identifier, 'A')))))),
          s(:relationship, '=>'),
          s(:object,
            s(:statement,
              s(:subject,
                s(:term,
                  s(:function,
                    s(:identifier, 'b')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix, nil),
                      s(:value,
                        s(:identifier, 'B')))))),
              s(:relationship, '-|'),
              s(:object,
                s(:object,
                  s(:term,
                    s(:function,
                      s(:identifier, 'c')),
                    s(:argument,
                      s(:parameter,
                        s(:prefix, nil),
                        s(:value,
                          s(:identifier, 'C')))))))))))
    )

    assert_ast(
      BELParser::Parsers::Expression::NestedStatement,
      'a(A) -> (b(B) => (c(C) :> d(D)))',
      s(:nested_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'a')),
              s(:argument,
                s(:parameter,
                  s(:prefix, nil),
                  s(:value,
                    s(:identifier, 'A')))))),
          s(:relationship, '->'),
          s(:object,
            s(:statement,
              s(:subject,
                s(:term,
                  s(:function,
                    s(:identifier, 'b')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix, nil),
                      s(:value,
                        s(:identifier, 'B')))))),
              s(:relationship, '=>'),
              s(:object,
                s(:statement,
                  s(:subject,
                    s(:term,
                      s(:function,
                        s(:identifier, 'c')),
                      s(:argument,
                        s(:parameter,
                          s(:prefix, nil),
                          s(:value,
                            s(:identifier, 'C')))))),
                  s(:relationship, ':>'),
                  s(:object,
                    s(:object,
                      s(:term,
                        s(:function,
                          s(:identifier, 'd')),
                        s(:argument,
                          s(:parameter,
                            s(:prefix, nil),
                            s(:value,
                              s(:identifier, 'D')))))))))))))
    )

    assert_ast(
      BELParser::Parsers::Expression::NestedStatement,
      'kin(complex(SCOMP:"p85/p110 PI3Kinase Complex")) increases '\
      '(cat(p(HGNC:PLAUR)) increases bp(GOBP:"cell migration"))',
      s(:nested_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function,
                s(:identifier, 'kin')),
              s(:argument,
                s(:term,
                  s(:function,
                    s(:identifier, 'complex')),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, 'SCOMP')),
                      s(:value,
                        s(:string, '"p85/p110 PI3Kinase Complex"')))))))),
          s(:relationship, 'increases'),
          s(:object,
            s(:statement,
              s(:subject,
                s(:term,
                  s(:function,
                    s(:identifier, 'cat')),
                  s(:argument,
                    s(:term,
                      s(:function,
                        s(:identifier, 'p')),
                      s(:argument,
                        s(:parameter,
                          s(:prefix,
                            s(:identifier, 'HGNC')),
                          s(:value,
                            s(:identifier, 'PLAUR')))))))),
              s(:relationship, 'increases'),
              s(:object,
                s(:object,
                  s(:term,
                    s(:function,
                      s(:identifier, 'bp')),
                    s(:argument,
                      s(:parameter,
                        s(:prefix,
                          s(:identifier, 'GOBP')),
                        s(:value,
                          s(:string, '"cell migration"')))))))))))
    )
  end
end

describe BELParser::Parsers::BELScript::Set do
  include AST::Sexp

  xit 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::BELScript::Set,
      'SET Species = 9606',
      s(:set,
        s(:name,
          s(:identifier, 'Species')),
        s(:value,
          s(:identifier, '9606')))
    )
    assert_ast(
      BELParser::Parsers::BELScript::Set,
      'Set disease = "cat-scratch disease"',
      s(:set,
        s(:name,
          s(:identifier, 'disease')),
        s(:value,
          s(:string, '"cat-scratch disease"')))
    )
    assert_ast(
      BELParser::Parsers::BELScript::Set,
      'set PROCESS = "Apoptosis"',
      s(:set,
        s(:name,
          s(:identifier, 'PROCESS')),
        s(:value,
          s(:string, '"Apoptosis"')))
    )
    assert_ast(
      BELParser::Parsers::BELScript::Set,
      'SET Cell = {"Monocytes","peripheral blood mononuclear cell"}',
      s(:set,
        s(:name,
          s(:identifier, 'Cell')),
        s(:value,
          s(:list,
            s(:list_item,
              s(:string, '"Monocytes"')),
            s(:list_item,
              s(:string, '"peripheral blood mononuclear cell"')))))
    )
  end
end

describe BELParser::Parsers::BELScript::Unset do
  include AST::Sexp

  xit 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::BELScript::Unset,
      'Unset Species',
      s(:unset,
        s(:name,
          s(:identifier, 'Species')))
    )
    assert_ast(
      BELParser::Parsers::BELScript::Unset,
      'Unset disease',
      s(:unset,
        s(:name,
          s(:identifier, 'disease')))
    )
    assert_ast(
      BELParser::Parsers::BELScript::Unset,
      'unset STATEMENT_GROUP',
      s(:unset,
        s(:name,
          s(:identifier, 'STATEMENT_GROUP')))
    )
  end
end

describe BELParser::Parsers::BELScript::DefineAnnotation do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::BELScript::DefineAnnotation,
      'Define Annotation Species As Url "http://resources/species.belanno"',
      s(:annotation_definition,
        s(:keyword,
          s(:identifier, 'Species')),
        s(:domain,
          s(:url,
            s(:string, '"http://resources/species.belanno"'))))
    )
    assert_ast(
      BELParser::Parsers::BELScript::DefineAnnotation,
      'DEFine ANNOtation Status as LiST { "Approved", "Rejected"}',
      s(:annotation_definition,
        s(:keyword,
          s(:identifier, 'Status')),
        s(:domain,
          s(:list,
            s(:list_item,
              s(:string, '"Approved"')),
            s(:list_item,
              s(:string, '"Rejected"')))))
    )
    assert_ast(
      BELParser::Parsers::BELScript::DefineAnnotation,
      'define annotation Identifier as pattern "[-+]?[0-9]+"',
      s(:annotation_definition,
        s(:keyword,
          s(:identifier, 'Identifier')),
        s(:domain,
          s(:pattern,
            s(:string, '"[-+]?[0-9]+"'))))
    )
  end
end

describe BELParser::Parsers::BELScript::DefineNamespace do
  include AST::Sexp

  it 'yields correct AST' do
    assert_ast(
      BELParser::Parsers::BELScript::DefineNamespace,
      'DEFINE NAMESPACE HGNC AS URL "http://resources/hgnc.belns"',
      s(:namespace_definition,
        s(:keyword,
          s(:identifier, 'HGNC')),
        s(:domain,
          s(:url,
            s(:string, '"http://resources/hgnc.belns"'))))
    )
    assert_ast(
      BELParser::Parsers::BELScript::DefineNamespace,
      'Define Namespace HGNC As Url "http://resources/hgnc.belns"',
      s(:namespace_definition,
        s(:keyword,
          s(:identifier, 'HGNC')),
        s(:domain,
          s(:url,
            s(:string, '"http://resources/hgnc.belns"'))))
    )
    assert_ast(
      BELParser::Parsers::BELScript::DefineNamespace,
      'define namespace HGNC as url "http://resources/hgnc.belns"',
      s(:namespace_definition,
        s(:keyword,
          s(:identifier, 'HGNC')),
        s(:domain,
          s(:url,
            s(:string, '"http://resources/hgnc.belns"'))))
    )
  end
end
# vim: ts=2 sw=2:
