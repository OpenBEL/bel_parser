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

  KW_SET = /SET/i;
  KW_DOCUMENT = /DOCUMENT/i;
  KW_AUTHORS = /Authors/i;
  KW_CONTACT_INFO = /ContactInfo/i;
  KW_COPYRIGHT = /Copyright/i;
  KW_DESCRIPTION = /Description/i;
  KW_LICENSES = /Licenses/i;
  KW_NAME = /Name/i;
  KW_VERSION = /Version/i;

  DOCUMENT_PROPERTY =
    KW_AUTHORS |
    KW_CONTACT_INFO |
    KW_COPYRIGHT |
    KW_DESCRIPTION |
    KW_LICENSES |
    KW_NAME |
    KW_VERSION
    ;
}%%
=end
# vim: ts=2 sw=2 ft=ragel:
# encoding: utf-8
