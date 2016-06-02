require_relative '../../spec_helper'
require 'rantly/rspec'
require 'bel_parser/parsers/common/string'

CommonString = BELParser::Parsers::Common::String

describe CommonString, '#parse' do
  include AST::Sexp

  context 'when input represents complete strings' do
    let(:random_string) do
      property_of do
        Rantly do
          example = sized(range(1, 50)) { string(:graph) }
          example.gsub!(/(?<!\\)"/, '') # removes unescaped double quotes
          %("#{example}")
        end
      end
    end

    it 'yields string AST with complete value' do
      random_string.check do |example|
        assert_ast(
          CommonString,
          example,
          s(:string, example))
      end
    end

    xit 'yields string AST with "complete" metadata' do
      # TODO
    end

    xit 'yields string AST with line number' do
      # TODO
    end

    xit 'yields string AST with character interval' do
      # TODO
    end
  end

  context 'when input starts with an invalid character' do
    let(:missing_start_quote) do
      property_of do
        Rantly do
          string = random_string

          if string.length > 1
            string.sub(/\A"/, '')
          else
            string
          end
        end
      end
    end

    it 'yields string AST with empty value' do
      missing_start_quote.check do |example|
        assert_ast(
          CommonString,
          example,
          s(:string, ''))
      end
    end

    xit 'yields string AST with "error" metadata' do
      # TODO
    end

    xit 'yields string AST with line number' do
      # TODO
    end

    xit 'yields string AST with character interval' do
      # TODO
    end
  end

  context 'when input encounters an invalid character' do
    let(:encounters_invalid_character) do
      property_of do
        Rantly do
          example = sized(range(1, 50)) { string(:graph) }
          %("#{example}")
        end
      end
    end

    it 'yields string AST with partial value' do
      encounters_invalid_character.check do |example|
        value = parse_ast(CommonString, example).children.first
        expect(example).to start_with(value)
      end
    end

    xit 'yields string AST with "error" metadata' do
      # TODO
    end

    xit 'yields string AST with line number' do
      # TODO
    end

    xit 'yields string AST with character interval' do
      # TODO
    end
  end

  context 'when input does not end with double quote' do
    let(:missing_end_quote) do
      property_of do
        Rantly do
          example = sized(range(1, 50)) { string(:graph) }
          example.gsub!(/(?<!\\)"/, '') # removes unescaped double quotes
          %("#{example})
        end
      end
    end

    xit 'yields string AST with "error" metadata' do
      # TODO
    end

    xit 'yields string AST with line number' do
      # TODO
    end

    xit 'yields string AST with character interval' do
      # TODO
    end
  end
end
# vim: ts=2 sw=2:
