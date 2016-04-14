require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/expression'
require 'bel_parser/language/semantics'
require 'bel_parser/language/version2_0'

include BELParser::Parsers::AST::Sexp
FX = BELParser::Language::Version2_0::Functions

MATCHES = [
  {
    test: 'fragment, known start/stop: fragment(5_20)fragment',
    input:
      term(
        function(
          identifier( 'fragment')),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( '5_20'))))),
    semantic: FX::Fragment::Signatures::FragmentWithRangeSignature.semantic_ast
  },
  {
    test: 'fragment, range and descriptor: fragment(5_20, 55kD)fragment',
    input:
      term(
        function(
          identifier( 'fragment')),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( '5_20')))),
        argument(
          parameter(
            prefix( nil),
            value(
              identifier( '55kD'))))),
    semantic: FX::Fragment::Signatures::FragmentWithRangeDescriptorSignature.semantic_ast
  }
].freeze
