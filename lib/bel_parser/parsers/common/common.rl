=begin
%%{
machine bel;

  NL          = '\n';
  SP          = ' ' | '\t';
  WS          = space;
  EQL         = '=';
  NUMBER_SIGN = '#';
  SQ          = "'";
  DQ          = '"';
  COLON       = ':';
  ESCAPED     = /\\./;
  NOT_SQESC   = [^'\\];
  NOT_DQESC   = [^"\\];
  COMMA_DELIM = SP* ',' SP*;
  SS          = '//';
  ID_CHARS    = [a-zA-Z0-9_]+;
  LP          = '(';
  RP          = ')';

  KW_SET = /SET/i;
  KW_UNSET = /UNSET/i;
  KW_DEFINE = /DEFINE/i;
  KW_ANNOTATION = /ANNOTATION/i;
  KW_NAMESPACE = /NAMESPACE/i;
  KW_AS = /AS/i;
  KW_LIST = /LIST/i;
  KW_PATTERN = /PATTERN/i;
  KW_URL = /URL/i;
  KW_URI = /URI/i;
  KW_DOCUMENT = /DOCUMENT/i;

  DEFINE_ANNOTATION =
    KW_DEFINE
    SP+
    KW_ANNOTATION
    ;

  DEFINE_NAMESPACE =
    KW_DEFINE
    SP+
    KW_NAMESPACE
    ;

  RELATIONSHIP =
    # ASCII range '!' to '~'
    (33..126)+
    ;

  FUNCTION =
    (print - (' ' | "'" | '"' | '('))+
    ;
}%%
=end
# vim: ts=2 sw=2 ft=ragel:
# encoding: utf-8
