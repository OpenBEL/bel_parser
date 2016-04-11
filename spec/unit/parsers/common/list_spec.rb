require_relative '../../spec_helper'
require 'rantly/rspec'
require 'bel_parser/parsers/common/list'

include BELParser::Parsers::Common

describe List, '#parse' do
  include AST::Sexp

  let(:random_list) do
    property_of do
      Array.new(range(1, 10)) do |_|
        choose(random_identifier, random_string)
      end
    end
  end

  context 'when input represents complete lists' do
    xit 'yields list AST with correct arguments' do
      random_list.check do |arguments|
        list      = "{ #{arguments.join(' , ')} }"
        list_args = parse_ast(List, list).children

        expect(list_args.length).to eql(arguments.length)

        list_arg_values = list_args.map { |arg| arg.children[0].children[0] }
        expect(list_arg_values).to eql(arguments)
      end
    end

    xit 'yields list AST with "complete" metadata' do
      # TODO
    end

    xit 'yields list AST with line number' do
      # TODO
    end

    xit 'yields list AST with character interval' do
      # TODO
    end
  end

  context 'when input does not begin with left curly brace' do
    xit 'yields list AST with empty value' do
      random_list.check do |arguments|
        list      = " #{arguments.join(' , ')} }"
        list_args = parse_ast(List, list).children

        expect(list_args.length).to be_zero
      end
    end

    xit 'yields list AST with "error" metadata' do
      # TODO
    end

    xit 'yields list AST with line number' do
      # TODO
    end

    xit 'yields list AST with character interval' do
      # TODO
    end
  end

  context 'when input does not end with right curly brace' do
    xit 'yields list AST with correct arguments' do
      random_list.check do |arguments|
        list      = "{ #{arguments.join(',')}"
        list_args = parse_ast(List, list).children

        expect(list_args.length).to eql(arguments.length)

        list_arg_values = list_args.map { |arg| arg.children[0].children[0] }
        expect(list_arg_values).to eql(arguments)
      end
    end

    xit 'yields list AST with "error" metadata' do
      # TODO
    end

    xit 'yields list AST with line number' do
      # TODO
    end

    xit 'yields list AST with character interval' do
      # TODO
    end
  end

  context 'when list argument is empty' do
    xit 'yields list AST with partial value' do
    end

    xit 'yields list AST with "error" metadata' do
      # TODO
    end

    xit 'yields list AST with line number' do
      # TODO
    end

    xit 'yields list AST with character interval' do
      # TODO
    end
  end
end
# vim: ts=2 sw=2:
