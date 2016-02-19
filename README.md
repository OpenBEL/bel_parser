# ragel-parsers

This is an experiment to combine multiple, discrete Ragel parsers for BEL Script.

The design has potential to:

1. Apply discrete parsers heuristically.
2. Sequentially apply discrete parsers to match partial forms like BEL parameters, function names, or relationship names.
3. Ease maintenance. Reduced complexity vs a single parser.

Issues

- Applying multiple parsers per line may be difficult to handle the character pointer and switch between. This doesn't seem absolutely necessary though. We could have a function, relationship, and BEL parameter parser but for parsing BEL terms/statements we just include the Ragel definitions.
