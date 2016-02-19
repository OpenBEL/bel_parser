#include <colm/pdarun.h>
#include <colm/debug.h>
#include <colm/bytecode.h>
#include <colm/config.h>
#include <colm/defs.h>
#include <colm/input.h>
#include <colm/tree.h>
#include <colm/program.h>
#include <colm/colm.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>


extern struct colm_sections colm_program_text;

#define parser_start 7
#define parser_first_final 7
#define parser_error 0
#define false 0
#define true 1

static long parser_entry_by_region[] = {
	0, 7, 33, 58, 58
};

static struct fsm_tables fsmTables_start =
{
	0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
	parser_entry_by_region,

	0,  0,  0,  0,  0,  0,  0,  0,
	4,

	parser_start,
	parser_first_final,
	parser_error,

	0,
	0
};

static void fsm_execute( struct pda_run *pdaRun, struct stream_impl *inputStream )
{
	pdaRun->start = pdaRun->p;
/*_resume:*/
	if ( pdaRun->fsm_cs == 0 )
		goto out;
	if ( pdaRun->p == pdaRun->pe )
		goto out_switch;
	--pdaRun->p;

	switch ( pdaRun->fsm_cs )
	{
tr1:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 20;
	goto out;
}
	goto st7;
tr3:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 24;
	goto out;
}
	goto st7;
tr12:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 15;
	goto out;
}
	goto st7;
tr13:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 16;
	goto out;
}
	goto st7;
tr14:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 25;
	goto out;
}
	goto st7;
tr15:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 26;
	goto out;
}
	goto st7;
tr17:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 13;
	goto out;
}
	goto st7;
tr20:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 10;
	goto out;
}
	goto st7;
tr21:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 11;
	goto out;
}
	goto st7;
tr22:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 18;
	goto out;
}
	goto st7;
tr30:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 12;
	goto out;
}
	goto st7;
tr31:
	{	pdaRun->matched_token = 19;
	goto out;
}
	goto st7;
tr32:
	{	pdaRun->matched_token = 27;
	goto out;
}
	goto st7;
tr33:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 17;
	goto out;
}
	goto st7;
tr34:
	{	pdaRun->matched_token = 14;
	goto out;
}
	goto st7;
tr35:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 28;
	goto out;
}
	goto st7;
tr36:
	{	pdaRun->toklen = pdaRun->tokend;
	switch( pdaRun->act ) {
	case 5:
	pdaRun->matched_token = 5;
	break;
	case 7:
	pdaRun->matched_token = 6;
	break;
	case 9:
	pdaRun->matched_token = 7;
	break;
	case 11:
	pdaRun->matched_token = 8;
	break;
	case 13:
	pdaRun->matched_token = 9;
	break;
	case 15:
	pdaRun->matched_token = 21;
	break;
	case 17:
	pdaRun->matched_token = 22;
	break;
	case 19:
	pdaRun->matched_token = 23;
	break;
	}
		goto skip_toklen;
}
	goto st7;
tr37:
	{	pdaRun->matched_token = 23;
	goto out;
}
	goto st7;
st7:
case 7:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out7;
	{pdaRun->tokstart = pdaRun->p;}
	switch( (*pdaRun->p) ) {
		case 32: goto st8;
		case 35: goto st1;
		case 39: goto st2;
		case 40: goto tr12;
		case 41: goto tr13;
		case 42: goto tr14;
		case 43: goto tr15;
		case 46: goto st9;
		case 47: goto tr17;
		case 58: goto st10;
		case 91: goto tr20;
		case 93: goto tr21;
		case 94: goto tr22;
		case 95: goto tr19;
		case 99: goto st12;
		case 100: goto st17;
		case 101: goto st19;
		case 105: goto st21;
		case 108: goto st26;
		case 110: goto st28;
		case 116: goto st29;
		case 124: goto tr30;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 9 <= (*pdaRun->p) && (*pdaRun->p) <= 11 )
			goto st8;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto st0;
st8:
case 8:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out8;
	if ( (*pdaRun->p) == 32 )
		goto st8;
	if ( 9 <= (*pdaRun->p) && (*pdaRun->p) <= 11 )
		goto st8;
	goto tr31;
st1:
case 1:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out1;
	if ( (*pdaRun->p) == 10 )
		goto tr1;
	goto st1;
st2:
case 2:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out2;
	switch( (*pdaRun->p) ) {
		case 39: goto tr3;
		case 92: goto st3;
	}
	goto st2;
st3:
case 3:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out3;
	goto st2;
st9:
case 9:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out9;
	if ( (*pdaRun->p) == 46 )
		goto tr33;
	goto tr32;
st10:
case 10:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out10;
	if ( (*pdaRun->p) == 62 )
		goto tr35;
	goto tr34;
tr19:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 19;}
	goto st11;
tr42:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 17;}
	goto st11;
tr44:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 5;}
	goto st11;
tr46:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 9;}
	goto st11;
tr51:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 13;}
	goto st11;
tr53:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 7;}
	goto st11;
tr54:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 15;}
	goto st11;
tr58:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 11;}
	goto st11;
st11:
case 11:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out11;
	if ( (*pdaRun->p) == 95 )
		goto tr19;
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr36;
st12:
case 12:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out12;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 111: goto st13;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st13:
case 13:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out13;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 109: goto st14;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st14:
case 14:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out14;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 109: goto st15;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st15:
case 15:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out15;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 105: goto st16;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st16:
case 16:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out16;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 116: goto tr42;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st17:
case 17:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out17;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 101: goto st18;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st18:
case 18:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out18;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 102: goto tr44;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st19:
case 19:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out19;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 110: goto st20;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st20:
case 20:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out20;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 100: goto tr46;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st21:
case 21:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out21;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 103: goto st22;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st22:
case 22:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out22;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 110: goto st23;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st23:
case 23:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out23;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 111: goto st24;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st24:
case 24:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out24;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 114: goto st25;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st25:
case 25:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out25;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 101: goto tr51;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st26:
case 26:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out26;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 101: goto st27;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st27:
case 27:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out27;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 120: goto tr53;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st28:
case 28:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out28;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 105: goto tr54;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st29:
case 29:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out29;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 111: goto st30;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st30:
case 30:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out30;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 107: goto st31;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st31:
case 31:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out31;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 101: goto st32;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st32:
case 32:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out32;
	switch( (*pdaRun->p) ) {
		case 95: goto tr19;
		case 110: goto tr58;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr19;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr19;
	} else
		goto tr19;
	goto tr37;
st0:
	goto out0;
tr6:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 24;
	goto out;
}
	goto st33;
tr59:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 15;
	goto out;
}
	goto st33;
tr60:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 16;
	goto out;
}
	goto st33;
tr61:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 25;
	goto out;
}
	goto st33;
tr62:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 26;
	goto out;
}
	goto st33;
tr64:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 13;
	goto out;
}
	goto st33;
tr67:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 10;
	goto out;
}
	goto st33;
tr68:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 11;
	goto out;
}
	goto st33;
tr69:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 18;
	goto out;
}
	goto st33;
tr77:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 12;
	goto out;
}
	goto st33;
tr78:
	{	pdaRun->matched_token = 27;
	goto out;
}
	goto st33;
tr79:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 17;
	goto out;
}
	goto st33;
tr80:
	{	pdaRun->matched_token = 14;
	goto out;
}
	goto st33;
tr81:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 28;
	goto out;
}
	goto st33;
tr82:
	{	pdaRun->toklen = pdaRun->tokend;
	switch( pdaRun->act ) {
	case 6:
	pdaRun->matched_token = 5;
	break;
	case 8:
	pdaRun->matched_token = 6;
	break;
	case 10:
	pdaRun->matched_token = 7;
	break;
	case 12:
	pdaRun->matched_token = 8;
	break;
	case 14:
	pdaRun->matched_token = 9;
	break;
	case 16:
	pdaRun->matched_token = 21;
	break;
	case 18:
	pdaRun->matched_token = 22;
	break;
	case 20:
	pdaRun->matched_token = 23;
	break;
	}
		goto skip_toklen;
}
	goto st33;
tr83:
	{	pdaRun->matched_token = 23;
	goto out;
}
	goto st33;
