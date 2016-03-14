require_relative 'spec_helper'
require 'bel/parsers/identifier'
require 'bel/parsers/bel_parameter'
require 'bel/parsers/bel_term'
require 'bel/parsers/bel_statement_observed_term'

describe Identifier, "#parse" do
  include AST::Sexp

  it "yields correct AST" do
    assert_ast(Identifier, "AKT1", s(:identifier, "AKT1"))
    assert_ast(Identifier, "AKT1_HUMAN", s(:identifier, "AKT1_HUMAN"))
    assert_ast(Identifier, "MAPK1_GAMMA", s(:identifier, "MAPK1_GAMMA"))
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

  # %Q{p(HGNC:AKT1)},
  # %Q{p(HGNC:AKT1) // observed in lung},
  # %Q{kin(complex(SCOMP:"p85/p110 PI3Kinase Complex"))},

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
# vim: ts=2 sw=2:
