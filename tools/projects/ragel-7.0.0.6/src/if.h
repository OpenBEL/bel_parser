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
struct select;
struct c_select;
struct ruby_select;
struct ocaml_select;
struct crack_select;
struct selectt;
struct c_select_section;
struct ruby_select_section;
struct ocaml_select_section;
struct crack_select_section;
struct start;
struct import_val;
struct import;
namespace srlex { struct _literal_0003; }
namespace srlex { struct _literal_0005; }
namespace srlex { struct _literal_0007; }
namespace srlex { struct _ignore_0001; }
namespace srlex { struct word; }
namespace ragel { struct _literal_0015; }
namespace ragel { struct _literal_001b; }
namespace ragel { struct _literal_001d; }
namespace ragel { struct _literal_001f; }
namespace ragel { struct _literal_0021; }
namespace ragel { struct _literal_0023; }
namespace ragel { struct _literal_0025; }
namespace ragel { struct _literal_0027; }
namespace ragel { struct _literal_0029; }
namespace ragel { struct _literal_002b; }
namespace ragel { struct _literal_002d; }
namespace ragel { struct _literal_002f; }
namespace ragel { struct _literal_0031; }
namespace ragel { struct _literal_0033; }
namespace ragel { struct _literal_0035; }
namespace ragel { struct _literal_0037; }
namespace ragel { struct _literal_0039; }
namespace ragel { struct _literal_003b; }
namespace ragel { struct _literal_003d; }
namespace ragel { struct _literal_003f; }
namespace ragel { struct _literal_0041; }
namespace ragel { struct _literal_0043; }
namespace ragel { struct _literal_0045; }
namespace ragel { struct _literal_0047; }
namespace ragel { struct _literal_0049; }
namespace ragel { struct _literal_004b; }
namespace ragel { struct _literal_004d; }
namespace ragel { struct _literal_004f; }
namespace ragel { struct _literal_0051; }
namespace ragel { struct _literal_0053; }
namespace ragel { struct _literal_0055; }
namespace ragel { struct _literal_0057; }
namespace ragel { struct _literal_0059; }
namespace ragel { struct _literal_005b; }
namespace ragel { struct _literal_005d; }
namespace ragel { struct _literal_005f; }
namespace ragel { struct _literal_0061; }
namespace ragel { struct _literal_0063; }
namespace ragel { struct _literal_0065; }
namespace ragel { struct _literal_0067; }
namespace ragel { struct _literal_0069; }
namespace ragel { struct _literal_006b; }
namespace ragel { struct _literal_006d; }
namespace ragel { struct _literal_006f; }
namespace ragel { struct _literal_0071; }
namespace ragel { struct _literal_0073; }
namespace ragel { struct _literal_0075; }
namespace ragel { struct _literal_0077; }
namespace ragel { struct _literal_0079; }
namespace ragel { struct _literal_007b; }
namespace ragel { struct _literal_007d; }
namespace ragel { struct _literal_007f; }
namespace ragel { struct _literal_0081; }
namespace ragel { struct _literal_0083; }
namespace ragel { struct _literal_0085; }
namespace ragel { struct _literal_0087; }
namespace ragel { struct _literal_0089; }
namespace ragel { struct _literal_008b; }
namespace ragel { struct _literal_008d; }
namespace ragel { struct _literal_008f; }
namespace ragel { struct _literal_0091; }
namespace ragel { struct _literal_0093; }
namespace ragel { struct _literal_0095; }
namespace ragel { struct _literal_0097; }
namespace ragel { struct _literal_0099; }
namespace ragel { struct _literal_009b; }
namespace ragel { struct _literal_009d; }
namespace ragel { struct _literal_009f; }
namespace ragel { struct _literal_00a1; }
namespace ragel { struct _literal_00a3; }
namespace ragel { struct _literal_00a5; }
namespace ragel { struct _literal_00a7; }
namespace ragel { struct _literal_00a9; }
namespace ragel { struct _literal_00ab; }
namespace ragel { struct _literal_00ad; }
namespace ragel { struct _literal_00af; }
namespace ragel { struct _literal_00b1; }
namespace ragel { struct _literal_00b3; }
namespace ragel { struct _literal_00b5; }
namespace ragel { struct _literal_00b7; }
namespace ragel { struct _literal_00b9; }
namespace ragel { struct _literal_00bb; }
namespace ragel { struct _literal_00bd; }
namespace ragel { struct _literal_00bf; }
namespace ragel { struct _literal_00c1; }
namespace ragel { struct _literal_00c3; }
namespace ragel { struct _literal_00c5; }
namespace ragel { struct _literal_00c7; }
namespace ragel { struct _literal_00c9; }
namespace ragel { struct _literal_00cb; }
namespace ragel { struct _literal_00cd; }
namespace ragel { struct _literal_00cf; }
namespace ragel { struct _literal_00d1; }
namespace ragel { struct _literal_00d3; }
namespace ragel { struct _literal_00d5; }
namespace ragel { struct _literal_00d7; }
namespace ragel { struct _literal_00d9; }
namespace ragel { struct _literal_00db; }
namespace ragel { struct _ignore_0017; }
namespace ragel { struct _ignore_0019; }
namespace ragel { struct string; }
namespace ragel { struct lex_regex_open; }
namespace ragel { struct lex_sqopen_pos; }
namespace ragel { struct lex_sqopen_neg; }
namespace ragel { struct word; }
namespace ragel { struct uint; }
namespace ragel { struct hex; }
namespace ragel { struct re_dot; }
namespace ragel { struct re_star; }
namespace ragel { struct re_char; }
namespace ragel { struct re_close; }
namespace ragel { struct re_sqopen_pos; }
namespace ragel { struct re_sqopen_neg; }
namespace ragel { struct re_or_dash; }
namespace ragel { struct re_or_char; }
namespace ragel { struct re_or_sqclose; }
namespace ragel { struct _inline_expr_reparse; }
namespace ragel { struct variable_name; }
namespace ragel { struct inline_expr_reparse; }
namespace ragel { struct join; }
namespace ragel { struct expression; }
namespace ragel { struct expression_op_list; }
namespace ragel { struct expression_op; }
namespace ragel { struct expr_left; }
namespace ragel { struct term; }
namespace ragel { struct term_left; }
namespace ragel { struct term_op_list_short; }
namespace ragel { struct term_op; }
namespace ragel { struct factor_label; }
namespace ragel { struct factor_ep; }
namespace ragel { struct epsilon_target; }
namespace ragel { struct action_expr; }
namespace ragel { struct action_block; }
namespace ragel { struct action_arg_list; }
namespace ragel { struct opt_action_arg_list; }
namespace ragel { struct named_action_ref; }
namespace ragel { struct action_ref; }
namespace ragel { struct priority_name; }
namespace ragel { struct error_name; }
namespace ragel { struct priority_aug; }
namespace ragel { struct aug_base; }
namespace ragel { struct aug_cond; }
namespace ragel { struct aug_to_state; }
namespace ragel { struct aug_from_state; }
namespace ragel { struct aug_eof; }
namespace ragel { struct aug_gbl_error; }
namespace ragel { struct aug_local_error; }
namespace ragel { struct factor_aug; }
namespace ragel { struct nfa_kw; }
namespace ragel { struct factor_rep; }
namespace ragel { struct factor_rep_op_list; }
namespace ragel { struct factor_rep_op; }
namespace ragel { struct factor_rep_num; }
namespace ragel { struct factor_neg; }
namespace ragel { struct factor; }
namespace ragel { struct regex; }
namespace ragel { struct reg_item_rep_list; }
namespace ragel { struct reg_item_rep; }
namespace ragel { struct reg_item; }
namespace ragel { struct reg_or_data; }
namespace ragel { struct reg_or_char; }
namespace ragel { struct range_lit; }
namespace ragel { struct alphabet_num; }
namespace ragel { struct lm_act; }
namespace ragel { struct opt_lm_act; }
namespace ragel { struct lm_stmt; }
namespace ragel { struct lm_stmt_list; }
namespace ragel { struct lm; }
namespace ragel { struct action_param; }
namespace ragel { struct action_param_list; }
namespace ragel { struct opt_action_param_list; }
namespace ragel { struct action_params; }
namespace ragel { struct action_spec; }
namespace ragel { struct def_name; }
namespace ragel { struct assignment; }
namespace ragel { struct instantiation; }
namespace ragel { struct nfa_expr; }
namespace ragel { struct nfa_round_spec; }
namespace ragel { struct nfa_round_list; }
namespace ragel { struct nfa_rounds; }
namespace ragel { struct nfa_union; }
namespace ragel { struct alphtype_type; }
namespace ragel { struct include_spec; }
namespace ragel { struct opt_export; }
namespace ragel { struct write_arg; }
namespace ragel { struct machine_name; }
namespace ragel { struct statement; }
namespace ragel { struct opt_machine_name; }
namespace ragel { struct ragel_start; }
namespace c_inline { struct _literal_0101; }
namespace c_inline { struct _literal_0103; }
namespace c_inline { struct _literal_0105; }
namespace c_inline { struct _literal_0107; }
namespace c_inline { struct _literal_0109; }
namespace c_inline { struct _literal_010b; }
namespace c_inline { struct _literal_010d; }
namespace c_inline { struct _literal_010f; }
namespace c_inline { struct _literal_0111; }
namespace c_inline { struct _literal_0113; }
namespace c_inline { struct _literal_0115; }
namespace c_inline { struct _literal_0117; }
namespace c_inline { struct _literal_0119; }
namespace c_inline { struct _literal_011b; }
namespace c_inline { struct _literal_011d; }
namespace c_inline { struct _literal_012b; }
namespace c_inline { struct _literal_012d; }
namespace c_inline { struct _literal_012f; }
namespace c_inline { struct _literal_0131; }
namespace c_inline { struct _literal_0133; }
namespace c_inline { struct _literal_0135; }
namespace c_inline { struct _literal_0137; }
namespace c_inline { struct _literal_0139; }
namespace c_inline { struct ident; }
namespace c_inline { struct number; }
namespace c_inline { struct hex_number; }
namespace c_inline { struct comment; }
namespace c_inline { struct string; }
namespace c_inline { struct whitespace; }
namespace c_inline { struct var_ref; }
namespace c_inline { struct c_any; }
namespace c_inline { struct inline_expr; }
namespace c_inline { struct expr_item_list; }
namespace c_inline { struct expr_item; }
namespace c_inline { struct expr_any; }
namespace c_inline { struct expr_symbol; }
namespace c_inline { struct expr_interpret; }
namespace c_inline { struct state_ref; }
namespace c_inline { struct opt_name_sep; }
namespace c_inline { struct state_ref_names; }
namespace c_inline { struct inline_block; }
namespace c_inline { struct block_item_list; }
namespace c_inline { struct block_item; }
namespace c_inline { struct block_symbol; }
namespace c_inline { struct block_interpret; }
namespace c_host { struct _literal_013f; }
namespace c_host { struct slr; }
namespace c_host { struct ident; }
namespace c_host { struct number; }
namespace c_host { struct hex_number; }
namespace c_host { struct comment; }
namespace c_host { struct string; }
namespace c_host { struct whitespace; }
namespace c_host { struct c_any; }
namespace c_host { struct tok; }
namespace c_host { struct section; }
namespace ocaml_inline { struct _literal_0151; }
namespace ocaml_inline { struct _literal_0153; }
namespace ocaml_inline { struct _literal_0155; }
namespace ocaml_inline { struct _literal_0157; }
namespace ocaml_inline { struct _literal_0159; }
namespace ocaml_inline { struct _literal_015b; }
namespace ocaml_inline { struct _literal_015d; }
namespace ocaml_inline { struct _literal_015f; }
namespace ocaml_inline { struct _literal_0161; }
namespace ocaml_inline { struct _literal_0163; }
namespace ocaml_inline { struct _literal_0165; }
namespace ocaml_inline { struct _literal_0167; }
namespace ocaml_inline { struct _literal_0169; }
namespace ocaml_inline { struct _literal_016b; }
namespace ocaml_inline { struct _literal_016d; }
namespace ocaml_inline { struct _literal_017b; }
namespace ocaml_inline { struct _literal_017d; }
namespace ocaml_inline { struct _literal_017f; }
namespace ocaml_inline { struct _literal_0181; }
namespace ocaml_inline { struct _literal_0183; }
namespace ocaml_inline { struct _literal_0185; }
namespace ocaml_inline { struct _literal_0187; }
namespace ocaml_inline { struct _literal_0189; }
namespace ocaml_inline { struct ident; }
namespace ocaml_inline { struct number; }
namespace ocaml_inline { struct hex_number; }
namespace ocaml_inline { struct comment; }
namespace ocaml_inline { struct string; }
namespace ocaml_inline { struct whitespace; }
namespace ocaml_inline { struct c_any; }
namespace ocaml_inline { struct inline_expr; }
namespace ocaml_inline { struct expr_item; }
namespace ocaml_inline { struct expr_any; }
namespace ocaml_inline { struct expr_symbol; }
namespace ocaml_inline { struct expr_interpret; }
namespace ocaml_inline { struct state_ref; }
namespace ocaml_inline { struct opt_name_sep; }
namespace ocaml_inline { struct state_ref_names; }
namespace ocaml_inline { struct inline_block; }
namespace ocaml_inline { struct block_item; }
namespace ocaml_inline { struct block_symbol; }
namespace ocaml_inline { struct block_interpret; }
namespace ocaml_host { struct _literal_018d; }
namespace ocaml_host { struct slr; }
namespace ocaml_host { struct ident; }
namespace ocaml_host { struct number; }
namespace ocaml_host { struct hex_number; }
namespace ocaml_host { struct comment; }
namespace ocaml_host { struct string; }
namespace ocaml_host { struct whitespace; }
namespace ocaml_host { struct ocaml_any; }
namespace ocaml_host { struct tok; }
namespace ocaml_host { struct section; }
namespace ruby_inline { struct _literal_019f; }
namespace ruby_inline { struct _literal_01a1; }
namespace ruby_inline { struct _literal_01a3; }
namespace ruby_inline { struct _literal_01a5; }
namespace ruby_inline { struct _literal_01a7; }
namespace ruby_inline { struct _literal_01a9; }
namespace ruby_inline { struct _literal_01ab; }
namespace ruby_inline { struct _literal_01ad; }
namespace ruby_inline { struct _literal_01af; }
namespace ruby_inline { struct _literal_01b1; }
namespace ruby_inline { struct _literal_01b3; }
namespace ruby_inline { struct _literal_01b5; }
namespace ruby_inline { struct _literal_01b7; }
namespace ruby_inline { struct _literal_01b9; }
namespace ruby_inline { struct _literal_01bb; }
namespace ruby_inline { struct _literal_01c9; }
namespace ruby_inline { struct _literal_01cb; }
namespace ruby_inline { struct _literal_01cd; }
namespace ruby_inline { struct _literal_01cf; }
namespace ruby_inline { struct _literal_01d1; }
namespace ruby_inline { struct _literal_01d3; }
namespace ruby_inline { struct _literal_01d5; }
namespace ruby_inline { struct _literal_01d7; }
namespace ruby_inline { struct ident; }
namespace ruby_inline { struct number; }
namespace ruby_inline { struct hex_number; }
namespace ruby_inline { struct comment; }
namespace ruby_inline { struct string; }
namespace ruby_inline { struct whitespace; }
namespace ruby_inline { struct ruby_any; }
namespace ruby_inline { struct inline_expr; }
namespace ruby_inline { struct expr_item; }
namespace ruby_inline { struct expr_any; }
namespace ruby_inline { struct expr_symbol; }
namespace ruby_inline { struct expr_interpret; }
namespace ruby_inline { struct state_ref; }
namespace ruby_inline { struct opt_name_sep; }
namespace ruby_inline { struct state_ref_names; }
namespace ruby_inline { struct inline_block; }
namespace ruby_inline { struct block_item; }
namespace ruby_inline { struct block_symbol; }
namespace ruby_inline { struct block_interpret; }
namespace ruby_host { struct _literal_01db; }
namespace ruby_host { struct slr; }
namespace ruby_host { struct ident; }
namespace ruby_host { struct number; }
namespace ruby_host { struct hex_number; }
namespace ruby_host { struct comment; }
namespace ruby_host { struct string; }
namespace ruby_host { struct whitespace; }
namespace ruby_host { struct ruby_any; }
namespace ruby_host { struct tok; }
namespace ruby_host { struct section; }
namespace crack_inline { struct _literal_01ed; }
namespace crack_inline { struct _literal_01ef; }
namespace crack_inline { struct _literal_01f1; }
namespace crack_inline { struct _literal_01f3; }
namespace crack_inline { struct _literal_01f5; }
namespace crack_inline { struct _literal_01f7; }
namespace crack_inline { struct _literal_01f9; }
namespace crack_inline { struct _literal_01fb; }
namespace crack_inline { struct _literal_01fd; }
namespace crack_inline { struct _literal_01ff; }
namespace crack_inline { struct _literal_0201; }
namespace crack_inline { struct _literal_0203; }
namespace crack_inline { struct _literal_0205; }
namespace crack_inline { struct _literal_0207; }
namespace crack_inline { struct _literal_0209; }
namespace crack_inline { struct _literal_0217; }
namespace crack_inline { struct _literal_0219; }
namespace crack_inline { struct _literal_021b; }
namespace crack_inline { struct _literal_021d; }
namespace crack_inline { struct _literal_021f; }
namespace crack_inline { struct _literal_0221; }
namespace crack_inline { struct _literal_0223; }
namespace crack_inline { struct _literal_0225; }
namespace crack_inline { struct ident; }
namespace crack_inline { struct number; }
namespace crack_inline { struct hex_number; }
namespace crack_inline { struct comment; }
namespace crack_inline { struct string; }
namespace crack_inline { struct whitespace; }
namespace crack_inline { struct c_any; }
namespace crack_inline { struct inline_expr; }
namespace crack_inline { struct expr_item; }
namespace crack_inline { struct expr_any; }
namespace crack_inline { struct expr_symbol; }
namespace crack_inline { struct expr_interpret; }
namespace crack_inline { struct state_ref; }
namespace crack_inline { struct opt_name_sep; }
namespace crack_inline { struct state_ref_names; }
namespace crack_inline { struct inline_block; }
namespace crack_inline { struct block_item; }
namespace crack_inline { struct block_symbol; }
namespace crack_inline { struct block_interpret; }
namespace crack_host { struct _literal_0229; }
namespace crack_host { struct slr; }
namespace crack_host { struct ident; }
namespace crack_host { struct number; }
namespace crack_host { struct hex_number; }
namespace crack_host { struct comment; }
namespace crack_host { struct string; }
namespace crack_host { struct whitespace; }
namespace crack_host { struct c_any; }
namespace crack_host { struct tok; }
namespace crack_host { struct section; }
struct _ign_0x1756920;
struct _ign_0x175a320;
struct _ign_0x175e6d0;
struct _ign_0x1783ac0;
struct _ign_0x1786940;
struct _ign_0x178a760;
struct _ign_0x178af60;
struct _ign_0x1742b70;
struct _ign_0x1990d60;
struct _ign_0x1750d10;
struct _ign_0x19b6790;
struct _ign_0x199b770;
struct _ign_0x19dc040;
struct _ign_0x19c1070;
struct _ign_0x1a01720;
struct _ign_0x1731c30;
struct __0x175a3c0_DEF_PAT_1;
struct __0x1783b60_DEF_PAT_2;
struct __0x17869e0_DEF_PAT_3;
struct __0x178a800_DEF_PAT_4;
struct __0x178b000_DEF_PAT_5;
struct __0x1742c10_DEF_PAT_6;
struct __0x1990e00_DEF_PAT_7;
struct __0x1750db0_DEF_PAT_8;
struct __0x19b6830_DEF_PAT_9;
struct __0x199b810_DEF_PAT_10;
struct __0x19dc0e0_DEF_PAT_11;
struct __0x19c1110_DEF_PAT_12;
struct __0x1a017c0_DEF_PAT_13;
struct __0x1731cd0_DEF_PAT_14;
struct _repeat_import;
namespace c_host { struct _repeat_section; }
namespace ruby_host { struct _repeat_section; }
namespace ocaml_host { struct _repeat_section; }
namespace ragel { struct _repeat_write_arg; }
namespace ragel { struct _repeat_statement; }
namespace c_inline { struct _opt_whitespace; }
namespace ocaml_inline { struct _repeat_expr_item; }
namespace ocaml_inline { struct _repeat_block_item; }
namespace ocaml_inline { struct _opt_whitespace; }
namespace ruby_inline { struct _repeat_expr_item; }
namespace ruby_inline { struct _repeat_block_item; }
namespace ruby_inline { struct _opt_whitespace; }
namespace crack_inline { struct _repeat_expr_item; }
namespace crack_inline { struct _repeat_block_item; }
namespace crack_inline { struct _opt_whitespace; }
namespace crack_host { struct _repeat_section; }
struct _T_any;
struct _T_start;
struct _T_import_val;
struct _T_import;
namespace ragel { struct _T_inline_expr_reparse; }
namespace ragel { struct _T_join; }
namespace ragel { struct _T_expression; }
namespace ragel { struct _T_expression_op_list; }
namespace ragel { struct _T_expression_op; }
namespace ragel { struct _T_expr_left; }
namespace ragel { struct _T_term; }
namespace ragel { struct _T_term_left; }
namespace ragel { struct _T_term_op_list_short; }
namespace ragel { struct _T_term_op; }
namespace ragel { struct _T_factor_label; }
namespace ragel { struct _T_factor_ep; }
namespace ragel { struct _T_epsilon_target; }
namespace ragel { struct _T_action_expr; }
namespace ragel { struct _T_action_block; }
namespace ragel { struct _T_action_arg_list; }
namespace ragel { struct _T_opt_action_arg_list; }
namespace ragel { struct _T_named_action_ref; }
namespace ragel { struct _T_action_ref; }
namespace ragel { struct _T_priority_name; }
namespace ragel { struct _T_error_name; }
namespace ragel { struct _T_priority_aug; }
namespace ragel { struct _T_aug_base; }
namespace ragel { struct _T_aug_cond; }
namespace ragel { struct _T_aug_to_state; }
namespace ragel { struct _T_aug_from_state; }
namespace ragel { struct _T_aug_eof; }
namespace ragel { struct _T_aug_gbl_error; }
namespace ragel { struct _T_aug_local_error; }
namespace ragel { struct _T_factor_aug; }
namespace ragel { struct _T_nfa_kw; }
namespace ragel { struct _T_factor_rep; }
namespace ragel { struct _T_factor_rep_op_list; }
namespace ragel { struct _T_factor_rep_op; }
namespace ragel { struct _T_factor_rep_num; }
namespace ragel { struct _T_factor_neg; }
namespace ragel { struct _T_factor; }
namespace ragel { struct _T_regex; }
namespace ragel { struct _T_reg_item_rep_list; }
namespace ragel { struct _T_reg_item_rep; }
namespace ragel { struct _T_reg_item; }
namespace ragel { struct _T_reg_or_data; }
namespace ragel { struct _T_reg_or_char; }
namespace ragel { struct _T_range_lit; }
namespace ragel { struct _T_alphabet_num; }
namespace ragel { struct _T_lm_act; }
namespace ragel { struct _T_opt_lm_act; }
namespace ragel { struct _T_lm_stmt; }
namespace ragel { struct _T_lm_stmt_list; }
namespace ragel { struct _T_lm; }
namespace ragel { struct _T_action_param; }
namespace ragel { struct _T_action_param_list; }
namespace ragel { struct _T_opt_action_param_list; }
namespace ragel { struct _T_action_params; }
namespace ragel { struct _T_action_spec; }
namespace ragel { struct _T_def_name; }
namespace ragel { struct _T_assignment; }
namespace ragel { struct _T_instantiation; }
namespace ragel { struct _T_nfa_expr; }
namespace ragel { struct _T_nfa_round_spec; }
namespace ragel { struct _T_nfa_round_list; }
namespace ragel { struct _T_nfa_rounds; }
namespace ragel { struct _T_nfa_union; }
namespace ragel { struct _T_alphtype_type; }
namespace ragel { struct _T_include_spec; }
namespace ragel { struct _T_opt_export; }
namespace ragel { struct _T_write_arg; }
namespace ragel { struct _T_machine_name; }
namespace ragel { struct _T_statement; }
namespace ragel { struct _T_opt_machine_name; }
namespace ragel { struct _T_ragel_start; }
namespace c_inline { struct _T_inline_expr; }
namespace c_inline { struct _T_expr_item_list; }
namespace c_inline { struct _T_expr_item; }
namespace c_inline { struct _T_expr_any; }
namespace c_inline { struct _T_expr_symbol; }
namespace c_inline { struct _T_expr_interpret; }
namespace c_inline { struct _T_state_ref; }
namespace c_inline { struct _T_opt_name_sep; }
namespace c_inline { struct _T_state_ref_names; }
namespace c_inline { struct _T_inline_block; }
namespace c_inline { struct _T_block_item_list; }
namespace c_inline { struct _T_block_item; }
namespace c_inline { struct _T_block_symbol; }
namespace c_inline { struct _T_block_interpret; }
namespace c_host { struct _T_tok; }
namespace c_host { struct _T_section; }
namespace ocaml_inline { struct _T_inline_expr; }
namespace ocaml_inline { struct _T_expr_item; }
namespace ocaml_inline { struct _T_expr_any; }
namespace ocaml_inline { struct _T_expr_symbol; }
namespace ocaml_inline { struct _T_expr_interpret; }
namespace ocaml_inline { struct _T_state_ref; }
namespace ocaml_inline { struct _T_opt_name_sep; }
namespace ocaml_inline { struct _T_state_ref_names; }
namespace ocaml_inline { struct _T_inline_block; }
namespace ocaml_inline { struct _T_block_item; }
namespace ocaml_inline { struct _T_block_symbol; }
namespace ocaml_inline { struct _T_block_interpret; }
namespace ocaml_host { struct _T_tok; }
namespace ocaml_host { struct _T_section; }
namespace ruby_inline { struct _T_inline_expr; }
namespace ruby_inline { struct _T_expr_item; }
namespace ruby_inline { struct _T_expr_any; }
namespace ruby_inline { struct _T_expr_symbol; }
namespace ruby_inline { struct _T_expr_interpret; }
namespace ruby_inline { struct _T_state_ref; }
namespace ruby_inline { struct _T_opt_name_sep; }
namespace ruby_inline { struct _T_state_ref_names; }
namespace ruby_inline { struct _T_inline_block; }
namespace ruby_inline { struct _T_block_item; }
namespace ruby_inline { struct _T_block_symbol; }
namespace ruby_inline { struct _T_block_interpret; }
namespace ruby_host { struct _T_tok; }
namespace ruby_host { struct _T_section; }
namespace crack_inline { struct _T_inline_expr; }
namespace crack_inline { struct _T_expr_item; }
namespace crack_inline { struct _T_expr_any; }
namespace crack_inline { struct _T_expr_symbol; }
namespace crack_inline { struct _T_expr_interpret; }
namespace crack_inline { struct _T_state_ref; }
namespace crack_inline { struct _T_opt_name_sep; }
namespace crack_inline { struct _T_state_ref_names; }
namespace crack_inline { struct _T_inline_block; }
namespace crack_inline { struct _T_block_item; }
namespace crack_inline { struct _T_block_symbol; }
namespace crack_inline { struct _T_block_interpret; }
namespace crack_host { struct _T_tok; }
namespace crack_host { struct _T_section; }
struct _T__repeat_import;
namespace c_host { struct _T__repeat_section; }
namespace ruby_host { struct _T__repeat_section; }
namespace ocaml_host { struct _T__repeat_section; }
namespace ragel { struct _T__repeat_write_arg; }
namespace ragel { struct _T__repeat_statement; }
namespace c_inline { struct _T__opt_whitespace; }
namespace ocaml_inline { struct _T__repeat_expr_item; }
namespace ocaml_inline { struct _T__repeat_block_item; }
namespace ocaml_inline { struct _T__opt_whitespace; }
namespace ruby_inline { struct _T__repeat_expr_item; }
namespace ruby_inline { struct _T__repeat_block_item; }
namespace ruby_inline { struct _T__opt_whitespace; }
namespace crack_inline { struct _T__repeat_expr_item; }
namespace crack_inline { struct _T__repeat_block_item; }
namespace crack_inline { struct _T__opt_whitespace; }
namespace crack_host { struct _T__repeat_section; }
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
struct select
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	select( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct c_select
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_select( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ruby_select
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ruby_select( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ocaml_select
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ocaml_select( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct crack_select
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	crack_select( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct selectt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	selectt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct c_select_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_select_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ruby_select_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ruby_select_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct ocaml_select_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ocaml_select_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct crack_select_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	crack_select_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
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
	::c_select_section c_select_section();
	::c_host::_repeat_section SectionList();
	::ruby_select_section ruby_select_section();
	::ruby_host::_repeat_section RSectionList();
	::ocaml_select_section ocaml_select_section();
	::ocaml_host::_repeat_section OSectionList();
	::crack_select_section crack_select_section();
};
struct import_val
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	import_val( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_host::number number();
	::c_host::string string();
	enum prod_name {
		Number = 0,
		String = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
};
struct import
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	import( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_host::ident Name();
	::import_val Val();
};
namespace srlex { struct _literal_0003
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0003( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace srlex { struct _literal_0005
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
}; }
namespace srlex { struct _literal_0007
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
}; }
namespace srlex { struct _ignore_0001
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
}; }
namespace srlex { struct word
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	word( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0015
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0015( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_001b
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
}; }
namespace ragel { struct _literal_001d
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
}; }
namespace ragel { struct _literal_001f
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
}; }
namespace ragel { struct _literal_0021
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
}; }
namespace ragel { struct _literal_0023
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
}; }
namespace ragel { struct _literal_0025
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0025( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0027
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0027( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0029
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
}; }
namespace ragel { struct _literal_002b
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
}; }
namespace ragel { struct _literal_002d
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
}; }
namespace ragel { struct _literal_002f
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
}; }
namespace ragel { struct _literal_0031
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0031( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0033
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0033( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0035
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0035( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0037
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0037( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0039
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0039( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_003b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_003b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_003d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_003d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_003f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_003f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0041
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0041( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0043
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0043( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0045
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0045( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0047
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0047( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0049
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0049( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_004b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_004b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_004d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_004d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_004f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_004f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0051
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0051( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0053
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0053( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0055
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0055( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0057
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0057( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0059
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0059( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_005b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_005b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_005d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_005d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_005f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_005f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0061
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0061( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0063
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0063( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0065
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0065( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0067
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0067( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0069
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0069( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_006b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_006b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_006d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_006d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_006f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_006f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0071
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0071( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0073
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0073( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0075
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0075( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0077
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0077( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0079
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0079( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_007b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_007b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_007d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_007d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_007f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_007f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0081
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0081( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0083
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0083( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0085
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0085( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0087
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0087( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0089
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0089( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_008b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_008b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_008d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_008d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_008f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_008f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0091
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0091( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0093
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0093( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0095
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0095( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0097
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0097( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_0099
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0099( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_009b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_009b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_009d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_009d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_009f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_009f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00a1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00a1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00a3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00a3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00a5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00a5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00a7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00a7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00a9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00a9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00ab
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00ab( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00ad
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00ad( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00af
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00af( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00b1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00b1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00b3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00b3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00b5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00b5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00b7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00b7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00b9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00b9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00bb
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00bb( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00bd
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00bd( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00bf
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00bf( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00c1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00c1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00c3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00c3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00c5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00c5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00c7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00c7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00c9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00c9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00cb
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00cb( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00cd
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00cd( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00cf
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00cf( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00d1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00d1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00d3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00d3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00d5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00d5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00d7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00d7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00d9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00d9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _literal_00db
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_00db( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _ignore_0017
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_0017( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _ignore_0019
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ignore_0019( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct string
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
}; }
namespace ragel { struct lex_regex_open
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_regex_open( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct lex_sqopen_pos
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_sqopen_pos( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct lex_sqopen_neg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lex_sqopen_neg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct word
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	word( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct uint
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	uint( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct hex
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_dot
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_dot( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_star
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_star( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_char
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_char( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_close
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_close( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_sqopen_pos
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_sqopen_pos( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_sqopen_neg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_sqopen_neg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_or_dash
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_or_dash( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_or_char
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_or_char( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct re_or_sqclose
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	re_or_sqclose( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _inline_expr_reparse
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_inline_expr_reparse( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct variable_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	variable_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct inline_expr_reparse
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_expr_reparse( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::_inline_expr_reparse _inline_expr_reparse();
	::ragel::action_expr action_expr();
	enum prod_name {
		Reparse = 0,
		ActionExpr = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct join
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	join( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::join _join();
	::ragel::expression expression();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct expression
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expression( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::expr_left expr_left();
	::ragel::expression_op_list expression_op_list();
	enum prod_name {
		Expression = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct expression_op_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expression_op_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::expression_op expression_op();
	::ragel::expression_op_list _expression_op_list();
	enum prod_name {
		Op = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct expression_op
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expression_op( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term term();
	enum prod_name {
		Or = 0,
		And = 1,
		Sub = 2,
		Ssub = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct expr_left
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_left( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term term();
	enum prod_name {
		Term = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term_left term_left();
	::ragel::term_op_list_short term_op_list_short();
	enum prod_name {
		Term = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct term_left
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	term_left( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_label factor_label();
	enum prod_name {
		FactorLabel = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct term_op_list_short
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	term_op_list_short( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term_op term_op();
	::ragel::term_op_list_short _term_op_list_short();
	enum prod_name {
		Empty = 0,
		Terms = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct term_op
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	term_op( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_label factor_label();
	enum prod_name {
		None = 0,
		Dot = 1,
		ColonLt = 2,
		ColonLtLt = 3,
		GtColon = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_label
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_label( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::factor_label _factor_label();
	::ragel::factor_ep factor_ep();
	enum prod_name {
		Label = 0,
		Ep = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_ep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_ep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_aug factor_aug();
	::ragel::epsilon_target epsilon_target();
	enum prod_name {
		Epsilon = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct epsilon_target
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	epsilon_target( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::epsilon_target _epsilon_target();
	::ragel::word word();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_select c_select();
	::c_inline::inline_expr CInlineExpr();
	::ruby_select ruby_select();
	::ruby_inline::inline_expr RubyInlineExpr();
	::ocaml_select ocaml_select();
	::ocaml_inline::inline_expr OCamlInlineExpr();
	::crack_select crack_select();
	::crack_inline::inline_expr CrackInlineExpr();
	enum prod_name {
		C = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_select c_select();
	::c_inline::inline_block CInlineBlock();
	::ruby_select ruby_select();
	::ruby_inline::inline_block RubyInlineBlock();
	::ocaml_select ocaml_select();
	::ocaml_inline::inline_block OCamlInlineBlock();
	::crack_select crack_select();
	::crack_inline::inline_block CrackInlineBlock();
	enum prod_name {
		C = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_arg_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_arg_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_arg_list _action_arg_list();
	::ragel::action_ref action_ref();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct opt_action_arg_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_action_arg_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_arg_list action_arg_list();
	enum prod_name {
		List = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct named_action_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	named_action_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::opt_action_arg_list opt_action_arg_list();
	enum prod_name {
		Plain = 0,
		Args = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::named_action_ref named_action_ref();
	::ragel::action_block action_block();
	enum prod_name {
		NamedRef = 0,
		ParenNamed = 1,
		Block = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct priority_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	priority_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	enum prod_name {
		Word = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct error_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	error_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	enum prod_name {
		Word = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct priority_aug
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	priority_aug( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint uint();
	enum prod_name {
		NoSign = 0,
		Plus = 1,
		Minus = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_base
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_base( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Finish = 0,
		Enter = 1,
		Leave = 2,
		All = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_cond
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_cond( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Start1 = 0,
		All1 = 1,
		Leave1 = 2,
		Start2 = 3,
		All2 = 4,
		Leave2 = 5,
		Start3 = 6,
		All3 = 7,
		Leave3 = 8,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_to_state
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_to_state( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Start1 = 0,
		NotStart1 = 1,
		All1 = 2,
		Final1 = 3,
		NotFinal1 = 4,
		Middle1 = 5,
		Start2 = 6,
		NotStart2 = 7,
		All2 = 8,
		Final2 = 9,
		NotFinal2 = 10,
		Middle2 = 11,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_from_state
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_from_state( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Start1 = 0,
		NotStart1 = 1,
		All1 = 2,
		Final1 = 3,
		NotFinal1 = 4,
		Middle1 = 5,
		Start2 = 6,
		NotStart2 = 7,
		All2 = 8,
		Final2 = 9,
		NotFinal2 = 10,
		Middle2 = 11,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_eof
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_eof( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Start1 = 0,
		NotStart1 = 1,
		All1 = 2,
		Final1 = 3,
		NotFinal1 = 4,
		Middle1 = 5,
		Start2 = 6,
		NotStart2 = 7,
		All2 = 8,
		Final2 = 9,
		NotFinal2 = 10,
		Middle2 = 11,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_gbl_error
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_gbl_error( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Start1 = 0,
		NotStart1 = 1,
		All1 = 2,
		Final1 = 3,
		NotFinal1 = 4,
		Middle1 = 5,
		Start2 = 6,
		NotStart2 = 7,
		All2 = 8,
		Final2 = 9,
		NotFinal2 = 10,
		Middle2 = 11,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct aug_local_error
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	aug_local_error( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Start1 = 0,
		NotStart1 = 1,
		All1 = 2,
		Final1 = 3,
		NotFinal1 = 4,
		Middle1 = 5,
		Start2 = 6,
		NotStart2 = 7,
		All2 = 8,
		Final2 = 9,
		NotFinal2 = 10,
		Middle2 = 11,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_aug
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_aug( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_aug _factor_aug();
	::ragel::aug_base aug_base();
	::ragel::action_ref action_ref();
	::ragel::priority_aug priority_aug();
	::ragel::priority_name priority_name();
	::ragel::aug_cond aug_cond();
	::ragel::aug_to_state aug_to_state();
	::ragel::aug_from_state aug_from_state();
	::ragel::aug_eof aug_eof();
	::ragel::aug_gbl_error aug_gbl_error();
	::ragel::aug_local_error aug_local_error();
	::ragel::error_name error_name();
	::ragel::factor_rep factor_rep();
	enum prod_name {
		ActionRef = 0,
		PriorEmbed = 1,
		NamedPriorEmbed = 2,
		CondEmbed = 3,
		NegCondEmbed = 4,
		ToStateAction = 5,
		FromStateAction = 6,
		EofAction = 7,
		GblErrorAction = 8,
		LocalErrorDef = 9,
		LocalErrorName = 10,
		Base = 11,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct nfa_kw
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	nfa_kw( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct factor_rep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_rep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_neg factor_neg();
	::ragel::factor_rep_op_list factor_rep_op_list();
	::ragel::nfa_kw nfa_kw();
	::ragel::uint uint();
	::ragel::factor_rep _factor_rep();
	::ragel::action_ref A1();
	::ragel::action_ref A2();
	::ragel::action_ref A3();
	::ragel::action_ref A4();
	::ragel::action_ref A5();
	::ragel::action_ref A6();
	enum prod_name {
		Op = 0,
		Nfa = 1,
		Cond = 2,
		NoMax = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_rep_op_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_rep_op_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_rep_op factor_rep_op();
	::ragel::factor_rep_op_list _factor_rep_op_list();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_rep_op
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_rep_op( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_rep_num factor_rep_num();
	::ragel::factor_rep_num LowRep();
	::ragel::factor_rep_num HighRep();
	enum prod_name {
		Star = 0,
		StarStar = 1,
		Optional = 2,
		Plus = 3,
		ExactRep = 4,
		MaxRep = 5,
		MinRep = 6,
		RangeRep = 7,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_rep_num
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_rep_num( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint uint();
	enum prod_name {
		RepNum = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor_neg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor_neg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_neg _factor_neg();
	::ragel::factor factor();
	enum prod_name {
		Bang = 0,
		Caret = 1,
		Base = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct factor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	factor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::alphabet_num alphabet_num();
	::ragel::word word();
	::ragel::string string();
	::ragel::lex_sqopen_pos lex_sqopen_pos();
	::ragel::reg_or_data reg_or_data();
	::ragel::re_or_sqclose re_or_sqclose();
	::ragel::lex_sqopen_neg lex_sqopen_neg();
	::ragel::lex_regex_open lex_regex_open();
	::ragel::regex regex();
	::ragel::re_close re_close();
	::ragel::range_lit RL1();
	::ragel::range_lit RL2();
	::ragel::join join();
	enum prod_name {
		AlphabetNum = 0,
		Word = 1,
		String = 2,
		PosOrBlock = 3,
		NegOrBlock = 4,
		Regex = 5,
		Range = 6,
		RangeIndep = 7,
		Join = 8,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct regex
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	regex( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::reg_item_rep_list reg_item_rep_list();
	enum prod_name {
		List = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct reg_item_rep_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reg_item_rep_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::reg_item_rep_list _reg_item_rep_list();
	::ragel::reg_item_rep reg_item_rep();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct reg_item_rep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reg_item_rep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::reg_item reg_item();
	::ragel::re_star re_star();
	enum prod_name {
		Star = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct reg_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	reg_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::re_sqopen_pos re_sqopen_pos();
	::ragel::reg_or_data reg_or_data();
	::ragel::re_or_sqclose re_or_sqclose();
	::ragel::re_sqopen_neg re_sqopen_neg();
	::ragel::re_dot re_dot();
	::ragel::re_char re_char();
	enum prod_name {
		PosOrBlock = 0,
		NegOrBlock = 1,
		Dot = 2,
		Char = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct reg_or_data
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
	::ragel::reg_or_data _reg_or_data();
	::ragel::reg_or_char reg_or_char();
	enum prod_name {
		Data = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct reg_or_char
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
	::ragel::re_or_char re_or_char();
	::ragel::re_or_char Low();
	::ragel::re_or_dash re_or_dash();
	::ragel::re_or_char High();
	enum prod_name {
		Char = 0,
		Range = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct range_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	range_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::string string();
	::ragel::alphabet_num alphabet_num();
	enum prod_name {
		String = 0,
		AN = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct alphabet_num
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	alphabet_num( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint uint();
	::ragel::hex hex();
	enum prod_name {
		Uint = 0,
		Neg = 1,
		Hex = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct lm_act
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lm_act( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_ref action_ref();
	::ragel::action_block action_block();
	enum prod_name {
		ActionRef = 0,
		ActionBlock = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct opt_lm_act
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_lm_act( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::lm_act lm_act();
	enum prod_name {
		Act = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct lm_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lm_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::join join();
	::ragel::opt_lm_act opt_lm_act();
	::ragel::assignment assignment();
	::ragel::action_spec action_spec();
	enum prod_name {
		LmStmt = 0,
		Assignment = 1,
		ActionSpec = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct lm_stmt_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lm_stmt_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::lm_stmt_list _lm_stmt_list();
	::ragel::lm_stmt lm_stmt();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct lm
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	lm( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::join join();
	::ragel::lm_stmt_list lm_stmt_list();
	enum prod_name {
		Join = 0,
		Lm = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_param
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_param( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	enum prod_name {
		Word = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_param_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_param_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_param_list _action_param_list();
	::ragel::action_param action_param();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct opt_action_param_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_action_param_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_param_list action_param_list();
	enum prod_name {
		List = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_params
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_params( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_action_param_list opt_action_param_list();
	enum prod_name {
		List = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct action_spec
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	action_spec( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::action_params action_params();
	::ragel::action_block action_block();
	enum prod_name {
		ActionSpecParams = 0,
		ActionSpec = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct def_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	def_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	enum prod_name {
		Word = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct assignment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	assignment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_export opt_export();
	::ragel::def_name def_name();
	::ragel::join join();
	enum prod_name {
		Assignment = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct instantiation
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	instantiation( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_export opt_export();
	::ragel::def_name def_name();
	::ragel::lm lm();
	enum prod_name {
		Instantiation = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct nfa_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	nfa_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::nfa_expr _nfa_expr();
	::ragel::term term();
	enum prod_name {
		Union = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct nfa_round_spec
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	nfa_round_spec( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint Depth();
	::ragel::uint Group();
	enum prod_name {
		Spec = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct nfa_round_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	nfa_round_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::nfa_round_list _nfa_round_list();
	::ragel::nfa_round_spec nfa_round_spec();
	enum prod_name {
		Recurse = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct nfa_rounds
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	nfa_rounds( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::nfa_round_list nfa_round_list();
	enum prod_name {
		Rounds = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct nfa_union
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	nfa_union( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::def_name def_name();
	::ragel::nfa_rounds nfa_rounds();
	::ragel::nfa_expr nfa_expr();
	enum prod_name {
		NfaUnion = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct alphtype_type
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	alphtype_type( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word W1();
	::ragel::word W2();
	enum prod_name {
		One = 0,
		Two = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct include_spec
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	include_spec( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::string string();
	enum prod_name {
		Machine = 0,
		File = 1,
		MachineFile = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct opt_export
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
	enum prod_name {
		Export = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct write_arg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	write_arg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	enum prod_name {
		Word = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct machine_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	machine_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	enum prod_name {
		MachineName = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct statement
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
	::ragel::assignment assignment();
	::ragel::instantiation instantiation();
	::ragel::nfa_union nfa_union();
	::ragel::action_spec action_spec();
	::ragel::action_block action_block();
	::ragel::variable_name variable_name();
	::ragel::inline_expr_reparse inline_expr_reparse();
	::ragel::alphtype_type alphtype_type();
	::ragel::word Cmd();
	::ragel::_repeat_write_arg ArgList();
	::ragel::string string();
	::ragel::include_spec include_spec();
	enum prod_name {
		Assignment = 0,
		Instantiation = 1,
		NfaUnion = 2,
		ActionSpec = 3,
		PrePush = 4,
		PostPop = 5,
		Variable = 6,
		AlphType = 7,
		Access = 8,
		Write = 9,
		GetKey = 10,
		Import = 11,
		Include = 12,
		NfaPrePush = 13,
		NfaPostPop = 14,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct opt_machine_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_machine_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::machine_name machine_name();
	enum prod_name {
		MachineName = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ragel { struct ragel_start
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ragel_start( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_machine_name opt_machine_name();
	::ragel::_repeat_statement _repeat_statement();
}; }
namespace c_inline { struct _literal_0101
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0101( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0103
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0103( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0105
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0105( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0107
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0107( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0109
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0109( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_010b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_010b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_010d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_010d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_010f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_010f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0111
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0111( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0113
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0113( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0115
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0115( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0117
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0117( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0119
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0119( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_011b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_011b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_011d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_011d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_012b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_012b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_012d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_012d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_012f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_012f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0131
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0131( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0133
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0133( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0135
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0135( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0137
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0137( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _literal_0139
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0139( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct number
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
}; }
namespace c_inline { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct string
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
}; }
namespace c_inline { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct var_ref
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
}; }
namespace c_inline { struct c_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_item_list expr_item_list();
	enum prod_name {
		List = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct expr_item_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_item_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_item_list _expr_item_list();
	::c_inline::expr_item expr_item();
	enum prod_name {
		Rec = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_any expr_any();
	::c_inline::expr_symbol expr_symbol();
	::c_inline::expr_interpret expr_interpret();
	enum prod_name {
		ExprAny = 0,
		ExprSymbol = 1,
		ExprInterpret = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::whitespace whitespace();
	::c_inline::comment comment();
	::c_inline::string string();
	::c_inline::number number();
	::c_inline::hex_number hex_number();
	::c_inline::ident ident();
	::c_inline::c_any c_any();
	enum prod_name {
		WS = 0,
		Comment = 1,
		String = 2,
		Number = 3,
		Hex = 4,
		Ident = 5,
		Any = 6,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		Comma = 0,
		Open = 1,
		Close = 2,
		Star = 3,
		DoubleColon = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::state_ref state_ref();
	::c_inline::var_ref var_ref();
	enum prod_name {
		Fpc = 0,
		Fc = 1,
		Fcurs = 2,
		Ftargs = 3,
		Fentry = 4,
		VarRef = 5,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::opt_name_sep opt_name_sep();
	::c_inline::state_ref_names state_ref_names();
	enum prod_name {
		Ref = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		ColonColon = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::state_ref_names _state_ref_names();
	::srlex::word word();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::block_item_list block_item_list();
	enum prod_name {
		List = 0,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct block_item_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_item_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::block_item block_item();
	::c_inline::block_item_list _block_item_list();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_any expr_any();
	::c_inline::block_symbol block_symbol();
	::c_inline::block_interpret block_interpret();
	::c_inline::inline_block inline_block();
	enum prod_name {
		ExprAny = 0,
		BlockSymbol = 1,
		BlockInterpret = 2,
		RecBlock = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		B1 = 0,
		B2 = 1,
		B3 = 2,
		B4 = 3,
		B5 = 4,
		B6 = 5,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_inline { struct block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_interpret expr_interpret();
	::c_inline::_opt_whitespace _opt_whitespace();
	::c_inline::inline_expr inline_expr();
	::c_inline::state_ref state_ref();
	enum prod_name {
		ExprInterpret = 0,
		Fhold = 1,
		FgotoExpr = 2,
		FnextExpr = 3,
		FcallExpr = 4,
		FncallExpr = 5,
		Fexec = 6,
		FgotoSr = 7,
		FnextSr = 8,
		FcallSr = 9,
		FncallSr = 10,
		Fret = 11,
		Fnret = 12,
		Fbreak = 13,
		Fnbreak = 14,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_host { struct _literal_013f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_013f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct slr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	slr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct number
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
}; }
namespace c_host { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct string
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
}; }
namespace c_host { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct c_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_host { struct tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_host::ident ident();
	::c_host::number number();
	::c_host::hex_number hex_number();
	::c_host::comment comment();
	::c_host::string string();
	::c_host::whitespace whitespace();
	::c_host::c_any c_any();
	enum prod_name {
		Ident = 0,
		Number = 1,
		HexNumber = 2,
		Comment = 3,
		String = 4,
		Whitespace = 5,
		Any = 6,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace c_host { struct section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::c_host::tok tok();
	enum prod_name {
		MultiLine = 0,
		Tok = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_inline { struct _literal_0151
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0151( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0153
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0153( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0155
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0155( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0157
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0157( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0159
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0159( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_015b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_015b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_015d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_015d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_015f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_015f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0161
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0161( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0163
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0163( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0165
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0165( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0167
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0167( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0169
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0169( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_016b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_016b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_016d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_016d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_017b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_017b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_017d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_017d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_017f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_017f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0181
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0181( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0183
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0183( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0185
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0185( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0187
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0187( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _literal_0189
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0189( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct number
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
}; }
namespace ocaml_inline { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct string
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
}; }
namespace ocaml_inline { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct c_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::_repeat_expr_item _repeat_expr_item();
}; }
namespace ocaml_inline { struct expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::expr_any expr_any();
	::ocaml_inline::expr_symbol expr_symbol();
	::ocaml_inline::expr_interpret expr_interpret();
	enum prod_name {
		ExprAny = 0,
		ExprSymbol = 1,
		ExprInterpret = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_inline { struct expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::whitespace whitespace();
	::ocaml_inline::comment comment();
	::ocaml_inline::string string();
	::ocaml_inline::number number();
	::ocaml_inline::hex_number hex_number();
	::ocaml_inline::ident ident();
	::ocaml_inline::c_any c_any();
}; }
namespace ocaml_inline { struct expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::state_ref state_ref();
	enum prod_name {
		Fpc = 0,
		Fc = 1,
		Fcurs = 2,
		Ftargs = 3,
		Fentry = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_inline { struct state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::opt_name_sep opt_name_sep();
	::ocaml_inline::state_ref_names state_ref_names();
}; }
namespace ocaml_inline { struct opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		ColonColon = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_inline { struct state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::state_ref_names _state_ref_names();
	::srlex::word word();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_inline { struct inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::_repeat_block_item _repeat_block_item();
}; }
namespace ocaml_inline { struct block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::expr_any expr_any();
	::ocaml_inline::block_symbol block_symbol();
	::ocaml_inline::block_interpret block_interpret();
	::ocaml_inline::inline_block inline_block();
	enum prod_name {
		ExprAny = 0,
		BlockSymbol = 1,
		BlockInterpret = 2,
		RecBlock = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_inline { struct block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::expr_interpret expr_interpret();
	::ocaml_inline::_opt_whitespace _opt_whitespace();
	::ocaml_inline::inline_expr inline_expr();
	::ocaml_inline::state_ref state_ref();
	enum prod_name {
		ExprInterpret = 0,
		Fhold = 1,
		FgotoExpr = 2,
		FnextExpr = 3,
		FcallExpr = 4,
		FncallExpr = 5,
		Fexec = 6,
		FgotoSr = 7,
		FnextSr = 8,
		FcallSr = 9,
		FncallSr = 10,
		Fret = 11,
		Fnret = 12,
		Fbreak = 13,
		Fnbreak = 14,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ocaml_host { struct _literal_018d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_018d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct slr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	slr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct number
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
}; }
namespace ocaml_host { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct string
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
}; }
namespace ocaml_host { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct ocaml_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ocaml_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_host::ident ident();
	::ocaml_host::number number();
	::ocaml_host::hex_number hex_number();
	::ocaml_host::comment comment();
	::ocaml_host::string string();
	::ocaml_host::whitespace whitespace();
	::ocaml_host::ocaml_any ocaml_any();
}; }
namespace ocaml_host { struct section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::ocaml_host::tok tok();
	enum prod_name {
		MultiLine = 0,
		Tok = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_inline { struct _literal_019f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_019f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01a1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01a1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01a3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01a3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01a5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01a5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01a7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01a7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01a9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01a9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01ab
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01ab( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01ad
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01ad( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01af
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01af( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01b1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01b1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01b3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01b3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01b5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01b5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01b7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01b7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01b9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01b9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01bb
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01bb( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01c9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01c9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01cb
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01cb( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01cd
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01cd( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01cf
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01cf( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01d1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01d1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01d3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01d3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01d5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01d5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _literal_01d7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01d7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct number
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
}; }
namespace ruby_inline { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct string
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
}; }
namespace ruby_inline { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct ruby_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ruby_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::_repeat_expr_item _repeat_expr_item();
}; }
namespace ruby_inline { struct expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::expr_any expr_any();
	::ruby_inline::expr_symbol expr_symbol();
	::ruby_inline::expr_interpret expr_interpret();
	enum prod_name {
		ExprAny = 0,
		ExprSymbol = 1,
		ExprInterpret = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_inline { struct expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::whitespace whitespace();
	::ruby_inline::comment comment();
	::ruby_inline::string string();
	::ruby_inline::number number();
	::ruby_inline::hex_number hex_number();
	::ruby_inline::ident ident();
	::ruby_inline::ruby_any ruby_any();
}; }
namespace ruby_inline { struct expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::state_ref state_ref();
	enum prod_name {
		Fpc = 0,
		Fc = 1,
		Fcurs = 2,
		Ftargs = 3,
		Fentry = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_inline { struct state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::opt_name_sep opt_name_sep();
	::ruby_inline::state_ref_names state_ref_names();
}; }
namespace ruby_inline { struct opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		ColonColon = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_inline { struct state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::state_ref_names _state_ref_names();
	::srlex::word word();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_inline { struct inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::_repeat_block_item _repeat_block_item();
}; }
namespace ruby_inline { struct block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::expr_any expr_any();
	::ruby_inline::block_symbol block_symbol();
	::ruby_inline::block_interpret block_interpret();
	::ruby_inline::inline_block inline_block();
	enum prod_name {
		ExprAny = 0,
		BlockSymbol = 1,
		BlockInterpret = 2,
		RecBlock = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_inline { struct block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::expr_interpret expr_interpret();
	::ruby_inline::_opt_whitespace _opt_whitespace();
	::ruby_inline::inline_expr inline_expr();
	::ruby_inline::state_ref state_ref();
	enum prod_name {
		ExprInterpret = 0,
		Fhold = 1,
		FgotoExpr = 2,
		FnextExpr = 3,
		FcallExpr = 4,
		FncallExpr = 5,
		Fexec = 6,
		FgotoSr = 7,
		FnextSr = 8,
		FcallSr = 9,
		FncallSr = 10,
		Fret = 11,
		Fnret = 12,
		Fbreak = 13,
		Fnbreak = 14,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace ruby_host { struct _literal_01db
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01db( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct slr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	slr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct number
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
}; }
namespace ruby_host { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct string
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
}; }
namespace ruby_host { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct ruby_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ruby_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_host::ident ident();
	::ruby_host::number number();
	::ruby_host::hex_number hex_number();
	::ruby_host::comment comment();
	::ruby_host::string string();
	::ruby_host::whitespace whitespace();
	::ruby_host::ruby_any ruby_any();
}; }
namespace ruby_host { struct section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::ruby_host::tok tok();
	enum prod_name {
		MultiLine = 0,
		Tok = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_inline { struct _literal_01ed
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01ed( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01ef
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01ef( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01f1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01f1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01f3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01f3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01f5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01f5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01f7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01f7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01f9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01f9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01fb
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01fb( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01fd
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01fd( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_01ff
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_01ff( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0201
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0201( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0203
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0203( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0205
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0205( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0207
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0207( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0209
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0209( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0217
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0217( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0219
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0219( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_021b
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_021b( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_021d
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_021d( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_021f
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_021f( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0221
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0221( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0223
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0223( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _literal_0225
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0225( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct number
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
}; }
namespace crack_inline { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct string
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
}; }
namespace crack_inline { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct c_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::_repeat_expr_item _repeat_expr_item();
}; }
namespace crack_inline { struct expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::expr_any expr_any();
	::crack_inline::expr_symbol expr_symbol();
	::crack_inline::expr_interpret expr_interpret();
	enum prod_name {
		ExprAny = 0,
		ExprSymbol = 1,
		ExprInterpret = 2,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_inline { struct expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::whitespace whitespace();
	::crack_inline::comment comment();
	::crack_inline::string string();
	::crack_inline::number number();
	::crack_inline::hex_number hex_number();
	::crack_inline::ident ident();
	::crack_inline::c_any c_any();
}; }
namespace crack_inline { struct expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::state_ref state_ref();
	enum prod_name {
		Fpc = 0,
		Fc = 1,
		Fcurs = 2,
		Ftargs = 3,
		Fentry = 4,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_inline { struct state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::opt_name_sep opt_name_sep();
	::crack_inline::state_ref_names state_ref_names();
}; }
namespace crack_inline { struct opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	enum prod_name {
		ColonColon = 0,
		Empty = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_inline { struct state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::state_ref_names _state_ref_names();
	::srlex::word word();
	enum prod_name {
		Rec = 0,
		Base = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_inline { struct inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::_repeat_block_item _repeat_block_item();
}; }
namespace crack_inline { struct block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::expr_any expr_any();
	::crack_inline::block_symbol block_symbol();
	::crack_inline::block_interpret block_interpret();
	::crack_inline::inline_block inline_block();
	enum prod_name {
		ExprAny = 0,
		BlockSymbol = 1,
		BlockInterpret = 2,
		RecBlock = 3,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_inline { struct block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::expr_interpret expr_interpret();
	::crack_inline::_opt_whitespace _opt_whitespace();
	::crack_inline::inline_expr inline_expr();
	::crack_inline::state_ref state_ref();
	enum prod_name {
		ExprInterpret = 0,
		Fhold = 1,
		FgotoExpr = 2,
		FnextExpr = 3,
		FcallExpr = 4,
		FncallExpr = 5,
		Fexec = 6,
		FgotoSr = 7,
		FnextSr = 8,
		FcallSr = 9,
		FncallSr = 10,
		Fret = 11,
		Fnret = 12,
		Fbreak = 13,
		Fnbreak = 14,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
namespace crack_host { struct _literal_0229
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_literal_0229( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct slr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	slr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct ident
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	ident( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct number
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
}; }
namespace crack_host { struct hex_number
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	hex_number( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct comment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	comment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct string
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
}; }
namespace crack_host { struct whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct c_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	c_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_host::ident ident();
	::crack_host::number number();
	::crack_host::hex_number hex_number();
	::crack_host::comment comment();
	::crack_host::string string();
	::crack_host::whitespace whitespace();
	::crack_host::c_any c_any();
}; }
namespace crack_host { struct section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::crack_host::tok tok();
	enum prod_name {
		MultiLine = 0,
		Tok = 1,
	};
	enum prod_name prodName() { return (enum prod_name)__tree->prod_num; }
}; }
struct _ign_0x1756920
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1756920( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x175a320
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x175a320( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x175e6d0
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x175e6d0( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1783ac0
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1783ac0( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1786940
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1786940( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x178a760
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x178a760( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x178af60
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x178af60( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1742b70
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1742b70( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1990d60
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1990d60( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1750d10
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1750d10( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x19b6790
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x19b6790( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x199b770
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x199b770( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x19dc040
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x19dc040( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x19c1070
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x19c1070( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1a01720
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1a01720( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _ign_0x1731c30
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_ign_0x1731c30( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x175a3c0_DEF_PAT_1
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x175a3c0_DEF_PAT_1( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x1783b60_DEF_PAT_2
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x1783b60_DEF_PAT_2( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x17869e0_DEF_PAT_3
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x17869e0_DEF_PAT_3( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x178a800_DEF_PAT_4
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x178a800_DEF_PAT_4( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x178b000_DEF_PAT_5
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x178b000_DEF_PAT_5( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x1742c10_DEF_PAT_6
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x1742c10_DEF_PAT_6( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x1990e00_DEF_PAT_7
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x1990e00_DEF_PAT_7( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x1750db0_DEF_PAT_8
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x1750db0_DEF_PAT_8( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x19b6830_DEF_PAT_9
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x19b6830_DEF_PAT_9( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x199b810_DEF_PAT_10
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x199b810_DEF_PAT_10( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x19dc0e0_DEF_PAT_11
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x19dc0e0_DEF_PAT_11( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x19c1110_DEF_PAT_12
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x19c1110_DEF_PAT_12( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x1a017c0_DEF_PAT_13
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x1a017c0_DEF_PAT_13( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct __0x1731cd0_DEF_PAT_14
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	__0x1731cd0_DEF_PAT_14( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
struct _repeat_import
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_import( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::_repeat_import next();
	::import value();
};
namespace c_host { struct _repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::c_host::_repeat_section next();
	::c_host::section value();
}; }
namespace ruby_host { struct _repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ruby_host::_repeat_section next();
	::ruby_host::section value();
}; }
namespace ocaml_host { struct _repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ocaml_host::_repeat_section next();
	::ocaml_host::section value();
}; }
namespace ragel { struct _repeat_write_arg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_write_arg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ragel::_repeat_write_arg next();
	::ragel::write_arg value();
}; }
namespace ragel { struct _repeat_statement
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
	::ragel::_repeat_statement next();
	::ragel::statement value();
}; }
namespace c_inline { struct _opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _repeat_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ocaml_inline::_repeat_expr_item next();
	::ocaml_inline::expr_item value();
}; }
namespace ocaml_inline { struct _repeat_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ocaml_inline::_repeat_block_item next();
	::ocaml_inline::block_item value();
}; }
namespace ocaml_inline { struct _opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _repeat_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ruby_inline::_repeat_expr_item next();
	::ruby_inline::expr_item value();
}; }
namespace ruby_inline { struct _repeat_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::ruby_inline::_repeat_block_item next();
	::ruby_inline::block_item value();
}; }
namespace ruby_inline { struct _opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _repeat_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::crack_inline::_repeat_expr_item next();
	::crack_inline::expr_item value();
}; }
namespace crack_inline { struct _repeat_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::crack_inline::_repeat_block_item next();
	::crack_inline::block_item value();
}; }
namespace crack_inline { struct _opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct _repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	int end() { return colm_repeat_end( __tree ); }
	::crack_host::_repeat_section next();
	::crack_host::section value();
}; }
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
	::c_select_section c_select_section();
	::c_host::_repeat_section SectionList();
	::ruby_select_section ruby_select_section();
	::ruby_host::_repeat_section RSectionList();
	::ocaml_select_section ocaml_select_section();
	::ocaml_host::_repeat_section OSectionList();
	::crack_select_section crack_select_section();
};
struct _T_import_val
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_import_val( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_host::number number();
	::c_host::string string();
};
struct _T_import
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_import( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_host::ident Name();
	::import_val Val();
};
namespace ragel { struct _T_inline_expr_reparse
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_expr_reparse( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::_inline_expr_reparse _inline_expr_reparse();
	::ragel::action_expr action_expr();
}; }
namespace ragel { struct _T_join
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_join( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::join _join();
	::ragel::expression expression();
}; }
namespace ragel { struct _T_expression
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expression( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::expr_left expr_left();
	::ragel::expression_op_list expression_op_list();
}; }
namespace ragel { struct _T_expression_op_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expression_op_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::expression_op expression_op();
	::ragel::expression_op_list _expression_op_list();
}; }
namespace ragel { struct _T_expression_op
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expression_op( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term term();
}; }
namespace ragel { struct _T_expr_left
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_left( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term term();
}; }
namespace ragel { struct _T_term
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_term( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term_left term_left();
	::ragel::term_op_list_short term_op_list_short();
}; }
namespace ragel { struct _T_term_left
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_term_left( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_label factor_label();
}; }
namespace ragel { struct _T_term_op_list_short
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_term_op_list_short( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::term_op term_op();
	::ragel::term_op_list_short _term_op_list_short();
}; }
namespace ragel { struct _T_term_op
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_term_op( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_label factor_label();
}; }
namespace ragel { struct _T_factor_label
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_label( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::factor_label _factor_label();
	::ragel::factor_ep factor_ep();
}; }
namespace ragel { struct _T_factor_ep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_ep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_aug factor_aug();
	::ragel::epsilon_target epsilon_target();
}; }
namespace ragel { struct _T_epsilon_target
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_epsilon_target( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::epsilon_target _epsilon_target();
	::ragel::word word();
}; }
namespace ragel { struct _T_action_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_select c_select();
	::c_inline::inline_expr CInlineExpr();
	::ruby_select ruby_select();
	::ruby_inline::inline_expr RubyInlineExpr();
	::ocaml_select ocaml_select();
	::ocaml_inline::inline_expr OCamlInlineExpr();
	::crack_select crack_select();
	::crack_inline::inline_expr CrackInlineExpr();
}; }
namespace ragel { struct _T_action_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_select c_select();
	::c_inline::inline_block CInlineBlock();
	::ruby_select ruby_select();
	::ruby_inline::inline_block RubyInlineBlock();
	::ocaml_select ocaml_select();
	::ocaml_inline::inline_block OCamlInlineBlock();
	::crack_select crack_select();
	::crack_inline::inline_block CrackInlineBlock();
}; }
namespace ragel { struct _T_action_arg_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_arg_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_arg_list _action_arg_list();
	::ragel::action_ref action_ref();
}; }
namespace ragel { struct _T_opt_action_arg_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_action_arg_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_arg_list action_arg_list();
}; }
namespace ragel { struct _T_named_action_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_named_action_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::opt_action_arg_list opt_action_arg_list();
}; }
namespace ragel { struct _T_action_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::named_action_ref named_action_ref();
	::ragel::action_block action_block();
}; }
namespace ragel { struct _T_priority_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_priority_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
}; }
namespace ragel { struct _T_error_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_error_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
}; }
namespace ragel { struct _T_priority_aug
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_priority_aug( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint uint();
}; }
namespace ragel { struct _T_aug_base
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_base( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_aug_cond
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_cond( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_aug_to_state
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_to_state( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_aug_from_state
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_from_state( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_aug_eof
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_eof( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_aug_gbl_error
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_gbl_error( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_aug_local_error
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_aug_local_error( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_factor_aug
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_aug( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_aug _factor_aug();
	::ragel::aug_base aug_base();
	::ragel::action_ref action_ref();
	::ragel::priority_aug priority_aug();
	::ragel::priority_name priority_name();
	::ragel::aug_cond aug_cond();
	::ragel::aug_to_state aug_to_state();
	::ragel::aug_from_state aug_from_state();
	::ragel::aug_eof aug_eof();
	::ragel::aug_gbl_error aug_gbl_error();
	::ragel::aug_local_error aug_local_error();
	::ragel::error_name error_name();
	::ragel::factor_rep factor_rep();
}; }
namespace ragel { struct _T_nfa_kw
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_nfa_kw( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T_factor_rep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_rep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_neg factor_neg();
	::ragel::factor_rep_op_list factor_rep_op_list();
	::ragel::nfa_kw nfa_kw();
	::ragel::uint uint();
	::ragel::factor_rep _factor_rep();
	::ragel::action_ref A1();
	::ragel::action_ref A2();
	::ragel::action_ref A3();
	::ragel::action_ref A4();
	::ragel::action_ref A5();
	::ragel::action_ref A6();
}; }
namespace ragel { struct _T_factor_rep_op_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_rep_op_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_rep_op factor_rep_op();
	::ragel::factor_rep_op_list _factor_rep_op_list();
}; }
namespace ragel { struct _T_factor_rep_op
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_rep_op( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_rep_num factor_rep_num();
	::ragel::factor_rep_num LowRep();
	::ragel::factor_rep_num HighRep();
}; }
namespace ragel { struct _T_factor_rep_num
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_rep_num( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint uint();
}; }
namespace ragel { struct _T_factor_neg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor_neg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::factor_neg _factor_neg();
	::ragel::factor factor();
}; }
namespace ragel { struct _T_factor
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_factor( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::alphabet_num alphabet_num();
	::ragel::word word();
	::ragel::string string();
	::ragel::lex_sqopen_pos lex_sqopen_pos();
	::ragel::reg_or_data reg_or_data();
	::ragel::re_or_sqclose re_or_sqclose();
	::ragel::lex_sqopen_neg lex_sqopen_neg();
	::ragel::lex_regex_open lex_regex_open();
	::ragel::regex regex();
	::ragel::re_close re_close();
	::ragel::range_lit RL1();
	::ragel::range_lit RL2();
	::ragel::join join();
}; }
namespace ragel { struct _T_regex
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_regex( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::reg_item_rep_list reg_item_rep_list();
}; }
namespace ragel { struct _T_reg_item_rep_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reg_item_rep_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::reg_item_rep_list _reg_item_rep_list();
	::ragel::reg_item_rep reg_item_rep();
}; }
namespace ragel { struct _T_reg_item_rep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reg_item_rep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::reg_item reg_item();
	::ragel::re_star re_star();
}; }
namespace ragel { struct _T_reg_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_reg_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::re_sqopen_pos re_sqopen_pos();
	::ragel::reg_or_data reg_or_data();
	::ragel::re_or_sqclose re_or_sqclose();
	::ragel::re_sqopen_neg re_sqopen_neg();
	::ragel::re_dot re_dot();
	::ragel::re_char re_char();
}; }
namespace ragel { struct _T_reg_or_data
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
	::ragel::reg_or_data _reg_or_data();
	::ragel::reg_or_char reg_or_char();
}; }
namespace ragel { struct _T_reg_or_char
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
	::ragel::re_or_char re_or_char();
	::ragel::re_or_char Low();
	::ragel::re_or_dash re_or_dash();
	::ragel::re_or_char High();
}; }
namespace ragel { struct _T_range_lit
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_range_lit( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::string string();
	::ragel::alphabet_num alphabet_num();
}; }
namespace ragel { struct _T_alphabet_num
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_alphabet_num( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint uint();
	::ragel::hex hex();
}; }
namespace ragel { struct _T_lm_act
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lm_act( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_ref action_ref();
	::ragel::action_block action_block();
}; }
namespace ragel { struct _T_opt_lm_act
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_lm_act( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::lm_act lm_act();
}; }
namespace ragel { struct _T_lm_stmt
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lm_stmt( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::join join();
	::ragel::opt_lm_act opt_lm_act();
	::ragel::assignment assignment();
	::ragel::action_spec action_spec();
}; }
namespace ragel { struct _T_lm_stmt_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lm_stmt_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::lm_stmt_list _lm_stmt_list();
	::ragel::lm_stmt lm_stmt();
}; }
namespace ragel { struct _T_lm
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_lm( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::join join();
	::ragel::lm_stmt_list lm_stmt_list();
}; }
namespace ragel { struct _T_action_param
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_param( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
}; }
namespace ragel { struct _T_action_param_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_param_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_param_list _action_param_list();
	::ragel::action_param action_param();
}; }
namespace ragel { struct _T_opt_action_param_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_action_param_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::action_param_list action_param_list();
}; }
namespace ragel { struct _T_action_params
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_params( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_action_param_list opt_action_param_list();
}; }
namespace ragel { struct _T_action_spec
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_action_spec( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::action_params action_params();
	::ragel::action_block action_block();
}; }
namespace ragel { struct _T_def_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_def_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
}; }
namespace ragel { struct _T_assignment
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_assignment( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_export opt_export();
	::ragel::def_name def_name();
	::ragel::join join();
}; }
namespace ragel { struct _T_instantiation
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_instantiation( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_export opt_export();
	::ragel::def_name def_name();
	::ragel::lm lm();
}; }
namespace ragel { struct _T_nfa_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_nfa_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::nfa_expr _nfa_expr();
	::ragel::term term();
}; }
namespace ragel { struct _T_nfa_round_spec
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_nfa_round_spec( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::uint Depth();
	::ragel::uint Group();
}; }
namespace ragel { struct _T_nfa_round_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_nfa_round_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::nfa_round_list _nfa_round_list();
	::ragel::nfa_round_spec nfa_round_spec();
}; }
namespace ragel { struct _T_nfa_rounds
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_nfa_rounds( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::nfa_round_list nfa_round_list();
}; }
namespace ragel { struct _T_nfa_union
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_nfa_union( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::def_name def_name();
	::ragel::nfa_rounds nfa_rounds();
	::ragel::nfa_expr nfa_expr();
}; }
namespace ragel { struct _T_alphtype_type
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_alphtype_type( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word W1();
	::ragel::word W2();
}; }
namespace ragel { struct _T_include_spec
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_include_spec( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
	::ragel::string string();
}; }
namespace ragel { struct _T_opt_export
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
}; }
namespace ragel { struct _T_write_arg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_write_arg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
}; }
namespace ragel { struct _T_machine_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_machine_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::word word();
}; }
namespace ragel { struct _T_statement
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
	::ragel::assignment assignment();
	::ragel::instantiation instantiation();
	::ragel::nfa_union nfa_union();
	::ragel::action_spec action_spec();
	::ragel::action_block action_block();
	::ragel::variable_name variable_name();
	::ragel::inline_expr_reparse inline_expr_reparse();
	::ragel::alphtype_type alphtype_type();
	::ragel::word Cmd();
	::ragel::_repeat_write_arg ArgList();
	::ragel::string string();
	::ragel::include_spec include_spec();
}; }
namespace ragel { struct _T_opt_machine_name
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_machine_name( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::machine_name machine_name();
}; }
namespace ragel { struct _T_ragel_start
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_ragel_start( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::opt_machine_name opt_machine_name();
	::ragel::_repeat_statement _repeat_statement();
}; }
namespace c_inline { struct _T_inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_item_list expr_item_list();
}; }
namespace c_inline { struct _T_expr_item_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_item_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_item_list _expr_item_list();
	::c_inline::expr_item expr_item();
}; }
namespace c_inline { struct _T_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_any expr_any();
	::c_inline::expr_symbol expr_symbol();
	::c_inline::expr_interpret expr_interpret();
}; }
namespace c_inline { struct _T_expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::whitespace whitespace();
	::c_inline::comment comment();
	::c_inline::string string();
	::c_inline::number number();
	::c_inline::hex_number hex_number();
	::c_inline::ident ident();
	::c_inline::c_any c_any();
}; }
namespace c_inline { struct _T_expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _T_expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::state_ref state_ref();
	::c_inline::var_ref var_ref();
}; }
namespace c_inline { struct _T_state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::opt_name_sep opt_name_sep();
	::c_inline::state_ref_names state_ref_names();
}; }
namespace c_inline { struct _T_opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _T_state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::state_ref_names _state_ref_names();
	::srlex::word word();
}; }
namespace c_inline { struct _T_inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::block_item_list block_item_list();
}; }
namespace c_inline { struct _T_block_item_list
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_item_list( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::block_item block_item();
	::c_inline::block_item_list _block_item_list();
}; }
namespace c_inline { struct _T_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_any expr_any();
	::c_inline::block_symbol block_symbol();
	::c_inline::block_interpret block_interpret();
	::c_inline::inline_block inline_block();
}; }
namespace c_inline { struct _T_block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace c_inline { struct _T_block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_inline::expr_interpret expr_interpret();
	::c_inline::_opt_whitespace _opt_whitespace();
	::c_inline::inline_expr inline_expr();
	::c_inline::state_ref state_ref();
}; }
namespace c_host { struct _T_tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::c_host::ident ident();
	::c_host::number number();
	::c_host::hex_number hex_number();
	::c_host::comment comment();
	::c_host::string string();
	::c_host::whitespace whitespace();
	::c_host::c_any c_any();
}; }
namespace c_host { struct _T_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::c_host::tok tok();
}; }
namespace ocaml_inline { struct _T_inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::_repeat_expr_item _repeat_expr_item();
}; }
namespace ocaml_inline { struct _T_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::expr_any expr_any();
	::ocaml_inline::expr_symbol expr_symbol();
	::ocaml_inline::expr_interpret expr_interpret();
}; }
namespace ocaml_inline { struct _T_expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::whitespace whitespace();
	::ocaml_inline::comment comment();
	::ocaml_inline::string string();
	::ocaml_inline::number number();
	::ocaml_inline::hex_number hex_number();
	::ocaml_inline::ident ident();
	::ocaml_inline::c_any c_any();
}; }
namespace ocaml_inline { struct _T_expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _T_expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::state_ref state_ref();
}; }
namespace ocaml_inline { struct _T_state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::opt_name_sep opt_name_sep();
	::ocaml_inline::state_ref_names state_ref_names();
}; }
namespace ocaml_inline { struct _T_opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _T_state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::state_ref_names _state_ref_names();
	::srlex::word word();
}; }
namespace ocaml_inline { struct _T_inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::_repeat_block_item _repeat_block_item();
}; }
namespace ocaml_inline { struct _T_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::expr_any expr_any();
	::ocaml_inline::block_symbol block_symbol();
	::ocaml_inline::block_interpret block_interpret();
	::ocaml_inline::inline_block inline_block();
}; }
namespace ocaml_inline { struct _T_block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _T_block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_inline::expr_interpret expr_interpret();
	::ocaml_inline::_opt_whitespace _opt_whitespace();
	::ocaml_inline::inline_expr inline_expr();
	::ocaml_inline::state_ref state_ref();
}; }
namespace ocaml_host { struct _T_tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ocaml_host::ident ident();
	::ocaml_host::number number();
	::ocaml_host::hex_number hex_number();
	::ocaml_host::comment comment();
	::ocaml_host::string string();
	::ocaml_host::whitespace whitespace();
	::ocaml_host::ocaml_any ocaml_any();
}; }
namespace ocaml_host { struct _T_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::ocaml_host::tok tok();
}; }
namespace ruby_inline { struct _T_inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::_repeat_expr_item _repeat_expr_item();
}; }
namespace ruby_inline { struct _T_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::expr_any expr_any();
	::ruby_inline::expr_symbol expr_symbol();
	::ruby_inline::expr_interpret expr_interpret();
}; }
namespace ruby_inline { struct _T_expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::whitespace whitespace();
	::ruby_inline::comment comment();
	::ruby_inline::string string();
	::ruby_inline::number number();
	::ruby_inline::hex_number hex_number();
	::ruby_inline::ident ident();
	::ruby_inline::ruby_any ruby_any();
}; }
namespace ruby_inline { struct _T_expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _T_expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::state_ref state_ref();
}; }
namespace ruby_inline { struct _T_state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::opt_name_sep opt_name_sep();
	::ruby_inline::state_ref_names state_ref_names();
}; }
namespace ruby_inline { struct _T_opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _T_state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::state_ref_names _state_ref_names();
	::srlex::word word();
}; }
namespace ruby_inline { struct _T_inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::_repeat_block_item _repeat_block_item();
}; }
namespace ruby_inline { struct _T_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::expr_any expr_any();
	::ruby_inline::block_symbol block_symbol();
	::ruby_inline::block_interpret block_interpret();
	::ruby_inline::inline_block inline_block();
}; }
namespace ruby_inline { struct _T_block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _T_block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_inline::expr_interpret expr_interpret();
	::ruby_inline::_opt_whitespace _opt_whitespace();
	::ruby_inline::inline_expr inline_expr();
	::ruby_inline::state_ref state_ref();
}; }
namespace ruby_host { struct _T_tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ruby_host::ident ident();
	::ruby_host::number number();
	::ruby_host::hex_number hex_number();
	::ruby_host::comment comment();
	::ruby_host::string string();
	::ruby_host::whitespace whitespace();
	::ruby_host::ruby_any ruby_any();
}; }
namespace ruby_host { struct _T_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::ruby_host::tok tok();
}; }
namespace crack_inline { struct _T_inline_expr
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_expr( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::_repeat_expr_item _repeat_expr_item();
}; }
namespace crack_inline { struct _T_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::expr_any expr_any();
	::crack_inline::expr_symbol expr_symbol();
	::crack_inline::expr_interpret expr_interpret();
}; }
namespace crack_inline { struct _T_expr_any
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_any( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::whitespace whitespace();
	::crack_inline::comment comment();
	::crack_inline::string string();
	::crack_inline::number number();
	::crack_inline::hex_number hex_number();
	::crack_inline::ident ident();
	::crack_inline::c_any c_any();
}; }
namespace crack_inline { struct _T_expr_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _T_expr_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_expr_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::state_ref state_ref();
}; }
namespace crack_inline { struct _T_state_ref
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::opt_name_sep opt_name_sep();
	::crack_inline::state_ref_names state_ref_names();
}; }
namespace crack_inline { struct _T_opt_name_sep
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_opt_name_sep( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _T_state_ref_names
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_state_ref_names( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::state_ref_names _state_ref_names();
	::srlex::word word();
}; }
namespace crack_inline { struct _T_inline_block
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_inline_block( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::_repeat_block_item _repeat_block_item();
}; }
namespace crack_inline { struct _T_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::expr_any expr_any();
	::crack_inline::block_symbol block_symbol();
	::crack_inline::block_interpret block_interpret();
	::crack_inline::inline_block inline_block();
}; }
namespace crack_inline { struct _T_block_symbol
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_symbol( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _T_block_interpret
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_block_interpret( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_inline::expr_interpret expr_interpret();
	::crack_inline::_opt_whitespace _opt_whitespace();
	::crack_inline::inline_expr inline_expr();
	::crack_inline::state_ref state_ref();
}; }
namespace crack_host { struct _T_tok
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_tok( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::crack_host::ident ident();
	::crack_host::number number();
	::crack_host::hex_number hex_number();
	::crack_host::comment comment();
	::crack_host::string string();
	::crack_host::whitespace whitespace();
	::crack_host::c_any c_any();
}; }
namespace crack_host { struct _T_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
	::ragel::ragel_start ragel_start();
	::crack_host::tok tok();
}; }
struct _T__repeat_import
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_import( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
};
namespace c_host { struct _T__repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_host { struct _T__repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_host { struct _T__repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T__repeat_write_arg
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_write_arg( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ragel { struct _T__repeat_statement
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
}; }
namespace c_inline { struct _T__opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _T__repeat_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _T__repeat_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ocaml_inline { struct _T__opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _T__repeat_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _T__repeat_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace ruby_inline { struct _T__opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _T__repeat_expr_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_expr_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _T__repeat_block_item
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_block_item( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_inline { struct _T__opt_whitespace
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__opt_whitespace( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
namespace crack_host { struct _T__repeat_section
{
	std::string text() { return printTreeStr( __prg, __tree, true ); }
	colm_location *loc() { return colm_find_location( __prg, __tree ); }
	std::string text_notrim() { return printTreeStr( __prg, __tree, false ); }
	std::string text_ws() { return printTreeStr( __prg, __tree, false ); }
	colm_data *data() { return __tree->tokdata; }
	operator colm_tree *() { return __tree; }
	colm_program *__prg;
	colm_tree *__tree;
	_T__repeat_section( colm_program *prg, colm_tree *tree ) : __prg(prg), __tree(tree) {}
}; }
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
::start RagelTree( colm_program *prg );
::str RagelError( colm_program *prg );
::_repeat_import RagelImport( colm_program *prg );

#endif
