# BEL parsers

This is an experiment to combine multiple, discrete Ragel definitions for parsing BEL expression and BEL script documents.

The design has potential to:

1. Apply discrete parsers heuristically.
2. Sequentially apply discrete parsers to match partial forms like BEL parameters, function names, or relationship names.
3. Ease maintenance. Reduced complexity vs a single parser.

### Playing around

1. Install [ragel 6.9](http://www.colm.net/open-source/ragel/).
2. Install gems from Gemfile: `gem install -g gem.deps.rb --user-install`
3. Build all ragels and run tests: `rake`
4. Continuously build/test ragels with guard: `./run_guard.sh`.

### Checking your code

You can run rubocop to check your code.

Run `./check_all.sh` or run continually using `guard`.

### Plans

- ~Recognize `{ ... }` LIST constructs.~
- ~Add `DEFINE` parser.~
- ~Add BEL parameter parser.~
- ~Add BEL term parser.~
- ~Add BEL statement parser.~
- ~Build line parser.~
  - ~normalize line terminator~
  - ~macro expansion of line continuator~
  - ~skip lines beginning with comment~
  - ~skip lines with only whitespace~
