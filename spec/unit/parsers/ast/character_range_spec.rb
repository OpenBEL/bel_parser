require 'bel_parser/parsers/ast/node'
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'

describe BELParser::Parsers do

  Identifier = BELParser::Parsers::Common::Identifier
  String = BELParser::Parsers::Common::String
  Parameter = BELParser::Parsers::Expression::Parameter

  test_scenarios = [
    [Identifier, 'p',              :identifier, 0, 1,  1],
    [Identifier, 'AKT1',           :identifier, 0, 4,  4],
    [String,     '"DNA excision"', :string,     1, 13, 12],
    [String,     '""',             :string,     1, 1,  0],
    [String,     '"AKT1"',         :string,     1, 5,  4],
    [Parameter,  'AKT1',           :parameter,  0, 4,  4],
    [Parameter,  'HGNC:AKT1',      :parameter,  0, 9,  9],
    [Parameter,  'HGNC:',          :parameter,  0, 5,  5], # FIXME test failures
  ]

  test_scenarios.each do |parse_type, input, node_type, r_start, r_end, r_length|
    describe parse_type do
      let(:node) {
        results = []
        parse_type::Parser.new(input).each { |res| results << res }
        results.first
      }

      it %Q[input "#{input}" is an #{node_type} node] do
        expect(node.type).to be(node_type)
      end

      it %Q[input "#{input}" to have character length of #{r_length}] do
        expect(node.character_range).not_to be_nil
        expect(node.range_end - node.range_start).to be(r_length)
      end

      it %Q[input "#{input}" to have range start of #{r_start}] do
        expect(node.range_start).to be(r_start)
      end

      it %Q[input "#{input}" to have range end of #{r_end}] do
        expect(node.range_end).to be(r_end)
      end
    end
  end
end
