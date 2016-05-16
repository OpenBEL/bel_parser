=begin
%%{
machine bel;

  NL          = '\n';
  SP          = ' ' | '\t';
  WS          = space;
  EQL         = '=';
  NUMBER_SIGN = '#';
  SQ		      = "'";
  DQ          = '"';
  COLON       = ':';
  ESCAPED     = /\\./;
  NOT_SQESC	  = [^'\\];
  NOT_DQESC	  = [^"\\];
  COMMA_DELIM = SP* ',' SP*;
  SS          = '//';
  ID_CHARS	  = [a-zA-Z0-9_]+;
  LP		  = '(';
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
    alpha+
    ;

   FUNCTION =
   	alpha+
   	;
}%%
=end
# vim: ts=2 sw=2 ft=ragel:
# encoding: utf-8
