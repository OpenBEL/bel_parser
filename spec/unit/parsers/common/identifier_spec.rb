require_relative '../../spec_helper'
require 'rantly/rspec'
require 'bel_parser/parsers/common/identifier'

include BELParser::Parsers::Common

describe Identifier, '#parse' do
  include AST::Sexp

  context 'when input represents complete identifiers' do
    let(:random_identifier) do
      property_of do
        random_identifier
      end
    end

    it 'yields identifier AST with complete value' do
      random_identifier.check do |example|
        assert_ast(
          Identifier,
          example,
          s(:identifier, example))
      end
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
    let(:invalid_first_character) do
      property_of do
        Rantly do
          sized(1) { string(/[^0-9A-za-z_]/) } + random_identifier
        end
      end
    end

    it 'yields identifier AST with empty value' do
      invalid_first_character.check do |example|
        assert_ast(
          Identifier,
          example,
          s(:identifier, ''))
      end
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
    let(:encounters_invalid_character) do
      property_of do
        Rantly do
          identifier  = random_identifier
          string_char = sized(1) { string(/[^0-9A-za-z_]/) }
          identifier[range(0, identifier.length - 1)] = string_char
          identifier
        end
      end
    end

    it 'yields identifier AST with partial value' do
      encounters_invalid_character.check do |example|
        value = parse_ast(Identifier, example).children.first
        expect(example).to start_with(value)
      end
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
