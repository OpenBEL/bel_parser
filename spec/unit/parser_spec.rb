require_relative 'spec_helper'
require 'bel/parsers/common'
require 'bel/parsers/bel_expression'
require 'bel/parsers/bel_script'

include BEL::Parsers::Common
include BEL::Parsers::BELExpression
include BEL::Parsers::BELScript

describe BEL::Parsers::Common::Identifier, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(BEL::Parsers::Common::Identifier, "AKT1", s(:identifier, "AKT1"))
    assert_ast(BEL::Parsers::Common::Identifier, "AKT1_HUMAN", s(:identifier, "AKT1_HUMAN"))
    assert_ast(BEL::Parsers::Common::Identifier, "MAPK1_GAMMA", s(:identifier, "MAPK1_GAMMA"))
  end
end

describe BEL::Parsers::Common::String, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(BEL::Parsers::Common::String, '"cat-scratch disease"',  s(:string, '"cat-scratch disease"'))
    assert_ast(BEL::Parsers::Common::String, '"This is a \"quote\""',  s(:string, '"This is a \"quote\""'))
  end
end

describe BEL::Parsers::Common::List, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::Common::List,
      '{"Adipose Tissue","white adipose"}',
      s(:list,
        s(:list_item,
          s(:string, %Q{"Adipose Tissue"})),
        s(:list_item,
          s(:string, %Q{"white adipose"})))
    )
  end

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::Common::List,
      '{"PubMed","Forensic Sci Int 1999 Jan 25 99(3) 197-208","10098258","","",""}',
      s(:list,
				s(:list_item,
					s(:string, "\"PubMed\"")),
				s(:list_item,
					s(:string, "\"Forensic Sci Int 1999 Jan 25 99(3) 197-208\"")),
				s(:list_item,
					s(:string, "\"10098258\"")),
				s(:list_item,
					s(:string, "\"\"")),
				s(:list_item,
					s(:string, "\"\"")),
				s(:list_item,
					s(:string, "\"\"")))
    )
  end
end

describe BEL::Parsers::BELExpression::Parameter, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELExpression::Parameter,
      "HGNC:AKT1",
      s(:parameter,
        s(:prefix,
          s(:identifier, "HGNC")),
        s(:value,
          s(:identifier, "AKT1")))
    )
    assert_ast(
      BEL::Parsers::BELExpression::Parameter,
      %Q{GOBP:"apoptotic process"},
      s(:parameter,
        s(:prefix,
          s(:identifier, "GOBP")),
        s(:value,
          s(:string, '"apoptotic process"')))
    )
    assert_ast(
      BEL::Parsers::BELExpression::Parameter,
      %Q{meshpp: "cat-scratch disease"},
      s(:parameter,
        s(:prefix,
          s(:identifier, "meshpp")),
        s(:value,
          s(:string, '"cat-scratch disease"')))
    )
    assert_ast(
      BEL::Parsers::BELExpression::Parameter,
      %Q{"free entity name"},
      s(:parameter,
        s(:prefix, nil),
        s(:value,
          s(:string, '"free entity name"')))
    )
  end
end

describe BEL::Parsers::BELExpression::Term, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELExpression::Term,
      %Q{p(HGNC:AKT1)},
      s(:term,
        s(:function, "p"),
        s(:argument,
          s(:parameter,
            s(:prefix,
              s(:identifier, "HGNC")),
            s(:value,
              s(:identifier, "AKT1")))))
    )
    assert_ast(
      BEL::Parsers::BELExpression::Term,
      %Q{tscript(p(HGNC:AKT1,pmod(P,S,317)))},
      s(:term,
        s(:function, "tscript"),
        s(:argument,
          s(:term,
            s(:function, "p"),
            s(:argument,
              s(:parameter,
                s(:prefix,
                  s(:identifier, "HGNC")),
                s(:value,
                  s(:identifier, "AKT1")))),
            s(:argument,
              s(:term,
                s(:function, "pmod"),
                s(:argument,
                  s(:parameter,
                    s(:prefix, nil),
                    s(:value,
                      s(:identifier, "P")))),
                s(:argument,
                  s(:parameter,
                    s(:prefix, nil),
                    s(:value,
                      s(:identifier, "S")))),
                s(:argument,
                  s(:parameter,
                    s(:prefix, nil),
                    s(:value,
                      s(:identifier, "317")))))))))
    )
  end
end

describe BEL::Parsers::BELExpression::Relationship, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    # Ok, a koala, fish, and a robot walk into a bar.
    assert_ast(BEL::Parsers::BELExpression::Relationship, "@(*O*)@",  s(:relationship, "@(*O*)@"))
    assert_ast(BEL::Parsers::BELExpression::Relationship, "><(((('>", s(:relationship, "><(((('>"))
    assert_ast(BEL::Parsers::BELExpression::Relationship, "d[o_0]b",  s(:relationship, "d[o_0]b"))
  end
end

