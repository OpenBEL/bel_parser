guard :rake, task: :ragel do
  watch(%r{^lib/(.+)\.rl})
end

guard :rake, task: :test_unit do
  watch(%r{^lib/(.+)\.rb$})
  watch(%r{^spec/(.+)\.rb$})
end

guard(
  :rubocop,
  cli: [
    '-E',                         # More details in messages
    '--format', 'simple'          # simple formatter
  ],
  notification: true
) do
  watch(/^Guardfile$/)
  watch(/^Rakefile$/)
  watch(%r{^([^/]+)\.rb$})
  watch(%r{^lib/(.+)\.rb$})
  watch(%r{^spec/(.+)\.rb$})
end
# vim: ft=ruby
