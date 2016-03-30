require 'rake'
require 'rake/clean'
require 'rubocop/rake_task'
require 'rdoc/task'

FileList['tasks/**/*.rake'].each { |task| import task }

RuboCop::RakeTask.new
RDoc::Task.new do |rdoc|
  rdoc.main = 'README.rdoc'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/parameter.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/parameter.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/comment.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/comment.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/relationship.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/relationship.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/term.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/term.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/statement_observed_term.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/statement_observed_term.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/statement_simple.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/statement_simple.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/statement_nested.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/expression/statement_nested.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/define_annotation.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/define_annotation.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/define_namespace.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/define_namespace.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/set.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/set.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/unset.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/bel_script/unset.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/blank_line.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/blank_line.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/common.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/common.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/identifier.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/identifier.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/string.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/string.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/list.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/list.rl')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/comment_line.rb')
  rdoc.rdoc_files.exclude('lib/bel/parsers/common/comment_line.rl')
end
task default: [:ragel, :test]
# vim: ts=2 sw=2:
# encoding: utf-8