describe StatementObservedTerm do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELExpression::StatementObservedTerm,
      %Q{p(HGNC:AKT1)},
      s(:observed_term,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "p"),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, "HGNC")),
                  s(:value,
                    s(:identifier, "AKT1")))))),
          s(:relationship, nil),
          s(:object, nil),
          s(:comment, nil)))
    )
    assert_ast(
      BEL::Parsers::BELExpression::StatementObservedTerm,
      %Q{p(HGNC:AKT1) //observed in lung},
      s(:observed_term,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "p"),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, "HGNC")),
                  s(:value,
                    s(:identifier, "AKT1")))))),
          s(:relationship, nil),
          s(:object, nil),
          s(:comment, "observed in lung")))
    )
    assert_ast(
      BEL::Parsers::BELExpression::StatementObservedTerm,
      %Q{kin(complex(SCOMP:"p85/p110 PI3Kinase Complex"))},
      s(:observed_term,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "kin"),
              s(:argument,
                s(:term,
                  s(:function, "complex"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, "SCOMP")),
                      s(:value,
                        s(:string, %Q{"p85/p110 PI3Kinase Complex"})))))))),
          s(:relationship, nil),
          s(:object, nil),
          s(:comment, nil)))
    )
  end
end

describe BEL::Parsers::BELExpression::StatementSimple do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELExpression::StatementSimple,
      %Q{p(SP:AKT1_HUMAN) ^(*(oo)*)^ bp(MESHPP:Apoptosis)},
			s(:statement_simple,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "p"),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, "SP")),
                  s(:value,
                    s(:identifier, "AKT1_HUMAN")))))),
          s(:relationship, "^(*(oo)*)^"),
          s(:object,
            s(:term,
              s(:function, "bp"),
              s(:argument,
                s(:parameter,
                  s(:prefix,
                    s(:identifier, "MESHPP")),
                  s(:value,
                    s(:identifier, "Apoptosis")))))),
          s(:comment, nil)))
    )
    assert_ast(
      BEL::Parsers::BELExpression::StatementSimple,
      %Q{complex(p(SFAM:"RXR Family"),p(HGNC:PPARG)) directlyIncreases tscript(p(HGNC:PPARG))//Comment on the end of the unverse.},
			s(:statement_simple,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "complex"),
              s(:argument,
                s(:term,
                  s(:function, "p"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, "SFAM")),
                      s(:value,
                        s(:string, %Q{"RXR Family"})))))),
              s(:argument,
                s(:term,
                  s(:function, "p"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, "HGNC")),
                      s(:value,
                        s(:identifier, "PPARG")))))))),
          s(:relationship, "directlyIncreases"),
          s(:object,
            s(:term,
              s(:function, "tscript"),
              s(:argument,
                s(:term,
                  s(:function, "p"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, "HGNC")),
                      s(:value,
                        s(:identifier, "PPARG")))))))),
          s(:comment, "Comment on the end of the unverse.")))
    )
  end
end

describe BEL::Parsers::BELExpression::StatementNested do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELExpression::StatementNested,
      'a(A) => (b(B) -| c(C))',
			s(:nested_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "a"),
              s(:argument,
                s(:parameter,
                  s(:prefix, nil),
                  s(:value,
                    s(:identifier, "A")))))),
          s(:relationship, "=>"),
          s(:object,
            s(:statement,
              s(:subject,
                s(:term,
                  s(:function, "b"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix, nil),
                      s(:value,
                        s(:identifier, "B")))))),
              s(:relationship, "-|"),
              s(:object,
                s(:object,
                  s(:term,
                    s(:function, "c"),
                    s(:argument,
                      s(:parameter,
                        s(:prefix, nil),
                        s(:value,
                          s(:identifier, "C")))))))))))
		)


    assert_ast(
      BEL::Parsers::BELExpression::StatementNested,
      'a(A) -> (b(B) => (c(C) :> d(D)))',
			s(:nested_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "a"),
              s(:argument,
                s(:parameter,
                  s(:prefix, nil),
                  s(:value,
                    s(:identifier, "A")))))),
          s(:relationship, "->"),
          s(:object,
            s(:statement,
              s(:subject,
                s(:term,
                  s(:function, "b"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix, nil),
                      s(:value,
                        s(:identifier, "B")))))),
              s(:relationship, "=>"),
              s(:object,
                s(:statement,
                  s(:subject,
                    s(:term,
                      s(:function, "c"),
                      s(:argument,
                        s(:parameter,
                          s(:prefix, nil),
                          s(:value,
                            s(:identifier, "C")))))),
                  s(:relationship, ":>"),
                  s(:object,
                    s(:object,
                      s(:term,
                        s(:function, "d"),
                        s(:argument,
                          s(:parameter,
                            s(:prefix, nil),
                            s(:value,
                              s(:identifier, "D")))))))))))))
    )

    assert_ast(
      BEL::Parsers::BELExpression::StatementNested,
      'kin(complex(SCOMP:"p85/p110 PI3Kinase Complex")) increases (cat(p(HGNC:PLAUR)) increases bp(GOBP:"cell migration"))',
			s(:nested_statement,
        s(:statement,
          s(:subject,
            s(:term,
              s(:function, "kin"),
              s(:argument,
                s(:term,
                  s(:function, "complex"),
                  s(:argument,
                    s(:parameter,
                      s(:prefix,
                        s(:identifier, "SCOMP")),
                      s(:value,
                        s(:string, "\"p85/p110 PI3Kinase Complex\"")))))))),
          s(:relationship, "increases"),
          s(:object,
            s(:statement,
              s(:subject,
                s(:term,
                  s(:function, "cat"),
                  s(:argument,
                    s(:term,
                      s(:function, "p"),
                      s(:argument,
                        s(:parameter,
                          s(:prefix,
                            s(:identifier, "HGNC")),
                          s(:value,
                            s(:identifier, "PLAUR")))))))),
              s(:relationship, "increases"),
              s(:object,
                s(:object,
                  s(:term,
                    s(:function, "bp"),
                    s(:argument,
                      s(:parameter,
                        s(:prefix,
                          s(:identifier, "GOBP")),
                        s(:value,
                          s(:string, "\"cell migration\"")))))))))))
		)
  end
