require 'ap'
require 'ast'
require 'bel/language/version1'
require 'bel/language/semantic_ast'
require(
  'bel/language/version1/signatures/protein_modification_covalent_modification'
)
require 'bel/parsers/expression'

include BEL::Parsers::Expression
include BEL::Language::Version1
include AST::Sexp

describe BEL::Language::Semantics do
  subject do
    BEL::Language::Semantics
  end
  let(:spec) do
    Specification.new
  end

  context 'match valid protein mod with covalent type: pmod(CMT)pmod' do
    let(:input_ast) do
      s(:term,
        s(:function,
          s(:identifier, 'pmod')),
        s(:argument,
          s(:parameter,
            s(:prefix, nil),
            s(:value,
              s(:identifier, 'Phosphorylation')))))
    end
    let(:semantic_ast) do
      Signatures::ProteinModificationCovalentModification.semantic_ast
    end

    it 'debugs' do
      success, failure =
        subject
        .match(input_ast, semantic_ast, spec)
        .partition(&:success?)
        .map do |set|
          set.map(&:semantic_node).map(&:class)
        end
      puts 'Successes'
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
      results = subject.match(input_ast, semantic_ast, spec)
      expect(results.select(&:failure?)).to be_empty
    end
  end
end
