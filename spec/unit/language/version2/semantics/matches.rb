require 'ast'
require 'bel/language/version2'
require 'bel/language/semantic_ast'
require 'bel/parsers/expression'

include AST::Sexp
V2 = BEL::Language::Version2

MATCHES = [
  {
    test: 'fragment, known start/stop: fragment(5_20)fragment',
    input:
      s(:term,
        s(:function,
          s(:identifier, 'fragment')),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, '5_20'))))),
    semantic: V2::Signatures::FragmentWithRange.semantic_ast
  },
  {
    test: 'fragment, range and descriptor: fragment(5_20, 55kD)fragment',
    input:
      s(:term,
				s(:function,
					s(:identifier, "fragment")),
				s(:argument,
					s(:parameter,
						s(:prefix, nil),
						s(:value,
							s(:identifier, "5_20")))),
				s(:argument,
					s(:parameter,
						s(:prefix, nil),
						s(:value,
							s(:identifier, "55kD"))))),
    semantic: V2::Signatures::FragmentWithRangeDescriptor.semantic_ast
  }
].freeze