end

describe BEL::Parsers::BELScript::Set do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELScript::Set,
      %Q{SET Species = 9606},
			s(:set,
        s(:name,
          s(:identifier, "Species")),
        s(:value,
          s(:identifier, "9606")))
    )
    assert_ast(
      BEL::Parsers::BELScript::Set,
      %Q{Set disease = "cat-scratch disease"},
			s(:set,
        s(:name,
          s(:identifier, "disease")),
        s(:value,
          s(:string, "\"cat-scratch disease\"")))
    )
    assert_ast(
      BEL::Parsers::BELScript::Set,
      %Q{set PROCESS = "Apoptosis"},
			s(:set,
        s(:name,
          s(:identifier, "PROCESS")),
        s(:value,
          s(:string, "\"Apoptosis\"")))
    )
    assert_ast(
      BEL::Parsers::BELScript::Set,
      %Q{SET Cell = {"Monocytes","peripheral blood mononuclear cell"}},
			s(:set,
        s(:name,
          s(:identifier, "Cell")),
        s(:value,
          s(:list,
            s(:list_item,
              s(:string, "\"Monocytes\"")),
            s(:list_item,
              s(:string, "\"peripheral blood mononuclear cell\"")))))
    )
  end
end

describe BEL::Parsers::BELScript::Unset do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELScript::Unset,
      %Q{Unset Species},
      s(:unset,
        s(:name,  "Species"))
    )
    assert_ast(
      BEL::Parsers::BELScript::Unset,
      %Q{Unset disease},
      s(:unset,
        s(:name,  "disease"))
    )
    assert_ast(
      BEL::Parsers::BELScript::Unset,
      %Q{unset STATEMENT_GROUP},
      s(:unset,
        s(:name, "STATEMENT_GROUP"))
    )
  end
end

describe BEL::Parsers::BELScript::DefineAnnotation do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELScript::DefineAnnotation,
      %Q{Define Annotation Species As Url "http://resources/species.belanno"},
      s(:define_annotation,
        s(:keyword,
          s(:identifier, "Species")),
        s(:domain,
          s(:url,
            s(:string, %Q{"http://resources/species.belanno"}))))
    )
    assert_ast(
      BEL::Parsers::BELScript::DefineAnnotation,
      %Q{DEFine ANNOtation Status as LiST { "Approved", "Rejected"}},
      s(:define_annotation,
        s(:keyword,
          s(:identifier, "Status")),
				s(:domain,
				 s(:list,
					 s(:list_item,
						 s(:string, "\"Approved\"")),
					 s(:list_item,
						 s(:string, "\"Rejected\"")))))
    )
    assert_ast(
      BEL::Parsers::BELScript::DefineAnnotation,
      %Q{define annotation Identifier as pattern "[-+]?[0-9]+"},
			s(:define_annotation,
			 s(:keyword,
				 s(:identifier, "Identifier")),
			 s(:domain,
				 s(:pattern,
					 s(:string, "\"[-+]?[0-9]+\""))))
    )
  end
end

describe BEL::Parsers::BELScript::DefineNamespace do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BEL::Parsers::BELScript::DefineNamespace,
      %Q{DEFINE NAMESPACE HGNC AS URL "http://resources/hgnc.belns"},
      s(:define_namespace,
        s(:keyword, "HGNC"),
        s(:url, "http://resources/hgnc.belns"))
    )
    assert_ast(
      BEL::Parsers::BELScript::DefineNamespace,
      %Q{Define Namespace HGNC As Url "http://resources/hgnc.belns"},
      s(:define_namespace,
        s(:keyword, "HGNC"),
        s(:url, "http://resources/hgnc.belns"))
    )
    assert_ast(
      BEL::Parsers::BELScript::DefineNamespace,
      %Q{define namespace HGNC as url "http://resources/hgnc.belns"},
      s(:define_namespace,
        s(:keyword, "HGNC"),
        s(:url, "http://resources/hgnc.belns"))
    )
  end
end
# vim: ts=2 sw=2:
