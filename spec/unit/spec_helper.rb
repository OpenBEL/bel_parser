def assert_ast(parser, input, output)
  expect { |b|
    parser.parse(%Q{#{input}\n}, &b)
  }.to yield_with_args(output)
end