st33:
case 33:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out33;
	{pdaRun->tokstart = pdaRun->p;}
	switch( (*pdaRun->p) ) {
		case 39: goto st4;
		case 40: goto tr59;
		case 41: goto tr60;
		case 42: goto tr61;
		case 43: goto tr62;
		case 46: goto st34;
		case 47: goto tr64;
		case 58: goto st35;
		case 91: goto tr67;
		case 93: goto tr68;
		case 94: goto tr69;
		case 95: goto tr66;
		case 99: goto st37;
		case 100: goto st42;
		case 101: goto st44;
		case 105: goto st46;
		case 108: goto st51;
		case 110: goto st53;
		case 116: goto st54;
		case 124: goto tr77;
	}
	if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else if ( (*pdaRun->p) >= 65 )
		goto tr66;
	goto st0;
st4:
case 4:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out4;
	switch( (*pdaRun->p) ) {
		case 39: goto tr6;
		case 92: goto st5;
	}
	goto st4;
st5:
case 5:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out5;
	goto st4;
st34:
case 34:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out34;
	if ( (*pdaRun->p) == 46 )
		goto tr79;
	goto tr78;
st35:
case 35:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out35;
	if ( (*pdaRun->p) == 62 )
		goto tr81;
	goto tr80;
tr66:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 20;}
	goto st36;
tr88:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 18;}
	goto st36;
tr90:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 6;}
	goto st36;
tr92:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 10;}
	goto st36;
tr97:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 14;}
	goto st36;
tr99:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 8;}
	goto st36;
tr100:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 16;}
	goto st36;
tr104:
	{{ pdaRun->tokend = pdaRun->toklen + ( pdaRun->p - pdaRun->start ) + 1; }}
	{pdaRun->act = 12;}
	goto st36;
st36:
case 36:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out36;
	if ( (*pdaRun->p) == 95 )
		goto tr66;
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr82;
st37:
case 37:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out37;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 111: goto st38;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st38:
case 38:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out38;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 109: goto st39;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st39:
case 39:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out39;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 109: goto st40;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st40:
case 40:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out40;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 105: goto st41;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st41:
case 41:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out41;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 116: goto tr88;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st42:
case 42:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out42;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 101: goto st43;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st43:
case 43:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out43;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 102: goto tr90;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st44:
case 44:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out44;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 110: goto st45;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st45:
case 45:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out45;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 100: goto tr92;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st46:
case 46:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out46;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 103: goto st47;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st47:
case 47:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out47;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 110: goto st48;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st48:
case 48:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out48;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 111: goto st49;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st49:
case 49:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out49;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 114: goto st50;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st50:
case 50:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out50;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 101: goto tr97;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st51:
case 51:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out51;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 101: goto st52;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st52:
case 52:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out52;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 120: goto tr99;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st53:
case 53:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out53;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 105: goto tr100;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st54:
case 54:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out54;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 111: goto st55;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st55:
case 55:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out55;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 107: goto st56;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st56:
case 56:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out56;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 101: goto st57;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
st57:
case 57:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out57;
	switch( (*pdaRun->p) ) {
		case 95: goto tr66;
		case 110: goto tr104;
	}
	if ( (*pdaRun->p) < 65 ) {
		if ( 48 <= (*pdaRun->p) && (*pdaRun->p) <= 57 )
			goto tr66;
	} else if ( (*pdaRun->p) > 90 ) {
		if ( 97 <= (*pdaRun->p) && (*pdaRun->p) <= 122 )
			goto tr66;
	} else
		goto tr66;
	goto tr83;
tr9:
	{	pdaRun->p += 1;
	pdaRun->matched_token = 20;
	goto out;
}
	goto st58;
tr106:
	{	pdaRun->matched_token = 19;
	goto out;
}
	goto st58;
st58:
case 58:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out58;
	{pdaRun->tokstart = pdaRun->p;}
	switch( (*pdaRun->p) ) {
		case 32: goto st59;
		case 35: goto st6;
	}
	if ( 9 <= (*pdaRun->p) && (*pdaRun->p) <= 11 )
		goto st59;
	goto st0;
st59:
case 59:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out59;
	if ( (*pdaRun->p) == 32 )
		goto st59;
	if ( 9 <= (*pdaRun->p) && (*pdaRun->p) <= 11 )
		goto st59;
	goto tr106;
st6:
case 6:
	if ( ++pdaRun->p == pdaRun->pe )
		goto out6;
	if ( (*pdaRun->p) == 10 )
		goto tr9;
	goto st6;
	}
out_switch:
	switch ( pdaRun->fsm_cs )
	{
	case 7: out7: pdaRun->fsm_cs = 7; goto out; 
	case 8: out8: if ( pdaRun->eof ) {goto tr31;
}pdaRun->fsm_cs = 8; goto out; 
	case 1: out1: pdaRun->fsm_cs = 1; goto out; 
	case 2: out2: pdaRun->fsm_cs = 2; goto out; 
	case 3: out3: pdaRun->fsm_cs = 3; goto out; 
	case 9: out9: if ( pdaRun->eof ) {goto tr32;
}pdaRun->fsm_cs = 9; goto out; 
	case 10: out10: if ( pdaRun->eof ) {goto tr34;
}pdaRun->fsm_cs = 10; goto out; 
	case 11: out11: if ( pdaRun->eof ) {goto tr36;
}pdaRun->fsm_cs = 11; goto out; 
	case 12: out12: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 12; goto out; 
	case 13: out13: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 13; goto out; 
	case 14: out14: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 14; goto out; 
	case 15: out15: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 15; goto out; 
	case 16: out16: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 16; goto out; 
	case 17: out17: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 17; goto out; 
	case 18: out18: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 18; goto out; 
	case 19: out19: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 19; goto out; 
	case 20: out20: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 20; goto out; 
	case 21: out21: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 21; goto out; 
	case 22: out22: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 22; goto out; 
	case 23: out23: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 23; goto out; 
	case 24: out24: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 24; goto out; 
	case 25: out25: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 25; goto out; 
	case 26: out26: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 26; goto out; 
	case 27: out27: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 27; goto out; 
	case 28: out28: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 28; goto out; 
	case 29: out29: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 29; goto out; 
	case 30: out30: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 30; goto out; 
	case 31: out31: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 31; goto out; 
	case 32: out32: if ( pdaRun->eof ) {goto tr37;
}pdaRun->fsm_cs = 32; goto out; 
	case 0: out0: pdaRun->fsm_cs = 0; goto out; 
	case 33: out33: pdaRun->fsm_cs = 33; goto out; 
	case 4: out4: pdaRun->fsm_cs = 4; goto out; 
	case 5: out5: pdaRun->fsm_cs = 5; goto out; 
	case 34: out34: if ( pdaRun->eof ) {goto tr78;
}pdaRun->fsm_cs = 34; goto out; 
	case 35: out35: if ( pdaRun->eof ) {goto tr80;
}pdaRun->fsm_cs = 35; goto out; 
	case 36: out36: if ( pdaRun->eof ) {goto tr82;
}pdaRun->fsm_cs = 36; goto out; 
	case 37: out37: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 37; goto out; 
	case 38: out38: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 38; goto out; 
	case 39: out39: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 39; goto out; 
	case 40: out40: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 40; goto out; 
	case 41: out41: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 41; goto out; 
	case 42: out42: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 42; goto out; 
	case 43: out43: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 43; goto out; 
	case 44: out44: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 44; goto out; 
	case 45: out45: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 45; goto out; 
	case 46: out46: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 46; goto out; 
	case 47: out47: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 47; goto out; 
	case 48: out48: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 48; goto out; 
	case 49: out49: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 49; goto out; 
	case 50: out50: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 50; goto out; 
	case 51: out51: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 51; goto out; 
	case 52: out52: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 52; goto out; 
	case 53: out53: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 53; goto out; 
	case 54: out54: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 54; goto out; 
	case 55: out55: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 55; goto out; 
	case 56: out56: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 56; goto out; 
	case 57: out57: if ( pdaRun->eof ) {goto tr83;
}pdaRun->fsm_cs = 57; goto out; 
	case 58: out58: pdaRun->fsm_cs = 58; goto out; 
	case 59: out59: if ( pdaRun->eof ) {goto tr106;
}pdaRun->fsm_cs = 59; goto out; 
	case 6: out6: pdaRun->fsm_cs = 6; goto out; 
	}
out:
	if ( pdaRun->p != 0 )
		pdaRun->toklen += pdaRun->p - pdaRun->start;
skip_toklen:
	{}
}

