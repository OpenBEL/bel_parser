require_relative '../../spec_helper'
require 'rantly/rspec'
require 'bel/parsers/common/identifier'

include BEL::Parsers::Common

describe Identifier, '#parse' do
  include AST::Sexp

  context 'when input represents complete identifiers' do

    it 'yields identifier AST with complete value' do
      property_of {
        random_identifier
      }.check { |example|
        assert_ast(
          Identifier,
          example,
          s(:identifier, example))
      }
    end

    xit 'yields identifier AST with "complete" metadata' do
      # TODO
    end

    xit 'yields identifier AST with line number' do
      # TODO
    end

    xit 'yields identifier AST with character interval' do
      # TODO
    end
  end

  context 'when input starts with an invalid character' do
    it 'yields identifier AST with empty value' do
      property_of {
        Rantly {
          sized(1) { string(/[^0-9A-za-z_]/) } + random_identifier
        }
      }.check { |example|
        assert_ast(
          Identifier,
          example,
          s(:identifier, ''))
      }
    end

    xit 'yields identifier AST with "error" metadata' do
      # TODO
    end

    xit 'yields identifier AST with line number' do
      # TODO
    end

    xit 'yields identifier AST with character interval' do
      # TODO
    end
  end

  context 'when input encounters an invalid character' do
    it 'yields identifier AST with partial value' do
      property_of {
        Rantly {
          identifier = random_identifier
          identifier[range(0, identifier.length - 1)] = sized(1) {
            string(/[^0-9A-za-z_]/)
          }
          identifier
        }
      }.check { |example|
        value = parse_ast(Identifier, example).children.first
        expect(example).to start_with(value)
      }
    end

    xit 'yields identifier AST with "error" metadata' do
      # TODO
    end

    xit 'yields identifier AST with line number' do
      # TODO
    end

    xit 'yields identifier AST with character interval' do
      # TODO
    end
  end
end
# vim: ts=2 sw=2:
