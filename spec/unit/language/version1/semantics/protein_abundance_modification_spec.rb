require 'ap'
require 'ast'
require 'bel/language/version1'
require 'bel/language/semantic_ast'
require 'bel/language/version1/signatures/protein_abundance_modification'
require 'bel/parsers/expression'

include BEL::Parsers::Expression
include AST::Sexp

describe BEL::Language::Semantics do
  subject {
    BEL::Language::Semantics
  }
  let(:spec) {
    BEL::Language::Version1::Specification.new
  }

  context 'match valid modified protein: p(E:P,F:pmod)p' do
    let(:input_ast) {
			s(:term,
				s(:function,
					s(:identifier, "p")),
				s(:argument,
					s(:parameter,
						s(:prefix,
							s(:identifier, "HGNC")),
						s(:value,
							s(:identifier, "AKT1")))),
				s(:argument,
					s(:term,
						s(:function,
							s(:identifier, "pmod")),
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
									s(:identifier, "320")))))))
    }
    let(:semantic_ast) {
      BEL::Language::Version1::Signatures::ProteinAbundanceModification.semantic_ast
    }

    it 'debugs' do
      success, failure = subject.match(input_ast, semantic_ast, spec).
        partition { |x| x.success? }.
        map do |set|
          set.map(&:semantic_node).map(&:class)
        end
      puts "Successes"
      ap success, index: false
      puts "\nFailures"
      ap failure, index: false
    end

    it 'returns match results' do
      results = subject.match(input_ast, semantic_ast, spec)
      expect(results).to_not be_nil
      expect(results).to be_an(Array)
    end

    it 'is valid' do
      results  = subject.match(input_ast, semantic_ast, spec)
      expect(results.select(&:failure?)).to be_empty
    end
  end
end