static void sendNamedLangEl( struct colm_program *prg, tree_t **tree,
		struct pda_run *pdaRun, struct stream_impl *inputStream ) { }
static void initBindings( struct pda_run *pdaRun ) {}
static void popBinding( struct pda_run *pdaRun, parse_tree_t *tree ) {}


static int pid_0_parser_indicies[] = {
	4, 3, 63, 100, 4, 3, 5, 10, 
	101, 18, 19, 39, 97, 97, 97, 13, 
	14, 15, 99, 99, 38, 92, 92, 10, 
	40, 17, 48, 49, 92, 50, 85, 95, 
	95, 95, 96, 96, 96, 98, 98, 82, 
	9, 8, 85, 2, 0, 1, 57, 2, 
	21, 7, 97, 97, 6, 12, 11, -1, 
	24, 85, 85, 16, 23, 99, 84, 99, 
	92, -1, 92, 48, 61, 95, 95, 79, 
	96, 96, 84, 22, 20, 91, 91, 26, 
	98, 48, 98, 34, 91, 56, 31, -1, 
	-1, 84, 84, 35, 33, 102, 25, -1, 
	-1, 102, -1, 32, 30, 29, 28, 27, 
	83, 93, 93, 93, 77, 77, -1, 99, 
	77, -1, 92, -1, 83, -1, 89, 89, 
	91, -1, 91, 46, 47, 89, -1, 37, 
	-1, 80, 98, 83, 83, 9, 8, 89, 
	2, 0, 1, -1, 2, 80, 7, 93, 
	93, 6, 12, 11, -1, 24, -1, -1, 
	16, -1, 89, 36, 80, 80, 76, 76, 
	-1, 89, 76, 89, -1, 78, 78, 78, 
	22, 20, 91, 78, 81, 46, 47, 75, 
	75, -1, -1, 75, -1, -1, -1, -1, 
	81, -1, 54, 25, 44, 45, 75, 75, 
	32, 30, 29, 28, 27, -1, 53, 81, 
	81, 72, 72, 78, 78, 72, -1, -1, 
	69, 69, 34, 89, 69, 31, 72, 72, 
	72, 72, 35, 33, -1, 69, 69, 69, 
	69, -1, 32, 42, 64, 64, -1, -1, 
	64, 43, -1, -1, -1, 34, -1, -1, 
	31, 64, 64, 64, 64, 35, 33, -1, 
	36, 94, 94, 94, -1, 32, 30, 29, 
	28, 41, 65, 65, 87, 87, 65, -1, 
	-1, -1, -1, 87, -1, -1, -1, 65, 
	65, 65, 65, -1, -1, 52, -1, 68, 
	68, 34, -1, 68, 31, -1, -1, 94, 
	94, 35, 33, 53, 68, 68, 68, 68, 
	51, 32, 30, 29, 28, 55, -1, 87, 
	-1, 87, -1, -1, 70, 70, -1, -1, 
	70, 71, 71, -1, -1, 71, -1, 32, 
	42, 70, 70, 70, 70, -1, 71, 71, 
	71, 71, -1, 90, 90, -1, -1, 86, 
	86, -1, 90, -1, -1, -1, 86, -1, 
	-1, -1, 32, 30, 29, 28, 41, 34, 
	-1, 87, 31, 34, -1, -1, 31, 35, 
	33, -1, -1, 35, 33, -1, -1, 32, 
	30, 58, -1, 32, 30, 59, 90, -1, 
	90, -1, 86, 34, 86, -1, 31, -1, 
	-1, -1, -1, 35, 33, 51, 32, 30, 
	29, 28, 55, 32, 30, 29, 60, 88, 
	88, -1, -1, -1, 66, 66, 88, -1, 
	66, -1, -1, -1, -1, -1, -1, -1, 
	88, 66, 66, 66, 66, -1, -1, -1, 
	90, 67, 67, -1, 86, 67, -1, -1, 
	73, 73, -1, 88, 73, -1, 67, 67, 
	67, 67, 88, -1, 88, 44, 45, 73, 
	73, -1, -1, -1, -1, -1, 74, 74, 
	-1, -1, 74, -1, 32, 30, 58, -1, 
	32, 30, 59, 44, 45, 74, 74, 79, 
	79, 79, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, 26, -1, -1, 
	32, 30, 29, 60, 88, -1, -1, -1, 
	-1, -1, -1, -1, 62, -1, -1, -1, 
	-1, -1, -1, -1, -1, 79, 79, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, 62
};

static int pid_0_parser_owners[] = {
	0, 0, 1, 2, 3, 3, 5, 6, 
	8, 15, 16, 23, 4, 4, 4, 7, 
	7, 7, 9, 9, 24, 10, 10, 18, 
	26, 9, 28, 28, 10, 38, 11, 12, 
	12, 12, 13, 13, 13, 14, 14, 39, 
	6, 6, 11, 0, 0, 0, 44, 3, 
	17, 3, 4, 4, 4, 7, 7, -1, 
	18, 11, 11, 11, 17, 9, 21, 9, 
	10, -1, 10, 56, 56, 12, 12, 19, 
	13, 13, 21, 17, 17, 25, 25, 19, 
	14, 42, 14, 20, 25, 42, 20, -1, 
	-1, 21, 21, 20, 20, 0, 19, -1, 
	-1, 3, -1, 20, 20, 20, 20, 20, 
	54, 50, 50, 50, 29, 29, -1, 9, 
	29, -1, 10, -1, 54, -1, 22, 22, 
	25, -1, 25, 29, 29, 22, -1, 22, 
	-1, 55, 14, 54, 54, 6, 6, 22, 
	0, 0, 0, -1, 3, 55, 3, 50, 
	50, 4, 7, 7, -1, 18, -1, -1, 
	11, -1, 22, 22, 55, 55, 61, 61, 
	-1, 22, 61, 22, -1, 27, 27, 27, 
	17, 17, 25, 27, 40, 61, 61, 30, 
	30, -1, -1, 30, -1, -1, -1, -1, 
	40, -1, 40, 19, 30, 30, 30, 30, 
	20, 20, 20, 20, 20, -1, 40, 40, 
	40, 31, 31, 27, 27, 31, -1, -1, 
	33, 33, 32, 22, 33, 32, 31, 31, 
	31, 31, 32, 32, -1, 33, 33, 33, 
	33, -1, 32, 32, 34, 34, -1, -1, 
	34, 34, -1, -1, -1, 35, -1, -1, 
	35, 34, 34, 34, 34, 35, 35, -1, 
	22, 63, 63, 63, -1, 35, 35, 35, 
	35, 35, 36, 36, 37, 37, 36, -1, 
	-1, -1, -1, 37, -1, -1, -1, 36, 
	36, 36, 36, -1, -1, 37, -1, 43, 
	43, 41, -1, 43, 41, -1, -1, 63, 
	63, 41, 41, 40, 43, 43, 43, 43, 
	37, 41, 41, 41, 41, 41, -1, 37, 
	-1, 37, -1, -1, 45, 45, -1, -1, 
	45, 46, 46, -1, -1, 46, -1, 32, 
	32, 45, 45, 45, 45, -1, 46, 46, 
	46, 46, -1, 52, 52, -1, -1, 53, 
	53, -1, 52, -1, -1, -1, 53, -1, 
	-1, -1, 35, 35, 35, 35, 35, 47, 
	-1, 37, 47, 48, -1, -1, 48, 47, 
	47, -1, -1, 48, 48, -1, -1, 47, 
	47, 47, -1, 48, 48, 48, 52, -1, 
	52, -1, 53, 49, 53, -1, 49, -1, 
	-1, -1, -1, 49, 49, 37, 41, 41, 
	41, 41, 41, 49, 49, 49, 49, 51, 
	51, -1, -1, -1, 57, 57, 51, -1, 
	57, -1, -1, -1, -1, -1, -1, -1, 
	51, 57, 57, 57, 57, -1, -1, -1, 
	52, 58, 58, -1, 53, 58, -1, -1, 
	59, 59, -1, 51, 59, -1, 58, 58, 
	58, 58, 51, -1, 51, 59, 59, 59, 
	59, -1, -1, -1, -1, -1, 60, 60, 
	-1, -1, 60, -1, 47, 47, 47, -1, 
	48, 48, 48, 60, 60, 60, 60, 62, 
	62, 62, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, 62, -1, -1, 
	49, 49, 49, 49, 51, -1, -1, -1, 
	-1, -1, -1, -1, 62, -1, -1, -1, 
	-1, -1, -1, -1, -1, 62, 62, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, -1, -1, -1, -1, -1, -1, -1, 
	-1, 62
};

