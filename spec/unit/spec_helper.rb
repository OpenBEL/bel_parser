require 'rantly'

def assert_ast(parser, input, output)
  expect { |b|
    parser.parse(%Q{#{input}\n}, &b)
  }.to yield_with_args(output)
end

def parse_ast(parser, input)
  parser.parse(%Q{#{input}\n}) { |obj|
    return obj
  }
end

def random_identifier
  Rantly {
    sized(range(1, 50)) {
      string(/[A-Za-z0-9_]/)
    }
  }
end

def random_string(quoted = true)
  Rantly {
    value = sized(range(1, 50)) {
      string(:graph)
    }

    if quoted
      # remove all terminal quotes/backslash at end of string
      while value =~ /["\\]\Z/
        value = value.gsub(/["\\]\Z/, '')     
      end

      # escape naked double quote
      value = value.gsub(/(?<!\\)"/, '\"') 

      # quote final result
      %Q{"#{value}"}
    else
      value
    end
  }
end
