require 'ast'
require 'bel/language/version1'
require 'bel/language/semantic_ast'
require 'bel/parsers/expression'

include AST::Sexp
V1 = BEL::Language::Version1

MATCHES = [
  {
    test: 'match valid modified protein: p(E:P,F:pmod)p',
    input:
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
                  s(:identifier, '320'))))))),
    semantic: V1::Signatures::ProteinAbundanceWithProteinModification.semantic_ast
  },
  {
    test: 'match valid protein abundance: p(E:P)p',
    input:
      s(:term,
        s(:function,
          s(:identifier, 'p')),
        s(:argument,
          s(:parameter,
            s(:prefix,
              s(:identifier, 'HGNC')),
            s(:value,
              s(:identifier, 'AKT1'))))),
    semantic: V1::Signatures::ProteinAbundance.semantic_ast
  },
  {
    test: 'protein mod with covalent, amino acid, and position: pmod(E:*,E:*,E:*)pmod',
    input:
      s(:term,
        s(:function,
          s(:identifier, 'pmod')),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, 'Phosphorylation')))),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, 'Arginine')))),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, '300'))))),
    semantic: V1::Signatures::ProteinModificationWithCovalentAmino.semantic_ast
  },
  {
    test: 'protein mod with covalent and amino acid: pmod(E:*,E:*)pmod',
    input:
      s(:term,
        s(:function,
          s(:identifier, 'pmod')),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, 'Phosphorylation')))),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, 'Arginine'))))),
    semantic: V1::Signatures::ProteinModificationWithCovalentAmino.semantic_ast
  },
  {
    test: 'match valid protein mod with covalent type: pmod(E:*)pmod',
    input:
      s(:term,
        s(:function,
          s(:identifier, 'pmod')),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, 'Phosphorylation'))))),
    semantic:
      V1::Signatures::ProteinModificationWithCovalent.semantic_ast
  },
  {
    test: 'match composed complex: complex(F:A...)pmod',
    input:
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
                  s(:identifier, 'HGNC')),
                s(:value,
                  s(:identifier, 'TIMP3'))))))),
    semantic:
      V1::Signatures::ComposedComplexAbundance.semantic_ast
  },
  {
    test: 'match composed complex: complex(F:A...)pmod',
    input:
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
                  s(:identifier, 'HGNC')),
                s(:value,
                  s(:identifier, 'TIMP3')))))),
        s(:argument,
          s(:term,
            s(:function,
              s(:identifier, 'p')),
            s(:argument,
              s(:parameter,
                s(:prefix,
                  s(:identifier, 'HGNC')),
                s(:value,
                  s(:identifier, 'KDR'))))))),
    semantic:
      V1::Signatures::ComposedComplexAbundance.semantic_ast
  },
  {
    test: 'match composed complex: complex(F:A...)pmod',
    input:
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
                  s(:identifier, 'HGNC')),
                s(:value,
                  s(:identifier, 'ADRB2')))))),
        s(:argument,
          s(:term,
            s(:function,
              s(:identifier, 'p')),
            s(:argument,
              s(:parameter,
                s(:prefix,
                  s(:identifier, 'SFAM')),
                s(:value,
                  s(:string, '"PDE4 Family"')))))),
        s(:argument,
          s(:term,
            s(:function,
              s(:identifier, 'p')),
            s(:argument,
              s(:parameter,
                s(:prefix,
                  s(:identifier, 'SFAM')),
                s(:value,
                  s(:string, '"ARRB Family"'))))))),
    semantic:
      V1::Signatures::ComposedComplexAbundance.semantic_ast
  }
].freeze
