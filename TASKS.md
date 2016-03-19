Sequential
- [x] Make ragel for String (string.rl). Construct AST.
- [x] Rebuild BelParameter using Identifier and String.
- [x] Add guard for building parsers and running rspec tests.
- [x] Rebuild BelTerm using BelParameter.
- [x] Separate out statement comment parser.
- [x] Rebuild BelStatementObservedTerm using BelTerm.
- [x] Add BelStatementSimple parser.
- [x] Add BelStatementNested parser.
- Create a BEL Script line parser that uses all ragel machines.

Backlog
- Separate machines into bel/parsers/common/, bel/parsers/bel_expression, bel/parsers/bel_script.
- [x] Remove the *bel_* / BEL prefixes from expression parsers
  - [x] e.g. BelTerm -> Term, bel_term.rl -> term.rl
