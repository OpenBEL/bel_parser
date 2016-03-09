# ragel-parsers

This is an experiment to combine multiple, discrete Ragel parsers for BEL Script.

The design has potential to:

1. Apply discrete parsers heuristically.
2. Sequentially apply discrete parsers to match partial forms like BEL parameters, function names, or relationship names.
3. Ease maintenance. Reduced complexity vs a single parser.

### Playing around

1. Install [ragel 6.9](http://www.colm.net/open-source/ragel/).
2. Install gems from Gemfile: `gem install -g Gemfile --user-install`
3. Build all ragels with: `./build_all.sh`
4. Continuously build/test ragels with guard: `./run_guard.sh`.

### Plans

- ~Recognize `{ ... }` LIST constructs.~
- ~Add `DEFINE` parser.~
- ~Add BEL parameter parser.~
- ~Add BEL term parser.~
- Add BEL statement parser.
- Build line parser.
  - ~normalize line terminator~
  - ~macro expansion of line continuator~
  - skip lines beginning with comment (maybe this is a parser?)
  - skip lines with only whitespace (maybe this is a parser?)

### Issues

- Applying multiple parsers per line may be difficult to handle the character pointer and switch between. This doesn't seem absolutely necessary though. We could have a function, relationship, and BEL parameter parser but for parsing BEL terms/statements we just include the Ragel definitions.
