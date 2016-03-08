#!/usr/bin/env bash

find lib -name "*.rl" -exec ragel -R -T0 -L {} \;