static int pid_0_parser_keys[] = {
	5, 143, 98, 98, 98, 98, 5, 143, 
	7, 140, 23, 23, 10, 137, 7, 139, 
	98, 98, 5, 98, 5, 98, 11, 133, 
	7, 46, 7, 46, 5, 98, 23, 23, 
	13, 13, 11, 132, 10, 136, 13, 129, 
	15, 128, 11, 39, 5, 135, 23, 23, 
	14, 14, 5, 98, 13, 13, 7, 46, 
	12, 13, 12, 28, 12, 28, 12, 28, 
	15, 125, 12, 28, 12, 28, 15, 128, 
	12, 28, 5, 134, 23, 23, 23, 23, 
	11, 130, 15, 128, 12, 16, 12, 28, 
	24, 24, 12, 28, 12, 28, 15, 126, 
	15, 126, 15, 127, 7, 46, 5, 98, 
	5, 98, 5, 98, 11, 39, 11, 39, 
	12, 13, 12, 28, 12, 28, 12, 28, 
	12, 28, 12, 28, 7, 129, 7, 46, 
	0, 0
};

static unsigned int pid_0_parser_offsets[] = {
	0, 2, 3, 4, 12, 6, 7, 15, 
	8, 18, 21, 30, 31, 34, 37, 9, 
	10, 48, 23, 71, 83, 62, 118, 11, 
	20, 77, 24, 165, 26, 108, 175, 201, 
	210, 208, 228, 237, 258, 260, 29, 39, 
	172, 281, 81, 279, 46, 308, 313, 351, 
	355, 379, 105, 399, 331, 335, 104, 129, 
	67, 404, 425, 432, 454, 158, 471, 249, 
	0
};

static unsigned int pid_0_parser_targs[] = {
	1, 2, 3, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 14, 15, 16, 
	17, 18, 19, 20, 21, 22, 23, 24, 
	25, 26, 27, 28, 29, 30, 31, 32, 
	33, 34, 35, 36, 37, 38, 39, 40, 
	41, 42, 43, 44, 45, 46, 47, 48, 
	49, 50, 51, 52, 53, 54, 55, 56, 
	57, 58, 59, 60, 61, 62, 63, 64, 
	64, 64, 64, 64, 64, 64, 64, 64, 
	64, 64, 64, 64, 64, 64, 64, 64, 
	64, 64, 64, 64, 64, 64, 64, 64, 
	64, 64, 64, 64, 64, 64, 64, 64, 
	64, 64, 64, 64, 64, 64, 64
};

static unsigned int pid_0_parser_actInds[] = {
	0, 2, 4, 6, 8, 10, 12, 14, 
	16, 18, 20, 22, 24, 26, 28, 30, 
	32, 34, 36, 38, 40, 42, 44, 46, 
	49, 51, 53, 55, 57, 59, 61, 63, 
	65, 67, 69, 71, 73, 75, 77, 79, 
	81, 83, 85, 87, 89, 91, 93, 95, 
	97, 99, 101, 103, 105, 107, 109, 111, 
	113, 115, 117, 119, 121, 123, 125, 127, 
	129, 131, 133, 135, 137, 139, 141, 143, 
	145, 147, 149, 151, 153, 155, 157, 159, 
	161, 163, 165, 167, 169, 171, 173, 175, 
	177, 179, 181, 183, 185, 187, 189, 191, 
	193, 195, 197, 199, 201, 203, 205
};

static unsigned int pid_0_parser_actions[] = {
	1, 0, 1, 0, 1, 0, 1, 0, 
	1, 0, 1, 0, 1, 0, 1, 0, 
	1, 0, 1, 0, 1, 0, 1, 0, 
	1, 0, 1, 0, 1, 0, 1, 0, 
	1, 0, 1, 0, 1, 0, 1, 0, 
	1, 0, 1, 0, 1, 0, 1, 78, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 2, 0, 6, 0, 10, 0, 14, 
	0, 18, 0, 22, 0, 26, 0, 30, 
	0, 34, 0, 38, 0, 42, 0, 46, 
	0, 50, 0, 54, 0, 58, 0, 62, 
	0, 66, 0, 70, 0, 74, 0, 82, 
	0, 86, 0, 90, 0, 94, 0, 98, 
	0, 102, 0, 106, 0, 110, 0, 114, 
	0, 118, 0, 122, 0, 126, 0, 130, 
	0, 134, 0, 138, 0, 142, 0, 146, 
	0, 150, 0, 154, 0, 158, 0
};

static int pid_0_parser_commitLen[] = {
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
};

static int pid_0_parser_tokenRegionInds[] = {
	1, 3, 5, 7, 9, 11, 13, 15, 
	17, 19, 21, 23, 25, 27, 29, 31, 
	33, 35, 37, 39, 41, 43, 45, 47, 
	49, 51, 53, 55, 57, 59, 61, 63, 
	65, 67, 69, 71, 73, 75, 77, 79, 
	81, 83, 85, 87, 89, 91, 93, 95, 
	97, 99, 101, 103, 105, 107, 109, 111, 
	113, 115, 117, 119, 121, 123, 125, 127, 
	129
};

static int pid_0_parser_tokenRegions[] = {
	0, 1, 0, 0, 0, 0, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 0, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 1, 0, 1, 0, 1, 0, 1, 
	0, 0
};

static int pid_0_parser_tokenPreRegions[] = {
	0, -1, 0, -1, 0, -1, 0, -1, 
	0, 3, 0, 3, 0, 3, 0, -1, 
	0, -1, 0, -1, 0, -1, 0, 3, 
	0, -1, 0, -1, 0, 3, 0, 3, 
	0, 3, 0, -1, 0, 3, 0, 3, 
	0, 3, 0, -1, 0, 3, 0, -1, 
	0, 3, 0, -1, 0, -1, 0, 3, 
	0, -1, 0, -1, 0, -1, 0, -1, 
	0, 3, 0, -1, 0, 3, 0, 3, 
	0, 3, 0, -1, 0, 3, 0, 3, 
	0, 3, 0, 3, 0, -1, 0, -1, 
	0, 3, 0, 3, 0, 3, 0, 3, 
	0, 3, 0, 3, 0, 3, 0, 3, 
	0, -1, 0, 3, 0, -1, 0, 3, 
	0, -1, 0, 3, 0, 3, 0, -1, 
	0, -1, 0, -1, 0, 3, 0, -1, 
	0, 0
};

static struct pda_tables pid_0_pdaTables =
{
	pid_0_parser_indicies,
	pid_0_parser_owners,
	pid_0_parser_keys,
	pid_0_parser_offsets,
	pid_0_parser_targs,
	pid_0_parser_actInds,
	pid_0_parser_actions,
	pid_0_parser_commitLen,
	pid_0_parser_tokenRegionInds,
	pid_0_parser_tokenRegions,
	pid_0_parser_tokenPreRegions,

	594,
	130,
	65,
	103,
	103,
	207,
	103,
	130,
	130
};

static struct local_info locals_0[] = {
	{ 1, -1 }, { 1, -2 }
};

static unsigned char copy_0[] = {
	0, 0
};

static unsigned char copy_1[] = {
	0, 0
};

static unsigned char copy_2[] = {
	0, 1
};

static unsigned char copy_3[] = {
	0, 0, 0, 2
};

static unsigned char copy_4[] = {
	0, 1
};

static unsigned char copy_5[] = {
	0, 0
};

static unsigned char copy_6[] = {
	0, 0, 0, 1
};

static unsigned char copy_7[] = {
	0, 0, 0, 1
};

static unsigned char copy_8[] = {
	0, 0
};

static unsigned char copy_9[] = {
	0, 0, 0, 1, 0, 2
};

static unsigned char copy_10[] = {
	0, 0, 0, 1, 0, 2
};

static unsigned char copy_11[] = {
	0, 0
};

static unsigned char copy_12[] = {
	0, 0, 0, 2
};

static unsigned char copy_13[] = {
	0, 0
};

static unsigned char copy_14[] = {
	0, 0
};

static unsigned char copy_16[] = {
	0, 0
};

static unsigned char copy_18[] = {
	0, 0
};

static unsigned char copy_20[] = {
	0, 0, 0, 1, 0, 2
};

