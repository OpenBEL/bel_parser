require_relative 'spec_helper'
require 'bel/parsers/identifier'
require 'bel/parsers/string'
require 'bel/parsers/bel_parameter'
require 'bel/parsers/bel_term'
require 'bel/parsers/bel_statement_observed_term'
require 'bel/parsers/set'
require 'bel/parsers/unset'
require 'bel/parsers/define_annotation'
require 'bel/parsers/define_namespace'

describe Identifier, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(Identifier, "AKT1", s(:identifier, "AKT1"))
    assert_ast(Identifier, "AKT1_HUMAN", s(:identifier, "AKT1_HUMAN"))
    assert_ast(Identifier, "MAPK1_GAMMA", s(:identifier, "MAPK1_GAMMA"))
  end
end

describe BEL::Parser::String, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(BEL::Parser::String, '"cat-scratch disease"',  s(:string, '"cat-scratch disease"'))
    assert_ast(BEL::Parser::String, '"This is a \"quote\""',  s(:string, '"This is a \"quote\""'))
  end
end

describe BelParameter, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BelParameter,
      "HGNC:AKT1",
      s(:bel_parameter,
        s(:prefix, "HGNC"),
        s(:value, "AKT1"))
    )
    assert_ast(
      BelParameter,
      %Q{GOBP:"apoptotic process"},
      s(:bel_parameter,
        s(:prefix, "GOBP"),
        s(:value, "apoptotic process"))
    )
    assert_ast(
      BelParameter,
      %Q{meshpp: "cat-scratch disease"},
      s(:bel_parameter,
        s(:prefix, "meshpp"),
        s(:value, "cat-scratch disease"))
    )
    assert_ast(
      BelParameter,
      %Q{"free entity name"},
      s(:bel_parameter,
        s(:prefix, nil),
        s(:value, "free entity name"))
    )
  end
end

describe BelTerm, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BelTerm,
      %Q{p(HGNC:AKT1)},
      s(:term,
        s(:function, :p),
        s(:argument,
          s(:prefix, "HGNC"),
          s(:value, "AKT1")))
    )
    assert_ast(
      BelTerm,
      %Q{tscript(p(HGNC:AKT1,pmod(P,S,317)))},
      s(:term,
        s(:function, :tscript),
        s(:argument,
          s(:term,
            s(:function, :p),
            s(:argument,
              s(:prefix, "HGNC"),
              s(:value, "AKT1")),
            s(:argument,
              s(:term,
                s(:function, :pmod),
                s(:argument,
                  s(:prefix, nil),
                  s(:value, "P")),
                s(:argument,
                  s(:prefix, nil),
                  s(:value, "S")),
                s(:argument,
                  s(:prefix, nil),
                  s(:value, "317")))))))
    )
  end
end

describe BelStatementObservedTerm do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      BelStatementObservedTerm,
      %Q{p(HGNC:AKT1)},
      s(:statement,
        s(:subject,
          s(:term,
            s(:function, :p),
            s(:argument,
              s(:prefix, "HGNC"),
              s(:value, "AKT1")))),
        s(:relationship, nil),
        s(:object, nil),
        s(:comment, nil))
    )
    assert_ast(
      BelStatementObservedTerm,
      %Q{p(HGNC:AKT1) //observed in lung},
      s(:statement,
        s(:subject,
          s(:term,
            s(:function, :p),
            s(:argument,
              s(:prefix, "HGNC"),
              s(:value, "AKT1")))),
        s(:relationship, nil),
        s(:object, nil),
        s(:comment, "observed in lung"))
    )
    assert_ast(
      BelStatementObservedTerm,
      %Q{kin(complex(SCOMP:"p85/p110 PI3Kinase Complex"))},
      s(:statement,
        s(:subject,
          s(:term,
            s(:function, :kin),
            s(:argument,
              s(:term,
                s(:function, :complex),
                s(:argument,
                  s(:prefix, "SCOMP"),
                  s(:value, "p85/p110 PI3Kinase Complex")))))),
        s(:relationship, nil),
        s(:object, nil),
        s(:comment, nil))
    )
  end
end

describe SET do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      SET,
      %Q{SET Species = 9606},
      s(:set,
        s(:name,  "Species"),
        s(:value, "9606"))
    )
    assert_ast(
      SET,
      %Q{Set disease = "cat-scratch disease"},
      s(:set,
        s(:name,  "disease"),
        s(:value, "cat-scratch disease"))
    )
    assert_ast(
      SET,
      %Q{set PROCESS = "Apoptosis"},
      s(:set,
        s(:name,  "PROCESS"),
        s(:value, "Apoptosis"))
    )
  end
end

describe UNSET do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      UNSET,
      %Q{UNSET Species},
      s(:unset,
        s(:name,  "Species"))
    )
    assert_ast(
      UNSET,
      %Q{Unset disease},
      s(:unset,
        s(:name,  "disease"))
    )
    assert_ast(
      UNSET,
      %Q{unset STATEMENT_GROUP},
      s(:unset,
        s(:name, "STATEMENT_GROUP"))
    )
  end
end

describe DEFINE_ANNOTATION do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(
      DEFINE_ANNOTATION,
      %Q{Define Annotation Species As Url "http://resources/species.belanno"},
      s(:define_annotation,
        s(:keyword, "Species"),
        s(:domain,
          s(:url, "http://resources/species.belanno")))
    )
    assert_ast(
      DEFINE_ANNOTATION,
      %Q{DEFine ANNOtation Status as LiST { "Approved", "Rejected"}},
      s(:define_annotation,
        s(:keyword, "Status"),
        s(:domain,
          s(:list, "Approved", "Rejected")))
    )
    assert_ast(
      DEFINE_ANNOTATION,
      %Q{define annotation Identifier as pattern "[-+]?[0-9]+"},
      s(:define_annotation,
        s(:keyword, "Identifier"),
        s(:domain,
          s(:pattern, "[-+]?[0-9]+")))
    )
  end
end

describe DEFINE_NAMESPACE do
  include AST::Sexp


  it "yields correct AST" do
    assert_ast(
      DEFINE_NAMESPACE,
      %Q{DEFINE NAMESPACE HGNC AS URL "http://resources/hgnc.belns"},
      s(:define_namespace,
        s(:keyword, "HGNC"),
        s(:url, "http://resources/hgnc.belns"))
    )
    assert_ast(
      DEFINE_NAMESPACE,
      %Q{Define Namespace HGNC As Url "http://resources/hgnc.belns"},
      s(:define_namespace,
        s(:keyword, "HGNC"),
        s(:url, "http://resources/hgnc.belns"))
    )
    assert_ast(
      DEFINE_NAMESPACE,
      %Q{define namespace HGNC as url "http://resources/hgnc.belns"},
      s(:define_namespace,
        s(:keyword, "HGNC"),
        s(:url, "http://resources/hgnc.belns"))
    )
  end
end
# vim: ts=2 sw=2:
