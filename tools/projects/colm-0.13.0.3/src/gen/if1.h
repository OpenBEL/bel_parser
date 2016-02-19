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
struct _literal_0005;
struct _literal_0007;
struct _literal_0009;
struct _literal_000b;
struct _literal_000d;
struct _literal_001b;
struct _literal_001d;
struct _literal_001f;
struct _literal_0021;
struct _literal_0023;
struct _literal_0029;
struct _literal_002b;
struct _literal_002d;
struct _literal_002f;
struct _ignore_0001;
struct _ignore_0003;
struct NI;
struct COMMIT;
struct id;
struct literal;
struct STAR;
struct PLUS;
struct DOT;
struct COLON_LT;
struct lex_factor;
struct lex_factor_neg;
struct lex_factor_rep;
struct lex_term;
struct lex_expr;
struct opt_ni;
struct opt_prod_repeat;
struct opt_prod_el_name;
struct prod_el;
struct prod_el_list;
struct opt_commit;
struct opt_prod_name;
struct prod;
struct prod_list;
struct ignore_def;
struct token_def;
struct token_list;
struct item;
struct start;
struct _ign_0x964fe0;
struct _repeat_item;
struct _T_any;
struct _T_lex_factor;
struct _T_lex_factor_neg;
struct _T_lex_factor_rep;
struct _T_lex_term;
struct _T_lex_expr;
struct _T_opt_ni;
struct _T_opt_prod_repeat;
struct _T_opt_prod_el_name;
struct _T_prod_el;
struct _T_prod_el_list;
struct _T_opt_commit;
struct _T_opt_prod_name;
struct _T_prod;
struct _T_prod_list;
struct _T_ignore_def;
struct _T_token_def;
struct _T_token_list;
struct _T_item;
struct _T_start;
struct _T__repeat_item;
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
struct _literal_0005
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0005( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_0007
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0007( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_0009
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0009( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_000b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_000b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_000d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_000d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_001b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_001b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_001d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_001d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_001f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_001f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_0021
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0021( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_0023
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0023( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_0029
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0029( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_002b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_002b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_002d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_002d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _literal_002f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_002f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ignore_0001
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_0001( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ignore_0003
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_0003( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
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
struct literal
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	literal( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
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
struct COLON_LT
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	COLON_LT( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
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
	::literal Literal();
	::lex_expr Expr();
	::literal Low();
	::literal High();
	::id Id();
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
	::lex_factor_neg FactorNeg();
	::lex_factor Factor();
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
	::lex_factor_rep FactorRep();
	::STAR Star();
	::PLUS Plus();
	::lex_factor_neg FactorNeg();
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
	::lex_term Term();
	::DOT Dot();
	::lex_factor_rep FactorRep();
	::COLON_LT ColonLt();
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
	::lex_expr Expr();
	::lex_term Term();
};
struct opt_ni
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_ni( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::NI Ni();
};
struct opt_prod_repeat
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_prod_repeat( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::STAR Star();
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
	::id Name();
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
	::opt_prod_el_name OptName();
	::id Id();
	::opt_prod_repeat OptRepeat();
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
	::prod_el_list ProdElList();
	::prod_el ProdEl();
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
	::COMMIT Commit();
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
	::id Name();
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
	::prod_el_list ProdElList();
	::opt_prod_name OptName();
	::opt_commit OptCommit();
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
	::prod_list ProdList();
	::prod Prod();
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
	::lex_expr Expr();
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
	::id Id();
	::opt_ni LeftNi();
	::lex_expr Expr();
	::opt_ni RightNi();
};
struct token_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	token_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::token_list TokenList();
	::token_def TokenDef();
	::ignore_def IgnoreDef();
};
struct item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::token_list TokenList();
	::id DefId();
	::prod_list ProdList();
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
	::_repeat_item ItemList();
};
struct _ign_0x964fe0
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x964fe0( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _repeat_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_item next();
	::item value();
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
	::literal Literal();
	::lex_expr Expr();
	::literal Low();
	::literal High();
	::id Id();
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
	::lex_factor_neg FactorNeg();
	::lex_factor Factor();
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
	::lex_factor_rep FactorRep();
	::STAR Star();
	::PLUS Plus();
	::lex_factor_neg FactorNeg();
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
	::lex_term Term();
	::DOT Dot();
	::lex_factor_rep FactorRep();
	::COLON_LT ColonLt();
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
	::lex_expr Expr();
	::lex_term Term();
};
struct _T_opt_ni
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_ni( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::NI Ni();
};
struct _T_opt_prod_repeat
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_prod_repeat( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::STAR Star();
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
	::id Name();
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
	::opt_prod_el_name OptName();
	::id Id();
	::opt_prod_repeat OptRepeat();
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
	::prod_el_list ProdElList();
	::prod_el ProdEl();
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
	::COMMIT Commit();
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
	::id Name();
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
	::prod_el_list ProdElList();
	::opt_prod_name OptName();
	::opt_commit OptCommit();
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
	::prod_list ProdList();
	::prod Prod();
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
	::lex_expr Expr();
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
	::id Id();
	::opt_ni LeftNi();
	::lex_expr Expr();
	::opt_ni RightNi();
};
struct _T_token_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_token_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::token_list TokenList();
	::token_def TokenDef();
	::ignore_def IgnoreDef();
};
struct _T_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::token_list TokenList();
	::id DefId();
	::prod_list ProdList();
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
	::_repeat_item ItemList();
};
struct _T__repeat_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
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

#endif
