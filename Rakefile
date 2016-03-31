require 'rake'
require 'rake/clean'
require 'rubocop/rake_task'

FileList['tasks/**/*.rake'].each { |task| import task }

RuboCop::RakeTask.new
task default: [:ragel, :test]
# vim: ts=2 sw=2:
# encoding: utf-8
