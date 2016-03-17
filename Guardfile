guard :rake, :task => :ragel do
  watch(%r{^lib/(.+)\.rl}) 
end

guard :rake, :task => :test_unit do
  watch(%r{^lib/(.+)\.rb$}) 
  watch(%r{^spec/(.+)\.rb$}) 
end
# vim: ft=ruby
