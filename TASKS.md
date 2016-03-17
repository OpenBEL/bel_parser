Sequential
- [x] Make ragel for String (string.rl). Construct AST.
- [x] Rebuild BelParameter using Identifier and String.
- [x] Add guard for building parsers and running rspec tests.
- Rebuild BelTerm using BelParameter.
- Separate out statement comment parser.
- Rebuild BelStatementObservedTerm using BelTerm.
- Add BelStatementSimple parser.
- Add BelStatementNested parser.
- Create a BEL Script line parser that uses all ragel machines.

Backlog
- Separate machines into bel/parsers/common/, bel/parsers/bel_expression, bel/parsers/bel_script.
- Remove the *bel_* / BEL prefixes from expression parsers
  - e.g. BelTerm -> Term, bel_term.rl -> term.rl
