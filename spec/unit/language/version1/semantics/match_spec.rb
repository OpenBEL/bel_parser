require_relative 'matches'

include BELParser::Parsers::Expression

describe BELParser::Language::Semantics do
  subject do
    BELParser::Language::Semantics
  end
  let(:spec) do
    BELParser::Language::Version1_0::Specification.new
  end

  MATCHES.each do |test|
    desc, input, semantic = test.values_at(:test, :input, :semantic)

    context(desc) do
      it 'debugs' do
        success, failure =
          subject
          .match(input, semantic, spec)
          .partition(&:success?)
          .map do |set|
            set.map(&:semantic_node).map(&:class)
          end
        puts 'Successes'
        puts success
        puts "\nFailures"
        puts failure
      end

      it 'returns match results' do
        results = subject.match(input, semantic, spec)
        expect(results).to_not be_nil
        expect(results).to be_an(Array)
      end

      it 'is valid' do
        results = subject.match(input, semantic, spec)
        expect(results.select(&:failure?)).to be_empty
      end
    end
  end
end
