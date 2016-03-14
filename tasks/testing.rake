require 'rake/testtask'
require 'rspec/core'
require 'rspec/core/rake_task'
require 'yard'
require 'yard-doctest'

SPEC_UNIT_TESTS        = FileList['spec/unit/**/*_spec.rb']

task :test_unit   => [ :spec_unit                  ]
task :doctest     => [ :"yard:doctest"             ]
task :test        => [ :test_unit, :"yard:doctest" ]

# unit tests
RSpec::Core::RakeTask.new(:spec_unit) do |r|
  r.ruby_opts = '-Ilib/'
  r.rspec_opts = "--format documentation"
  r.pattern = SPEC_UNIT_TESTS
end

# yardoc example tests
YARD::Config.options[:autoload_plugins] << 'doctest'
YARD::Config.save
YARD::Doctest::RakeTask.new do |task|
  task.doctest_opts = %w[-v]
  task.pattern = 'lib/**/*.rb'
end
