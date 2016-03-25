require 'rantly'

def assert_ast(parser, input, output)
  expect { |b| parser.parse("#{input}\n", &b) }
    .to yield_with_args(output)
end

def parse_ast(parser, input)
  parser.parse(%(#{input}\n)) { |obj| return obj }
end

def random_identifier
  Rantly { sized(range(1, 50)) { string(/[A-Za-z0-9_]/) } }
end

def random_string(quoted = true)
  Rantly do
    value = sized(range(1, 50)) { string(:graph) }

    if quoted
      quote_value(value)
    else
      value
    end
  end
end

def quote_value(value)
  # remove all terminal quotes/backslash at end of string
  value = value.gsub(/["\\]\Z/, '') while value =~ /["\\]\Z/

  # escape naked double quote
  value = value.gsub(/(?<!\\)"/, '\"')

  # quote final result
  %("#{value}")
end
