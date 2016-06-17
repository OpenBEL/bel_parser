Gem::Specification.new do |spec|
  spec.name                  = 'bel_parser'
  spec.version               = File.read(
                                 File.join(
                                   File.expand_path(File.dirname(__FILE__)),
                                   'VERSION'))
  spec.summary               = %q{Parser for Biolgical Expression Language.}
  spec.description           = %q{Implements language versions 1.0 and 2.0.}
  spec.license               = 'Apache-2.0'
  spec.authors               = [
                                 'Anthony Bargnesi',
                                 'Nick Bargnesi',
                               ]
  spec.date                  = %q{2016-06-17}
  spec.email                 = %q{abargnesi@selventa.com}
  spec.files                 = [
                                 Dir.glob('lib/**/*.{rb,rl}'),
                                 __FILE__,
                                 'VERSION',
                                 'CHANGELOG.md',
                                 'LICENSE',
                                 'README.md'
                               ].flatten!
  spec.executables           = Dir.glob('bin/*').map(&File.method(:basename))
  spec.homepage              = 'https://github.com/OpenBEL/bel_parser'
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency  'sparql-client', '~> 2.0.0'
end
