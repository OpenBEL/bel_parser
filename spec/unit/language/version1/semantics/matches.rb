require 'bel_parser/parsers/expression'
require 'bel_parser/language/semantics'
require 'bel_parser/language/version1_0'

include AST::Sexp
FX    = BELParser::Language::Version1_0::Functions
PSIG  = FX::ProteinAbundance::Signatures
PMSIG = FX::ProteinModification::Signatures
CSIG  = FX::ComplexAbundance::Signatures

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
    semantic: PSIG::
      ProteinAbundanceWithProteinModificationSignature.semantic_ast
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
    semantic: PSIG::
      ProteinAbundanceSignature.semantic_ast
  },
  {
    test: 'protein mod with covalent/amino/position: pmod(E:*,E:*,E:*)pmod',
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
    semantic: PMSIG::
      ProteinModificationWithCovalentAminoPositionSignature.semantic_ast
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
    semantic: PMSIG::
      ProteinModificationWithCovalentAminoSignature.semantic_ast
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
    semantic: PMSIG::
      ProteinModificationWithCovalentSignature.semantic_ast
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
    semantic: CSIG::
      ComposedComplexAbundanceSignature.semantic_ast
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
    semantic: CSIG::
      ComposedComplexAbundanceSignature.semantic_ast
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
    semantic: CSIG::ComposedComplexAbundanceSignature.semantic_ast
  }
].freeze
