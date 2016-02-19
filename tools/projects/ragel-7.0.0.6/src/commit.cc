#include <colm/pdarun.h>
#include <colm/bytecode.h>
#include <colm/defs.h>
#include <colm/input.h>
#include <colm/tree.h>
#include <colm/program.h>
#include <colm/colm.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <errno.h>

#include <iostream>
using std::endl;

#include "reducer.h"


struct lel_def_name
{
#line 116"reducer.lm"

		Token tok;
		colm_location loc;
	};
struct lel_action_spec
{
#line 160"reducer.lm"

		Action *action;
	};
struct lel_include_spec
{
#line 363"reducer.lm"

		Token machine;
		Token file;
	};
struct lel_join
{
#line 395"reducer.lm"

		Join *join;
	};
struct lel_expression
{
#line 413"reducer.lm"

		Expression *expr;
	};
struct lel_expr_left
{
#line 437"reducer.lm"

		Term *term;
	};
struct lel_expression_op_list
{
#line 450"reducer.lm"

		Expression *expr;
	};
struct lel_expression_op
{
#line 472"reducer.lm"

		Expression::Type type;
		Term *term;
	};
struct lel_term
{
#line 505"reducer.lm"

		Term *term;
	};
struct lel_term_left
{
#line 531"reducer.lm"

		FactorWithAug *fwa;
	};
struct lel_term_op_list_short
{
#line 545"reducer.lm"

		Term *term;
	};
struct lel_term_op
{
#line 568"reducer.lm"

		Term::Type type;
		FactorWithAug *fwa;
	};
struct lel_factor_label
{
#line 607"reducer.lm"

		FactorWithAug *fwa;
	};
struct lel_factor_ep
{
#line 633"reducer.lm"

		FactorWithAug *fwa;
	};
struct lel_epsilon_target
{
#line 652"reducer.lm"

		NameRef *nameRef;
	};
struct lel_named_action_ref
{
#line 672"reducer.lm"

		Token tok;
		Action *action;
	};
struct lel_action_arg_list
{
#line 752"reducer.lm"

		ActionArgList *argList;
	};
struct lel_opt_action_arg_list
{
#line 772"reducer.lm"

		ActionArgList *argList;
	};
struct lel_action_ref
{
#line 791"reducer.lm"

		Action *action;
	};
struct lel_action_params
{
#line 817"reducer.lm"

		ActionParamList *paramList;
	};
struct lel_opt_action_param_list
{
#line 831"reducer.lm"

		ActionParamList *paramList;
	};
struct lel_action_param
{
#line 848"reducer.lm"

		ActionParam *param;
	};
struct lel_action_param_list
{
#line 862"reducer.lm"

		ActionParamList *paramList;
	};
struct lel_action_block
{
#line 885"reducer.lm"

		colm_location loc;
		InlineList *inlineList;
	};
struct lel_inline_expr_reparse
{
#line 900"reducer.lm"

		InlineList *inlineList;
	};
struct lel_action_expr
{
#line 914"reducer.lm"

		colm_location loc;
		InlineList *inlineList;
	};
struct lel_inline_block
{
#line 928"reducer.lm"

		InlineList *inlineList;
	};
struct lel_block_item_list
{
#line 941"reducer.lm"

		InlineList *inlineList;
	};
struct lel_block_item
{
#line 968"reducer.lm"

		InlineItem *inlineItem;
		InlineList *inlineList;
	};
struct lel_expr_any
{
#line 1005"reducer.lm"

		InlineItem *inlineItem;
	};
struct lel_block_symbol
{
#line 1054"reducer.lm"

		InlineItem *inlineItem;
	};
struct lel_state_ref
{
#line 1097"reducer.lm"

		NameRef *nameRef;
	};
struct lel_opt_name_sep
{
#line 1112"reducer.lm"

		bool nameSep;
	};
struct lel_state_ref_names
{
#line 1130"reducer.lm"

		NameRef *nameRef;
	};
struct lel_block_interpret
{
#line 1163"reducer.lm"

		InlineItem *inlineItem;
	};
struct lel_inline_expr
{
#line 1241"reducer.lm"

		InlineList *inlineList;
	};
struct lel_expr_item_list
{
#line 1254"reducer.lm"

		InlineList *inlineList;
	};
struct lel_expr_item
{
#line 1274"reducer.lm"

		InlineItem *inlineItem;
	};
struct lel_expr_symbol
{
#line 1295"reducer.lm"

		const char *sym;
		colm_location loc;
	};
struct lel_expr_interpret
{
#line 1320"reducer.lm"

		InlineItem *inlineItem;
	};
struct lel_priority_aug
{
#line 1372"reducer.lm"

		int priorityNum;
	};
struct lel_priority_name
{
#line 1395"reducer.lm"

		int priorityName;
	};
struct lel_error_name
{
#line 1415"reducer.lm"

		int errName;
	};
struct lel_aug_base
{
#line 1435"reducer.lm"

		colm_location loc;
		AugType augType;
	};
struct lel_aug_cond
{
#line 1455"reducer.lm"

		colm_location loc;
		AugType augType;
	};
struct lel_aug_to_state
{
#line 1486"reducer.lm"

		colm_location loc;
		AugType augType;	
	};
struct lel_aug_from_state
{
#line 1523"reducer.lm"

		colm_location loc;
		AugType augType;	
	};
struct lel_aug_eof
{
#line 1560"reducer.lm"

		colm_location loc;
		AugType augType;	
	};
struct lel_aug_gbl_error
{
#line 1597"reducer.lm"

		colm_location loc;
		AugType augType;	
	};
struct lel_aug_local_error
{
#line 1636"reducer.lm"

		colm_location loc;
		AugType augType;
	};
struct lel_factor_aug
{
#line 1691"reducer.lm"

		FactorWithAug *fwa;
	};
struct lel_factor_rep
{
#line 1800"reducer.lm"

		FactorWithRep *rep;
	};
struct lel_factor_rep_op_list
{
#line 1857"reducer.lm"

		FactorWithRep *rep;
	};
struct lel_factor_rep_op
{
#line 1880"reducer.lm"

		FactorWithRep *rep;
	};
struct lel_factor_rep_num
{
#line 1927"reducer.lm"

		int rep;
	};
struct lel_factor_neg
{
#line 1954"reducer.lm"

		FactorWithNeg *neg;
	};
struct lel_factor
{
#line 1986"reducer.lm"

		Factor *factor;
	};
struct lel_regex
{
#line 2065"reducer.lm"

		RegExpr *regExpr;
	};
struct lel_reg_item_rep_list
{
#line 2078"reducer.lm"

		RegExpr *regExpr;
	};
struct lel_reg_item_rep
{
#line 2095"reducer.lm"

		ReItem *reItem;
	};
struct lel_reg_item
{
#line 2116"reducer.lm"

		ReItem *reItem;
	};
struct lel_reg_or_data
{
#line 2145"reducer.lm"

		ReOrBlock *reOrBlock;
	};
struct lel_reg_or_char
{
#line 2180"reducer.lm"

		ReOrItem *reOrItem;
	};
struct lel_alphabet_num
{
#line 2208"reducer.lm"

		Token tok;
	};
struct lel_range_lit
{
#line 2229"reducer.lm"

		Literal *literal;
	};
struct lel_lm
{
#line 2257"reducer.lm"

		MachineDef *machineDef;
	};
struct lel_lm_stmt_list
{
#line 2281"reducer.lm"

		LmPartList *lmPartList;
	};
struct lel_lm_stmt
{
#line 2304"reducer.lm"

		LongestMatchPart *lmPart;
	};
struct lel_opt_lm_act
{
#line 2342"reducer.lm"

		Action *action;
	};
struct lel_lm_act
{
#line 2360"reducer.lm"

		Action *action;
	};
struct lel_opt_export
{
#line 2380"reducer.lm"

		bool isSet;
	};
struct lel_nfa_expr
{
#line 2399"reducer.lm"

		NfaUnion *nfaUnion;
	};
struct lel_nfa_round_spec
{
#line 2418"reducer.lm"

		long depth;
		long group;
	};
struct lel_nfa_round_list
{
#line 2440"reducer.lm"

		NfaRoundVect *roundsList;
	};
struct lel_nfa_rounds
{
#line 2461"reducer.lm"

		NfaRoundVect *roundsList;
	};
union commit_reduce_union
{
	lel_def_name def_name;
	lel_action_spec action_spec;
	lel_include_spec include_spec;
	lel_join join;
	lel_expression expression;
	lel_expr_left expr_left;
	lel_expression_op_list expression_op_list;
	lel_expression_op expression_op;
	lel_term term;
	lel_term_left term_left;
	lel_term_op_list_short term_op_list_short;
	lel_term_op term_op;
	lel_factor_label factor_label;
	lel_factor_ep factor_ep;
	lel_epsilon_target epsilon_target;
	lel_named_action_ref named_action_ref;
	lel_action_arg_list action_arg_list;
	lel_opt_action_arg_list opt_action_arg_list;
	lel_action_ref action_ref;
	lel_action_params action_params;
	lel_opt_action_param_list opt_action_param_list;
	lel_action_param action_param;
	lel_action_param_list action_param_list;
	lel_action_block action_block;
	lel_inline_expr_reparse inline_expr_reparse;
	lel_action_expr action_expr;
	lel_inline_block inline_block;
	lel_block_item_list block_item_list;
	lel_block_item block_item;
	lel_expr_any expr_any;
	lel_block_symbol block_symbol;
	lel_state_ref state_ref;
	lel_opt_name_sep opt_name_sep;
	lel_state_ref_names state_ref_names;
	lel_block_interpret block_interpret;
	lel_inline_expr inline_expr;
	lel_expr_item_list expr_item_list;
	lel_expr_item expr_item;
	lel_expr_symbol expr_symbol;
	lel_expr_interpret expr_interpret;
	lel_priority_aug priority_aug;
	lel_priority_name priority_name;
	lel_error_name error_name;
	lel_aug_base aug_base;
	lel_aug_cond aug_cond;
	lel_aug_to_state aug_to_state;
	lel_aug_from_state aug_from_state;
	lel_aug_eof aug_eof;
	lel_aug_gbl_error aug_gbl_error;
	lel_aug_local_error aug_local_error;
	lel_factor_aug factor_aug;
	lel_factor_rep factor_rep;
	lel_factor_rep_op_list factor_rep_op_list;
	lel_factor_rep_op factor_rep_op;
	lel_factor_rep_num factor_rep_num;
	lel_factor_neg factor_neg;
	lel_factor factor;
	lel_regex regex;
	lel_reg_item_rep_list reg_item_rep_list;
	lel_reg_item_rep reg_item_rep;
	lel_reg_item reg_item;
	lel_reg_or_data reg_or_data;
	lel_reg_or_char reg_or_char;
	lel_alphabet_num alphabet_num;
	lel_range_lit range_lit;
	lel_lm lm;
	lel_lm_stmt_list lm_stmt_list;
	lel_lm_stmt lm_stmt;
	lel_opt_lm_act opt_lm_act;
	lel_lm_act lm_act;
	lel_opt_export opt_export;
	lel_nfa_expr nfa_expr;
	lel_nfa_round_spec nfa_round_spec;
	lel_nfa_round_list nfa_round_list;
	lel_nfa_rounds nfa_rounds;
};

long commit_union_sz( int reducer )
{
	return sizeof( commit_reduce_union );
}

void commit_reduce_forward( program_t *prg, tree_t **root,
		struct pda_run *pda_run, parse_tree_t *pt )
{
	switch ( pda_run->reducer ) {
	case 1:
		((TopLevel*)prg->red_ctx)->commit_reduce_forward( prg, root, pda_run, pt );
		break;
	case 2:
		((SectionPass*)prg->red_ctx)->commit_reduce_forward( prg, root, pda_run, pt );
		break;
	case 3:
		((IncludePass*)prg->red_ctx)->commit_reduce_forward( prg, root, pda_run, pt );
		break;
	}
}

