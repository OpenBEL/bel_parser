# .gemspec
Gem::Specification.new do |s|
  s.name        = 'bel-ragel-parsers'
  s.version     = '0.1.0'
  s.licenses    = ['Apache-2.0']
  s.summary     = 'Ragel...For the Win!'
  s.description = 'He shoots, he scores!'
  s.authors     = ['Bob Costas']
  s.email       = 'bob.costas@nbc.com'
  s.files       = [
                    Dir.glob('lib/**/*.rb'),
                  ].flatten!
end
