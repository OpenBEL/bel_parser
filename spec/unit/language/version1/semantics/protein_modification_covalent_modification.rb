require 'ast'
require 'bel/language/version1'
require 'bel/language/semantic_ast'
require 'bel/language/version1/signatures/protein_modification_covalent_modification'
require 'bel/parsers/expression'

include BEL::Parsers::Expression
include AST::Sexp

describe BEL::Language::Semantics do
  subject {
    BEL::Language::Semantics
  }

  context 'match valid protein mod with covalent type: pmod(CMT)pmod' do
    let(:input_ast) {
			s(:term,
				s(:function,
					s(:identifier, "pmod")),
				s(:argument,
					s(:parameter,
						s(:prefix, nil),
						s(:value,
							s(:identifier, "Phosphorylation")))))
    }
    let(:semantic_ast) {
      BEL::Language::Version1::Signatures::ProteinModificationCovalentModification.semantic_ast
    }

    it 'returns match results' do
      results = subject.match(input_ast, semantic_ast)
      expect(results).to_not be_nil
      expect(results).to be_an(Array)
    end

    it 'is valid' do
      results = subject.match(input_ast, semantic_ast)
      expect(results.select(&:failure?)).to be_empty
    end
  end
end