static unsigned char copy_21[] = {
	0, 0, 0, 1
};

static unsigned char copy_23[] = {
	0, 0
};

static unsigned char copy_25[] = {
	0, 1
};

static unsigned char copy_27[] = {
	0, 1, 0, 3, 0, 4
};

static unsigned char copy_28[] = {
	0, 0, 0, 2
};

static unsigned char copy_29[] = {
	0, 0
};

static unsigned char copy_30[] = {
	0, 2
};

static unsigned char copy_31[] = {
	0, 1, 0, 2, 0, 4, 0, 6
};

static unsigned char copy_32[] = {
	0, 0, 0, 1
};

static unsigned char copy_33[] = {
	0, 0, 0, 1
};

static unsigned char copy_35[] = {
	0, 1
};

static unsigned char copy_36[] = {
	0, 1, 0, 2
};

static unsigned char copy_37[] = {
	0, 0
};

static code_t parser_rootCode[] = {
	255, 8, 2, 0, 255, 7, 1, 0, 
	85, 147, 1, 0, 255, 52, 2, 0, 
	39, 255, 255, 241, 1, 0, 37, 255, 
	255, 2, 1, 0, 0, 0, 0, 0, 
	0, 0, 180, 150, 160, 162, 0, 0, 
	177, 163, 160, 171, 0, 0, 177, 172, 
	31, 91, 1, 0, 226, 91, 0, 0, 
	242, 39, 254, 255, 29, 37, 254, 255, 
	87, 251, 0, 0, 255, 10
};