void TopLevel::commit_reduce_forward( program_t *prg, 
		tree_t **root, struct pda_run *pda_run, parse_tree_t *pt )
{
	tree_t **sp = root;

	parse_tree_t *lel = pt;
	kid_t *kid = pt->shadow;

recurse:

	if ( lel->child != 0 ) {
		/* There are children. Must process all children first. */
		vm_push_ptree( lel );
		vm_push_kid( kid );

		lel = lel->child;
		kid = kid->tree->child;
		while ( lel != 0 ) {
			goto recurse;
			resume:
			lel = lel->next;
			kid = kid->next;
		}

		kid = vm_pop_kid();
		lel = vm_pop_ptree();
	}

	if ( !( lel->flags & PF_COMMITTED ) ) {
		/* Now can execute the reduction action. */
		{
		{ switch ( kid->tree->id ) {
		case 1104: {
			if ( kid->tree->prod_num == 1 ) {
	lel_inline_expr_reparse *_lhs = &((commit_reduce_union*)(lel+1))->inline_expr_reparse;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_expr *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_expr;
#line 904"reducer.lm"

		_lhs->inlineList = _rhs0->inlineList;
				}
			break;
		}
		case 1105: {
			if ( kid->tree->prod_num == 0 ) {
	lel_join *_lhs = &((commit_reduce_union*)(lel+1))->join;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_join *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->join;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_expression *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->expression;
#line 400"reducer.lm"

		_lhs->join = _rhs0->join;
		_lhs->join->exprList.append( _rhs2->expr );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_join *_lhs = &((commit_reduce_union*)(lel+1))->join;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expression *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expression;
#line 406"reducer.lm"

		_lhs->join = new Join( _rhs0->expr );
				}
			break;
		}
		case 1106: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expression *_lhs = &((commit_reduce_union*)(lel+1))->expression;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_left *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_left;
	_pt_cursor = _pt_cursor->next;
lel_expression_op_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->expression_op_list;
#line 418"reducer.lm"

		// 1. reverse the list
		// 2. put the new term at the end.
		Expression *prev = new Expression( _rhs0->term );
		Expression *cur = _rhs1->expr;
		while ( cur != 0 ) {
			Expression *next = cur->expression;

			/* Reverse. */
			cur->expression = prev;

			prev = cur;
			cur = next;
		}

		_lhs->expr = prev;
				}
			break;
		}
		case 1107: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expression_op_list *_lhs = &((commit_reduce_union*)(lel+1))->expression_op_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expression_op *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expression_op;
	_pt_cursor = _pt_cursor->next;
lel_expression_op_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->expression_op_list;
#line 455"reducer.lm"

		_lhs->expr = new Expression( _rhs1->expr,
				_rhs0->term, _rhs0->type );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_expression_op_list *_lhs = &((commit_reduce_union*)(lel+1))->expression_op_list;
#line 461"reducer.lm"

		_lhs->expr = 0;
				}
			break;
		}
		case 1108: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expression_op *_lhs = &((commit_reduce_union*)(lel+1))->expression_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_term *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 478"reducer.lm"

		_lhs->type = Expression::OrType;
		_lhs->term = _rhs1->term;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_expression_op *_lhs = &((commit_reduce_union*)(lel+1))->expression_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_term *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 484"reducer.lm"

		_lhs->type = Expression::IntersectType;
		_lhs->term = _rhs1->term;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_expression_op *_lhs = &((commit_reduce_union*)(lel+1))->expression_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_term *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 490"reducer.lm"

		_lhs->type = Expression::SubtractType;
		_lhs->term = _rhs1->term;
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_expression_op *_lhs = &((commit_reduce_union*)(lel+1))->expression_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_term *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 496"reducer.lm"

		_lhs->type = Expression::StrongSubtractType;
		_lhs->term = _rhs1->term;
				}
			break;
		}
		case 1109: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expr_left *_lhs = &((commit_reduce_union*)(lel+1))->expr_left;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_term *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 442"reducer.lm"

		_lhs->term = _rhs0->term;
				}
			break;
		}
		case 1110: {
			if ( kid->tree->prod_num == 0 ) {
	lel_term *_lhs = &((commit_reduce_union*)(lel+1))->term;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_term_left *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->term_left;
	_pt_cursor = _pt_cursor->next;
lel_term_op_list_short *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->term_op_list_short;
#line 510"reducer.lm"

		// 1. reverse the list
		// 2. put the new term at the end.
		Term *prev = new Term( _rhs0->fwa );
		Term *cur = _rhs1->term;
		while ( cur != 0 ) {
			Term *next = cur->term;

			/* Reverse. */
			cur->term = prev;

			prev = cur;
			cur = next;
		}

		_lhs->term = prev;
				}
			break;
		}
		case 1111: {
			if ( kid->tree->prod_num == 0 ) {
	lel_term_left *_lhs = &((commit_reduce_union*)(lel+1))->term_left;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_label *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
#line 536"reducer.lm"

		_lhs->fwa = _rhs0->fwa;
				}
			break;
		}
		case 1112: {
			if ( kid->tree->prod_num == 0 ) {
	lel_term_op_list_short *_lhs = &((commit_reduce_union*)(lel+1))->term_op_list_short;
#line 550"reducer.lm"

		_lhs->term = 0;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_term_op_list_short *_lhs = &((commit_reduce_union*)(lel+1))->term_op_list_short;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_term_op *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->term_op;
	_pt_cursor = _pt_cursor->next;
lel_term_op_list_short *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->term_op_list_short;
#line 555"reducer.lm"

		_lhs->term = new Term( _rhs1->term,
				_rhs0->fwa, _rhs0->type );
				}
			break;
		}
		case 1113: {
			if ( kid->tree->prod_num == 0 ) {
	lel_term_op *_lhs = &((commit_reduce_union*)(lel+1))->term_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_label *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
#line 574"reducer.lm"

		_lhs->type = Term::ConcatType;
		_lhs->fwa = _rhs0->fwa;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_term_op *_lhs = &((commit_reduce_union*)(lel+1))->term_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_label *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
#line 580"reducer.lm"

		_lhs->type = Term::ConcatType;
		_lhs->fwa = _rhs1->fwa;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_term_op *_lhs = &((commit_reduce_union*)(lel+1))->term_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_label *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
#line 586"reducer.lm"

		_lhs->type = Term::RightStartType;
		_lhs->fwa = _rhs1->fwa;
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_term_op *_lhs = &((commit_reduce_union*)(lel+1))->term_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_label *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
#line 592"reducer.lm"

		_lhs->type = Term::RightFinishType;
		_lhs->fwa = _rhs1->fwa;
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_term_op *_lhs = &((commit_reduce_union*)(lel+1))->term_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_label *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
#line 598"reducer.lm"

		_lhs->type = Term::LeftType;
		_lhs->fwa = _rhs1->fwa;
				}
			break;
		}
		case 1114: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_label *_lhs = &((commit_reduce_union*)(lel+1))->factor_label;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_factor_label *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->factor_label;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 612"reducer.lm"

		_lhs->fwa = _rhs2->fwa;

		InputLoc loc = _loc0;
		string label( _rhs0->data, _rhs0->length );

		_lhs->fwa->labels.prepend( Label(loc, label) );

		if ( pd->id->isBreadthLabel( label ) )
			_lhs->fwa->labels[0].cut = true;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_label *_lhs = &((commit_reduce_union*)(lel+1))->factor_label;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_ep *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_ep;
#line 625"reducer.lm"

		_lhs->fwa = _rhs0->fwa;
				}
			break;
		}
		case 1115: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_ep *_lhs = &((commit_reduce_union*)(lel+1))->factor_ep;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_epsilon_target *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->epsilon_target;
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
#line 638"reducer.lm"

		_lhs->fwa = _rhs0->fwa;
		_rhs0->fwa->epsilonLinks.append( EpsilonLink( _loc1, _rhs2->nameRef ) );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_ep *_lhs = &((commit_reduce_union*)(lel+1))->factor_ep;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
#line 644"reducer.lm"

		_lhs->fwa = _rhs0->fwa;
				}
			break;
		}
		case 1116: {
			if ( kid->tree->prod_num == 0 ) {
	lel_epsilon_target *_lhs = &((commit_reduce_union*)(lel+1))->epsilon_target;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_epsilon_target *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->epsilon_target;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 657"reducer.lm"

		_lhs->nameRef = _rhs0->nameRef;
		_lhs->nameRef->append( string( _rhs2->data, _rhs2->length ) );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_epsilon_target *_lhs = &((commit_reduce_union*)(lel+1))->epsilon_target;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 663"reducer.lm"

		_lhs->nameRef = new NameRef;
		_lhs->nameRef->append( string( _rhs0->data, _rhs0->length ) );
				}
			break;
		}
		case 1117: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_expr *_lhs = &((commit_reduce_union*)(lel+1))->action_expr;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 920"reducer.lm"

		_lhs->loc = *_loc0;
		_lhs->inlineList = _rhs2->inlineList;
				}
			break;
		}
		case 1118: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_block *_lhs = &((commit_reduce_union*)(lel+1))->action_block;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_block *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->inline_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 891"reducer.lm"

		_lhs->loc = *_loc0;
		_lhs->inlineList = _rhs2->inlineList;
				}
			break;
		}
		case 1119: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_arg_list *_lhs = &((commit_reduce_union*)(lel+1))->action_arg_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_arg_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_arg_list;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 757"reducer.lm"

		_lhs->argList = _rhs0->argList;
		_lhs->argList->append( _rhs2->action );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_action_arg_list *_lhs = &((commit_reduce_union*)(lel+1))->action_arg_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_ref *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 763"reducer.lm"

		_lhs->argList = new ActionArgList;
		_lhs->argList->append( _rhs0->action );
				}
			break;
		}
		case 1120: {
			if ( kid->tree->prod_num == 0 ) {
	lel_opt_action_arg_list *_lhs = &((commit_reduce_union*)(lel+1))->opt_action_arg_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_arg_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_arg_list;
#line 777"reducer.lm"

		_lhs->argList = _rhs0->argList;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_opt_action_arg_list *_lhs = &((commit_reduce_union*)(lel+1))->opt_action_arg_list;
#line 782"reducer.lm"

		_lhs->argList = new ActionArgList;
				}
			break;
		}
		case 1121: {
			if ( kid->tree->prod_num == 0 ) {
	lel_named_action_ref *_lhs = &((commit_reduce_union*)(lel+1))->named_action_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 678"reducer.lm"

		_lhs->tok.set( _rhs0 );

		/* Set the name in the actionDict. */
		string data( _lhs->tok.data );
		Action *action = pd->actionDict.find( data );
		if ( action != 0 ) {
			if ( action->paramList != 0 )
				error(_loc0) << "expecting no action args for " << data << endp;

			/* Pass up the action element */
			_lhs->action = action;
		}
		else {
			/* Will recover by returning null as the action. */
			error(_loc0) << "action lookup of \"" << data << "\" failed" << endl;
			_lhs->action = 0;
		}
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_named_action_ref *_lhs = &((commit_reduce_union*)(lel+1))->named_action_ref;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_opt_action_arg_list *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->opt_action_arg_list;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 699"reducer.lm"

		_lhs->tok.set( _rhs0 );

		/* Set the name in the actionDict. */
		string data( _lhs->tok.data );
		Action *action = pd->actionDict.find( data );
		if ( action != 0 ) {
			if ( action->paramList == 0 )
				error(_loc0) << "expecting action args" << endp;

			/* Pass up the action element */
			_lhs->action = action;
		}
		else {
			/* Will recover by returning null as the action. */
			error(_loc0) << "action lookup of \"" << data << "\" failed" << endl;
			_lhs->action = 0;
		}

		if ( _lhs->action != 0 ) {
			ActionArgList *argList = _rhs2->argList;
			ActionParamList *paramList = action->paramList;

			/* Make sure the number of actions line up. */
			if ( argList->length() != paramList->length() ) {
				error(_loc0) << "wrong number of action "
					"arguments for \"" << data << "\"" << endl;
			}
					
			/* Now we need to specialize using the supplied args. We can only
			 * present an Action* to fsmcodegen. */
			ActionArgListMapEl *el = action->argListMap->find( argList );
			if ( el == 0 ) {
				/* Allocate an action representing this specialization. */
				Action *specAction = Action::cons( _loc0, action,
						argList, pd->nextCondId++ );
				pd->actionList.append( specAction );

				el = action->argListMap->insert( argList, specAction );
			}
			else {
				/* Can delete $3->arg list. */
				delete _rhs2->argList;
			}

			_lhs->action = el->value;
		}
				}
			break;
		}
		case 1122: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_ref *_lhs = &((commit_reduce_union*)(lel+1))->action_ref;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_named_action_ref *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->named_action_ref;
#line 796"reducer.lm"

		_lhs->action = _rhs0->action;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_action_ref *_lhs = &((commit_reduce_union*)(lel+1))->action_ref;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_named_action_ref *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->named_action_ref;
#line 801"reducer.lm"

		_lhs->action = _rhs1->action;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_action_ref *_lhs = &((commit_reduce_union*)(lel+1))->action_ref;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_block *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
#line 806"reducer.lm"

		/* Create the action, add it to the list and pass up. */
		Action *newAction = new Action( &_rhs0->loc, std::string(),
				_rhs0->inlineList, pd->nextCondId++ );
		pd->actionList.append( newAction );
		_lhs->action = newAction;
				}
			break;
		}
		case 1123: {
			if ( kid->tree->prod_num == 0 ) {
	lel_priority_name *_lhs = &((commit_reduce_union*)(lel+1))->priority_name;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 1400"reducer.lm"

		string data( _rhs0->data, _rhs0->length );

		// Lookup/create the priority key.
		PriorDictEl *priorDictEl;
		if ( pd->priorDict.insert( data, pd->nextPriorKey, &priorDictEl ) )
			pd->nextPriorKey += 1;

		// Use the inserted/found priority key.
		_lhs->priorityName = priorDictEl->value;
				}
			break;
		}
		case 1124: {
			if ( kid->tree->prod_num == 0 ) {
	lel_error_name *_lhs = &((commit_reduce_union*)(lel+1))->error_name;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 1420"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		/* Lookup/create the priority key. */
		LocalErrDictEl *localErrDictEl;
		if ( pd->localErrDict.insert( data, pd->nextLocalErrKey, &localErrDictEl ) )
			pd->nextLocalErrKey += 1;

		/* Use the inserted/found priority key. */
		_lhs->errName = localErrDictEl->value;
				}
			break;
		}
		case 1125: {
			if ( kid->tree->prod_num == 0 ) {
	lel_priority_aug *_lhs = &((commit_reduce_union*)(lel+1))->priority_aug;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1376"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->priorityNum = tryLongScan( _loc0, data.c_str() );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_priority_aug *_lhs = &((commit_reduce_union*)(lel+1))->priority_aug;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 1381"reducer.lm"

		string data( _rhs1->data, _rhs1->length );
		_lhs->priorityNum = tryLongScan( _loc0, data.c_str() );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_priority_aug *_lhs = &((commit_reduce_union*)(lel+1))->priority_aug;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 1386"reducer.lm"

		string data( _rhs1->data, _rhs1->length );
		_lhs->priorityNum = -1 * tryLongScan( _loc0, data.c_str() );
				}
			break;
		}
		case 1126: {
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_base *_lhs = &((commit_reduce_union*)(lel+1))->aug_base;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1441"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_base *_lhs = &((commit_reduce_union*)(lel+1))->aug_base;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1443"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all; 			}
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_base *_lhs = &((commit_reduce_union*)(lel+1))->aug_base;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1445"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_finish; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_base *_lhs = &((commit_reduce_union*)(lel+1))->aug_base;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1447"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_leave; 			}
			break;
		}
		case 1127: {
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1461"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1463"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start; 			}
			if ( kid->tree->prod_num == 6 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1465"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1467"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1469"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1471"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1473"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_leave; 			}
			if ( kid->tree->prod_num == 5 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1475"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_leave; 			}
			if ( kid->tree->prod_num == 8 ) {
	lel_aug_cond *_lhs = &((commit_reduce_union*)(lel+1))->aug_cond;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1477"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_leave; 			}
			break;
		}
		case 1128: {
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1492"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_to_state; 			}
			if ( kid->tree->prod_num == 6 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1494"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_to_state; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1496"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_to_state; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1498"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_to_state; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1500"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_to_state; 			}
			if ( kid->tree->prod_num == 8 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1502"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_to_state; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1504"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_to_state; 			}
			if ( kid->tree->prod_num == 9 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1506"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_to_state; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1508"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_to_state; 			}
			if ( kid->tree->prod_num == 10 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1510"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_to_state; 			}
			if ( kid->tree->prod_num == 5 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1512"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_to_state; 			}
			if ( kid->tree->prod_num == 11 ) {
	lel_aug_to_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_to_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1514"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_to_state; 			}
			break;
		}
		case 1129: {
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1529"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_from_state; 			}
			if ( kid->tree->prod_num == 6 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1531"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_from_state; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1533"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_from_state; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1535"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_from_state; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1537"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_from_state; 			}
			if ( kid->tree->prod_num == 8 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1539"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_from_state; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1541"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_from_state; 			}
			if ( kid->tree->prod_num == 9 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1543"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_from_state; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1545"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_from_state; 			}
			if ( kid->tree->prod_num == 10 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1547"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_from_state; 			}
			if ( kid->tree->prod_num == 5 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1549"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_from_state; 			}
			if ( kid->tree->prod_num == 11 ) {
	lel_aug_from_state *_lhs = &((commit_reduce_union*)(lel+1))->aug_from_state;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1551"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_from_state; 			}
			break;
		}
		case 1130: {
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1566"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_eof; 			}
			if ( kid->tree->prod_num == 6 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1568"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_eof; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1570"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_eof; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1572"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_eof; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1574"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_eof; 			}
			if ( kid->tree->prod_num == 8 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1576"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_eof; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1578"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_eof; 			}
			if ( kid->tree->prod_num == 9 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1580"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_eof; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1582"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_eof; 			}
			if ( kid->tree->prod_num == 10 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1584"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_eof; 			}
			if ( kid->tree->prod_num == 5 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1586"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_eof; 			}
			if ( kid->tree->prod_num == 11 ) {
	lel_aug_eof *_lhs = &((commit_reduce_union*)(lel+1))->aug_eof;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1588"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_eof; 			}
			break;
		}
		case 1131: {
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1603"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_gbl_error; 			}
			if ( kid->tree->prod_num == 6 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1605"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_gbl_error; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1607"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_gbl_error; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1609"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_gbl_error; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1611"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_gbl_error; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1613"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_gbl_error; 			}
			if ( kid->tree->prod_num == 8 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1615"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_gbl_error; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1617"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_gbl_error; 			}
			if ( kid->tree->prod_num == 9 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1619"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_gbl_error; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1621"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_gbl_error; 			}
			if ( kid->tree->prod_num == 10 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1623"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_gbl_error; 			}
			if ( kid->tree->prod_num == 5 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1625"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_gbl_error; 			}
			if ( kid->tree->prod_num == 11 ) {
	lel_aug_gbl_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_gbl_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1627"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_gbl_error; 			}
			break;
		}
		case 1132: {
			if ( kid->tree->prod_num == 0 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1642"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_local_error; 			}
			if ( kid->tree->prod_num == 6 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1645"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_start_local_error; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1648"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_local_error; 			}
			if ( kid->tree->prod_num == 7 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1651"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_start_local_error; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1654"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_local_error; 			}
			if ( kid->tree->prod_num == 8 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1657"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_all_local_error; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1660"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_local_error; 			}
			if ( kid->tree->prod_num == 9 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1663"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_final_local_error; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1666"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_local_error; 			}
			if ( kid->tree->prod_num == 10 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1669"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_not_final_local_error; 			}
			if ( kid->tree->prod_num == 5 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1672"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_local_error; 			}
			if ( kid->tree->prod_num == 11 ) {
	lel_aug_local_error *_lhs = &((commit_reduce_union*)(lel+1))->aug_local_error;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1675"reducer.lm"
 _lhs->loc = *_loc0; _lhs->augType = at_middle_local_error; 			}
			break;
		}
		case 1133: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_base *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_base;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1696"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		/* Append the action to the factorWithAug, record the refernce from 
		 * factorWithAug to the action and pass up the factorWithAug. */
		_lhs->fwa->actions.append( ParserAction(
				&_rhs1->loc, _rhs1->augType, 0, _rhs2->action ) );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_base *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_base;
	_pt_cursor = _pt_cursor->next;
lel_priority_aug *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->priority_aug;
#line 1706"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_rhs0->fwa->priorityAugs.append( PriorityAug( _rhs1->augType,
				pd->curDefPriorKey, _rhs2->priorityNum ) );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_base *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_base;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_priority_name *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->priority_name;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_priority_aug *_rhs5 = &((commit_reduce_union*)(_pt_cursor+1))->priority_aug;
#line 1714"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_rhs0->fwa->priorityAugs.append( PriorityAug( _rhs1->augType,
				_rhs3->priorityName, _rhs5->priorityNum ) );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_cond *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_cond;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1722"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_lhs->fwa->conditions.append( ConditionTest( &_rhs1->loc, 
				_rhs1->augType, _rhs2->action, true ) );
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_cond *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_cond;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1730"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_lhs->fwa->conditions.append( ConditionTest( &_rhs1->loc, 
				_rhs1->augType, _rhs3->action, false ) );
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_to_state *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_to_state;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1738"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_lhs->fwa->actions.append( ParserAction( &_rhs1->loc,
				_rhs1->augType, 0, _rhs2->action ) );
				}
			if ( kid->tree->prod_num == 6 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_from_state *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_from_state;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1746"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_lhs->fwa->actions.append( ParserAction( &_rhs1->loc,
				_rhs1->augType, 0, _rhs2->action ) );
				}
			if ( kid->tree->prod_num == 7 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_eof *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_eof;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1754"reducer.lm"

		_lhs->fwa = _rhs0->fwa;
		_rhs0->fwa->actions.append( ParserAction( &_rhs1->loc,
				_rhs1->augType, 0, _rhs2->action ) );
				}
			if ( kid->tree->prod_num == 8 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_gbl_error *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_gbl_error;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1761"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_rhs0->fwa->actions.append( ParserAction( &_rhs1->loc,
				_rhs1->augType, pd->curDefLocalErrKey, _rhs2->action ) );
				}
			if ( kid->tree->prod_num == 9 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_local_error *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_local_error;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1769"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_lhs->fwa->actions.append( ParserAction( &_rhs1->loc, 
				_rhs1->augType, pd->curDefLocalErrKey, _rhs2->action ) );
				}
			if ( kid->tree->prod_num == 10 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_aug *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_aug;
	_pt_cursor = _pt_cursor->next;
lel_aug_local_error *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->aug_local_error;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_error_name *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->error_name;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs5 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 1777"reducer.lm"

		_lhs->fwa = _rhs0->fwa;

		_lhs->fwa->actions.append( ParserAction( &_rhs1->loc, 
				_rhs1->augType, _rhs3->errName, _rhs5->action ) );
				}
			if ( kid->tree->prod_num == 11 ) {
	lel_factor_aug *_lhs = &((commit_reduce_union*)(lel+1))->factor_aug;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_rep *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep;
#line 1785"reducer.lm"

		_lhs->fwa = new FactorWithAug( _rhs0->rep );
				}
			break;
		}
		case 1135: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_rep *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_neg *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_neg;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_op_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_op_list;
#line 1805"reducer.lm"

		FactorWithRep *prev = new FactorWithRep( _rhs0->neg );
		FactorWithRep *cur = _rhs1->rep;
		while ( cur != 0 ) {
			FactorWithRep *next = cur->factorWithRep;

			/* Reverse. */
			cur->factorWithRep = prev;

			prev = cur;
			cur = next;
		}

		_lhs->rep = prev;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_rep *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep *_rhs4 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs6 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs8 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs10 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs12 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs14 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs16 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 1822"reducer.lm"

		string data( _rhs2->data, _rhs2->length );
		long long repId = strtoll( data.c_str(), 0, 10);

		/* push, pop, ini, stay, repeat, exit */
		_lhs->rep = new FactorWithRep( _loc0, repId, _rhs4->rep,
				_rhs6->action, _rhs8->action, _rhs10->action, _rhs12->action, _rhs14->action, _rhs16->action,
				FactorWithRep::NfaRep );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_factor_rep *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep *_rhs4 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs6 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs8 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs10 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs12 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 1833"reducer.lm"

		string data( _rhs2->data, _rhs2->length );
		long long repId = strtoll( data.c_str(), 0, 10);

		_lhs->rep = new FactorWithRep( _loc0, repId, _rhs4->rep,
				_rhs6->action, _rhs8->action, _rhs10->action, _rhs12->action, 0, 0,
				FactorWithRep::CondRep );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_factor_rep *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep *_rhs4 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs6 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs8 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs10 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 1843"reducer.lm"

		string data( _rhs2->data, _rhs2->length );
		long long repId = strtoll( data.c_str(), 0, 10);

		_lhs->rep = new FactorWithRep( _loc0, repId, _rhs4->rep,
				_rhs6->action, _rhs8->action, _rhs10->action, 0, 0, 0,
				FactorWithRep::NoMaxRep );
				}
			break;
		}
		case 1136: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_rep_op_list *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor_rep_op *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_op;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_op_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_op_list;
