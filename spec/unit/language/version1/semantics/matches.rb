require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/expression'
require 'bel_parser/language/semantics'
require 'bel_parser/language/version1_0'

include BELParser::Parsers::AST::Sexp
FX    = BELParser::Language::Version1_0::Functions
PSIG  = FX::ProteinAbundance::Signatures
PMSIG = FX::ProteinModification::Signatures
CSIG  = FX::ComplexAbundance::Signatures

MATCHES = [
  {
    test: 'match valid modified protein: p(E:P,F:pmod)p',
    input:
      term(
        function(
          identifier( 'p')),
        argument(
          parameter(
            prefix(
              identifier( 'HGNC')),
            value(
              identifier( 'AKT1')))),
        argument(
          term(
            function(
              identifier( 'pmod')),
            argument(
              parameter(
                prefix( nil),
                value(
                  identifier( 'P')))),
            argument(
              parameter(
                prefix( nil),
                value(
                  identifier( 'S')))),
            argument(
              parameter(
                prefix( nil),
                value(
                  identifier( '320'))))))),
    semantic: PSIG::
      ProteinAbundanceWithProteinModificationSignature.semantic_ast
  },
  {
    test: 'match valid protein abundance: p(E:P)p',
    input:
      term(
        function(
          identifier( 'p')),
        argument(
          parameter(
            prefix(
              identifier( 'HGNC')),
            value(
              identifier( 'AKT1'))))),
    semantic: PSIG::
      ProteinAbundanceSignature.semantic_ast
  },
  {
    test: 'protein mod with covalent/amino/position: pmod(E:*,E:*,E:*)pmod',
    input:
      term(
        function(
          identifier( 'pmod')),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( 'Phosphorylation')))),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( 'Arginine')))),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( '300'))))),
    semantic: PMSIG::
      ProteinModificationWithCovalentAminoPositionSignature.semantic_ast
  },
  {
    test: 'protein mod with covalent and amino acid: pmod(E:*,E:*)pmod',
    input:
      term(
        function(
          identifier( 'pmod')),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( 'Phosphorylation')))),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( 'Arginine'))))),
    semantic: PMSIG::
      ProteinModificationWithCovalentAminoSignature.semantic_ast
  },
  {
    test: 'match valid protein mod with covalent type: pmod(E:*)pmod',
    input:
      term(
        function(
          identifier( 'pmod')),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( 'Phosphorylation'))))),
    semantic: PMSIG::
      ProteinModificationWithCovalentSignature.semantic_ast
  },
  {
    test: 'match composed complex: complex(F:A)complex',
    input:
      term(
        function(
          identifier( 'complex')),
        argument(
          term(
            function(
              identifier( 'p')),
            argument(
              parameter(
                prefix(
                  identifier( 'HGNC')),
                value(
                  identifier( 'TIMP3'))))))),
    semantic: CSIG::
      ComposedComplexAbundanceSignature.semantic_ast
  },
  {
    test: 'match composed complex: complex(F:A, F:A)complex',
    input:
      term(
        function(
          identifier( 'complex')),
        argument(
          term(
            function(
              identifier( 'p')),
            argument(
              parameter(
                prefix(
                  identifier( 'HGNC')),
                value(
                  identifier( 'TIMP3')))))),
        argument(
          term(
            function(
              identifier( 'p')),
            argument(
              parameter(
                prefix(
                  identifier( 'HGNC')),
                value(
                  identifier( 'KDR'))))))),
    semantic: CSIG::
      ComposedComplexAbundanceSignature.semantic_ast
  },
  {
    test: 'match composed complex: complex(F:A, F:A, F:A)complex',
    input:
      term(
        function(
          identifier( 'complex')),
        argument(
          term(
            function(
              identifier( 'p')),
            argument(
              parameter(
                prefix(
                  identifier( 'HGNC')),
                value(
                  identifier( 'ADRB2')))))),
        argument(
          term(
            function(
              identifier( 'p')),
            argument(
              parameter(
                prefix(
                  identifier( 'SFAM')),
                value(
                  string( '"PDE4 Family"')))))),
        argument(
          term(
            function(
              identifier( 'p')),
            argument(
              parameter(
                prefix(
                  identifier( 'SFAM')),
                value(
                  string( '"ARRB Family"'))))))),
    semantic: CSIG::ComposedComplexAbundanceSignature.semantic_ast
  }
].freeze
