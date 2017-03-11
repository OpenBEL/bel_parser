# bel_parser

The bel_parser gem implements BEL specifications (currently 1.0 and 2.0) and BEL Script nanopub format.

### Installation

  gem install bel_parser

### Motivation

The motivation for this library is to provide the building blocks to implement BEL specifications more easily. This includes:

- Recognizing input to Abstract Syntax Trees
- Applying syntax validation relative to a BEL specification.
- Applying signature validation relative to a BEL specification.
- Conversion of Abstract Syntax Trees to a Nanopub object model.

Currently BEL 1.0 and 2.0 specifications are implemented.

### Getting Started

bel_parser provides a Ruby library and a set of command-line tools.

Command-line tools:

1. *bel2_debug_ast*

  Writes the AST output recognized from the input.

  usage: `bel2_debug_ast` (Then enter a line at a time)

  usage: `bel2_debug_ast --file file.bel`

2. *bel2_validator*

  Validate the syntax and semantics of the AST recognized from the input.

  usage: `bel2_validator` (Then enter a line at a time)

  usage: `bel2_validator --file file.bel --specification 2.0`

3. *bel2_upgrade*

  Upgrades BEL statements from 1.0 to 2.0.

  usage: `bel2_upgrade` (Then enter a line at a time)

  usage: `bel2_upgrade --file file.bel`

### Development / Deployment

Development for the next release should be performed on the *next* branch. When the new changes are complete, functional, and tested they should be merged over to the *master* branch.

To make a release, perform the following steps:

- Update the version in the `VERSION` file.

- Add a new version with list of changes in the `CHANGELOG` file. This file is modelled after http://keepachangelog.com/.

- Build the Ruby and Java versions of the gem:

  Ruby: `gem build .gemspec`

  Java: `jruby -S gem build .gemspec`

- Create a release on GitHub with both gems and a summary of the changes in this version.

- Push both gems to RubyGems:

  `gem push bel_parser-VERSION.gem`

  `gem push bel_parser-VERSION-java.gem`