#line 1861"reducer.lm"

		_lhs->rep = _rhs0->rep;
		_lhs->rep->factorWithRep = _rhs1->rep;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_rep_op_list *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op_list;
#line 1866"reducer.lm"

		_lhs->rep = 0;
				}
			break;
		}
		case 1137: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1884"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0, 0, 0, FactorWithRep::StarType );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1888"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0, 0, 0, FactorWithRep::StarStarType );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1892"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0, 0, 0, FactorWithRep::OptionalType );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1896"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0, 0, 0, FactorWithRep::PlusType );
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_num *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1900"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0,
				_rhs1->rep, 0,
				FactorWithRep::ExactType );
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_num *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1906"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0,
				0, _rhs2->rep,
				FactorWithRep::MaxType );
				}
			if ( kid->tree->prod_num == 6 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_num *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1912"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0,
				_rhs1->rep, 0,
				FactorWithRep::MinType );
				}
			if ( kid->tree->prod_num == 7 ) {
	lel_factor_rep_op *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_op;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_num *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_num;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_factor_rep_num *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->factor_rep_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1918"reducer.lm"

		_lhs->rep = new FactorWithRep( _loc0, 0,
				_rhs1->rep, _rhs3->rep,
				FactorWithRep::RangeType );
				}
			break;
		}
		case 1138: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_rep_num *_lhs = &((commit_reduce_union*)(lel+1))->factor_rep_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1932"reducer.lm"

		// Convert the priority number to a long. Check for overflow.
		string data( _rhs0->data, _rhs0->length );
		errno = 0;
		long rep = strtol( data.c_str(), 0, 10 );
		if ( errno == ERANGE && rep == LONG_MAX ) {
			// Repetition too large. Recover by returing repetition 1. */
			error(_loc0) << "repetition number " << data << " overflows" << endl;
			_lhs->rep = 1;
		}
		else {
			// Cannot be negative, so no overflow.
			_lhs->rep = rep;
		}
				}
			break;
		}
		case 1139: {
			if ( kid->tree->prod_num == 0 ) {
	lel_factor_neg *_lhs = &((commit_reduce_union*)(lel+1))->factor_neg;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_neg *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_neg;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1959"reducer.lm"

		_lhs->neg = new FactorWithNeg( _loc0,
				_rhs1->neg, FactorWithNeg::NegateType );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor_neg *_lhs = &((commit_reduce_union*)(lel+1))->factor_neg;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_factor_neg *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->factor_neg;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1965"reducer.lm"

		_lhs->neg = new FactorWithNeg( _loc0,
				_rhs1->neg, FactorWithNeg::CharNegateType );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_factor_neg *_lhs = &((commit_reduce_union*)(lel+1))->factor_neg;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_factor *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->factor;
#line 1971"reducer.lm"

		_lhs->neg = new FactorWithNeg( _rhs0->factor );
				}
			break;
		}
		case 1140: {
			if ( kid->tree->prod_num == 8 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_join *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->join;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1991"reducer.lm"

		/* Create a new factor going to a parenthesized join. */
		_lhs->factor = new Factor( _rhs1->join );
		_lhs->factor->join->loc = _loc0;
				}
			if ( kid->tree->prod_num == 0 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_alphabet_num *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->alphabet_num;
#line 1998"reducer.lm"

		_lhs->factor = new Factor( new Literal( _rhs0->tok, Literal::Number ) );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2003"reducer.lm"

		InputLoc loc = _loc0;
		string s( _rhs0->data, _rhs0->length );
		
		/* Find the named graph. */
		GraphDictEl *gdNode = pd->graphDict.find( s );
		if ( gdNode == 0 ) {
			/* Recover by returning null as the factor node. */
			error(loc) << "graph lookup of \"" << s << "\" failed" << endl;
			_lhs->factor = 0;
		}
		else if ( gdNode->isInstance ) {
			/* Recover by retuning null as the factor node. */
			error(loc) << "references to graph instantiations not allowed "
					"in expressions" << endl;
			_lhs->factor = 0;
		}
		else {
			/* Create a factor node that is a lookup of an expression. */
			_lhs->factor = new Factor( loc, gdNode->value );
		}
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2027"reducer.lm"

		Token tok;
		tok.set( _rhs0 );
		tok.set( _loc0 );
		_lhs->factor = new Factor( new Literal( tok, Literal::LitString ) );
				}
			if ( kid->tree->prod_num == 6 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_range_lit *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->range_lit;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_range_lit *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->range_lit;
#line 2035"reducer.lm"

		_lhs->factor = new Factor( new Range( _rhs0->literal, _rhs2->literal, false ) );
				}
			if ( kid->tree->prod_num == 7 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_range_lit *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->range_lit;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_range_lit *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->range_lit;
#line 2040"reducer.lm"

		_lhs->factor = new Factor( new Range( _rhs0->literal, _rhs2->literal, true ) );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_reg_or_data *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->reg_or_data;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2046"reducer.lm"

		_lhs->factor = new Factor( new ReItem( _loc0,
				_rhs1->reOrBlock, ReItem::OrBlock ) );
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_reg_or_data *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->reg_or_data;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2052"reducer.lm"

		_lhs->factor = new Factor( new ReItem( _loc0,
				_rhs1->reOrBlock, ReItem::NegOrBlock ) );
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_factor *_lhs = &((commit_reduce_union*)(lel+1))->factor;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_regex *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->regex;
#line 2058"reducer.lm"

		_lhs->factor = new Factor( _rhs1->regExpr );
				}
			break;
		}
		case 1141: {
			if ( kid->tree->prod_num == 0 ) {
	lel_regex *_lhs = &((commit_reduce_union*)(lel+1))->regex;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_reg_item_rep_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->reg_item_rep_list;
#line 2070"reducer.lm"

		_lhs->regExpr = _rhs0->regExpr;
				}
			break;
		}
		case 1142: {
			if ( kid->tree->prod_num == 0 ) {
	lel_reg_item_rep_list *_lhs = &((commit_reduce_union*)(lel+1))->reg_item_rep_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_reg_item_rep_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->reg_item_rep_list;
	_pt_cursor = _pt_cursor->next;
lel_reg_item_rep *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->reg_item_rep;
#line 2082"reducer.lm"

		_lhs->regExpr = new RegExpr( _rhs0->regExpr,
				_rhs1->reItem );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_reg_item_rep_list *_lhs = &((commit_reduce_union*)(lel+1))->reg_item_rep_list;
#line 2087"reducer.lm"

		_lhs->regExpr = new RegExpr();
				}
			break;
		}
		case 1143: {
			if ( kid->tree->prod_num == 0 ) {
	lel_reg_item_rep *_lhs = &((commit_reduce_union*)(lel+1))->reg_item_rep;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_reg_item *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->reg_item;
#line 2100"reducer.lm"

		_lhs->reItem = _rhs0->reItem;
		_lhs->reItem->star = true;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_reg_item_rep *_lhs = &((commit_reduce_union*)(lel+1))->reg_item_rep;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_reg_item *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->reg_item;
#line 2106"reducer.lm"

		_lhs->reItem = _rhs0->reItem;
				}
			break;
		}
		case 1144: {
			if ( kid->tree->prod_num == 0 ) {
	lel_reg_item *_lhs = &((commit_reduce_union*)(lel+1))->reg_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_reg_or_data *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->reg_or_data;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2120"reducer.lm"

		_lhs->reItem = new ReItem( _loc0, _rhs1->reOrBlock, ReItem::OrBlock );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_reg_item *_lhs = &((commit_reduce_union*)(lel+1))->reg_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_reg_or_data *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->reg_or_data;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2124"reducer.lm"

		_lhs->reItem = new ReItem( _loc0, _rhs1->reOrBlock, ReItem::NegOrBlock );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_reg_item *_lhs = &((commit_reduce_union*)(lel+1))->reg_item;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2128"reducer.lm"

		_lhs->reItem = new ReItem( _loc0, ReItem::Dot );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_reg_item *_lhs = &((commit_reduce_union*)(lel+1))->reg_item;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2132"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		char *c = unescape( data.c_str() );
		Token tok;
		tok.set( c, strlen( c ) );
		_lhs->reItem = new ReItem( _loc0, tok );
		delete[] c;
				}
			break;
		}
		case 1145: {
			if ( kid->tree->prod_num == 0 ) {
	lel_reg_or_data *_lhs = &((commit_reduce_union*)(lel+1))->reg_or_data;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_reg_or_data *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->reg_or_data;
	_pt_cursor = _pt_cursor->next;
lel_reg_or_char *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->reg_or_char;
#line 2150"reducer.lm"

		/* An optimization to lessen the tree size. If an or char is directly
		 * under the left side on the right and the right side is another or
		 * char then paste them together and return the left side. Otherwise
		 * just put the two under a new or data node. */
		if ( _rhs1->reOrItem->type == ReOrItem::Data &&
				_rhs0->reOrBlock->type == ReOrBlock::RecurseItem &&
				_rhs0->reOrBlock->item->type == ReOrItem::Data )
		{
			/* Append the right side to right side of the left and toss the
			 * right side. */
			_rhs0->reOrBlock->item->token.append( _rhs1->reOrItem->token );
			delete _rhs1->reOrItem;
			_lhs->reOrBlock = _rhs0->reOrBlock;
		}
		else {
			/* Can't optimize, put the left and right under a new node. */
			_lhs->reOrBlock = new ReOrBlock( _rhs0->reOrBlock, _rhs1->reOrItem );
		}
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_reg_or_data *_lhs = &((commit_reduce_union*)(lel+1))->reg_or_data;
#line 2172"reducer.lm"

		_lhs->reOrBlock = new ReOrBlock();
				}
			break;
		}
		case 1146: {
			if ( kid->tree->prod_num == 0 ) {
	lel_reg_or_char *_lhs = &((commit_reduce_union*)(lel+1))->reg_or_char;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2185"reducer.lm"

		// ReOrItem *reOrItem;
		char *c = unescape( _rhs0->data, _rhs0->length );
		Token tok;
		tok.set( c, 1 );
		delete[] c;
		_lhs->reOrItem = new ReOrItem( _loc0, tok );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_reg_or_char *_lhs = &((commit_reduce_union*)(lel+1))->reg_or_char;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	_tree_cursor = _tree_cursor->next;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 2195"reducer.lm"

		// ReOrItem *reOrItem;
		char *low = unescape( _rhs0->data, _rhs0->length );
		char *high = unescape( _rhs2->data, _rhs2->length );
		_lhs->reOrItem = new ReOrItem( _loc1, low[0], high[0] );
				}
			break;
		}
		case 1147: {
			if ( kid->tree->prod_num == 0 ) {
	lel_range_lit *_lhs = &((commit_reduce_union*)(lel+1))->range_lit;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2234"reducer.lm"

		/* Range literals must have only one char. We restrict this in the
		 * parse tree. */
		Token tok;
		tok.set( _rhs0 );
		_lhs->literal = new Literal( tok, Literal::LitString );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_range_lit *_lhs = &((commit_reduce_union*)(lel+1))->range_lit;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_alphabet_num *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->alphabet_num;
#line 2243"reducer.lm"

		_lhs->literal = new Literal( _rhs0->tok, Literal::Number );
				}
			break;
		}
		case 1148: {
			if ( kid->tree->prod_num == 0 ) {
	lel_alphabet_num *_lhs = &((commit_reduce_union*)(lel+1))->alphabet_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2213"reducer.lm"

		_lhs->tok.set( _rhs0 );
		_lhs->tok.set( _loc0 );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_alphabet_num *_lhs = &((commit_reduce_union*)(lel+1))->alphabet_num;
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 2219"reducer.lm"

		_lhs->tok.set( "-", 1 );
		_lhs->tok.append( _rhs1->data, _rhs1->length );
		//$$->tok.loc = @uint;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_alphabet_num *_lhs = &((commit_reduce_union*)(lel+1))->alphabet_num;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2248"reducer.lm"

		_lhs->tok.set( _rhs0 );
		_lhs->tok.set( _loc0 );
				}
			break;
		}
		case 1149: {
			if ( kid->tree->prod_num == 0 ) {
	lel_lm_act *_lhs = &((commit_reduce_union*)(lel+1))->lm_act;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_action_ref *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->action_ref;
#line 2364"reducer.lm"

		_lhs->action = _rhs1->action;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_lm_act *_lhs = &((commit_reduce_union*)(lel+1))->lm_act;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_block *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
#line 2368"reducer.lm"

		/* Create the action, add it to the list and pass up. */
		Action *newAction = new Action( &_rhs0->loc, std::string(),
				_rhs0->inlineList, pd->nextCondId++ );
		pd->actionList.append( newAction );
		_lhs->action = newAction;
				}
			break;
		}
		case 1150: {
			if ( kid->tree->prod_num == 0 ) {
	lel_opt_lm_act *_lhs = &((commit_reduce_union*)(lel+1))->opt_lm_act;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_lm_act *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->lm_act;
#line 2347"reducer.lm"

		_lhs->action = _rhs0->action;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_opt_lm_act *_lhs = &((commit_reduce_union*)(lel+1))->opt_lm_act;
#line 2352"reducer.lm"

		_lhs->action = 0;
				}
			break;
		}
		case 1151: {
			if ( kid->tree->prod_num == 0 ) {
	lel_lm_stmt *_lhs = &((commit_reduce_union*)(lel+1))->lm_stmt;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_join *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->join;
	_pt_cursor = _pt_cursor->next;
lel_opt_lm_act *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->opt_lm_act;
#line 2309"reducer.lm"

		InputLoc loc;
		loc.line = 1;
		loc.fileName = 0;

		Join *join = _rhs0->join;
		Action *action = _rhs1->action;

		if ( action != 0 )
			action->isLmAction = true;

		/* Provide a location to join. Unfortunately We don't
		 * have the start of the join as in other occurances. Use the end. */
		join->loc = loc;

		_lhs->lmPart = new LongestMatchPart( join, action, 
				loc, pd->nextLongestMatchId++ );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_lm_stmt *_lhs = &((commit_reduce_union*)(lel+1))->lm_stmt;
#line 2329"reducer.lm"

		_lhs->lmPart = 0;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_lm_stmt *_lhs = &((commit_reduce_union*)(lel+1))->lm_stmt;
#line 2334"reducer.lm"

		_lhs->lmPart = 0;
				}
			break;
		}
		case 1152: {
			if ( kid->tree->prod_num == 0 ) {
	lel_lm_stmt_list *_lhs = &((commit_reduce_union*)(lel+1))->lm_stmt_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_lm_stmt_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->lm_stmt_list;
	_pt_cursor = _pt_cursor->next;
lel_lm_stmt *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->lm_stmt;
#line 2285"reducer.lm"

		_lhs->lmPartList = _rhs0->lmPartList;
		if ( _rhs1->lmPart != 0 )
			_lhs->lmPartList->append( _rhs1->lmPart );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_lm_stmt_list *_lhs = &((commit_reduce_union*)(lel+1))->lm_stmt_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_lm_stmt *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->lm_stmt;
#line 2291"reducer.lm"

		_lhs->lmPartList = new LmPartList;
		if ( _rhs0->lmPart != 0 )
			_lhs->lmPartList->append( _rhs0->lmPart );
				}
			break;
		}
		case 1153: {
			if ( kid->tree->prod_num == 0 ) {
	lel_lm *_lhs = &((commit_reduce_union*)(lel+1))->lm;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_join *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->join;
#line 2262"reducer.lm"

		_lhs->machineDef = new MachineDef( _rhs0->join );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_lm *_lhs = &((commit_reduce_union*)(lel+1))->lm;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_lm_stmt_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->lm_stmt_list;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 2267"reducer.lm"

		/* Create a new factor going to a longest match structure. Record in
		 * the parse data that we have a longest match. */
		LongestMatch *lm = new LongestMatch( _loc0, _rhs1->lmPartList );
		pd->lmList.append( lm );
		for ( LmPartList::Iter lmp = *_rhs1->lmPartList; lmp.lte(); lmp++ )
			lmp->longestMatch = lm;
		_lhs->machineDef = new MachineDef( lm );
				}
			break;
		}
		case 1154: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_param *_lhs = &((commit_reduce_union*)(lel+1))->action_param;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 853"reducer.lm"

		string param( _rhs0->data, _rhs0->length );
		_lhs->param = new ActionParam( param );
				}
			break;
		}
		case 1155: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_param_list *_lhs = &((commit_reduce_union*)(lel+1))->action_param_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_param_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_param_list;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_param *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_param;
