#!/usr/bin/env ruby
$LOAD_PATH.unshift('lib')
require 'erb'
require_relative 'version1_0_relationships'

OUT_DIR = 'lib/bel_parser/language/version1_0/relationships'.freeze
template = ERB.new(File.read('relationship_template.rb'))
Dir.mkdir(OUT_DIR) unless Dir.exist?(OUT_DIR)
VERSION1_RELATIONSHIPS.each do |rel|
  description, short, long = rel.values_at(:description, :short, :long)
  name = long.sub(/^([a-z])/, &:upcase)

  b = binding
  contents = template.result(b)

  file_name =
    name
    .gsub(/(?<=[a-z])([A-Z])(?=[a-z])/) { |letter| "_#{letter.downcase}" }
    .gsub(/([A-Z])(?=[a-z])/) { |letter| "_#{letter.downcase}" }[1..-1]
    .gsub(/([A-Z]+)/) { |letters| "_#{letters.downcase}" }
  File.open("lib/bel_parser/language/version1_0/relationships/#{file_name}.rb", 'w') do |f|
    f.write(contents)
  end
end
