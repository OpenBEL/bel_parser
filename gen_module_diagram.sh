#!/usr/bin/env bash
yard graph --empty-mixins --protected --full --dependencies | dot -Tsvg > uml2_diagram.svg