#line 867"reducer.lm"

		_lhs->paramList = _rhs0->paramList;
		_lhs->paramList->append( _rhs2->param );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_action_param_list *_lhs = &((commit_reduce_union*)(lel+1))->action_param_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_param *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_param;
#line 873"reducer.lm"

		_lhs->paramList = new ActionParamList;
		_lhs->paramList->append( _rhs0->param );
				}
			break;
		}
		case 1156: {
			if ( kid->tree->prod_num == 0 ) {
	lel_opt_action_param_list *_lhs = &((commit_reduce_union*)(lel+1))->opt_action_param_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_action_param_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->action_param_list;
#line 836"reducer.lm"

		_lhs->paramList = _rhs0->paramList;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_opt_action_param_list *_lhs = &((commit_reduce_union*)(lel+1))->opt_action_param_list;
#line 841"reducer.lm"

		_lhs->paramList = new ActionParamList;
				}
			break;
		}
		case 1157: {
			if ( kid->tree->prod_num == 0 ) {
	lel_action_params *_lhs = &((commit_reduce_union*)(lel+1))->action_params;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_opt_action_param_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->opt_action_param_list;
#line 822"reducer.lm"

		_lhs->paramList = _rhs1->paramList;
		paramList = _rhs1->paramList;
				}
			break;
		}
		case 1158: {
			if ( kid->tree->prod_num == 0 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_params *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_params;
	_pt_cursor = _pt_cursor->next;
lel_action_block *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
#line 165"reducer.lm"

		string data( _rhs1->data, _rhs1->length );
		if ( pd->actionDict.find( data ) ) {
			/* Recover by just ignoring the duplicate. */
			error(_loc1) << "action \"" << data << "\" already defined" << endl;
		}
		else {
			//std::cerr << "NEW ACTION " << $2->data << " " << $4->inlineList << std::endl;
			/* Add the action to the list of actions. */
			Action *newAction = new Action( _loc0, data, 
					_rhs3->inlineList, pd->nextCondId++ );

			/* Insert to list and dict. */
			pd->actionList.append( newAction );
			pd->actionDict.insert( newAction );

			newAction->paramList = _rhs2->paramList;
			if ( _rhs2->paramList != 0 )
				newAction->argListMap = new ActionArgListMap;
		}
				}
			if ( kid->tree->prod_num == 1 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_action_block *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
#line 188"reducer.lm"

		string data( _rhs1->data, _rhs1->length );
		if ( pd->actionDict.find( data ) ) {
			/* Recover by just ignoring the duplicate. */
			error(_loc1) << "action \"" << data << "\" already defined" << endl;
		}
		else {
			//std::cerr << "NEW ACTION " << $2->data << " " << $4->inlineList << std::endl;
			/* Add the action to the list of actions. */
			Action *newAction = new Action( _loc0, data, 
					_rhs2->inlineList, pd->nextCondId++ );

			/* Insert to list and dict. */
			pd->actionList.append( newAction );
			pd->actionDict.insert( newAction );
		}
				}
			break;
		}
		case 1159: {
			if ( kid->tree->prod_num == 0 ) {
	lel_def_name *_lhs = &((commit_reduce_union*)(lel+1))->def_name;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 122"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->tok.set( _rhs0 );
		_lhs->loc = *_loc0;

		/* Make/get the priority key. The name may have already been referenced
		 * and therefore exist. */
		PriorDictEl *priorDictEl;
		if ( pd->priorDict.insert( data, pd->nextPriorKey, &priorDictEl ) )
			pd->nextPriorKey += 1;
		pd->curDefPriorKey = priorDictEl->value;

		/* Make/get the local error key. */
		LocalErrDictEl *localErrDictEl;
		if ( pd->localErrDict.insert( data, pd->nextLocalErrKey, &localErrDictEl ) )
			pd->nextLocalErrKey += 1;
		pd->curDefLocalErrKey = localErrDictEl->value;
				}
			break;
		}
		case 1160: {
			if ( kid->tree->prod_num == 0 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_opt_export *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->opt_export;
	_pt_cursor = _pt_cursor->next;
lel_def_name *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->def_name;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_join *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->join;
#line 59"reducer.lm"

		InputLoc loc = &_rhs1->loc;

		bool exportMachine = _rhs0->isSet;
		if ( exportMachine )
			exportContext.append( true );

		string name( _rhs1->tok.data );

		/* Main machine must be an instance. */
		bool isInstance = false;
		if ( name == MAIN_MACHINE ) {
			warning(loc) << "main machine will be implicitly instantiated" << endl;
			isInstance = true;
		}

		MachineDef *machineDef = new MachineDef( _rhs3->join );

		/* Generic creation of machine for instantiation and assignment. */
		tryMachineDef( loc, name, machineDef, isInstance );

		if ( exportMachine )
			exportContext.remove( exportContext.length()-1 );

		/* Pass a location to join_or_lm */
		if ( machineDef->join != 0 )
			machineDef->join->loc = loc;
				}
			break;
		}
		case 1161: {
			if ( kid->tree->prod_num == 0 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_opt_export *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->opt_export;
	_pt_cursor = _pt_cursor->next;
lel_def_name *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->def_name;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_lm *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->lm;
#line 91"reducer.lm"

		InputLoc loc = &_rhs1->loc;

		bool exportMachine = _rhs0->isSet;
		if ( exportMachine )
			exportContext.append( true );

		string name( _rhs1->tok.data );

		MachineDef *machineDef = _rhs3->machineDef;

		/* Generic creation of machine for instantiation and assignment. */
		tryMachineDef( loc, name, machineDef, true );

		if ( exportMachine )
			exportContext.remove( exportContext.length()-1 );

		/* Pass a location to join_or_lm */
		if ( machineDef->join != 0 )
			machineDef->join->loc = loc;
				}
			break;
		}
		case 1162: {
			if ( kid->tree->prod_num == 0 ) {
	lel_nfa_expr *_lhs = &((commit_reduce_union*)(lel+1))->nfa_expr;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_nfa_expr *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_expr;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_term *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 2404"reducer.lm"

		_lhs->nfaUnion = _rhs0->nfaUnion;
		_lhs->nfaUnion->terms.append( _rhs2->term );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_nfa_expr *_lhs = &((commit_reduce_union*)(lel+1))->nfa_expr;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_term *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->term;
#line 2410"reducer.lm"

		_lhs->nfaUnion = new NfaUnion();
		_lhs->nfaUnion->terms.append( _rhs0->term );
				}
			break;
		}
		case 1163: {
			if ( kid->tree->prod_num == 0 ) {
	lel_nfa_round_spec *_lhs = &((commit_reduce_union*)(lel+1))->nfa_round_spec;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 2424"reducer.lm"

		// Convert the priority number to a long. Check for overflow.
		errno = 0;
		_lhs->depth = strtol( _rhs0->data, 0, 10 );
		if ( _lhs->depth == LONG_MAX && errno == ERANGE )
			error(_loc0) << "rounds " << _rhs0->data << " overflows" << endl;

		_lhs->group = strtol( _rhs2->data, 0, 10 );
		if ( _lhs->group == LONG_MAX && errno == ERANGE )
			error() << "group " << _rhs2->data << " overflows" << endl;
				}
			break;
		}
		case 1164: {
			if ( kid->tree->prod_num == 0 ) {
	lel_nfa_round_list *_lhs = &((commit_reduce_union*)(lel+1))->nfa_round_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_nfa_round_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_round_list;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_nfa_round_spec *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_round_spec;
#line 2445"reducer.lm"

		_lhs->roundsList = _rhs0->roundsList;
		_lhs->roundsList->append( NfaRound( _rhs2->depth,
				_rhs2->group ) );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_nfa_round_list *_lhs = &((commit_reduce_union*)(lel+1))->nfa_round_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_nfa_round_spec *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_round_spec;
#line 2452"reducer.lm"

		_lhs->roundsList = new NfaRoundVect;
		_lhs->roundsList->append( NfaRound( _rhs0->depth,
				_rhs0->group ) );
				}
			break;
		}
		case 1165: {
			if ( kid->tree->prod_num == 0 ) {
	lel_nfa_rounds *_lhs = &((commit_reduce_union*)(lel+1))->nfa_rounds;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_nfa_round_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_round_list;
#line 2466"reducer.lm"

		_lhs->roundsList = _rhs1->roundsList;
				}
			break;
		}
		case 1166: {
			if ( kid->tree->prod_num == 0 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_def_name *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->def_name;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_nfa_rounds *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_rounds;
	_pt_cursor = _pt_cursor->next;
lel_nfa_expr *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->nfa_expr;
#line 144"reducer.lm"

		InputLoc loc = &_rhs0->loc;
		string name( _rhs0->tok.data );

		_rhs3->nfaUnion->roundsList = _rhs2->roundsList;

		MachineDef *machineDef = new MachineDef( _rhs3->nfaUnion );

		/* Generic creation of machine for instantiation and assignment. */
		tryMachineDef( loc, name, machineDef, true );
				}
			break;
		}
		case 1167: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 291"reducer.lm"

		string one( _rhs0->data, _rhs0->length );
		if ( ! pd->setAlphType( _loc0, hostLang, one.c_str() ) ) {
			// Recover by ignoring the alphtype statement.
			error(_loc0) << "\"" << one << 
					"\" is not a valid alphabet type" << endl;
		}
				}
			if ( kid->tree->prod_num == 1 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 301"reducer.lm"

		string one( _rhs0->data, _rhs0->length );
		string two( _rhs1->data, _rhs1->length );
		if ( ! pd->setAlphType( _loc0, hostLang, one.c_str(), two.c_str() ) ) {
			// Recover by ignoring the alphtype statement.
			error(_loc0) << "\"" << one << 
					"\" is not a valid alphabet type" << endl;
		}
				}
			break;
		}
		case 1168: {
			if ( kid->tree->prod_num == 0 ) {
	lel_include_spec *_lhs = &((commit_reduce_union*)(lel+1))->include_spec;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 369"reducer.lm"

		_lhs->machine.set( _rhs0 );
		_lhs->machine.set( _loc0 );
		_lhs->file.data = 0;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_include_spec *_lhs = &((commit_reduce_union*)(lel+1))->include_spec;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 376"reducer.lm"

		_lhs->file.set( _rhs0 );
		_lhs->file.set( _loc0 );
		_lhs->machine.data = 0;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_include_spec *_lhs = &((commit_reduce_union*)(lel+1))->include_spec;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
#line 383"reducer.lm"

		_lhs->machine.set( _rhs0 );
		_lhs->machine.set( _loc0 );
		_lhs->file.set( _rhs1 );
		_lhs->file.set( _loc1 );
				}
			break;
		}
		case 1169: {
			if ( kid->tree->prod_num == 0 ) {
	lel_opt_export *_lhs = &((commit_reduce_union*)(lel+1))->opt_export;
#line 2385"reducer.lm"

		_lhs->isSet = true;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_opt_export *_lhs = &((commit_reduce_union*)(lel+1))->opt_export;
#line 2390"reducer.lm"

		_lhs->isSet = false;
				}
			break;
		}
		case 1170: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2472"reducer.lm"

		string arg( _rhs0->data, _rhs0->length );
		writeArgs.append( arg );
				}
			break;
		}
		case 1171: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 6"reducer.lm"

		InputLoc sectionLoc;
		string machine( _rhs1->data, _rhs1->length );

		if ( includeDepth > 0 ) {
			/* Check if the the machine is the one we are searching for. If
			 * not, reset pd. Otherwise, rename it to target machine because we
			 * are drawing the statements into target. */
			if ( machine == searchMachine )
				machine = targetMachine;
		}

		SectionDictEl *sdEl = id->sectionDict.find( machine.c_str() );
		if ( sdEl == 0 ) {
			Section *section = new Section( strdup(machine.c_str() ) );
			sdEl = new SectionDictEl( section->sectionName );
			sdEl->value = section;
			id->sectionDict.insert( sdEl );
		}

		ParseDataDictEl *pdEl = id->parseDataDict.find( machine );
		if ( pdEl == 0 ) {
			pdEl = new ParseDataDictEl( machine );
			pdEl->value = new ParseData( id, machine,
					id->nextMachineId++, sectionLoc, hostLang,
					minimizeLevel, minimizeOpt );
			id->parseDataDict.insert( pdEl );
			id->parseDataList.append( pdEl->value );
		}

		pd = pdEl->value;
				}
			break;
		}
		case 1172: {
			if ( kid->tree->prod_num == 4 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_action_block *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 210"reducer.lm"

		if ( pd->prePushExpr != 0 ) {
			/* Recover by just ignoring the duplicate. */
			error(_loc0) << "prepush code already defined" << endl;
		}
		pd->prePushExpr = new InlineBlock( _loc0, _rhs1->inlineList );

				}
			if ( kid->tree->prod_num == 5 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_action_block *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 219"reducer.lm"

		if ( pd->postPopExpr != 0 ) {
			/* Recover by just ignoring the duplicate. */
			error(_loc0) << "postpop code already defined" << endl;
		}
		pd->postPopExpr = new InlineBlock( _loc0, _rhs1->inlineList );
				}
			if ( kid->tree->prod_num == 13 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_action_block *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 230"reducer.lm"

		if ( pd->nfaPrePushExpr != 0 ) {
			/* Recover by just ignoring the duplicate. */
			error(_loc0) << "nfa_pre_push code already defined" << endl;
		}

		pd->nfaPrePushExpr = new InlineBlock( _loc0, _rhs1->inlineList );
				}
			if ( kid->tree->prod_num == 14 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_action_block *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->action_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 242"reducer.lm"

		if ( pd->nfaPostPopExpr != 0 ) {
			/* Recover by just ignoring the duplicate. */
			error(_loc0) << "nfa_post_pop code already defined" << endl;
		}

		pd->nfaPostPopExpr = new InlineBlock( _loc0, _rhs1->inlineList );
				}
			if ( kid->tree->prod_num == 6 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr_reparse *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr_reparse;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 255"reducer.lm"

		string data( _rhs1->data, _rhs1->length );
		bool wasSet = pd->setVariable( data.c_str(),
				_rhs2->inlineList );
		if ( !wasSet )
			error(_loc0) << "bad variable name: " << _rhs1->data << endl;
				}
			if ( kid->tree->prod_num == 8 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr_reparse *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr_reparse;
#line 264"reducer.lm"

		pd->accessExpr = _rhs1->inlineList;
				}
			if ( kid->tree->prod_num == 9 ) {
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 271"reducer.lm"

		if ( includeDepth == 0 ) {
			id->curItem = id->curItem->next;
			InputItem *inputItem = id->curItem;

			string cmd( _rhs1->data, _rhs1->length );
			inputItem->writeArgs.append( cmd );
			inputItem->writeArgs.append( writeArgs );

			inputItem->pd = pd;
		}

		/* Clear the write args collector. */
		writeArgs.empty();
				}
			if ( kid->tree->prod_num == 10 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr_reparse *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr_reparse;
#line 315"reducer.lm"

		pd->getKeyExpr = _rhs1->inlineList;
				}
			if ( kid->tree->prod_num == 11 ) {
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
#line 320"reducer.lm"

		InputLoc loc = _loc1;
		std::string fileName( _rhs1->data, _rhs1->length );

		long length;
		bool caseInsensitive;
		char *unescaped = prepareLitString( loc,
					fileName.c_str(), fileName.size(),
					length, caseInsensitive );

		loadImport( unescaped );
				}
			if ( kid->tree->prod_num == 12 ) {
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_include_spec *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->include_spec;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 336"reducer.lm"

		string fileName = id->inputFileName;
		string machine = pd->sectionName;

		if ( _rhs1->file.data != 0 ) {
			fileName = string( _rhs1->file.data, _rhs1->file.length );

			InputLoc loc = _rhs1->file.loc;
			long length;
			bool caseInsensitive;
			char *unescaped = prepareLitString( loc, fileName.c_str(), fileName.size(),
					length, caseInsensitive );
			fileName = unescaped;
		}

		if ( _rhs1->machine.data != 0 )
			machine = string( _rhs1->machine.data, _rhs1->machine.length );

		include( _loc0, fileName, machine );
				}
			break;
		}
		case 1175: {
			if ( kid->tree->prod_num == 0 ) {
	lel_inline_expr *_lhs = &((commit_reduce_union*)(lel+1))->inline_expr;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_item_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_item_list;
#line 1246"reducer.lm"

		_lhs->inlineList = _rhs0->inlineList;
				}
			break;
		}
		case 1176: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expr_item_list *_lhs = &((commit_reduce_union*)(lel+1))->expr_item_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_item_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_item_list;
	_pt_cursor = _pt_cursor->next;
