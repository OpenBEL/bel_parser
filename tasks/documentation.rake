require 'yard'

CLEAN.include(
  "doc"
)

YARD::Rake::YardocTask.new do |t|
  t.options = ['--private']
end
