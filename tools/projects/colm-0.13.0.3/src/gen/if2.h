#ifndef _EXPORTS_H
#define _EXPORTS_H

#include <colm/colm.h>
#include <string>

inline void appendString( colm_print_args *args, const char *data, int length )
{
	std::string *str = (std::string*)args->arg;
	*str += std::string( data, length );
}

inline std::string printTreeStr( colm_program *prg, colm_tree *tree, bool trim )
{
	std::string str;
	colm_print_args printArgs = { &str, 1, 0, trim, &appendString, 
			&colm_print_null, &colm_print_term_tree, &colm_print_null };
	colm_print_tree_args( prg, colm_vm_root(prg), &printArgs, tree );
	return str;
}

struct _notoken;
struct ptr;
struct _void;
struct str;
struct il;
struct any;
struct DEF;
struct LEX;
struct END;
struct TOKEN;
struct RL;
struct IGNORE;
struct PRINT;
struct PRINTS;
struct PRINT_XML;
struct PRINT_XML_AC;
struct PARSE;
struct REDUCE;
struct PARSE_TREE;
struct PARSE_STOP;
struct CONS;
struct MATCH;
struct REQUIRE;
struct SEND;
struct SEND_TREE;
struct NAMESPACE;
struct REDUCTION;
struct FOR;
struct IF;
struct YIELD;
struct WHILE;
struct ELSIF;
struct ELSE;
struct IN;
struct PARSER;
struct LIST;
struct LIST_EL;
struct MAP;
struct MAP_EL;
struct PTR;
struct ITER;
struct REF;
struct EXPORT;
struct RETURN;
struct BREAK;
struct REJECT;
struct REDUCEFIRST;
struct ALIAS;
struct COMMIT;
struct NEW;
struct PREEOF;
struct GLOBAL;
struct EOS;
struct CAST;
struct SWITCH;
struct CASE;
struct DEFAULT;
struct INT;
struct BOOL;
struct MAKE_TOKEN;
struct MAKE_TREE;
struct TYPEID;
struct LITERAL;
struct CONTEXT;
struct STRUCT;
struct NI;
struct NIL;
struct TRUE;
struct FALSE;
struct LEFT;
struct RIGHT;
struct NONASSOC;
struct INCLUDE;
struct id;
struct number;
struct backtick_lit;
struct DQ;
struct SQ;
struct TILDE;
struct SQOPEN;
struct SQCLOSE;
struct BAR;
struct FSLASH;
struct COLON;
struct DOUBLE_COLON;
struct DOT;
struct ARROW;
struct POPEN;
struct PCLOSE;
struct COPEN;
struct CCLOSE;
struct STAR;
struct QUESTION;
struct EQUALS;
struct EQEQ;
struct NEQ;
struct COMMA;
struct LT;
struct GT;
struct LTEQ;
struct GTEQ;
struct BANG;
struct DOLLAR;
struct CARET;
struct PERCENT;
struct PLUS;
struct MINUS;
struct AMPAMP;
struct BARBAR;
struct _ignore_00cf;
struct _ignore_00d1;
struct CONS_DQ;
struct CONS_DQ_NL;
struct CONS_SQOPEN;
struct CONS_SQCLOSE;
struct dq_cons_data;
struct CONS_SQ;
struct CONS_SQ_NL;
struct sq_cons_data;
struct TILDE_NL;
struct tilde_data;
struct lex_id;
struct lex_uint;
struct lex_hex;
struct lex_lit;
struct LEX_DOT;
struct LEX_BAR;
struct LEX_AMP;
struct LEX_DASH;
struct LEX_POPEN;
struct LEX_PCLOSE;
struct LEX_STAR;
struct LEX_STARSTAR;
struct LEX_QUESTION;
struct LEX_PLUS;
struct LEX_CARET;
struct LEX_DOTDOT;
struct LEX_SQOPEN_POS;
struct LEX_SQOPEN_NEG;
struct LEX_FSLASH;
struct LEX_DASHDASH;
struct LEX_COLON_GT;
struct LEX_COLON_GTGT;
struct LEX_LT_COLON;
struct _ignore_0115;
struct _ignore_0117;
struct RE_DASH;
struct RE_CHAR;
struct RE_SQCLOSE;
struct RED_OPEN;
struct RED_CLOSE;
struct red_id;
struct red_comment;
struct red_ws;
struct red_lit;
struct RED_LHS;
struct RED_RHS_REF;
struct RED_RHS_LOC;
struct RED_RHS_NREF;
struct RED_RHS_NLOC;
struct red_any;
struct start;
struct root_item;
struct include;
struct precedence_def;
struct pred_type;
struct pred_token_list;
struct pred_token;
struct pre_eof_def;
struct alias_def;
struct struct_item;
struct export_def;
struct global_def;
struct iter_def;
struct reference_type_ref;
struct param_var_def_seq;
struct param_var_def_list;
struct param_var_def;
struct opt_export;
struct function_def;
struct in_host_def;
struct struct_var_def;
struct struct_key;
struct struct_def;
struct literal_def;
struct literal_list;
struct literal_item;
struct no_ignore_left;
struct no_ignore_right;
struct reduction_def;
struct red_nonterm;
struct red_action;
struct host_item;
struct reduction_item;
struct namespace_def;
struct namespace_item;
struct obj_var_list;
struct opt_reduce_first;
struct cfl_def;
struct region_def;
struct rl_def;
struct opt_lex_expr;
struct token_def;
struct ic_def;
struct opt_translate;
struct opt_id;
struct ignore_def;
struct prod_el;
struct opt_prod_el_name;
struct prod_el_list;
struct opt_commit;
struct opt_prod_name;
struct prod;
struct opt_reduce;
struct prod_list;
struct case_clause;
struct default_clause;
struct case_clause_list;
struct statement;
struct elsif_list;
struct elsif_clause;
struct optional_else;
struct call_arg_seq;
struct call_arg_list;
struct iter_call;
struct block_or_single;
struct require_pattern;
struct opt_require_stmt;
struct lang_stmt_list;
struct opt_def_init;
struct var_def;
struct print_stmt;
struct expr_stmt;
struct code_expr;
struct code_relational;
struct code_additive;
struct code_multiplicitive;
struct code_unary;
struct opt_eos;
struct code_factor;
struct type_ref;
struct region_qual;
struct opt_repeat;
struct opt_capture;
struct opt_field_init;
struct field_init;
struct opt_label;
struct dq_lit_term;
struct sq_lit_term;
struct opt_tilde_data;
struct pattern_el_lel;
struct pattern_el;
struct litpat_el;
struct pattern_top_el;
struct pattern_list;
struct pattern;
struct E1;
struct E2;
struct E3;
struct E4;
struct cons_el;
struct lit_cons_el;
struct cons_top_el;
struct cons_list;
struct constructor;
struct accum_el;
struct lit_accum_el;
struct accum_top_el;
struct accum_list;
struct accumulate;
struct string_el;
struct lit_string_el;
struct string_top_el;
struct string_list;
struct string;
struct var_ref;
struct qual;
struct lex_expr;
struct opt_lex_dot;
struct lex_term;
struct lex_factor_rep;
struct lex_factor_neg;
struct lex_range_lit;
struct lex_num;
struct lex_factor;
struct reg_or_data;
struct reg_or_char;
struct _ign_0x1946c30;
struct _ign_0x197a680;
struct _ign_0x197d190;
struct _ign_0x197ee80;
struct _ign_0x197fe20;
struct _ign_0x198d090;
struct _ign_0x19ab9d0;
struct __0x197a720_DEF_PAT_1;
struct __0x197d230_DEF_PAT_2;
struct __0x197ef20_DEF_PAT_3;
struct __0x198d130_DEF_PAT_4;
struct __0x19aba70_DEF_PAT_5;
struct _repeat_root_item;
struct _repeat_sq_cons_data;
struct _repeat_struct_item;
struct _repeat_reduction_item;
struct _repeat_host_item;
struct _repeat_namespace_item;
struct _repeat_var_def;
struct _repeat_statement;
struct _repeat_field_init;
struct _repeat_litpat_el;
struct _repeat_pattern_el;
struct _repeat_lit_cons_el;
struct _repeat_cons_el;
struct _repeat_lit_accum_el;
struct _repeat_accum_el;
struct _repeat_lit_string_el;
struct _repeat_string_el;
struct _T_any;
struct _T_start;
struct _T_root_item;
struct _T_include;
struct _T_precedence_def;
struct _T_pred_type;
struct _T_pred_token_list;
struct _T_pred_token;
struct _T_pre_eof_def;
struct _T_alias_def;
struct _T_struct_item;
struct _T_export_def;
struct _T_global_def;
struct _T_iter_def;
struct _T_reference_type_ref;
struct _T_param_var_def_seq;
struct _T_param_var_def_list;
struct _T_param_var_def;
struct _T_opt_export;
struct _T_function_def;
struct _T_in_host_def;
struct _T_struct_var_def;
struct _T_struct_key;
struct _T_struct_def;
struct _T_literal_def;
struct _T_literal_list;
struct _T_literal_item;
struct _T_no_ignore_left;
struct _T_no_ignore_right;
struct _T_reduction_def;
struct _T_red_nonterm;
struct _T_red_action;
struct _T_host_item;
struct _T_reduction_item;
struct _T_namespace_def;
struct _T_namespace_item;
struct _T_obj_var_list;
struct _T_opt_reduce_first;
struct _T_cfl_def;
struct _T_region_def;
struct _T_rl_def;
struct _T_opt_lex_expr;
struct _T_token_def;
struct _T_ic_def;
struct _T_opt_translate;
struct _T_opt_id;
struct _T_ignore_def;
struct _T_prod_el;
struct _T_opt_prod_el_name;
struct _T_prod_el_list;
struct _T_opt_commit;
struct _T_opt_prod_name;
struct _T_prod;
struct _T_opt_reduce;
struct _T_prod_list;
struct _T_case_clause;
struct _T_default_clause;
struct _T_case_clause_list;
struct _T_statement;
struct _T_elsif_list;
struct _T_elsif_clause;
struct _T_optional_else;
struct _T_call_arg_seq;
struct _T_call_arg_list;
struct _T_iter_call;
struct _T_block_or_single;
struct _T_require_pattern;
struct _T_opt_require_stmt;
struct _T_lang_stmt_list;
struct _T_opt_def_init;
struct _T_var_def;
struct _T_print_stmt;
struct _T_expr_stmt;
struct _T_code_expr;
struct _T_code_relational;
struct _T_code_additive;
struct _T_code_multiplicitive;
struct _T_code_unary;
struct _T_opt_eos;
struct _T_code_factor;
struct _T_type_ref;
struct _T_region_qual;
struct _T_opt_repeat;
struct _T_opt_capture;
struct _T_opt_field_init;
struct _T_field_init;
struct _T_opt_label;
struct _T_dq_lit_term;
struct _T_sq_lit_term;
struct _T_opt_tilde_data;
struct _T_pattern_el_lel;
struct _T_pattern_el;
struct _T_litpat_el;
struct _T_pattern_top_el;
struct _T_pattern_list;
struct _T_pattern;
struct _T_E1;
struct _T_E2;
struct _T_E3;
struct _T_E4;
struct _T_cons_el;
struct _T_lit_cons_el;
struct _T_cons_top_el;
struct _T_cons_list;
struct _T_constructor;
struct _T_accum_el;
struct _T_lit_accum_el;
struct _T_accum_top_el;
struct _T_accum_list;
struct _T_accumulate;
struct _T_string_el;
struct _T_lit_string_el;
struct _T_string_top_el;
struct _T_string_list;
struct _T_string;
struct _T_var_ref;
struct _T_qual;
struct _T_lex_expr;
struct _T_opt_lex_dot;
struct _T_lex_term;
struct _T_lex_factor_rep;
struct _T_lex_factor_neg;
struct _T_lex_range_lit;
struct _T_lex_num;
struct _T_lex_factor;
struct _T_reg_or_data;
struct _T_reg_or_char;
struct _T__repeat_root_item;
struct _T__repeat_sq_cons_data;
struct _T__repeat_struct_item;
struct _T__repeat_reduction_item;
struct _T__repeat_host_item;
struct _T__repeat_namespace_item;
struct _T__repeat_var_def;
struct _T__repeat_statement;
struct _T__repeat_field_init;
struct _T__repeat_litpat_el;
struct _T__repeat_pattern_el;
struct _T__repeat_lit_cons_el;
struct _T__repeat_cons_el;
struct _T__repeat_lit_accum_el;
struct _T__repeat_accum_el;
struct _T__repeat_lit_string_el;
struct _T__repeat_string_el;
struct _root;
struct _notoken
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_notoken( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ptr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ptr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _void
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_void( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct str
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	str( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct il
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	il( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct DEF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	DEF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct END
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	END( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct TOKEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	TOKEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct IGNORE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	IGNORE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PRINT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PRINT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PRINTS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PRINTS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PRINT_XML
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PRINT_XML( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PRINT_XML_AC
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PRINT_XML_AC( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PARSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PARSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct REDUCE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	REDUCE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PARSE_TREE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PARSE_TREE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PARSE_STOP
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PARSE_STOP( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct MATCH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	MATCH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct REQUIRE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	REQUIRE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct SEND
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	SEND( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct SEND_TREE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	SEND_TREE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct NAMESPACE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	NAMESPACE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct REDUCTION
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	REDUCTION( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct FOR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	FOR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct IF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	IF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct YIELD
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	YIELD( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct WHILE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	WHILE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ELSIF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ELSIF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ELSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ELSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct IN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	IN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PARSER
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PARSER( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LIST
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LIST( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LIST_EL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LIST_EL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct MAP
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	MAP( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct MAP_EL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	MAP_EL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PTR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PTR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ITER
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ITER( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct REF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	REF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct EXPORT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	EXPORT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RETURN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RETURN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct BREAK
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	BREAK( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct REJECT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	REJECT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct REDUCEFIRST
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	REDUCEFIRST( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ALIAS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ALIAS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct COMMIT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	COMMIT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct NEW
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	NEW( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PREEOF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PREEOF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct GLOBAL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	GLOBAL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct EOS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	EOS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CAST
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CAST( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct SWITCH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	SWITCH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CASE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CASE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct DEFAULT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	DEFAULT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct INT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	INT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct BOOL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	BOOL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct MAKE_TOKEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	MAKE_TOKEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct MAKE_TREE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	MAKE_TREE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct TYPEID
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	TYPEID( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LITERAL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LITERAL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONTEXT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONTEXT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct STRUCT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	STRUCT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct NI
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	NI( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct NIL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	NIL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct TRUE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	TRUE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct FALSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	FALSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEFT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEFT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RIGHT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RIGHT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct NONASSOC
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	NONASSOC( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct INCLUDE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	INCLUDE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct id
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	id( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct backtick_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	backtick_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct DQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	DQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct SQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	SQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct TILDE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	TILDE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct SQOPEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	SQOPEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct SQCLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	SQCLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct BAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	BAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct FSLASH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	FSLASH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct COLON
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	COLON( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct DOUBLE_COLON
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	DOUBLE_COLON( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct DOT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	DOT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ARROW
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ARROW( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct POPEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	POPEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PCLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PCLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct COPEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	COPEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CCLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CCLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct STAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	STAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct QUESTION
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	QUESTION( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct EQUALS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	EQUALS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct EQEQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	EQEQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct NEQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	NEQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct COMMA
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	COMMA( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct GT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	GT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LTEQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LTEQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct GTEQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	GTEQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct BANG
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	BANG( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct DOLLAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	DOLLAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CARET
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CARET( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PERCENT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PERCENT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct PLUS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	PLUS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct MINUS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	MINUS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct AMPAMP
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	AMPAMP( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct BARBAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	BARBAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ignore_00cf
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_00cf( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ignore_00d1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_00d1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS_DQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS_DQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS_DQ_NL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS_DQ_NL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS_SQOPEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS_SQOPEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS_SQCLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS_SQCLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct dq_cons_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	dq_cons_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS_SQ
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS_SQ( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct CONS_SQ_NL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	CONS_SQ_NL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct sq_cons_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	sq_cons_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct TILDE_NL
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	TILDE_NL( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct tilde_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	tilde_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct lex_id
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_id( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct lex_uint
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_uint( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct lex_hex
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_hex( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct lex_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_DOT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_DOT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_BAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_BAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_AMP
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_AMP( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_DASH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_DASH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_POPEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_POPEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_PCLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_PCLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_STAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_STAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_STARSTAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_STARSTAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_QUESTION
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_QUESTION( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_PLUS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_PLUS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_CARET
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_CARET( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_DOTDOT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_DOTDOT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_SQOPEN_POS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_SQOPEN_POS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_SQOPEN_NEG
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_SQOPEN_NEG( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_FSLASH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_FSLASH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_DASHDASH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_DASHDASH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_COLON_GT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_COLON_GT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_COLON_GTGT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_COLON_GTGT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct LEX_LT_COLON
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	LEX_LT_COLON( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ignore_0115
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_0115( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ignore_0117
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_0117( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RE_DASH
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RE_DASH( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RE_CHAR
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RE_CHAR( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RE_SQCLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RE_SQCLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_OPEN
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_OPEN( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_CLOSE
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_CLOSE( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct red_id
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_id( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct red_comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct red_ws
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_ws( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct red_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_LHS
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_LHS( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_RHS_REF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_RHS_REF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_RHS_LOC
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_RHS_LOC( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_RHS_NREF
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_RHS_NREF( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct RED_RHS_NLOC
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	RED_RHS_NLOC( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct red_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct start
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	start( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::_repeat_root_item RootItemList();
};
struct root_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	root_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::rl_def rl_def();
	::literal_def literal_def();
	::token_def token_def();
	::ic_def ic_def();
	::ignore_def ignore_def();
	::cfl_def cfl_def();
	::region_def region_def();
	::struct_def struct_def();
	::namespace_def namespace_def();
	::function_def function_def();
	::in_host_def in_host_def();
	::iter_def iter_def();
	::statement statement();
	::global_def global_def();
	::export_def export_def();
	::pre_eof_def pre_eof_def();
	::precedence_def precedence_def();
	::alias_def alias_def();
	::include include();
	::reduction_def reduction_def();
	enum prod_name {
		Rl = 0,
		Literal = 1,
		Token = 2,
		IgnoreCollector = 3,
		Ignore = 4,
		Cfl = 5,
		Region = 6,
		Struct = 7,
		Namespace = 8,
		Function = 9,
		InHost = 10,
		Iter = 11,
		Statement = 12,
		Global = 13,
		Export = 14,
		PreEof = 15,
		Precedence = 16,
		Alias = 17,
		Include = 18,
		Reduction = 19,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct include
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	include( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::INCLUDE INCLUDE();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
};
struct precedence_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	precedence_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pred_type pred_type();
	::pred_token_list pred_token_list();
};
struct pred_type
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pred_type( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEFT LEFT();
	::RIGHT RIGHT();
	::NONASSOC NONASSOC();
	enum prod_name {
		Left = 0,
		Right = 1,
		NonAssoc = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pred_token_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pred_token_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pred_token_list _pred_token_list();
	::COMMA COMMA();
	::pred_token pred_token();
	enum prod_name {
		List = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pred_token
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pred_token( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::id id();
	::backtick_lit backtick_lit();
	enum prod_name {
		Id = 0,
		Lit = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pre_eof_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pre_eof_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::PREEOF PREEOF();
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct alias_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	alias_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ALIAS ALIAS();
	::id id();
	::type_ref type_ref();
};
struct struct_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	struct_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::struct_var_def struct_var_def();
	::literal_def literal_def();
	::rl_def rl_def();
	::token_def token_def();
	::ic_def ic_def();
	::ignore_def ignore_def();
	::cfl_def cfl_def();
	::region_def region_def();
	::struct_def struct_def();
	::function_def function_def();
	::in_host_def in_host_def();
	::iter_def iter_def();
	::export_def export_def();
	::pre_eof_def pre_eof_def();
	::precedence_def precedence_def();
	::alias_def alias_def();
	enum prod_name {
		StructVar = 0,
		Literal = 1,
		Rl = 2,
		Token = 3,
		IgnoreCollector = 4,
		Ignore = 5,
		Cfl = 6,
		Region = 7,
		Struct = 8,
		Function = 9,
		InHost = 10,
		Iter = 11,
		Export = 12,
		PreEof = 13,
		Precedence = 14,
		Alias = 15,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct export_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	export_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::EXPORT EXPORT();
	::var_def var_def();
	::opt_def_init opt_def_init();
};
struct global_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	global_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::GLOBAL GLOBAL();
	::var_def var_def();
	::opt_def_init opt_def_init();
};
struct iter_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	iter_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ITER ITER();
	::id id();
	::POPEN POPEN();
	::param_var_def_list ParamVarDefList();
	::PCLOSE PCLOSE();
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct reference_type_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reference_type_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REF REF();
	::LT LT();
	::type_ref type_ref();
	::GT GT();
};
struct param_var_def_seq
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	param_var_def_seq( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::param_var_def param_var_def();
	::COMMA COMMA();
	::param_var_def_seq _param_var_def_seq();
};
struct param_var_def_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	param_var_def_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::param_var_def_seq param_var_def_seq();
};
struct param_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	param_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	::type_ref type_ref();
	::reference_type_ref reference_type_ref();
	enum prod_name {
		Type = 0,
		Ref = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_export
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_export( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::EXPORT EXPORT();
	enum prod_name {
		Export = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct function_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	function_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_export opt_export();
	::type_ref type_ref();
	::id id();
	::POPEN POPEN();
	::param_var_def_list ParamVarDefList();
	::PCLOSE PCLOSE();
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct in_host_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	in_host_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_export opt_export();
	::type_ref type_ref();
	::id id();
	::POPEN POPEN();
	::param_var_def_list ParamVarDefList();
	::PCLOSE PCLOSE();
	::EQUALS EQUALS();
	::id HostFunc();
};
struct struct_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	struct_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::var_def var_def();
};
struct struct_key
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	struct_key( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::STRUCT STRUCT();
	::CONTEXT CONTEXT();
};
struct struct_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	struct_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::struct_key struct_key();
	::id id();
	::_repeat_struct_item ItemList();
	::END END();
};
struct literal_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	literal_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LITERAL LITERAL();
	::literal_list literal_list();
};
struct literal_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	literal_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::literal_list _literal_list();
	::literal_item literal_item();
	enum prod_name {
		Item = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct literal_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	literal_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::no_ignore_left no_ignore_left();
	::backtick_lit backtick_lit();
	::no_ignore_right no_ignore_right();
};
struct no_ignore_left
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	no_ignore_left( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::NI NI();
	::MINUS MINUS();
	enum prod_name {
		Ni = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct no_ignore_right
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	no_ignore_right( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::MINUS MINUS();
	::NI NI();
	enum prod_name {
		Ni = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct reduction_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reduction_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REDUCTION REDUCTION();
	::id id();
	::_repeat_reduction_item ItemList();
	::END END();
};
struct red_nonterm
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_nonterm( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::type_ref type_ref();
	::RED_OPEN RED_OPEN();
	::_repeat_host_item HostItems();
	::RED_CLOSE RED_CLOSE();
};
struct red_action
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	red_action( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::type_ref type_ref();
	::COLON COLON();
	::id id();
	::RED_OPEN RED_OPEN();
	::_repeat_host_item HostItems();
	::RED_CLOSE RED_CLOSE();
};
struct host_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	host_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::red_id red_id();
	::red_lit red_lit();
	::red_comment red_comment();
	::red_ws red_ws();
	::red_any red_any();
	::RED_LHS RED_LHS();
	::RED_RHS_REF RED_RHS_REF();
	::RED_RHS_LOC RED_RHS_LOC();
	::RED_RHS_NREF RED_RHS_NREF();
	::RED_RHS_NLOC RED_RHS_NLOC();
	::RED_OPEN RED_OPEN();
	::_repeat_host_item HostItems();
	::RED_CLOSE RED_CLOSE();
};
struct reduction_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reduction_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::red_nonterm red_nonterm();
	::red_action red_action();
	enum prod_name {
		NonTerm = 0,
		Action = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct namespace_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	namespace_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::NAMESPACE NAMESPACE();
	::id id();
	::_repeat_namespace_item ItemList();
	::END END();
};
struct namespace_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	namespace_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::rl_def rl_def();
	::literal_def literal_def();
	::token_def token_def();
	::ic_def ic_def();
	::ignore_def ignore_def();
	::cfl_def cfl_def();
	::region_def region_def();
	::struct_def struct_def();
	::namespace_def namespace_def();
	::function_def function_def();
	::in_host_def in_host_def();
	::iter_def iter_def();
	::pre_eof_def pre_eof_def();
	::precedence_def precedence_def();
	::alias_def alias_def();
	::include include();
	::global_def global_def();
	enum prod_name {
		Rl = 0,
		Literal = 1,
		Token = 2,
		IgnoreCollector = 3,
		Ignore = 4,
		Cfl = 5,
		Region = 6,
		Struct = 7,
		Namespace = 8,
		Function = 9,
		InHost = 10,
		Iter = 11,
		PreEof = 12,
		Precedence = 13,
		Alias = 14,
		Include = 15,
		Global = 16,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct obj_var_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	obj_var_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct opt_reduce_first
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_reduce_first( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REDUCEFIRST REDUCEFIRST();
};
struct cfl_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	cfl_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DEF DEF();
	::id id();
	::_repeat_var_def VarDefList();
	::opt_reduce_first opt_reduce_first();
	::prod_list prod_list();
};
struct region_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	region_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEX LEX();
	::_repeat_root_item RootItemList();
	::END END();
};
struct rl_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	rl_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::RL RL();
	::id id();
	::LEX_FSLASH LEX_FSLASH();
	::lex_expr lex_expr();
};
struct opt_lex_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_lex_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_expr lex_expr();
};
struct token_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	token_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::TOKEN TOKEN();
	::id id();
	::_repeat_var_def VarDefList();
	::no_ignore_left no_ignore_left();
	::LEX_FSLASH LEX_FSLASH();
	::opt_lex_expr opt_lex_expr();
	::no_ignore_right no_ignore_right();
	::opt_translate opt_translate();
};
struct ic_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ic_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::TOKEN TOKEN();
	::id id();
	::MINUS MINUS();
};
struct opt_translate
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_translate( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
	enum prod_name {
		Translate = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_id
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_id( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	enum prod_name {
		Id = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct ignore_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ignore_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::IGNORE IGNORE();
	::opt_id opt_id();
	::LEX_FSLASH LEX_FSLASH();
	::opt_lex_expr opt_lex_expr();
};
struct prod_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	prod_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_prod_el_name opt_prod_el_name();
	::region_qual region_qual();
	::id id();
	::opt_repeat opt_repeat();
	::backtick_lit backtick_lit();
	enum prod_name {
		Id = 0,
		Lit = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_prod_el_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_prod_el_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	enum prod_name {
		Name = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct prod_el_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	prod_el_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::prod_el_list _prod_el_list();
	::prod_el prod_el();
	enum prod_name {
		List = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_commit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_commit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COMMIT COMMIT();
	enum prod_name {
		Commit = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_prod_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_prod_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COLON COLON();
	::id id();
	enum prod_name {
		Name = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct prod
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	prod( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::SQOPEN SQOPEN();
	::prod_el_list prod_el_list();
	::SQCLOSE SQCLOSE();
	::opt_prod_name opt_prod_name();
	::opt_commit opt_commit();
	::opt_reduce opt_reduce();
};
struct opt_reduce
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_reduce( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
	enum prod_name {
		Reduce = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct prod_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	prod_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::prod_list _prod_list();
	::BAR BAR();
	::prod prod();
	enum prod_name {
		List = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct case_clause
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	case_clause( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::CASE CASE();
	::pattern pattern();
	::block_or_single block_or_single();
};
struct default_clause
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	default_clause( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DEFAULT DEFAULT();
	::block_or_single block_or_single();
};
struct case_clause_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	case_clause_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::case_clause case_clause();
	::case_clause_list _case_clause_list();
	::default_clause default_clause();
	enum prod_name {
		Recursive = 0,
		BaseCase = 1,
		BaseDefault = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct statement
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	statement( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::print_stmt print_stmt();
	::expr_stmt expr_stmt();
	::var_def var_def();
	::opt_def_init opt_def_init();
	::FOR FOR();
	::id id();
	::COLON COLON();
	::type_ref type_ref();
	::IN IN();
	::iter_call iter_call();
	::block_or_single block_or_single();
	::IF IF();
	::code_expr code_expr();
	::elsif_list elsif_list();
	::SWITCH SWITCH();
	::var_ref var_ref();
	::case_clause_list case_clause_list();
	::COPEN COPEN();
	::CCLOSE CCLOSE();
	::WHILE WHILE();
	::EQUALS EQUALS();
	::YIELD YIELD();
	::RETURN RETURN();
	::BREAK BREAK();
	::REJECT REJECT();
	enum prod_name {
		Print = 0,
		Expr = 1,
		VarDef = 2,
		For = 3,
		If = 4,
		SwitchUnder = 5,
		SwitchBlock = 6,
		While = 7,
		LhsVarRef = 8,
		Yield = 9,
		Return = 10,
		Break = 11,
		Reject = 12,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct elsif_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	elsif_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::elsif_clause elsif_clause();
	::elsif_list _elsif_list();
	::optional_else optional_else();
	enum prod_name {
		Clause = 0,
		OptElse = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct elsif_clause
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	elsif_clause( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ELSIF ELSIF();
	::code_expr code_expr();
	::block_or_single block_or_single();
};
struct optional_else
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	optional_else( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ELSE ELSE();
	::block_or_single block_or_single();
	enum prod_name {
		Else = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct call_arg_seq
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	call_arg_seq( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr code_expr();
	::COMMA COMMA();
	::call_arg_seq _call_arg_seq();
};
struct call_arg_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	call_arg_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::call_arg_seq call_arg_seq();
};
struct iter_call
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	iter_call( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::var_ref var_ref();
	::POPEN POPEN();
	::call_arg_list call_arg_list();
	::PCLOSE PCLOSE();
	::E2 E2();
	::id id();
	::E3 E3();
	::code_expr code_expr();
	enum prod_name {
		Call = 0,
		Id = 1,
		Expr = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct block_or_single
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_or_single( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
	::statement statement();
	enum prod_name {
		Block = 0,
		Single = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct require_pattern
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	require_pattern( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REQUIRE REQUIRE();
	::var_ref var_ref();
	::pattern pattern();
};
struct opt_require_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_require_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::require_pattern require_pattern();
	::lang_stmt_list lang_stmt_list();
	enum prod_name {
		Require = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lang_stmt_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lang_stmt_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::_repeat_statement StmtList();
	::opt_require_stmt opt_require_stmt();
};
struct opt_def_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_def_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::EQUALS EQUALS();
	::code_expr code_expr();
	enum prod_name {
		Init = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	::type_ref type_ref();
};
struct print_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	print_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::PRINT PRINT();
	::POPEN POPEN();
	::call_arg_list call_arg_list();
	::PCLOSE PCLOSE();
	::PRINTS PRINTS();
	::PRINT_XML PRINT_XML();
	::PRINT_XML_AC PRINT_XML_AC();
	::accumulate accumulate();
	enum prod_name {
		Tree = 0,
		PrintStream = 1,
		Xml = 2,
		XmlAc = 3,
		Accum = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct expr_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr code_expr();
};
struct code_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	code_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr _code_expr();
	::AMPAMP AMPAMP();
	::code_relational code_relational();
	::BARBAR BARBAR();
	enum prod_name {
		AmpAmp = 0,
		BarBar = 1,
		Base = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct code_relational
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	code_relational( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_relational _code_relational();
	::EQEQ EQEQ();
	::code_additive code_additive();
	::NEQ NEQ();
	::LT LT();
	::GT GT();
	::LTEQ LTEQ();
	::GTEQ GTEQ();
	enum prod_name {
		EqEq = 0,
		Neq = 1,
		Lt = 2,
		Gt = 3,
		LtEq = 4,
		GtEq = 5,
		Base = 6,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct code_additive
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	code_additive( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_additive _code_additive();
	::PLUS PLUS();
	::code_multiplicitive code_multiplicitive();
	::MINUS MINUS();
	enum prod_name {
		Plus = 0,
		Minus = 1,
		Base = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct code_multiplicitive
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	code_multiplicitive( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_multiplicitive _code_multiplicitive();
	::STAR STAR();
	::code_unary code_unary();
	::FSLASH FSLASH();
	enum prod_name {
		Star = 0,
		Fslash = 1,
		Base = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct code_unary
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	code_unary( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::BANG BANG();
	::code_factor code_factor();
	::DOLLAR DOLLAR();
	::CARET CARET();
	::PERCENT PERCENT();
	enum prod_name {
		Bang = 0,
		Dollar = 1,
		DollarDollar = 2,
		Caret = 3,
		Percent = 4,
		Base = 5,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_eos
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_eos( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DOT DOT();
	::EOS EOS();
	enum prod_name {
		Dot = 0,
		Eos = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct code_factor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	code_factor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::number number();
	::var_ref var_ref();
	::POPEN POPEN();
	::call_arg_list call_arg_list();
	::PCLOSE PCLOSE();
	::NIL NIL();
	::TRUE TRUE();
	::FALSE FALSE();
	::code_expr code_expr();
	::SEND SEND();
	::accumulate accumulate();
	::opt_eos opt_eos();
	::SEND_TREE SEND_TREE();
	::PARSE PARSE();
	::opt_capture opt_capture();
	::type_ref type_ref();
	::opt_field_init opt_field_init();
	::PARSE_TREE PARSE_TREE();
	::PARSE_STOP PARSE_STOP();
	::REDUCE REDUCE();
	::id id();
	::CONS CONS();
	::constructor constructor();
	::MATCH MATCH();
	::pattern pattern();
	::string string();
	::IN IN();
	::MAKE_TREE MAKE_TREE();
	::MAKE_TOKEN MAKE_TOKEN();
	::TYPEID TYPEID();
	::LT LT();
	::GT GT();
	::NEW NEW();
	::_repeat_field_init FieldInitList();
	::CAST CAST();
	::code_factor _code_factor();
	enum prod_name {
		Number = 0,
		Call = 1,
		VarRef = 2,
		Nil = 3,
		True = 4,
		False = 5,
		Paren = 6,
		Send = 7,
		SendTree = 8,
		Parse = 9,
		ParseTree = 10,
		ParseStop = 11,
		Reduce = 12,
		Cons = 13,
		Match = 14,
		String = 15,
		In = 16,
		MakeTree = 17,
		MakeToken = 18,
		TypeId = 19,
		New = 20,
		Cast = 21,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct type_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	type_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::id id();
	::opt_repeat opt_repeat();
	::INT INT();
	::BOOL BOOL();
	::PARSER PARSER();
	::LT LT();
	::type_ref _type_ref();
	::GT GT();
	::LIST LIST();
	::MAP MAP();
	::type_ref KeyType();
	::COMMA COMMA();
	::type_ref ValType();
	::LIST_EL LIST_EL();
	::MAP_EL MAP_EL();
	enum prod_name {
		Id = 0,
		Int = 1,
		Bool = 2,
		Parser = 3,
		List = 4,
		Map = 5,
		ListEl = 6,
		MapEl = 7,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct region_qual
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	region_qual( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual _region_qual();
	::id id();
	::DOUBLE_COLON DOUBLE_COLON();
	enum prod_name {
		Qual = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_repeat
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_repeat( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::STAR STAR();
	::PLUS PLUS();
	::QUESTION QUESTION();
	enum prod_name {
		Star = 0,
		Plus = 1,
		Question = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_capture
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_capture( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	enum prod_name {
		Id = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_field_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_field_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::POPEN POPEN();
	::_repeat_field_init FieldInitList();
	::PCLOSE PCLOSE();
	enum prod_name {
		Init = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct field_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	field_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr code_expr();
};
struct opt_label
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_label( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	enum prod_name {
		Id = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct dq_lit_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	dq_lit_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::CONS_DQ CONS_DQ();
	::CONS_DQ_NL CONS_DQ_NL();
};
struct sq_lit_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	sq_lit_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::CONS_SQ CONS_SQ();
	::CONS_SQ_NL CONS_SQ_NL();
};
struct opt_tilde_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_tilde_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::tilde_data tilde_data();
};
struct pattern_el_lel
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pattern_el_lel( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::id id();
	::opt_repeat opt_repeat();
	::backtick_lit backtick_lit();
	enum prod_name {
		Id = 0,
		Lit = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pattern_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pattern_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_label opt_label();
	::pattern_el_lel pattern_el_lel();
	::DQ DQ();
	::_repeat_litpat_el LitpatElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	enum prod_name {
		PatternEl = 0,
		Dq = 1,
		Sq = 2,
		Tilde = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct litpat_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	litpat_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_pattern_el PatternElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
	enum prod_name {
		ConsData = 0,
		SubList = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pattern_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pattern_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_litpat_el LitpatElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_pattern_el PatternElList();
	::SQCLOSE SQCLOSE();
	enum prod_name {
		Dq = 0,
		Sq = 1,
		Tilde = 2,
		SubList = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pattern_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pattern_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pattern_list _pattern_list();
	::pattern_top_el pattern_top_el();
	enum prod_name {
		List = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct pattern
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	pattern( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pattern_list pattern_list();
};
struct E1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	E1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct E2
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	E2( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct E3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	E3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct E4
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	E4( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::region_qual region_qual();
	::backtick_lit backtick_lit();
	::DQ DQ();
	::_repeat_lit_cons_el LitConsElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::E2 E2();
	::code_expr code_expr();
	enum prod_name {
		Lit = 0,
		Dq = 1,
		Sq = 2,
		Tilde = 3,
		CodeExpr = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lit_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lit_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_cons_el ConsElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
	enum prod_name {
		ConsData = 0,
		SubList = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct cons_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	cons_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_lit_cons_el LitConsElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_cons_el ConsElList();
	::SQCLOSE SQCLOSE();
	enum prod_name {
		Dq = 0,
		Sq = 1,
		Tilde = 2,
		SubList = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct cons_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	cons_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::cons_top_el cons_top_el();
	::cons_list _cons_list();
	enum prod_name {
		List = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct constructor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	constructor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::cons_list cons_list();
};
struct accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::DQ DQ();
	::_repeat_lit_accum_el LitAccumElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::E2 E2();
	::code_expr code_expr();
	enum prod_name {
		Dq = 0,
		Sq = 1,
		Tilde = 2,
		CodeExpr = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lit_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lit_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_accum_el AccumElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
	enum prod_name {
		ConsData = 0,
		SubList = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct accum_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	accum_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_lit_accum_el LitAccumElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_accum_el AccumElList();
	::SQCLOSE SQCLOSE();
	enum prod_name {
		Dq = 0,
		Sq = 1,
		Tilde = 2,
		SubList = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct accum_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	accum_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::accum_top_el accum_top_el();
	::accum_list _accum_list();
	enum prod_name {
		List = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct accumulate
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	accumulate( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::accum_list accum_list();
};
struct string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::DQ DQ();
	::_repeat_lit_string_el LitStringElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::E2 E2();
	::code_expr code_expr();
	enum prod_name {
		Dq = 0,
		Sq = 1,
		Tilde = 2,
		CodeExpr = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lit_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lit_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_string_el StringElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
	enum prod_name {
		ConsData = 0,
		SubList = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct string_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	string_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_lit_string_el LitStringElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_string_el StringElList();
	::SQCLOSE SQCLOSE();
	enum prod_name {
		Dq = 0,
		Sq = 1,
		Tilde = 2,
		SubList = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct string_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	string_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::string_top_el string_top_el();
	::string_list _string_list();
	enum prod_name {
		List = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct string
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	string( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::string_list string_list();
};
struct var_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	var_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::qual qual();
	::id id();
};
struct qual
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	qual( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::qual _qual();
	::id id();
	::DOT DOT();
	::ARROW ARROW();
	enum prod_name {
		Dot = 0,
		Arrow = 1,
		Base = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lex_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_expr _lex_expr();
	::LEX_BAR LEX_BAR();
	::lex_term lex_term();
	::LEX_AMP LEX_AMP();
	::LEX_DASH LEX_DASH();
	::LEX_DASHDASH LEX_DASHDASH();
	enum prod_name {
		Bar = 0,
		Amp = 1,
		Dash = 2,
		DashDash = 3,
		Base = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct opt_lex_dot
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_lex_dot( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEX_DOT LEX_DOT();
};
struct lex_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_term _lex_term();
	::opt_lex_dot opt_lex_dot();
	::lex_factor_rep lex_factor_rep();
	::LEX_COLON_GT LEX_COLON_GT();
	::LEX_COLON_GTGT LEX_COLON_GTGT();
	::LEX_LT_COLON LEX_LT_COLON();
	enum prod_name {
		Dot = 0,
		ColonGt = 1,
		ColonGtGt = 2,
		LtColon = 3,
		Base = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lex_factor_rep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_factor_rep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_factor_rep _lex_factor_rep();
	::LEX_STAR LEX_STAR();
	::LEX_STARSTAR LEX_STARSTAR();
	::LEX_PLUS LEX_PLUS();
	::LEX_QUESTION LEX_QUESTION();
	::COPEN COPEN();
	::lex_uint lex_uint();
	::CCLOSE CCLOSE();
	::COMMA COMMA();
	::lex_uint Low();
	::lex_uint High();
	::lex_factor_neg lex_factor_neg();
	enum prod_name {
		Star = 0,
		StarStar = 1,
		Plus = 2,
		Question = 3,
		Exact = 4,
		Max = 5,
		Min = 6,
		Range = 7,
		Base = 8,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lex_factor_neg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_factor_neg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEX_CARET LEX_CARET();
	::lex_factor_neg _lex_factor_neg();
	::lex_factor lex_factor();
	enum prod_name {
		Caret = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lex_range_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_range_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_lit lex_lit();
	::lex_num lex_num();
	enum prod_name {
		Lit = 0,
		Number = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct lex_num
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_num( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_uint lex_uint();
	::lex_hex lex_hex();
};
struct lex_factor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_factor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_lit lex_lit();
	::lex_id lex_id();
	::lex_uint lex_uint();
	::lex_hex lex_hex();
	::lex_range_lit Low();
	::LEX_DOTDOT LEX_DOTDOT();
	::lex_range_lit High();
	::LEX_SQOPEN_POS LEX_SQOPEN_POS();
	::reg_or_data reg_or_data();
	::RE_SQCLOSE RE_SQCLOSE();
	::LEX_SQOPEN_NEG LEX_SQOPEN_NEG();
	::LEX_POPEN LEX_POPEN();
	::lex_expr lex_expr();
	::LEX_PCLOSE LEX_PCLOSE();
	enum prod_name {
		Literal = 0,
		Id = 1,
		Number = 2,
		Hex = 3,
		Range = 4,
		PosOrBlock = 5,
		NegOrBlock = 6,
		Paren = 7,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct reg_or_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reg_or_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::reg_or_data _reg_or_data();
	::reg_or_char reg_or_char();
	enum prod_name {
		Data = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct reg_or_char
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reg_or_char( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::RE_CHAR RE_CHAR();
	::RE_CHAR Low();
	::RE_DASH RE_DASH();
	::RE_CHAR High();
	enum prod_name {
		Char = 0,
		Range = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct _ign_0x1946c30
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1946c30( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x197a680
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x197a680( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x197d190
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x197d190( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x197ee80
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x197ee80( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x197fe20
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x197fe20( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x198d090
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x198d090( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x19ab9d0
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x19ab9d0( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x197a720_DEF_PAT_1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x197a720_DEF_PAT_1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x197d230_DEF_PAT_2
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x197d230_DEF_PAT_2( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x197ef20_DEF_PAT_3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x197ef20_DEF_PAT_3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x198d130_DEF_PAT_4
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x198d130_DEF_PAT_4( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x19aba70_DEF_PAT_5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x19aba70_DEF_PAT_5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _repeat_root_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_root_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_root_item next();
	::root_item value();
};
struct _repeat_sq_cons_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_sq_cons_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_sq_cons_data next();
	::sq_cons_data value();
};
struct _repeat_struct_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_struct_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_struct_item next();
	::struct_item value();
};
struct _repeat_reduction_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_reduction_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_reduction_item next();
	::reduction_item value();
};
struct _repeat_host_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_host_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_host_item next();
	::host_item value();
};
struct _repeat_namespace_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_namespace_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_namespace_item next();
	::namespace_item value();
};
struct _repeat_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_var_def next();
	::var_def value();
};
struct _repeat_statement
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_statement( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_statement next();
	::statement value();
};
struct _repeat_field_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_field_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_field_init next();
	::field_init value();
};
struct _repeat_litpat_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_litpat_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_litpat_el next();
	::litpat_el value();
};
struct _repeat_pattern_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_pattern_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_pattern_el next();
	::pattern_el value();
};
struct _repeat_lit_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_lit_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_lit_cons_el next();
	::lit_cons_el value();
};
struct _repeat_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_cons_el next();
	::cons_el value();
};
struct _repeat_lit_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_lit_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_lit_accum_el next();
	::lit_accum_el value();
};
struct _repeat_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_accum_el next();
	::accum_el value();
};
struct _repeat_lit_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_lit_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_lit_string_el next();
	::lit_string_el value();
};
struct _repeat_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_string_el next();
	::string_el value();
};
struct _T_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T_start
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_start( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::_repeat_root_item RootItemList();
};
struct _T_root_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_root_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::rl_def rl_def();
	::literal_def literal_def();
	::token_def token_def();
	::ic_def ic_def();
	::ignore_def ignore_def();
	::cfl_def cfl_def();
	::region_def region_def();
	::struct_def struct_def();
	::namespace_def namespace_def();
	::function_def function_def();
	::in_host_def in_host_def();
	::iter_def iter_def();
	::statement statement();
	::global_def global_def();
	::export_def export_def();
	::pre_eof_def pre_eof_def();
	::precedence_def precedence_def();
	::alias_def alias_def();
	::include include();
	::reduction_def reduction_def();
};
struct _T_include
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_include( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::INCLUDE INCLUDE();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
};
struct _T_precedence_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_precedence_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pred_type pred_type();
	::pred_token_list pred_token_list();
};
struct _T_pred_type
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pred_type( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEFT LEFT();
	::RIGHT RIGHT();
	::NONASSOC NONASSOC();
};
struct _T_pred_token_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pred_token_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pred_token_list _pred_token_list();
	::COMMA COMMA();
	::pred_token pred_token();
};
struct _T_pred_token
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pred_token( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::id id();
	::backtick_lit backtick_lit();
};
struct _T_pre_eof_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pre_eof_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::PREEOF PREEOF();
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct _T_alias_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_alias_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ALIAS ALIAS();
	::id id();
	::type_ref type_ref();
};
struct _T_struct_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_struct_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::struct_var_def struct_var_def();
	::literal_def literal_def();
	::rl_def rl_def();
	::token_def token_def();
	::ic_def ic_def();
	::ignore_def ignore_def();
	::cfl_def cfl_def();
	::region_def region_def();
	::struct_def struct_def();
	::function_def function_def();
	::in_host_def in_host_def();
	::iter_def iter_def();
	::export_def export_def();
	::pre_eof_def pre_eof_def();
	::precedence_def precedence_def();
	::alias_def alias_def();
};
struct _T_export_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_export_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::EXPORT EXPORT();
	::var_def var_def();
	::opt_def_init opt_def_init();
};
struct _T_global_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_global_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::GLOBAL GLOBAL();
	::var_def var_def();
	::opt_def_init opt_def_init();
};
struct _T_iter_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_iter_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ITER ITER();
	::id id();
	::POPEN POPEN();
	::param_var_def_list ParamVarDefList();
	::PCLOSE PCLOSE();
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct _T_reference_type_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reference_type_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REF REF();
	::LT LT();
	::type_ref type_ref();
	::GT GT();
};
struct _T_param_var_def_seq
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_param_var_def_seq( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::param_var_def param_var_def();
	::COMMA COMMA();
	::param_var_def_seq _param_var_def_seq();
};
struct _T_param_var_def_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_param_var_def_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::param_var_def_seq param_var_def_seq();
};
struct _T_param_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_param_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	::type_ref type_ref();
	::reference_type_ref reference_type_ref();
};
struct _T_opt_export
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_export( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::EXPORT EXPORT();
};
struct _T_function_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_function_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_export opt_export();
	::type_ref type_ref();
	::id id();
	::POPEN POPEN();
	::param_var_def_list ParamVarDefList();
	::PCLOSE PCLOSE();
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct _T_in_host_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_in_host_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_export opt_export();
	::type_ref type_ref();
	::id id();
	::POPEN POPEN();
	::param_var_def_list ParamVarDefList();
	::PCLOSE PCLOSE();
	::EQUALS EQUALS();
	::id HostFunc();
};
struct _T_struct_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_struct_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::var_def var_def();
};
struct _T_struct_key
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_struct_key( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::STRUCT STRUCT();
	::CONTEXT CONTEXT();
};
struct _T_struct_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_struct_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::struct_key struct_key();
	::id id();
	::_repeat_struct_item ItemList();
	::END END();
};
struct _T_literal_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_literal_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LITERAL LITERAL();
	::literal_list literal_list();
};
struct _T_literal_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_literal_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::literal_list _literal_list();
	::literal_item literal_item();
};
struct _T_literal_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_literal_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::no_ignore_left no_ignore_left();
	::backtick_lit backtick_lit();
	::no_ignore_right no_ignore_right();
};
struct _T_no_ignore_left
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_no_ignore_left( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::NI NI();
	::MINUS MINUS();
};
struct _T_no_ignore_right
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_no_ignore_right( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::MINUS MINUS();
	::NI NI();
};
struct _T_reduction_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reduction_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REDUCTION REDUCTION();
	::id id();
	::_repeat_reduction_item ItemList();
	::END END();
};
struct _T_red_nonterm
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_red_nonterm( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::type_ref type_ref();
	::RED_OPEN RED_OPEN();
	::_repeat_host_item HostItems();
	::RED_CLOSE RED_CLOSE();
};
struct _T_red_action
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_red_action( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::type_ref type_ref();
	::COLON COLON();
	::id id();
	::RED_OPEN RED_OPEN();
	::_repeat_host_item HostItems();
	::RED_CLOSE RED_CLOSE();
};
struct _T_host_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_host_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::red_id red_id();
	::red_lit red_lit();
	::red_comment red_comment();
	::red_ws red_ws();
	::red_any red_any();
	::RED_LHS RED_LHS();
	::RED_RHS_REF RED_RHS_REF();
	::RED_RHS_LOC RED_RHS_LOC();
	::RED_RHS_NREF RED_RHS_NREF();
	::RED_RHS_NLOC RED_RHS_NLOC();
	::RED_OPEN RED_OPEN();
	::_repeat_host_item HostItems();
	::RED_CLOSE RED_CLOSE();
};
struct _T_reduction_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reduction_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::red_nonterm red_nonterm();
	::red_action red_action();
};
struct _T_namespace_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_namespace_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::NAMESPACE NAMESPACE();
	::id id();
	::_repeat_namespace_item ItemList();
	::END END();
};
struct _T_namespace_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_namespace_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::rl_def rl_def();
	::literal_def literal_def();
	::token_def token_def();
	::ic_def ic_def();
	::ignore_def ignore_def();
	::cfl_def cfl_def();
	::region_def region_def();
	::struct_def struct_def();
	::namespace_def namespace_def();
	::function_def function_def();
	::in_host_def in_host_def();
	::iter_def iter_def();
	::pre_eof_def pre_eof_def();
	::precedence_def precedence_def();
	::alias_def alias_def();
	::include include();
	::global_def global_def();
};
struct _T_obj_var_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_obj_var_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T_opt_reduce_first
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_reduce_first( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REDUCEFIRST REDUCEFIRST();
};
struct _T_cfl_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_cfl_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DEF DEF();
	::id id();
	::_repeat_var_def VarDefList();
	::opt_reduce_first opt_reduce_first();
	::prod_list prod_list();
};
struct _T_region_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_region_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEX LEX();
	::_repeat_root_item RootItemList();
	::END END();
};
struct _T_rl_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_rl_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::RL RL();
	::id id();
	::LEX_FSLASH LEX_FSLASH();
	::lex_expr lex_expr();
};
struct _T_opt_lex_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_lex_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_expr lex_expr();
};
struct _T_token_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_token_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::TOKEN TOKEN();
	::id id();
	::_repeat_var_def VarDefList();
	::no_ignore_left no_ignore_left();
	::LEX_FSLASH LEX_FSLASH();
	::opt_lex_expr opt_lex_expr();
	::no_ignore_right no_ignore_right();
	::opt_translate opt_translate();
};
struct _T_ic_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_ic_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::TOKEN TOKEN();
	::id id();
	::MINUS MINUS();
};
struct _T_opt_translate
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_translate( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct _T_opt_id
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_id( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
};
struct _T_ignore_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_ignore_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::IGNORE IGNORE();
	::opt_id opt_id();
	::LEX_FSLASH LEX_FSLASH();
	::opt_lex_expr opt_lex_expr();
};
struct _T_prod_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_prod_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_prod_el_name opt_prod_el_name();
	::region_qual region_qual();
	::id id();
	::opt_repeat opt_repeat();
	::backtick_lit backtick_lit();
};
struct _T_opt_prod_el_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_prod_el_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
};
struct _T_prod_el_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_prod_el_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::prod_el_list _prod_el_list();
	::prod_el prod_el();
};
struct _T_opt_commit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_commit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COMMIT COMMIT();
};
struct _T_opt_prod_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_prod_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COLON COLON();
	::id id();
};
struct _T_prod
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_prod( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::SQOPEN SQOPEN();
	::prod_el_list prod_el_list();
	::SQCLOSE SQCLOSE();
	::opt_prod_name opt_prod_name();
	::opt_commit opt_commit();
	::opt_reduce opt_reduce();
};
struct _T_opt_reduce
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_reduce( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
};
struct _T_prod_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_prod_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::prod_list _prod_list();
	::BAR BAR();
	::prod prod();
};
struct _T_case_clause
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_case_clause( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::CASE CASE();
	::pattern pattern();
	::block_or_single block_or_single();
};
struct _T_default_clause
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_default_clause( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DEFAULT DEFAULT();
	::block_or_single block_or_single();
};
struct _T_case_clause_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_case_clause_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::case_clause case_clause();
	::case_clause_list _case_clause_list();
	::default_clause default_clause();
};
struct _T_statement
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_statement( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::print_stmt print_stmt();
	::expr_stmt expr_stmt();
	::var_def var_def();
	::opt_def_init opt_def_init();
	::FOR FOR();
	::id id();
	::COLON COLON();
	::type_ref type_ref();
	::IN IN();
	::iter_call iter_call();
	::block_or_single block_or_single();
	::IF IF();
	::code_expr code_expr();
	::elsif_list elsif_list();
	::SWITCH SWITCH();
	::var_ref var_ref();
	::case_clause_list case_clause_list();
	::COPEN COPEN();
	::CCLOSE CCLOSE();
	::WHILE WHILE();
	::EQUALS EQUALS();
	::YIELD YIELD();
	::RETURN RETURN();
	::BREAK BREAK();
	::REJECT REJECT();
};
struct _T_elsif_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_elsif_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::elsif_clause elsif_clause();
	::elsif_list _elsif_list();
	::optional_else optional_else();
};
struct _T_elsif_clause
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_elsif_clause( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ELSIF ELSIF();
	::code_expr code_expr();
	::block_or_single block_or_single();
};
struct _T_optional_else
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_optional_else( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ELSE ELSE();
	::block_or_single block_or_single();
};
struct _T_call_arg_seq
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_call_arg_seq( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr code_expr();
	::COMMA COMMA();
	::call_arg_seq _call_arg_seq();
};
struct _T_call_arg_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_call_arg_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::call_arg_seq call_arg_seq();
};
struct _T_iter_call
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_iter_call( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::var_ref var_ref();
	::POPEN POPEN();
	::call_arg_list call_arg_list();
	::PCLOSE PCLOSE();
	::E2 E2();
	::id id();
	::E3 E3();
	::code_expr code_expr();
};
struct _T_block_or_single
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_or_single( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::COPEN COPEN();
	::lang_stmt_list lang_stmt_list();
	::CCLOSE CCLOSE();
	::statement statement();
};
struct _T_require_pattern
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_require_pattern( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::REQUIRE REQUIRE();
	::var_ref var_ref();
	::pattern pattern();
};
struct _T_opt_require_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_require_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::require_pattern require_pattern();
	::lang_stmt_list lang_stmt_list();
};
struct _T_lang_stmt_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lang_stmt_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::_repeat_statement StmtList();
	::opt_require_stmt opt_require_stmt();
};
struct _T_opt_def_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_def_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::EQUALS EQUALS();
	::code_expr code_expr();
};
struct _T_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
	::type_ref type_ref();
};
struct _T_print_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_print_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::PRINT PRINT();
	::POPEN POPEN();
	::call_arg_list call_arg_list();
	::PCLOSE PCLOSE();
	::PRINTS PRINTS();
	::PRINT_XML PRINT_XML();
	::PRINT_XML_AC PRINT_XML_AC();
	::accumulate accumulate();
};
struct _T_expr_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr code_expr();
};
struct _T_code_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_code_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr _code_expr();
	::AMPAMP AMPAMP();
	::code_relational code_relational();
	::BARBAR BARBAR();
};
struct _T_code_relational
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_code_relational( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_relational _code_relational();
	::EQEQ EQEQ();
	::code_additive code_additive();
	::NEQ NEQ();
	::LT LT();
	::GT GT();
	::LTEQ LTEQ();
	::GTEQ GTEQ();
};
struct _T_code_additive
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_code_additive( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_additive _code_additive();
	::PLUS PLUS();
	::code_multiplicitive code_multiplicitive();
	::MINUS MINUS();
};
struct _T_code_multiplicitive
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_code_multiplicitive( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_multiplicitive _code_multiplicitive();
	::STAR STAR();
	::code_unary code_unary();
	::FSLASH FSLASH();
};
struct _T_code_unary
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_code_unary( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::BANG BANG();
	::code_factor code_factor();
	::DOLLAR DOLLAR();
	::CARET CARET();
	::PERCENT PERCENT();
};
struct _T_opt_eos
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_eos( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DOT DOT();
	::EOS EOS();
};
struct _T_code_factor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_code_factor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::number number();
	::var_ref var_ref();
	::POPEN POPEN();
	::call_arg_list call_arg_list();
	::PCLOSE PCLOSE();
	::NIL NIL();
	::TRUE TRUE();
	::FALSE FALSE();
	::code_expr code_expr();
	::SEND SEND();
	::accumulate accumulate();
	::opt_eos opt_eos();
	::SEND_TREE SEND_TREE();
	::PARSE PARSE();
	::opt_capture opt_capture();
	::type_ref type_ref();
	::opt_field_init opt_field_init();
	::PARSE_TREE PARSE_TREE();
	::PARSE_STOP PARSE_STOP();
	::REDUCE REDUCE();
	::id id();
	::CONS CONS();
	::constructor constructor();
	::MATCH MATCH();
	::pattern pattern();
	::string string();
	::IN IN();
	::MAKE_TREE MAKE_TREE();
	::MAKE_TOKEN MAKE_TOKEN();
	::TYPEID TYPEID();
	::LT LT();
	::GT GT();
	::NEW NEW();
	::_repeat_field_init FieldInitList();
	::CAST CAST();
	::code_factor _code_factor();
};
struct _T_type_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_type_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::id id();
	::opt_repeat opt_repeat();
	::INT INT();
	::BOOL BOOL();
	::PARSER PARSER();
	::LT LT();
	::type_ref _type_ref();
	::GT GT();
	::LIST LIST();
	::MAP MAP();
	::type_ref KeyType();
	::COMMA COMMA();
	::type_ref ValType();
	::LIST_EL LIST_EL();
	::MAP_EL MAP_EL();
};
struct _T_region_qual
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_region_qual( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual _region_qual();
	::id id();
	::DOUBLE_COLON DOUBLE_COLON();
};
struct _T_opt_repeat
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_repeat( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::STAR STAR();
	::PLUS PLUS();
	::QUESTION QUESTION();
};
struct _T_opt_capture
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_capture( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
};
struct _T_opt_field_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_field_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::POPEN POPEN();
	::_repeat_field_init FieldInitList();
	::PCLOSE PCLOSE();
};
struct _T_field_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_field_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::code_expr code_expr();
};
struct _T_opt_label
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_label( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::id id();
	::COLON COLON();
};
struct _T_dq_lit_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_dq_lit_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::CONS_DQ CONS_DQ();
	::CONS_DQ_NL CONS_DQ_NL();
};
struct _T_sq_lit_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_sq_lit_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::CONS_SQ CONS_SQ();
	::CONS_SQ_NL CONS_SQ_NL();
};
struct _T_opt_tilde_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_tilde_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::tilde_data tilde_data();
};
struct _T_pattern_el_lel
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pattern_el_lel( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::id id();
	::opt_repeat opt_repeat();
	::backtick_lit backtick_lit();
};
struct _T_pattern_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pattern_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::opt_label opt_label();
	::pattern_el_lel pattern_el_lel();
	::DQ DQ();
	::_repeat_litpat_el LitpatElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
};
struct _T_litpat_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_litpat_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_pattern_el PatternElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
};
struct _T_pattern_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pattern_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_litpat_el LitpatElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_pattern_el PatternElList();
	::SQCLOSE SQCLOSE();
};
struct _T_pattern_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pattern_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pattern_list _pattern_list();
	::pattern_top_el pattern_top_el();
};
struct _T_pattern
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_pattern( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::pattern_list pattern_list();
};
struct _T_E1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_E1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T_E2
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_E2( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T_E3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_E3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T_E4
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_E4( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::region_qual region_qual();
	::backtick_lit backtick_lit();
	::DQ DQ();
	::_repeat_lit_cons_el LitConsElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::E2 E2();
	::code_expr code_expr();
};
struct _T_lit_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lit_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_cons_el ConsElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
};
struct _T_cons_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_cons_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_lit_cons_el LitConsElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_cons_el ConsElList();
	::SQCLOSE SQCLOSE();
};
struct _T_cons_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_cons_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::cons_top_el cons_top_el();
	::cons_list _cons_list();
};
struct _T_constructor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_constructor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::cons_list cons_list();
};
struct _T_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::DQ DQ();
	::_repeat_lit_accum_el LitAccumElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::E2 E2();
	::code_expr code_expr();
};
struct _T_lit_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lit_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_accum_el AccumElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
};
struct _T_accum_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_accum_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_lit_accum_el LitAccumElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_accum_el AccumElList();
	::SQCLOSE SQCLOSE();
};
struct _T_accum_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_accum_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::accum_top_el accum_top_el();
	::accum_list _accum_list();
};
struct _T_accumulate
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_accumulate( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::accum_list accum_list();
};
struct _T_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::E1 E1();
	::DQ DQ();
	::_repeat_lit_string_el LitStringElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::E2 E2();
	::code_expr code_expr();
};
struct _T_lit_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lit_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::dq_cons_data dq_cons_data();
	::CONS_SQOPEN CONS_SQOPEN();
	::_repeat_string_el StringElList();
	::CONS_SQCLOSE CONS_SQCLOSE();
};
struct _T_string_top_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_string_top_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::DQ DQ();
	::_repeat_lit_string_el LitStringElList();
	::dq_lit_term dq_lit_term();
	::SQ SQ();
	::_repeat_sq_cons_data SqConsDataList();
	::sq_lit_term sq_lit_term();
	::TILDE TILDE();
	::opt_tilde_data opt_tilde_data();
	::TILDE_NL TILDE_NL();
	::SQOPEN SQOPEN();
	::_repeat_string_el StringElList();
	::SQCLOSE SQCLOSE();
};
struct _T_string_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_string_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::string_top_el string_top_el();
	::string_list _string_list();
};
struct _T_string
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_string( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::string_list string_list();
};
struct _T_var_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_var_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::region_qual region_qual();
	::qual qual();
	::id id();
};
struct _T_qual
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_qual( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::qual _qual();
	::id id();
	::DOT DOT();
	::ARROW ARROW();
};
struct _T_lex_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_expr _lex_expr();
	::LEX_BAR LEX_BAR();
	::lex_term lex_term();
	::LEX_AMP LEX_AMP();
	::LEX_DASH LEX_DASH();
	::LEX_DASHDASH LEX_DASHDASH();
};
struct _T_opt_lex_dot
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_lex_dot( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEX_DOT LEX_DOT();
};
struct _T_lex_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_term _lex_term();
	::opt_lex_dot opt_lex_dot();
	::lex_factor_rep lex_factor_rep();
	::LEX_COLON_GT LEX_COLON_GT();
	::LEX_COLON_GTGT LEX_COLON_GTGT();
	::LEX_LT_COLON LEX_LT_COLON();
};
struct _T_lex_factor_rep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_factor_rep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_factor_rep _lex_factor_rep();
	::LEX_STAR LEX_STAR();
	::LEX_STARSTAR LEX_STARSTAR();
	::LEX_PLUS LEX_PLUS();
	::LEX_QUESTION LEX_QUESTION();
	::COPEN COPEN();
	::lex_uint lex_uint();
	::CCLOSE CCLOSE();
	::COMMA COMMA();
	::lex_uint Low();
	::lex_uint High();
	::lex_factor_neg lex_factor_neg();
};
struct _T_lex_factor_neg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_factor_neg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::LEX_CARET LEX_CARET();
	::lex_factor_neg _lex_factor_neg();
	::lex_factor lex_factor();
};
struct _T_lex_range_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_range_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_lit lex_lit();
	::lex_num lex_num();
};
struct _T_lex_num
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_num( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_uint lex_uint();
	::lex_hex lex_hex();
};
struct _T_lex_factor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lex_factor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::lex_lit lex_lit();
	::lex_id lex_id();
	::lex_uint lex_uint();
	::lex_hex lex_hex();
	::lex_range_lit Low();
	::LEX_DOTDOT LEX_DOTDOT();
	::lex_range_lit High();
	::LEX_SQOPEN_POS LEX_SQOPEN_POS();
	::reg_or_data reg_or_data();
	::RE_SQCLOSE RE_SQCLOSE();
	::LEX_SQOPEN_NEG LEX_SQOPEN_NEG();
	::LEX_POPEN LEX_POPEN();
	::lex_expr lex_expr();
	::LEX_PCLOSE LEX_PCLOSE();
};
struct _T_reg_or_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reg_or_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::reg_or_data _reg_or_data();
	::reg_or_char reg_or_char();
};
struct _T_reg_or_char
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reg_or_char( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::RE_CHAR RE_CHAR();
	::RE_CHAR Low();
	::RE_DASH RE_DASH();
	::RE_CHAR High();
};
struct _T__repeat_root_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_root_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_sq_cons_data
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_sq_cons_data( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_struct_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_struct_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_reduction_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_reduction_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_host_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_host_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_namespace_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_namespace_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_var_def
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_var_def( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_statement
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_statement( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_field_init
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_field_init( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_litpat_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_litpat_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_pattern_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_pattern_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_lit_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_lit_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_cons_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_cons_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_lit_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_lit_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_accum_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_accum_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_lit_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_lit_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _T__repeat_string_el
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_string_el( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _root
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_root( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
::start ColmTree( colm_program *prg );
::str ColmError( colm_program *prg );

#endif