lel_expr_item *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->expr_item;
#line 1259"reducer.lm"

		_lhs->inlineList = _rhs0->inlineList;
		_lhs->inlineList->append( _rhs1->inlineItem );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_expr_item_list *_lhs = &((commit_reduce_union*)(lel+1))->expr_item_list;
#line 1265"reducer.lm"

		_lhs->inlineList = new InlineList;
				}
			break;
		}
		case 1177: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expr_item *_lhs = &((commit_reduce_union*)(lel+1))->expr_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_any *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_any;
#line 1279"reducer.lm"

		_lhs->inlineItem = _rhs0->inlineItem;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_expr_item *_lhs = &((commit_reduce_union*)(lel+1))->expr_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_symbol *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_symbol;
#line 1283"reducer.lm"

		string sym( _rhs0->sym );
		_lhs->inlineItem = new InlineItem( &_rhs0->loc, sym, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_expr_item *_lhs = &((commit_reduce_union*)(lel+1))->expr_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_interpret *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_interpret;
#line 1288"reducer.lm"

		_lhs->inlineItem = _rhs0->inlineItem;
				}
			break;
		}
		case 1178: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1010"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1016"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1022"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1028"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1034"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1040"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 6 ) {
	lel_expr_any *_lhs = &((commit_reduce_union*)(lel+1))->expr_any;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1046"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			break;
		}
		case 1179: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expr_symbol *_lhs = &((commit_reduce_union*)(lel+1))->expr_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1301"reducer.lm"
 _lhs->loc = *_loc0; _lhs->sym = ","; 			}
			if ( kid->tree->prod_num == 1 ) {
	lel_expr_symbol *_lhs = &((commit_reduce_union*)(lel+1))->expr_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1303"reducer.lm"
 _lhs->loc = *_loc0; _lhs->sym = "("; 			}
			if ( kid->tree->prod_num == 2 ) {
	lel_expr_symbol *_lhs = &((commit_reduce_union*)(lel+1))->expr_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1305"reducer.lm"
 _lhs->loc = *_loc0; _lhs->sym = ")"; 			}
			if ( kid->tree->prod_num == 3 ) {
	lel_expr_symbol *_lhs = &((commit_reduce_union*)(lel+1))->expr_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1307"reducer.lm"
 _lhs->loc = *_loc0; _lhs->sym = "*"; 			}
			if ( kid->tree->prod_num == 4 ) {
	lel_expr_symbol *_lhs = &((commit_reduce_union*)(lel+1))->expr_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1309"reducer.lm"
 _lhs->loc = *_loc0; _lhs->sym = "::"; 			}
			break;
		}
		case 1180: {
			if ( kid->tree->prod_num == 0 ) {
	lel_expr_interpret *_lhs = &((commit_reduce_union*)(lel+1))->expr_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1325"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::PChar );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_expr_interpret *_lhs = &((commit_reduce_union*)(lel+1))->expr_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1330"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Char );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_expr_interpret *_lhs = &((commit_reduce_union*)(lel+1))->expr_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1335"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Curs );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_expr_interpret *_lhs = &((commit_reduce_union*)(lel+1))->expr_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1340"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Targs );
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_expr_interpret *_lhs = &((commit_reduce_union*)(lel+1))->expr_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_state_ref *_rhs2 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1345"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, _rhs2->nameRef, InlineItem::Entry );
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_expr_interpret *_lhs = &((commit_reduce_union*)(lel+1))->expr_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1350"reducer.lm"

		string data( _rhs0->data + 1, _rhs0->length - 1 );
		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Subst );

		ActionParamList::Iter api = *paramList;
		for ( ; api.lte(); api++ ) {
			if ( (*api)->name == data )
				break;
		}

		if ( api.end() )
			error( _loc0 ) << "invalid parameter reference \"$" << _rhs0->data << "\"" << endl;
		else {
			_lhs->inlineItem->substPos = api.pos();
		}
				}
			break;
		}
		case 1181: {
			if ( kid->tree->prod_num == 0 ) {
	lel_state_ref *_lhs = &((commit_reduce_union*)(lel+1))->state_ref;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_opt_name_sep *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->opt_name_sep;
	_pt_cursor = _pt_cursor->next;
lel_state_ref_names *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref_names;
#line 1102"reducer.lm"

		_lhs->nameRef = _rhs1->nameRef;
		if ( _rhs0->nameSep )
			_lhs->nameRef->prepend( "" );
				}
			break;
		}
		case 1182: {
			if ( kid->tree->prod_num == 0 ) {
	lel_opt_name_sep *_lhs = &((commit_reduce_union*)(lel+1))->opt_name_sep;
#line 1117"reducer.lm"

		_lhs->nameSep = true;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_opt_name_sep *_lhs = &((commit_reduce_union*)(lel+1))->opt_name_sep;
#line 1122"reducer.lm"

		_lhs->nameSep = false;
				}
			break;
		}
		case 1183: {
			if ( kid->tree->prod_num == 0 ) {
	lel_state_ref_names *_lhs = &((commit_reduce_union*)(lel+1))->state_ref_names;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_state_ref_names *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref_names;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
#line 1135"reducer.lm"

		_lhs->nameRef = _rhs0->nameRef;
		_lhs->nameRef->append( string( _rhs2->data, _rhs2->length ) );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_state_ref_names *_lhs = &((commit_reduce_union*)(lel+1))->state_ref_names;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 1141"reducer.lm"

		_lhs->nameRef = new NameRef;
		_lhs->nameRef->append( string( _rhs0->data, _rhs0->length ) );
				}
			break;
		}
		case 1184: {
			if ( kid->tree->prod_num == 0 ) {
	lel_inline_block *_lhs = &((commit_reduce_union*)(lel+1))->inline_block;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_block_item_list *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->block_item_list;
#line 933"reducer.lm"

		_lhs->inlineList = _rhs0->inlineList;
				}
			break;
		}
		case 1185: {
			if ( kid->tree->prod_num == 0 ) {
	lel_block_item_list *_lhs = &((commit_reduce_union*)(lel+1))->block_item_list;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_block_item *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->block_item;
	_pt_cursor = _pt_cursor->next;
lel_block_item_list *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->block_item_list;
#line 946"reducer.lm"

		_lhs->inlineList = _rhs1->inlineList;

		if ( _rhs0->inlineItem != 0 )
			_lhs->inlineList->prepend( _rhs0->inlineItem );
		else if ( _rhs0->inlineList != 0 ) {
			_lhs->inlineList->prepend( *_rhs0->inlineList );
			delete _rhs0->inlineList;
		}
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_block_item_list *_lhs = &((commit_reduce_union*)(lel+1))->block_item_list;
#line 958"reducer.lm"

		_lhs->inlineList = new InlineList;
				}
			break;
		}
		case 1186: {
			if ( kid->tree->prod_num == 0 ) {
	lel_block_item *_lhs = &((commit_reduce_union*)(lel+1))->block_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_any *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_any;
#line 974"reducer.lm"

		_lhs->inlineItem = _rhs0->inlineItem;
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_block_item *_lhs = &((commit_reduce_union*)(lel+1))->block_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_block_symbol *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->block_symbol;
#line 979"reducer.lm"

		_lhs->inlineItem = _rhs0->inlineItem;
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_block_item *_lhs = &((commit_reduce_union*)(lel+1))->block_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_block_interpret *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->block_interpret;
#line 984"reducer.lm"

		_lhs->inlineItem = _rhs0->inlineItem;
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_block_item *_lhs = &((commit_reduce_union*)(lel+1))->block_item;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_inline_block *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->inline_block;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 989"reducer.lm"

		_lhs->inlineList = _rhs1->inlineList;
		_lhs->inlineList->prepend( new InlineItem( _loc0, "{", InlineItem::Text ) );
		_lhs->inlineList->append( new InlineItem( _loc0, "}", InlineItem::Text ) );
		_lhs->inlineItem = 0;
				}
			break;
		}
		case 1187: {
			if ( kid->tree->prod_num == 0 ) {
	lel_block_symbol *_lhs = &((commit_reduce_union*)(lel+1))->block_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1059"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 1 ) {
	lel_block_symbol *_lhs = &((commit_reduce_union*)(lel+1))->block_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1065"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_block_symbol *_lhs = &((commit_reduce_union*)(lel+1))->block_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1071"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_block_symbol *_lhs = &((commit_reduce_union*)(lel+1))->block_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1077"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_block_symbol *_lhs = &((commit_reduce_union*)(lel+1))->block_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1083"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_block_symbol *_lhs = &((commit_reduce_union*)(lel+1))->block_symbol;
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1089"reducer.lm"

		string data( _rhs0->data, _rhs0->length );
		_lhs->inlineItem = new InlineItem( _loc0, data, InlineItem::Text );
				}
			break;
		}
		case 1188: {
			if ( kid->tree->prod_num == 1 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1168"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Hold );
				}
			if ( kid->tree->prod_num == 2 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1172"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::GotoExpr );
		_lhs->inlineItem->children = _rhs3->inlineList;
				}
			if ( kid->tree->prod_num == 3 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1177"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::NextExpr );
		_lhs->inlineItem->children = _rhs3->inlineList;
				}
			if ( kid->tree->prod_num == 4 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1182"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::CallExpr );
		_lhs->inlineItem->children = _rhs3->inlineList;
				}
			if ( kid->tree->prod_num == 5 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr *_rhs3 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1187"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::NcallExpr );
		_lhs->inlineItem->children = _rhs3->inlineList;
				}
			if ( kid->tree->prod_num == 6 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_inline_expr *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->inline_expr;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1192"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Exec );
		_lhs->inlineItem->children = _rhs1->inlineList;
				}
			if ( kid->tree->prod_num == 7 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_state_ref *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1197"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0,
				_rhs1->nameRef, InlineItem::Goto );
				}
			if ( kid->tree->prod_num == 8 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_state_ref *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1202"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0,
				_rhs1->nameRef, InlineItem::Next );
				}
			if ( kid->tree->prod_num == 9 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_state_ref *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1207"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0,
				_rhs1->nameRef, InlineItem::Call );
				}
			if ( kid->tree->prod_num == 10 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
	_pt_cursor = _pt_cursor->next;
lel_state_ref *_rhs1 = &((commit_reduce_union*)(_pt_cursor+1))->state_ref;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1212"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0,
				_rhs1->nameRef, InlineItem::Ncall );
				}
			if ( kid->tree->prod_num == 11 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1217"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Ret );
				}
			if ( kid->tree->prod_num == 12 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1221"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Nret );
				}
			if ( kid->tree->prod_num == 13 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1225"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Break );
				}
			if ( kid->tree->prod_num == 14 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
#line 1229"reducer.lm"

		_lhs->inlineItem = new InlineItem( _loc0, InlineItem::Nbreak );
				}
			if ( kid->tree->prod_num == 0 ) {
	lel_block_interpret *_lhs = &((commit_reduce_union*)(lel+1))->block_interpret;
	struct colm_parse_tree *_pt_cursor = lel->child;
lel_expr_interpret *_rhs0 = &((commit_reduce_union*)(_pt_cursor+1))->expr_interpret;
#line 1234"reducer.lm"

		_lhs->inlineItem = _rhs0->inlineItem;
				}
			break;
		}
		case 1189: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2487"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			if ( kid->tree->prod_num == 1 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2493"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			if ( kid->tree->prod_num == 2 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2499"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			if ( kid->tree->prod_num == 3 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2505"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			if ( kid->tree->prod_num == 4 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2511"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			if ( kid->tree->prod_num == 5 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2517"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			if ( kid->tree->prod_num == 6 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_data *_rhs0 = _tree_cursor->tree->tokdata;
#line 2523"reducer.lm"

		if ( includeDepth == 0 )
			id->curItem->data.write( _rhs0->data, _rhs0->length );
				}
			break;
		}
		case 1190: {
			if ( kid->tree->prod_num == 0 ) {
#line 2529"reducer.lm"

		if ( includeDepth == 0 ) {
			id->curItem = id->curItem->next;
			id->curItem->pd = pd;
			id->checkLastRef( id->curItem );
			id->curItem = id->curItem->next;
		}
				}
			break;
		}
		} }
		}
	}

	commit_clear_parse_tree( prg, sp, pda_run, lel->child );
	commit_clear_kid_list( prg, sp, kid->tree->child );
	kid->tree->child = 0;
	kid->tree->flags &= ~( AF_LEFT_IGNORE | AF_RIGHT_IGNORE );
	lel->child = 0;

	if ( sp != root )
		goto resume;
	pt->flags |= PF_COMMITTED;
}

