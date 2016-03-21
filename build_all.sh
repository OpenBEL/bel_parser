#!/usr/bin/env bash

find lib -name "*.rl" -exec ragel -I lib/bel/parsers/common/ -I lib/bel/parsers/bel_expression -I lib/bel/parsers/bel_script -R -T0 -L {} \;
