require_relative '../../spec_helper'
require 'rantly/rspec'
require 'bel/parsers/common/string'

CommonString = BEL::Parsers::Common::String

describe CommonString, "#parse" do
  include AST::Sexp

  context 'when input represents complete strings' do

    it 'yields string AST with complete value' do
      property_of {
        Rantly {
          example = sized(range(1, 50)) {
            string(:graph)
          }
          example.gsub!(/(?<!\\)"/, '') # removes unescaped double quotes
          %Q{"#{example}"}
        }
      }.check { |example|
        assert_ast(
          CommonString,
          example,
          s(:string, example))
      }
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

    it 'yields string AST with empty value' do
      property_of {
        Rantly {
          string = random_string
          string = string.sub(/\A"/, '') if string.length > 1
        }
      }.check { |example|
        assert_ast(
          CommonString,
          example,
          s(:string, ''))
      }
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

    it 'yields string AST with partial value' do
      property_of {
        Rantly {
          example = sized(range(1, 50)) {
            string(:graph)
          }
          %Q{"#{example}"}
        }
      }.check { |example|
        value = parse_ast(CommonString, example).children.first
        expect(example).to start_with(value)
      }
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

    it 'yields string AST with partial value' do
      property_of {
        Rantly {
          example = sized(range(1, 50)) {
            string(:graph)
          }
          example.gsub!(/(?<!\\)"/, '') # removes unescaped double quotes
          %Q{"#{example}}
        }
      }.check { |example|
        assert_ast(
          CommonString,
          example,
          s(:string, example))
      }
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