void SectionPass::commit_reduce_forward( program_t *prg, 
		tree_t **root, struct pda_run *pda_run, parse_tree_t *pt )
{
	tree_t **sp = root;

	parse_tree_t *lel = pt;
	kid_t *kid = pt->shadow;

recurse:

	if ( lel->child != 0 ) {
		/* There are children. Must process all children first. */
		vm_push_ptree( lel );
		vm_push_kid( kid );

		lel = lel->child;
		kid = kid->tree->child;
		while ( lel != 0 ) {
			goto recurse;
			resume:
			lel = lel->next;
			kid = kid->next;
		}

		kid = vm_pop_kid();
		lel = vm_pop_ptree();
	}

	if ( !( lel->flags & PF_COMMITTED ) ) {
		/* Now can execute the reduction action. */
		{
		{ switch ( kid->tree->id ) {
		case 1171: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 2550"reducer.lm"

		string machine( _rhs1->data, _rhs1->length );

		SectionDictEl *sdEl = id->sectionDict.find( machine );
		if ( sdEl == 0 ) {
			sdEl = new SectionDictEl( machine );
			sdEl->value = new Section( machine );
			id->sectionDict.insert( sdEl );
		}

		section = sdEl->value;
				}
			break;
		}
		case 1172: {
			if ( kid->tree->prod_num == 9 ) {
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_location *_loc1 = colm_find_location( prg, _tree_cursor->tree );
#line 2564"reducer.lm"

		InputItem *inputItem = new InputItem;
		inputItem->type = InputItem::Write;
		inputItem->loc = _loc1;
		inputItem->name = section->sectionName;
		inputItem->section = section;

		id->inputItems.append( inputItem );
				}
			break;
		}
		case 1190: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_location *_loc2 = colm_find_location( prg, _tree_cursor->tree );
#line 2575"reducer.lm"

		InputItem *inputItem = new InputItem;
		inputItem->type = InputItem::EndSection;
		inputItem->loc = _loc2;
		id->inputItems.append( inputItem );

		if ( section != 0 ) {
			inputItem->section = section;
			section->lastReference = inputItem;
		}

		/* The end section may include a newline on the end, so
		 * we use the last line, which will count the newline. */
		inputItem = new InputItem;
		inputItem->type = InputItem::HostData;
		inputItem->loc = _loc2;
		if ( inputItem->loc.fileName == 0 )
			inputItem->loc = _loc0;
				
		id->inputItems.append( inputItem );
				}
			break;
		}
		} }
		}
	}

	commit_clear_parse_tree( prg, sp, pda_run, lel->child );
	commit_clear_kid_list( prg, sp, kid->tree->child );
	kid->tree->child = 0;
	kid->tree->flags &= ~( AF_LEFT_IGNORE | AF_RIGHT_IGNORE );
	lel->child = 0;

	if ( sp != root )
		goto resume;
	pt->flags |= PF_COMMITTED;
}