static struct lang_el_info parser_lelInfo[] = {
	{ "__UNUSED",  "__UNUSED", 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0 },
	{ "ptr",  "ptr", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_void",  "void", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "str",  "str", 0, 0, 0, 0, -1, 48, 0, 0, 0, -1, 0, 0 },
	{ "il",  "il", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "'def'",  "_literal_0005", 0, 0, 1, 0, -1, 6, 0, 0, 0, -1, 0, 0 },
	{ "'lex'",  "_literal_0007", 0, 0, 1, 0, -1, 7, 0, 0, 0, -1, 0, 0 },
	{ "'end'",  "_literal_0009", 0, 0, 1, 0, -1, 8, 0, 0, 0, -1, 0, 0 },
	{ "'token'",  "_literal_000b", 0, 0, 1, 0, -1, 9, 0, 0, 0, -1, 0, 0 },
	{ "'ignore'",  "_literal_000d", 0, 0, 1, 0, -1, 10, 0, 0, 0, -1, 0, 0 },
	{ "'['",  "_literal_001b", 0, 0, 1, 0, -1, 17, 0, 0, 0, -1, 0, 0 },
	{ "']'",  "_literal_001d", 0, 0, 1, 0, -1, 18, 0, 0, 0, -1, 0, 0 },
	{ "'|'",  "_literal_001f", 0, 0, 1, 0, -1, 19, 0, 0, 0, -1, 0, 0 },
	{ "'/'",  "_literal_0021", 0, 0, 1, 0, -1, 20, 0, 0, 0, -1, 0, 0 },
	{ "':'",  "_literal_0023", 0, 0, 1, 0, -1, 21, 0, 0, 0, -1, 0, 0 },
	{ "'('",  "_literal_0029", 0, 0, 1, 0, -1, 24, 0, 0, 0, -1, 0, 0 },
	{ "')'",  "_literal_002b", 0, 0, 1, 0, -1, 25, 0, 0, 0, -1, 0, 0 },
	{ "'..'",  "_literal_002d", 0, 0, 1, 0, -1, 26, 0, 0, 0, -1, 0, 0 },
	{ "'^'",  "_literal_002f", 0, 0, 1, 0, -1, 27, 0, 0, 0, -1, 0, 0 },
	{ "_ignore_0001",  "_ignore_0001", 0, 0, 0, 1, -1, 4, 0, 0, 0, -1, 0, 0 },
	{ "_ignore_0003",  "_ignore_0003", 0, 0, 0, 1, -1, 5, 0, 0, 0, -1, 0, 0 },
	{ "NI",  "NI", 0, 0, 0, 0, -1, 11, 0, 0, 0, -1, 0, 0 },
	{ "COMMIT",  "COMMIT", 0, 0, 0, 0, -1, 12, 0, 0, 0, -1, 0, 0 },
	{ "id",  "id", 0, 0, 0, 0, -1, 13, 0, 0, 0, -1, 0, 0 },
	{ "literal",  "literal", 0, 0, 0, 0, -1, 14, 0, 0, 0, -1, 0, 0 },
	{ "STAR",  "STAR", 0, 0, 0, 0, -1, 15, 0, 0, 0, -1, 0, 0 },
	{ "PLUS",  "PLUS", 0, 0, 0, 0, -1, 16, 0, 0, 0, -1, 0, 0 },
	{ "DOT",  "DOT", 0, 0, 0, 0, -1, 22, 0, 0, 0, -1, 0, 0 },
	{ "COLON_LT",  "COLON_LT", 0, 0, 0, 0, -1, 23, 0, 0, 0, -1, 0, 0 },
	{ "_ign_0x964fe0",  "_ign_0x964fe0", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_T_any",  "_T_any", 0, 0, 0, 0, -1, 0, 0, 0, 123, -1, 0, 0 },
	{ "_T_lex_factor",  "_T_lex_factor", 0, 0, 0, 0, -1, 28, 0, 0, 124, -1, 0, 0 },
	{ "_T_lex_factor_neg",  "_T_lex_factor_neg", 0, 0, 0, 0, -1, 29, 0, 0, 125, -1, 0, 0 },
	{ "_T_lex_factor_rep",  "_T_lex_factor_rep", 0, 0, 0, 0, -1, 30, 0, 0, 126, -1, 0, 0 },
	{ "_T_lex_term",  "_T_lex_term", 0, 0, 0, 0, -1, 31, 0, 0, 127, -1, 0, 0 },
	{ "_T_lex_expr",  "_T_lex_expr", 0, 0, 0, 0, -1, 32, 0, 0, 128, -1, 0, 0 },
	{ "_T_opt_ni",  "_T_opt_ni", 0, 0, 0, 0, -1, 33, 0, 0, 129, -1, 0, 0 },
	{ "_T_opt_prod_repeat",  "_T_opt_prod_repeat", 0, 0, 0, 0, -1, 34, 0, 0, 130, -1, 0, 0 },
	{ "_T_opt_prod_el_name",  "_T_opt_prod_el_name", 0, 0, 0, 0, -1, 35, 0, 0, 131, -1, 0, 0 },
	{ "_T_prod_el",  "_T_prod_el", 0, 0, 0, 0, -1, 36, 0, 0, 132, -1, 0, 0 },
	{ "_T_prod_el_list",  "_T_prod_el_list", 0, 0, 0, 0, -1, 37, 0, 0, 133, -1, 0, 0 },
	{ "_T_opt_commit",  "_T_opt_commit", 0, 0, 0, 0, -1, 38, 0, 0, 134, -1, 0, 0 },
	{ "_T_opt_prod_name",  "_T_opt_prod_name", 0, 0, 0, 0, -1, 39, 0, 0, 135, -1, 0, 0 },
	{ "_T_prod",  "_T_prod", 0, 0, 0, 0, -1, 40, 0, 0, 136, -1, 0, 0 },
	{ "_T_prod_list",  "_T_prod_list", 0, 0, 0, 0, -1, 41, 0, 0, 137, -1, 0, 0 },
	{ "_T_ignore_def",  "_T_ignore_def", 0, 0, 0, 0, -1, 42, 0, 0, 138, -1, 0, 0 },
	{ "_T_token_def",  "_T_token_def", 0, 0, 0, 0, -1, 43, 0, 0, 139, -1, 0, 0 },
	{ "_T_token_list",  "_T_token_list", 0, 0, 0, 0, -1, 44, 0, 0, 140, -1, 0, 0 },
	{ "_T_item",  "_T_item", 0, 0, 0, 0, -1, 45, 0, 0, 141, -1, 0, 0 },
	{ "_T_start",  "_T_start", 0, 0, 0, 0, -1, 46, 0, 0, 142, -1, 0, 0 },
	{ "_T__repeat_item",  "_T__repeat_item", 0, 0, 0, 0, -1, 0, 0, 0, 143, -1, 0, 0 },
	{ "_eof_ptr",  "_eof_ptr", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_void",  "_eof_void", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_str",  "_eof_str", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_il",  "_eof_il", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_any",  "_eof_any", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_0005",  "_eof__literal_0005", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_0007",  "_eof__literal_0007", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_0009",  "_eof__literal_0009", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_000b",  "_eof__literal_000b", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_000d",  "_eof__literal_000d", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_001b",  "_eof__literal_001b", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_001d",  "_eof__literal_001d", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_001f",  "_eof__literal_001f", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_0021",  "_eof__literal_0021", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_0023",  "_eof__literal_0023", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_0029",  "_eof__literal_0029", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_002b",  "_eof__literal_002b", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_002d",  "_eof__literal_002d", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__literal_002f",  "_eof__literal_002f", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__ignore_0001",  "_eof__ignore_0001", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__ignore_0003",  "_eof__ignore_0003", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_NI",  "_eof_NI", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_COMMIT",  "_eof_COMMIT", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_id",  "_eof_id", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_literal",  "_eof_literal", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_STAR",  "_eof_STAR", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_PLUS",  "_eof_PLUS", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_DOT",  "_eof_DOT", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_COLON_LT",  "_eof_COLON_LT", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_lex_factor",  "_eof_lex_factor", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_lex_factor_neg",  "_eof_lex_factor_neg", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_lex_factor_rep",  "_eof_lex_factor_rep", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_lex_term",  "_eof_lex_term", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_lex_expr",  "_eof_lex_expr", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_opt_ni",  "_eof_opt_ni", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_opt_prod_repeat",  "_eof_opt_prod_repeat", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_opt_prod_el_name",  "_eof_opt_prod_el_name", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_prod_el",  "_eof_prod_el", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_prod_el_list",  "_eof_prod_el_list", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_opt_commit",  "_eof_opt_commit", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_opt_prod_name",  "_eof_opt_prod_name", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_prod",  "_eof_prod", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_prod_list",  "_eof_prod_list", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_ignore_def",  "_eof_ignore_def", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_token_def",  "_eof_token_def", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_token_list",  "_eof_token_list", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_item",  "_eof_item", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof_start",  "_eof_start", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__ign_0x964fe0",  "_eof__ign_0x964fe0", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__repeat_item",  "_eof__repeat_item", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_any",  "_eof__T_any", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_lex_factor",  "_eof__T_lex_factor", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_lex_factor_neg",  "_eof__T_lex_factor_neg", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_lex_factor_rep",  "_eof__T_lex_factor_rep", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_lex_term",  "_eof__T_lex_term", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_lex_expr",  "_eof__T_lex_expr", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_opt_ni",  "_eof__T_opt_ni", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_opt_prod_repeat",  "_eof__T_opt_prod_repeat", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_opt_prod_el_name",  "_eof__T_opt_prod_el_name", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_prod_el",  "_eof__T_prod_el", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_prod_el_list",  "_eof__T_prod_el_list", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_opt_commit",  "_eof__T_opt_commit", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_opt_prod_name",  "_eof__T_opt_prod_name", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_prod",  "_eof__T_prod", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_prod_list",  "_eof__T_prod_list", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_ignore_def",  "_eof__T_ignore_def", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_token_def",  "_eof__T_token_def", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_token_list",  "_eof__T_token_list", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_item",  "_eof__T_item", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T_start",  "_eof__T_start", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_eof__T__repeat_item",  "_eof__T__repeat_item", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "_notoken",  "_notoken", 0, 0, 0, 1, -1, 0, 0, 0, 0, -1, 0, 0 },
	{ "any",  "any", 0, 0, 0, 0, -1, 0, 0, 0, 30, -1, 0, 0 },
	{ "lex_factor",  "lex_factor", 0, 0, 0, 0, -1, 28, 0, 0, 31, -1, 0, 0 },
	{ "lex_factor_neg",  "lex_factor_neg", 0, 0, 0, 0, -1, 29, 0, 0, 32, -1, 0, 0 },
	{ "lex_factor_rep",  "lex_factor_rep", 0, 0, 0, 0, -1, 30, 0, 0, 33, -1, 0, 0 },
	{ "lex_term",  "lex_term", 0, 0, 0, 0, -1, 31, 0, 0, 34, -1, 0, 0 },
	{ "lex_expr",  "lex_expr", 0, 0, 0, 0, -1, 32, 0, 0, 35, -1, 0, 0 },
	{ "opt_ni",  "opt_ni", 0, 0, 0, 0, -1, 33, 0, 0, 36, -1, 0, 0 },
	{ "opt_prod_repeat",  "opt_prod_repeat", 0, 0, 0, 0, -1, 34, 0, 0, 37, -1, 0, 0 },
	{ "opt_prod_el_name",  "opt_prod_el_name", 0, 0, 0, 0, -1, 35, 0, 0, 38, -1, 0, 0 },
	{ "prod_el",  "prod_el", 0, 0, 0, 0, -1, 36, 0, 0, 39, -1, 0, 0 },
	{ "prod_el_list",  "prod_el_list", 0, 0, 0, 0, -1, 37, 0, 0, 40, -1, 0, 0 },
	{ "opt_commit",  "opt_commit", 0, 0, 0, 0, -1, 38, 0, 0, 41, -1, 0, 0 },
	{ "opt_prod_name",  "opt_prod_name", 0, 0, 0, 0, -1, 39, 0, 0, 42, -1, 0, 0 },
	{ "prod",  "prod", 0, 0, 0, 0, -1, 40, 0, 0, 43, -1, 0, 0 },
	{ "prod_list",  "prod_list", 0, 0, 0, 0, -1, 41, 0, 0, 44, -1, 0, 0 },
	{ "ignore_def",  "ignore_def", 0, 0, 0, 0, -1, 42, 0, 0, 45, -1, 0, 0 },
	{ "token_def",  "token_def", 0, 0, 0, 0, -1, 43, 0, 0, 46, -1, 0, 0 },
	{ "token_list",  "token_list", 0, 0, 0, 0, -1, 44, 0, 0, 47, -1, 0, 0 },
	{ "item",  "item", 0, 0, 0, 0, -1, 45, 0, 0, 48, -1, 0, 0 },
	{ "start",  "start", 0, 0, 0, 0, -1, 46, 0, 0, 49, -1, 0, 0 },
	{ "_repeat_item",  "_repeat_item", 1, 0, 0, 0, -1, 0, 0, 0, 50, -1, 0, 0 },
	{ "_root",  "_root", 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0 }
};

static short struct_trees_0[] = {
	0, 2, 
};

static short struct_trees_2[] = {
	0, 
};

static struct struct_el_info parser_selInfo[] = {
	{ 3, struct_trees_0, 2,  },
	{ 0, 0, 0,  },
	{ 3, struct_trees_2, 1,  },

};

static struct frame_info parser_frameInfo[] = {
	{ "", 0, 0, 0, 0, locals_0, 2, 0, 2 }
};

static struct prod_info parser_prodInfo[] = {
	{ 124, 0, 1, "lex_factor-1", -1, 1, copy_0, 1,  },
	{ 124, 3, 1, "lex_factor-4", -1, 1, copy_1, 1,  },
	{ 124, 1, 3, "lex_factor-2", -1, 1, copy_2, 1,  },
	{ 124, 2, 3, "lex_factor-3", -1, 1, copy_3, 2,  },
	{ 125, 0, 2, "lex_factor_neg-1", -1, 1, copy_4, 1,  },
	{ 125, 1, 1, "lex_factor_neg-2", -1, 1, copy_5, 1,  },
	{ 126, 0, 2, "lex_factor_rep-1", -1, 1, copy_6, 2,  },
	{ 126, 1, 2, "lex_factor_rep-2", -1, 1, copy_7, 2,  },
	{ 126, 2, 1, "lex_factor_rep-3", -1, 1, copy_8, 1,  },
	{ 127, 0, 3, "lex_term-1", -1, 1, copy_9, 3,  },
	{ 127, 1, 3, "lex_term-2", -1, 1, copy_10, 3,  },
	{ 127, 2, 1, "lex_term-3", -1, 1, copy_11, 1,  },
	{ 128, 0, 3, "lex_expr-1", -1, 1, copy_12, 2,  },
	{ 128, 1, 1, "lex_expr-2", -1, 1, copy_13, 1,  },
	{ 129, 0, 1, "opt_ni-1", -1, 1, copy_14, 1,  },
	{ 129, 1, 0, "opt_ni-2", -1, 1, 0, 0,  },
	{ 130, 0, 1, "opt_prod_repeat-1", -1, 1, copy_16, 1,  },
	{ 130, 1, 0, "opt_prod_repeat-2", -1, 1, 0, 0,  },
	{ 131, 0, 2, "opt_prod_el_name-1", -1, 1, copy_18, 1,  },
	{ 131, 1, 0, "opt_prod_el_name-2", -1, 1, 0, 0,  },
	{ 132, 0, 3, "prod_el-1", -1, 1, copy_20, 3,  },
	{ 133, 0, 2, "prod_el_list-1", -1, 1, copy_21, 2,  },
	{ 133, 1, 0, "prod_el_list-2", -1, 1, 0, 0,  },
	{ 134, 0, 1, "opt_commit-1", -1, 1, copy_23, 1,  },
	{ 134, 1, 0, "opt_commit-2", -1, 1, 0, 0,  },
	{ 135, 0, 2, "opt_prod_name-1", -1, 1, copy_25, 1,  },
	{ 135, 1, 0, "opt_prod_name-2", -1, 1, 0, 0,  },
	{ 136, 0, 5, "prod-1", -1, 1, copy_27, 3,  },
	{ 137, 0, 3, "prod_list-1", -1, 1, copy_28, 2,  },
	{ 137, 1, 1, "prod_list-2", -1, 1, copy_29, 1,  },
	{ 138, 0, 4, "ignore_def-1", -1, 1, copy_30, 1,  },
	{ 139, 0, 7, "token_def-1", -1, 1, copy_31, 4,  },
	{ 140, 0, 2, "token_list-1", -1, 1, copy_32, 2,  },
	{ 140, 1, 2, "token_list-2", -1, 1, copy_33, 2,  },
	{ 140, 2, 0, "token_list-3", -1, 1, 0, 0,  },
	{ 141, 0, 3, "item-1", -1, 1, copy_35, 1,  },
	{ 141, 1, 3, "item-2", -1, 1, copy_36, 2,  },
	{ 142, 0, 1, "start-1", -1, 1, copy_37, 1,  },
	{ 143, 0, 2, "_repeat_item-1", -1, 1, 0, 0,  },
	{ 143, 1, 0, "_repeat_item-2", -1, 1, 0, 0,  },
	{ 144, 0, 1, "_root-1", -1, 1, 0, 0,  },
	{ 144, 1, 1, "_root-2", -1, 1, 0, 0,  },
	{ 144, 2, 1, "_root-3", -1, 1, 0, 0,  },
	{ 144, 3, 1, "_root-4", -1, 1, 0, 0,  },
	{ 144, 4, 1, "_root-5", -1, 1, 0, 0,  },
	{ 144, 5, 1, "_root-6", -1, 1, 0, 0,  },
	{ 144, 6, 1, "_root-7", -1, 1, 0, 0,  },
	{ 144, 7, 1, "_root-8", -1, 1, 0, 0,  },
	{ 144, 8, 1, "_root-9", -1, 1, 0, 0,  },
	{ 144, 9, 1, "_root-10", -1, 1, 0, 0,  },
	{ 144, 10, 1, "_root-11", -1, 1, 0, 0,  },
	{ 144, 11, 1, "_root-12", -1, 1, 0, 0,  },
	{ 144, 12, 1, "_root-13", -1, 1, 0, 0,  },
	{ 144, 13, 1, "_root-14", -1, 1, 0, 0,  },
	{ 144, 14, 1, "_root-15", -1, 1, 0, 0,  },
	{ 144, 15, 1, "_root-16", -1, 1, 0, 0,  },
	{ 144, 16, 1, "_root-17", -1, 1, 0, 0,  },
	{ 144, 17, 1, "_root-18", -1, 1, 0, 0,  },
	{ 144, 18, 1, "_root-19", -1, 1, 0, 0,  },
	{ 144, 19, 1, "_root-20", -1, 1, 0, 0,  },
	{ 144, 20, 1, "_root-21", -1, 1, 0, 0,  },
	{ 144, 21, 1, "_root-22", -1, 1, 0, 0,  },
	{ 144, 22, 1, "_root-23", -1, 1, 0, 0,  },
	{ 144, 23, 1, "_root-24", -1, 1, 0, 0,  },
	{ 144, 24, 1, "_root-25", -1, 1, 0, 0,  },
	{ 144, 25, 1, "_root-26", -1, 1, 0, 0,  },
	{ 144, 26, 1, "_root-27", -1, 1, 0, 0,  },
	{ 144, 27, 1, "_root-28", -1, 1, 0, 0,  },
	{ 144, 28, 1, "_root-29", -1, 1, 0, 0,  },
	{ 144, 29, 1, "_root-30", -1, 1, 0, 0,  },
	{ 144, 30, 1, "_root-31", -1, 1, 0, 0,  },
	{ 144, 31, 1, "_root-32", -1, 1, 0, 0,  },
	{ 144, 32, 1, "_root-33", -1, 1, 0, 0,  },
	{ 144, 33, 1, "_root-34", -1, 1, 0, 0,  },
	{ 144, 34, 1, "_root-35", -1, 1, 0, 0,  },
	{ 144, 35, 1, "_root-36", -1, 1, 0, 0,  },
	{ 144, 36, 1, "_root-37", -1, 1, 0, 0,  },
	{ 144, 37, 1, "_root-38", -1, 1, 0, 0,  },
	{ 144, 38, 1, "_root-39", -1, 1, 0, 0,  },
	{ 144, 39, 1, "_root-40", -1, 1, 0, 0,  },
	{ 144, 40, 1, "_root-41", -1, 1, 0, 0,  },
	{ 144, 41, 1, "_root-42", -1, 1, 0, 0,  },
	{ 144, 42, 1, "_root-43", -1, 1, 0, 0,  },
	{ 144, 43, 1, "_root-44", -1, 1, 0, 0,  },
	{ 144, 44, 1, "_root-45", -1, 1, 0, 0,  },
	{ 144, 45, 1, "_root-46", -1, 1, 0, 0,  },
	{ 144, 46, 1, "_root-47", -1, 1, 0, 0,  },
	{ 144, 47, 1, "_root-48", -1, 1, 0, 0,  },
	{ 144, 48, 1, "_root-49", -1, 1, 0, 0,  },
	{ 144, 49, 1, "_root-50", -1, 1, 0, 0,  },
	{ 144, 50, 1, "_root-51", -1, 1, 0, 0,  },
	{ 144, 51, 1, "_root-52", -1, 1, 0, 0,  },
	{ 144, 52, 1, "_root-53", -1, 1, 0, 0,  },
	{ 144, 53, 1, "_root-54", -1, 1, 0, 0,  },
	{ 144, 54, 1, "_root-55", -1, 1, 0, 0,  },
	{ 144, 55, 1, "_root-56", -1, 1, 0, 0,  },
	{ 144, 56, 1, "_root-57", -1, 1, 0, 0,  },
	{ 144, 57, 1, "_root-58", -1, 1, 0, 0,  },
	{ 144, 58, 1, "_root-59", -1, 1, 0, 0,  },
	{ 144, 59, 1, "_root-60", -1, 1, 0, 0,  },
	{ 144, 60, 1, "_root-61", -1, 1, 0, 0,  },
	{ 144, 61, 1, "_root-62", -1, 1, 0, 0,  },
	{ 144, 62, 1, "_root-63", -1, 1, 0, 0,  },
	{ 144, 63, 1, "_root-64", -1, 1, 0, 0,  },
	{ 144, 64, 1, "_root-65", -1, 1, 0, 0,  },
	{ 144, 65, 1, "_root-66", -1, 1, 0, 0,  },
	{ 144, 66, 1, "_root-67", -1, 1, 0, 0,  },
	{ 144, 67, 1, "_root-68", -1, 1, 0, 0,  },
	{ 144, 68, 1, "_root-69", -1, 1, 0, 0,  },
	{ 144, 69, 1, "_root-70", -1, 1, 0, 0,  },
	{ 144, 70, 1, "_root-71", -1, 1, 0, 0,  },
	{ 144, 71, 1, "_root-72", -1, 1, 0, 0,  },
	{ 144, 72, 1, "_root-73", -1, 1, 0, 0,  },
	{ 144, 73, 1, "_root-74", -1, 1, 0, 0,  },
	{ 144, 74, 1, "_root-75", -1, 1, 0, 0,  },
	{ 144, 75, 1, "_root-76", -1, 1, 0, 0,  },
	{ 144, 76, 1, "_root-77", -1, 1, 0, 0,  },
	{ 144, 77, 1, "_root-78", -1, 1, 0, 0,  },
	{ 144, 78, 1, "_root-79", -1, 1, 0, 0,  },
	{ 144, 79, 1, "_root-80", -1, 1, 0, 0,  },
	{ 144, 80, 1, "_root-81", -1, 1, 0, 0,  },
	{ 144, 81, 1, "_root-82", -1, 1, 0, 0,  },
	{ 144, 82, 1, "_root-83", -1, 1, 0, 0,  },
	{ 144, 83, 1, "_root-84", -1, 1, 0, 0,  },
	{ 144, 84, 1, "_root-85", -1, 1, 0, 0,  },
	{ 144, 85, 1, "_root-86", -1, 1, 0, 0,  },
	{ 144, 86, 1, "_root-87", -1, 1, 0, 0,  },
	{ 144, 87, 1, "_root-88", -1, 1, 0, 0,  },
	{ 144, 88, 1, "_root-89", -1, 1, 0, 0,  },
	{ 144, 89, 1, "_root-90", -1, 1, 0, 0,  },
	{ 144, 90, 1, "_root-91", -1, 1, 0, 0,  },
	{ 144, 91, 1, "_root-92", -1, 1, 0, 0,  },
	{ 144, 92, 1, "_root-93", -1, 1, 0, 0,  },
	{ 144, 93, 1, "_root-94", -1, 1, 0, 0,  },
	{ 144, 94, 1, "_root-95", -1, 1, 0, 0,  },
	{ 144, 95, 1, "_root-96", -1, 1, 0, 0,  },
	{ 144, 96, 1, "_root-97", -1, 1, 0, 0,  },
	{ 144, 97, 1, "_root-98", -1, 1, 0, 0,  },
	{ 144, 98, 1, "_root-99", -1, 1, 0, 0,  },
	{ 144, 99, 1, "_root-100", -1, 1, 0, 0,  },
	{ 144, 100, 1, "_root-101", -1, 1, 0, 0,  },
	{ 144, 101, 1, "_root-102", -1, 1, 0, 0,  },
	{ 144, 102, 1, "_root-103", -1, 1, 0, 0,  },
	{ 144, 103, 1, "_root-104", -1, 1, 0, 0,  },
	{ 144, 104, 1, "_root-105", -1, 1, 0, 0,  },
	{ 144, 105, 1, "_root-106", -1, 1, 0, 0,  },
	{ 144, 106, 1, "_root-107", -1, 1, 0, 0,  },
	{ 144, 107, 1, "_root-108", -1, 1, 0, 0,  },
	{ 144, 108, 1, "_root-109", -1, 1, 0, 0,  },
	{ 144, 109, 1, "_root-110", -1, 1, 0, 0,  },
	{ 144, 110, 1, "_root-111", -1, 1, 0, 0,  },
	{ 144, 111, 1, "_root-112", -1, 1, 0, 0,  },
	{ 144, 112, 1, "_root-113", -1, 1, 0, 0,  },
	{ 144, 113, 1, "_root-114", -1, 1, 0, 0,  },
	{ 144, 114, 1, "_root-115", -1, 1, 0, 0,  },
	{ 144, 115, 1, "_root-116", -1, 1, 0, 0,  },
	{ 144, 116, 1, "_root-117", -1, 1, 0, 0,  },
	{ 144, 117, 1, "_root-118", -1, 1, 0, 0,  },
	{ 144, 118, 1, "_root-119", -1, 1, 0, 0,  },
	{ 144, 119, 1, "_root-120", -1, 1, 0, 0,  },
	{ 144, 120, 1, "_root-121", -1, 1, 0, 0,  },
	{ 144, 121, 1, "_root-122", -1, 1, 0, 0,  },
	{ 144, 122, 1, "_root-123", -1, 1, 0, 0,  },
	{ 144, 123, 1, "_root-124", -1, 1, 0, 0,  },
	{ 144, 124, 1, "_root-125", -1, 1, 0, 0,  },
	{ 144, 125, 1, "_root-126", -1, 1, 0, 0,  },
	{ 144, 126, 1, "_root-127", -1, 1, 0, 0,  },
	{ 144, 127, 1, "_root-128", -1, 1, 0, 0,  },
	{ 144, 128, 1, "_root-129", -1, 1, 0, 0,  },
	{ 144, 129, 1, "_root-130", -1, 1, 0, 0,  },
	{ 144, 130, 1, "_root-131", -1, 1, 0, 0,  },
	{ 144, 131, 1, "_root-132", -1, 1, 0, 0,  },
	{ 144, 132, 1, "_root-133", -1, 1, 0, 0,  },
	{ 144, 133, 1, "_root-134", -1, 1, 0, 0,  },
	{ 144, 134, 1, "_root-135", -1, 1, 0, 0,  },
	{ 144, 135, 1, "_root-136", -1, 1, 0, 0,  },
	{ 144, 136, 1, "_root-137", -1, 1, 0, 0,  },
	{ 144, 137, 1, "_root-138", -1, 1, 0, 0,  },
	{ 144, 138, 1, "_root-139", -1, 1, 0, 0,  },
	{ 144, 139, 1, "_root-140", -1, 1, 0, 0,  },
	{ 144, 140, 1, "_root-141", -1, 1, 0, 0,  },
	{ 144, 141, 1, "_root-142", -1, 1, 0, 0,  },
	{ 144, 142, 1, "_root-143", -1, 1, 0, 0,  },
	{ 144, 143, 1, "_root-144", -1, 1, 0, 0,  }
};

static struct pat_cons_info parser_patReplInfo[] = {
};

static struct pat_cons_node parser_patReplNodes[] = {
};

static struct function_info parser_functionInfo[] = {

};

static struct region_info parser_regionInfo[] = {
	{ -1, -1, 0 },
	{ -1, -1, 0 },
	{ -1, -1, 0 },
	{ -1, -1, 0 },
	{ -1, -1, 29 }
};

static struct generic_info parser_genericInfo[] = {
	{ 0, 0, 0, 0, 0, 0, 0, 0 },
	{ 20, -1, -1, 0, 0, 0, 0, 0 },
	{ 21, 2, 1, 0, 0, 2, 0, -1 },
};

static const char *parser_litdata[] = {
	"unwind code\n",
	"r",
};

static long parser_litlen[] = {
	12, 1, };

static head_t *parser_literals[] = {
	0, 0, };

static int startStates[] = {
	0, };

static int eofLelIds[] = {
	98, };

static int parserLelIds[] = {
	142, };

static CaptureAttr captureAttr[] = {
};

struct colm_sections colm_object = 
{
	parser_lelInfo,
	145,

	parser_selInfo,
	3,

	parser_prodInfo,
	184,

	parser_regionInfo,
	5,

	parser_rootCode,
	70,
	0,

	parser_frameInfo,
	1,

	parser_functionInfo,
	0,

	parser_patReplInfo,
	0,

	parser_patReplNodes,
	0,

	parser_genericInfo,
	3,
	2,

	parser_litdata,
	parser_litlen,
	parser_literals,
	2,

	captureAttr,
	0,

	&fsmTables_start,
	&pid_0_pdaTables,
	startStates, eofLelIds, parserLelIds, 1,

	3,

	123,
	-1,
	3,
	123,
	0,
	122,
	0,
	2,
	&fsm_execute,
	&sendNamedLangEl,
	&initBindings,
	&popBinding,
};

tree_t **host_call( program_t *prg, long code, tree_t **sp )
{
	value_t rtn = 0;
	switch ( code ) {
	}
	vm_push_value( rtn );
	return sp;
}
void commit_reduce_forward( program_t *prg, tree_t **root,
		struct pda_run *pda_run, parse_tree_t *pt )
{
	commit_clear_parse_tree( prg, root, pda_run, pt->child );
}

long commit_union_sz( int reducer ) { return 0; }
void init_need() {}
int reducer_need_tok( program_t *prg, struct pda_run *pda_run, int id ) { return COLM_RN_BOTH; }
int reducer_need_ign( program_t *prg, struct pda_run *pda_run ) { return COLM_RN_BOTH; }

