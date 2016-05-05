=begin
%%{
machine bel;

  NL          = '\n';
  SP          = ' ' | '\t';
  WS          = space;
  EQL         = '=';
  NUMBER_SIGN = '#';
  SQ		  = "'";
  DQ          = '"';
  ESCAPED     = /\\./;
  NOT_SQESC	  = [^'\\];
  NOT_DQESC	  = [^"\\];
  COMMA_DELIM = SP* ',' SP*;

}%%
=end
# vim: ts=2 sw=2 ft=ragel:
# encoding: utf-8