void IncludePass::commit_reduce_forward( program_t *prg, 
		tree_t **root, struct pda_run *pda_run, parse_tree_t *pt )
{
	tree_t **sp = root;

	parse_tree_t *lel = pt;
	kid_t *kid = pt->shadow;

recurse:

	if ( lel->child != 0 ) {
		/* There are children. Must process all children first. */
		vm_push_ptree( lel );
		vm_push_kid( kid );

		lel = lel->child;
		kid = kid->tree->child;
		while ( lel != 0 ) {
			goto recurse;
			resume:
			lel = lel->next;
			kid = kid->next;
		}

		kid = vm_pop_kid();
		lel = vm_pop_ptree();
	}

	if ( !( lel->flags & PF_COMMITTED ) ) {
		/* Now can execute the reduction action. */
		{
		{ switch ( kid->tree->id ) {
		case 1171: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs1 = _tree_cursor->tree->tokdata;
#line 2600"reducer.lm"

		sectionMachine = string( _rhs1->data, _rhs1->length );
				}
			break;
		}
		case 1190: {
			if ( kid->tree->prod_num == 0 ) {
	kid_t *_tree_cursor = kid->tree->child;
	colm_location *_loc0 = colm_find_location( prg, _tree_cursor->tree );
	_tree_cursor = _tree_cursor->next;
	_tree_cursor = _tree_cursor->next;
	colm_data *_rhs2 = _tree_cursor->tree->tokdata;
	colm_location *_loc2 = colm_find_location( prg, _tree_cursor->tree );
#line 2605"reducer.lm"

		if ( sectionMachine.size() > 0 && sectionMachine == targetMachine ) {
			IncItem *incItem = new IncItem;
			incItem->loc = _loc0;

			/* The locations are token starts. Include the trailing }%% token. */
			incItem->start = _loc0->byte;
			incItem->end = _loc2->byte + _rhs2->length;
			incItem->length = incItem->end - incItem->start;

			incItem->section = section;
			incItems.append( incItem );
		}
				}
			break;
		}
		} }
		}
	}

	commit_clear_parse_tree( prg, sp, pda_run, lel->child );
	commit_clear_kid_list( prg, sp, kid->tree->child );
	kid->tree->child = 0;
	kid->tree->flags &= ~( AF_LEFT_IGNORE | AF_RIGHT_IGNORE );
	lel->child = 0;

	if ( sp != root )
		goto resume;
	pt->flags |= PF_COMMITTED;
}

struct reduction_info
{
	unsigned char need_data[1251];
	unsigned char need_loc[1251];
};

struct reduction_info ri[4];

extern "C" void init_need()
{
	memset( ri[1].need_data, 0, sizeof(unsigned char) * 1251 );
	memset( ri[1].need_loc, 0, sizeof(unsigned char) * 1251 );
	ri[1].need_data[19] = COLM_RN_DATA;
	ri[1].need_loc[21] = COLM_RN_LOC;
	ri[1].need_loc[23] = COLM_RN_LOC;
	ri[1].need_loc[26] = COLM_RN_LOC;
	ri[1].need_loc[27] = COLM_RN_LOC;
	ri[1].need_loc[29] = COLM_RN_LOC;
	ri[1].need_loc[31] = COLM_RN_LOC;
	ri[1].need_loc[33] = COLM_RN_LOC;
	ri[1].need_loc[35] = COLM_RN_LOC;
	ri[1].need_loc[40] = COLM_RN_LOC;
	ri[1].need_loc[41] = COLM_RN_LOC;
	ri[1].need_loc[42] = COLM_RN_LOC;
	ri[1].need_loc[45] = COLM_RN_LOC;
	ri[1].need_loc[46] = COLM_RN_LOC;
	ri[1].need_loc[47] = COLM_RN_LOC;
	ri[1].need_loc[48] = COLM_RN_LOC;
	ri[1].need_loc[49] = COLM_RN_LOC;
	ri[1].need_loc[55] = COLM_RN_LOC;
	ri[1].need_loc[56] = COLM_RN_LOC;
	ri[1].need_loc[57] = COLM_RN_LOC;
	ri[1].need_loc[58] = COLM_RN_LOC;
	ri[1].need_loc[59] = COLM_RN_LOC;
	ri[1].need_loc[60] = COLM_RN_LOC;
	ri[1].need_loc[68] = COLM_RN_LOC;
	ri[1].need_loc[69] = COLM_RN_LOC;
	ri[1].need_loc[70] = COLM_RN_LOC;
	ri[1].need_loc[71] = COLM_RN_LOC;
	ri[1].need_loc[72] = COLM_RN_LOC;
	ri[1].need_loc[73] = COLM_RN_LOC;
	ri[1].need_loc[74] = COLM_RN_LOC;
	ri[1].need_loc[75] = COLM_RN_LOC;
	ri[1].need_loc[76] = COLM_RN_LOC;
	ri[1].need_loc[77] = COLM_RN_LOC;
	ri[1].need_loc[78] = COLM_RN_LOC;
	ri[1].need_loc[79] = COLM_RN_LOC;
	ri[1].need_loc[80] = COLM_RN_LOC;
	ri[1].need_loc[81] = COLM_RN_LOC;
	ri[1].need_loc[82] = COLM_RN_LOC;
	ri[1].need_loc[83] = COLM_RN_LOC;
	ri[1].need_loc[84] = COLM_RN_LOC;
	ri[1].need_loc[85] = COLM_RN_LOC;
	ri[1].need_loc[86] = COLM_RN_LOC;
	ri[1].need_loc[87] = COLM_RN_LOC;
	ri[1].need_loc[88] = COLM_RN_LOC;
	ri[1].need_loc[89] = COLM_RN_LOC;
	ri[1].need_loc[90] = COLM_RN_LOC;
	ri[1].need_loc[91] = COLM_RN_LOC;
	ri[1].need_loc[92] = COLM_RN_LOC;
	ri[1].need_loc[93] = COLM_RN_LOC;
	ri[1].need_loc[94] = COLM_RN_LOC;
	ri[1].need_loc[95] = COLM_RN_LOC;
	ri[1].need_loc[96] = COLM_RN_LOC;
	ri[1].need_loc[97] = COLM_RN_LOC;
	ri[1].need_loc[98] = COLM_RN_LOC;
	ri[1].need_loc[100] = COLM_RN_LOC;
	ri[1].need_loc[101] = COLM_RN_LOC;
	ri[1].need_loc[108] = COLM_RN_LOC;
	ri[1].need_loc[109] = COLM_RN_LOC;
	ri[1].need_loc[110] = COLM_RN_LOC;
	ri[1].need_loc[111] = COLM_RN_LOC;
	ri[1].need_loc[112] = COLM_RN_LOC;
	ri[1].need_loc[115] = COLM_RN_LOC;
	ri[1].need_loc[116] = COLM_RN_LOC;
	ri[1].need_data[120] = COLM_RN_DATA;
	ri[1].need_loc[120] = COLM_RN_LOC;
	ri[1].need_loc[122] = COLM_RN_LOC;
	ri[1].need_loc[123] = COLM_RN_LOC;
	ri[1].need_data[124] = COLM_RN_DATA;
	ri[1].need_loc[124] = COLM_RN_LOC;
	ri[1].need_data[125] = COLM_RN_DATA;
	ri[1].need_loc[125] = COLM_RN_LOC;
	ri[1].need_data[126] = COLM_RN_DATA;
	ri[1].need_loc[126] = COLM_RN_LOC;
	ri[1].need_loc[127] = COLM_RN_LOC;
	ri[1].need_data[129] = COLM_RN_DATA;
	ri[1].need_loc[129] = COLM_RN_LOC;
	ri[1].need_loc[131] = COLM_RN_LOC;
	ri[1].need_loc[132] = COLM_RN_LOC;
	ri[1].need_loc[133] = COLM_RN_LOC;
	ri[1].need_data[134] = COLM_RN_DATA;
	ri[1].need_loc[134] = COLM_RN_LOC;
	ri[1].need_data[137] = COLM_RN_DATA;
	ri[1].need_loc[138] = COLM_RN_LOC;
	ri[1].need_loc[139] = COLM_RN_LOC;
	ri[1].need_loc[140] = COLM_RN_LOC;
	ri[1].need_loc[141] = COLM_RN_LOC;
	ri[1].need_loc[142] = COLM_RN_LOC;
	ri[1].need_loc[143] = COLM_RN_LOC;
	ri[1].need_loc[144] = COLM_RN_LOC;
	ri[1].need_loc[145] = COLM_RN_LOC;
	ri[1].need_loc[146] = COLM_RN_LOC;
	ri[1].need_loc[147] = COLM_RN_LOC;
	ri[1].need_loc[148] = COLM_RN_LOC;
	ri[1].need_loc[149] = COLM_RN_LOC;
	ri[1].need_loc[150] = COLM_RN_LOC;
	ri[1].need_loc[151] = COLM_RN_LOC;
	ri[1].need_loc[152] = COLM_RN_LOC;
	ri[1].need_loc[153] = COLM_RN_LOC;
	ri[1].need_data[155] = COLM_RN_DATA;
	ri[1].need_loc[155] = COLM_RN_LOC;
	ri[1].need_data[156] = COLM_RN_DATA;
	ri[1].need_loc[156] = COLM_RN_LOC;
	ri[1].need_data[157] = COLM_RN_DATA;
	ri[1].need_loc[157] = COLM_RN_LOC;
	ri[1].need_data[158] = COLM_RN_DATA;
	ri[1].need_loc[158] = COLM_RN_LOC;
	ri[1].need_data[159] = COLM_RN_DATA;
	ri[1].need_loc[159] = COLM_RN_LOC;
	ri[1].need_data[160] = COLM_RN_DATA;
	ri[1].need_loc[160] = COLM_RN_LOC;
	ri[1].need_data[161] = COLM_RN_DATA;
	ri[1].need_loc[161] = COLM_RN_LOC;
	ri[1].need_data[162] = COLM_RN_DATA;
	ri[1].need_loc[162] = COLM_RN_LOC;
	ri[1].need_data[163] = COLM_RN_DATA;
	ri[1].need_loc[163] = COLM_RN_LOC;
	ri[1].need_data[164] = COLM_RN_DATA;
	ri[1].need_loc[164] = COLM_RN_LOC;
	ri[1].need_data[165] = COLM_RN_DATA;
	ri[1].need_loc[165] = COLM_RN_LOC;
	ri[1].need_data[166] = COLM_RN_DATA;
	ri[1].need_loc[166] = COLM_RN_LOC;
	ri[1].need_data[167] = COLM_RN_DATA;
	ri[1].need_loc[167] = COLM_RN_LOC;
	ri[1].need_data[168] = COLM_RN_DATA;
	ri[1].need_loc[168] = COLM_RN_LOC;
	ri[1].need_data[171] = COLM_RN_DATA;
	ri[1].need_data[172] = COLM_RN_DATA;
	ri[1].need_data[173] = COLM_RN_DATA;
	ri[1].need_data[174] = COLM_RN_DATA;
	ri[1].need_data[175] = COLM_RN_DATA;
	ri[1].need_data[176] = COLM_RN_DATA;
	ri[1].need_data[177] = COLM_RN_DATA;
	ri[1].need_loc[1134] = COLM_RN_LOC;
	memset( ri[2].need_data, 0, sizeof(unsigned char) * 1251 );
	memset( ri[2].need_loc, 0, sizeof(unsigned char) * 1251 );
	ri[2].need_loc[20] = COLM_RN_LOC;
	ri[2].need_data[124] = COLM_RN_DATA;
	ri[2].need_loc[124] = COLM_RN_LOC;
	ri[2].need_loc[169] = COLM_RN_LOC;
	memset( ri[3].need_data, 0, sizeof(unsigned char) * 1251 );
	memset( ri[3].need_loc, 0, sizeof(unsigned char) * 1251 );
	ri[3].need_data[20] = COLM_RN_DATA;
	ri[3].need_loc[20] = COLM_RN_LOC;
	ri[3].need_data[124] = COLM_RN_DATA;
	ri[3].need_loc[169] = COLM_RN_LOC;
}
extern "C" int reducer_need_tok( program_t *prg, struct pda_run *pda_run, int id )
{
	if ( pda_run->reducer > 0 ) {
		return COLM_RN_DATA | ri[pda_run->reducer].need_data[id] | 
			ri[pda_run->reducer].need_loc[id];
	}
	return COLM_RN_BOTH;
}

extern "C" int reducer_need_ign( program_t *prg, struct pda_run *pda_run )
{
	return COLM_RN_BOTH;
}
