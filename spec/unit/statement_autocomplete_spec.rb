require_relative 'spec_helper'
require 'bel_parser/parsers/expression/statement_autocomplete'

# TODO Refactor AST assertion to compare properties.
# TODO This will reduce duplication and allow checking of character_range.
describe BELParser::Parsers::Expression::StatementAutocomplete, '#parse' do
  include BELParser::Parsers::AST::Sexp

  let(:parser) {
    BELParser::Parsers::Expression::StatementAutocomplete
  }

  it '|a| yields identifier' do
    assert_ast(
      parser,
      'a',
      identifier('a')
    )
  end

  it '|a| yields identifier with character_range' do
    identifier = parse_ast(
      parser,
      'a'
    )
    expect(identifier.type).to eql(:identifier)
    expect(identifier.character_range).to eql([0, 1])
  end

  it '|a:| yields parameter with prefix' do
    assert_ast(
      parser,
      'a:',
      parameter(
        prefix(
          identifier(
            'a')),
        nil)
    )
  end

  it '|a:| yields parameter with character_range' do
    parameter = parse_ast(
      parser,
      'a:'
    )
    expect(parameter.type).to eql(:parameter)
    expect(parameter.character_range).to eql([0, 2])
    expect(parameter.prefix.character_range).to eql([0,1])
    expect(parameter.prefix.identifier).to_not be_nil
    expect(parameter.prefix.identifier.character_range).to eql([0,1])
    expect(parameter.value).to be_nil
  end

  it '|:a| yields parameter with value' do
    assert_ast(
      parser,
      ':a',
      parameter(
        prefix(
          nil),
        value(
          identifier('a')))
    )
  end

  it '|:a| yields parameter with character_range' do
    parameter = parse_ast(
      parser,
      ':a'
    )
    expect(parameter.type).to eql(:parameter)
    expect(parameter.character_range).to eql([0, 2])
    expect(parameter.prefix).to_not be_nil
    expect(parameter.prefix.character_range).to eql([0,0])
    expect(parameter.prefix.identifier).to be_nil
    expect(parameter.value).to_not be_nil
    expect(parameter.value.character_range).to eql([1,2])
    expect(parameter.value.first_child).to_not be_nil
    expect(parameter.value.first_child.character_range).to eql([1,2])
  end

  it '|a:b| yields parameter with prefix and value' do
    assert_ast(
      parser,
      'a:b',
      parameter(
        prefix(
          identifier('a')),
        value(
          identifier('b')))
    )
  end

  it '|a:b| yields parameter with character_range' do
    parameter = parse_ast(
      parser,
      'a:b'
    )
    expect(parameter.type).to eql(:parameter)
    expect(parameter.character_range).to eql([0, 3])
    expect(parameter.prefix).to_not be_nil
    expect(parameter.prefix.character_range).to eql([0,1])
    expect(parameter.prefix.identifier).to_not be_nil
    expect(parameter.prefix.identifier.character_range).to eql([0,1])
    expect(parameter.value).to_not be_nil
    expect(parameter.value.character_range).to eql([2,3])
    expect(parameter.value.first_child).to_not be_nil
    expect(parameter.value.first_child.character_range).to eql([2,3])
  end

  it '|a(| yields term with function' do
    assert_ast(
      parser,
      'a(',
      term(
        function(
          identifier('a')))
    )
  end

  it '|a(| yields term with character_range' do
    term = parse_ast(
      parser,
      'a('
    )
    expect(term.type).to eql(:term)
    expect(term.character_range).to eql([0, 2])
    expect(term.function).to_not be_nil
    expect(term.function.character_range).to eql([0, 1])
    expect(term.arguments).to eql([])
  end

  it '|a(b| yields term with parameter value "b"' do
    assert_ast(
      parser,
      "a(b",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              nil),
              value(
                identifier(
                  "b")))))
    )
  end

  it '|a(b| yields term with character_range' do
    term = parse_ast(
      parser,
      'a(b'
    )
    expect(term.type).to eql(:term)
    expect(term.character_range).to eql([0, 3])
    expect(term.function).to_not be_nil
    expect(term.function.character_range).to eql([0, 1])
    expect(term.arguments.length).to eql(1)
    expect(term.arguments[0].type).to eql(:argument)

    argument = term.arguments[0]
    expect(argument.character_range).to eql([2,3])
    expect(argument.parameter?).to be
    expect(argument.term?).not_to be
    parameter = argument.child
    expect(parameter.character_range).to eql([2,3])
    expect(parameter.prefix.character_range).to be_nil
    expect(parameter.prefix.identifier).to be_nil
  end

  it '|a(:b| yields term with parameter value "b"' do
    assert_ast(
      parser,
      "a(:b",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              nil),
              value(
                identifier(
                  "b")))))
    )
  end

  it '|a(b:| yields term with parameter prefix "b"' do
    assert_ast(
      parser,
      "a(b:",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            nil)))
    )
  end

  it '|a(b:c| yields term with parameter prefix "b" and value "c"' do
    assert_ast(
      parser,
      "a(b:c",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            value(
              identifier(
                "c")))))
    )
  end

  it '|a(b:c,| yields term with two parameters, last one nil' do
    assert_ast(
      parser,
      "a(b:c,",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            value(
              identifier(
                "c")))),
        argument(
          nil))
    )
  end

  it '|a(b:c,d:e| yields term with two parameters' do
    assert_ast(
      parser,
      "a(b:c,d:e",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            value(
              identifier(
                "c")))),
        argument(
          parameter(
            prefix(
              identifier(
                "d")),
            value(
              identifier(
                "e")))))
    )
  end

  it '|a(b:c,d:e,| yields term with three parameters, last one nil' do
    assert_ast(
      parser,
      "a(b:c,d:e,",
      term(
        function(
          identifier("a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            value(
              identifier(
                "c")))),
        argument(
          parameter(
            prefix(
              identifier(
                "d")),
            value(
              identifier(
                "e")))),
        argument(
          nil))
    )
  end

  it '|"a"| yields string' do
    assert_ast(
      parser,
      %q{"a"},
      string(%q{"a"})
    )
  end

  it '|"a| yields string' do
    assert_ast(
      parser,
      %q{"a},
      string(%q{"a})
    )
  end

  it '|"a":| yields a prefix with a string (forgiving)' do
    assert_ast(
      parser,
      %q{"a":},
      parameter(
        prefix(
          string(
            %q{"a"})),
        nil)
    )
  end

  it '|:"a"| yields a parameter with string value' do
    assert_ast(
      parser,
      %q{:"a"},
      parameter(
        prefix(
          nil),
        value(
          string(
            %q{"a"})))
    )
  end

  it '|a:"b"| yields a parameter with identifier prefix and string value' do
    assert_ast(
      parser,
      %q{a:"b"},
      parameter(
        prefix(
          identifier(
            "a")),
        value(
          string(
            %q{"b"})))
    )
  end

  it '|"a":"b"| yields a parameter with string prefix and string value' do
    assert_ast(
      parser,
      %q{"a":"b"},
      parameter(
        prefix(
          string(
            %q{"a"})),
        value(
          string(
            %q{"b"})))
    )
  end

  it '|a(b:"c"| yields a term with string parameter' do
    assert_ast(
      parser,
      %q{a(b:"c"},
      term(
        function(
          identifier(
            "a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            value(
              string(
                %q{"c"})))))
    )
  end

  it '|  a  (  b  :  "c"  ,  d  :  "e"  | yields a term with two parameters (space separated)' do
    assert_ast(
      parser,
      %q{  a  (  b  :  "c"  ,  d  :  "e"  },
      term(
        function(
          identifier(
            "a")),
        argument(
          parameter(
            prefix(
              identifier(
                "b")),
            value(
              string(
                %q{"c"})))),
        argument(
          parameter(
            prefix(
              identifier(
                "d")),
          value(
            string(
              %q{"e"})))))
    )
  end
end
