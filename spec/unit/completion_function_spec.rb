require_relative 'spec_helper'
require 'bel_parser/language'
require 'bel_parser/completion'

describe BELParser::Completion::FunctionCompleter do
  let(:completer) {
    spec   = BELParser::Language.specification('2.0')
    search = nil
    BELParser::Completion::FunctionCompleter.new(spec, search)
  }

  it 'completes to strings' do
    expect(completer.complete('a', 1)).to all(be_a(String))
  end

  it 'caret position is not used, returns all substring matches' do
    matched_at_start = completer.complete('pro', 0).to_a
    (1..'pro'.length).each do |caret_position|
      expect(completer.complete('pro', caret_position)).to eql(matched_at_start)
    end
  end
end
