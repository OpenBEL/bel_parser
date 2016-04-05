# See the following for reference:
# - http://docs.ruby-lang.org/en/2.2.0/Gem/RequestSet/GemDependencyAPI.html
# - http://docs.ruby-lang.org/en/2.2.0/Gem/RequestSet/GemDependencyAPI.html#method-i-group
# - http://docs.ruby-lang.org/en/2.2.0/Gem/RequestSet/GemDependencyAPI.html#method-i-platform
# - http://docs.ruby-lang.org/en/2.2.0/Gem.html#method-c-use_gemdeps
source 'https://rubygems.org'

# Gems used at runtime.
gem 'ast'
gem 'bel'

# Gems used in development.
gem 'rake'
gem 'rdoc'
gem 'rspec'
gem 'yard'
gem 'yard-doctest'
gem 'guard'
gem 'guard-rake'
gem 'guard-rubocop'
gem 'rantly'

group :ci do
  gem 'rspec_junit_formatter'
end
