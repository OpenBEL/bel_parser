require 'ast'
require 'bel/language/version1'
require 'bel/language/semantic_ast'
require 'bel/language/version1/signatures/protein_abundance'
require 'bel/parsers/expression'

include BEL::Parsers::Expression
include AST::Sexp

describe BEL::Language::Semantics do
  subject {
    BEL::Language::Semantics
  }

  context 'match valid protein abundance: p(E:P)p' do
    let(:input_ast) {
			s(:term,
				s(:function,
					s(:identifier, "p")),
				s(:argument,
					s(:parameter,
						s(:prefix,
							s(:identifier, "HGNC")),
						s(:value,
							s(:identifier, "AKT1")))))
    }
    let(:semantic_ast) {
      BEL::Language::Version1::Signatures::ProteinAbundance.semantic_ast
    }

    it 'returns match results' do
      results = subject.match(input_ast, semantic_ast)
      expect(results).to_not be_nil
      expect(results).to be_an(Array)
    end

    it 'is valid' do
      results  = subject.match(input_ast, semantic_ast)
      expect(results.select(&:failure?)).to be_empty
    end
  end
end
