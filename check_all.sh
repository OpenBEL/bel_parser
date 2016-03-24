#!/usr/bin/env bash
_=$(which rubocop >/dev/null 2>&1)
if [ $? -eq 1 ]; then echo "Missing rubocop."; exit 1; fi

# Run rubocop over all .rb files w/out "=begin", used to indicate Ragel.
rubocop $(grep -RL "=begin" --include="*.rb")

