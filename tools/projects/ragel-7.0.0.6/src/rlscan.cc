
#line 1 "rlscan.rl"
/*
*  Copyright 2006-2007 Adrian Thurston <thurston@complang.org>
*  Copyright 2011 Josef Goettgens
*/

/*  This file is part of Ragel.
*
*  Ragel is free software; you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation; either version 2 of the License, or
*  (at your option) any later version.
* 
*  Ragel is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
* 
*  You should have received a copy of the GNU General Public License
*  along with Ragel; if not, write to the Free Software
*  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
*/

#include <iostream>
#include <fstream>
#include <string.h>

#include "ragel.h"
#include "rlscan.h"
#include "inputdata.h"

//#define LOG_TOKENS

using std::ifstream;
using std::istream;
using std::ostream;
using std::cerr;
using std::endl;

enum InlineBlockType
{
	CurlyDelimited,
	SemiTerminated
};

#ifdef _WIN32
#define PATH_SEP '\\'
#else
#define PATH_SEP '/'
#endif

char *newTokdata( int toklen )
{
	char *tokdata = new char[sizeof(TokHead) + toklen + 1];
	return tokdata + sizeof(TokHead);
}

void deleteTokdata( char *tokdata )
{
	if ( tokdata )
	delete[] ( tokdata - sizeof(TokHead) );
}

void linkTokdata( Parser6 *parser, char *tokdata )
{
	TokHead *head = (TokHead*)( tokdata - sizeof(TokHead) );
	head->next = parser->tokHead;
	parser->tokHead = head;
}

void clearTokdata( Parser6 *parser )
{
	while ( parser->tokHead != 0 ) {
		TokHead *next = parser->tokHead->next;
		delete[] (char*)parser->tokHead;
		parser->tokHead = next;
	}
}

/*
* The Scanner for Importing
*/


#line 83 "rlscan.rl"

static const int inline_token_scan_start = 2;
static const int inline_token_scan_first_final = 2;
static const int inline_token_scan_error = -1;

static const int inline_token_scan_en_main = 2;

static const char _inline_token_scan_nfa_targs[] = {
	0, 0
};

static const char _inline_token_scan_nfa_offsets[] = {
	0, 0, 0, 0, 0, 0
};

static const char _inline_token_scan_nfa_push_actions[] = {
	0, 0
};

static const char _inline_token_scan_nfa_pop_trans[] = {
	0, 0
};


#line 1 "--"
void Scanner::flushImport()
{
	int *p = token_data;
	int *pe = token_data + cur_token;
	int *eof = 0;
	
	
	{
		tok_cs = (int)inline_token_scan_start;
		tok_ts = 0;
		tok_te = 0;
	}
	
	{
		if ( p == pe )
		goto _test_eof;
		switch ( tok_cs )
		{
			case 2:
			goto st_case_2;
			case 3:
			goto st_case_3;
			case 0:
			goto st_case_0;
			case 4:
			goto st_case_4;
			case 1:
			goto st_case_1;
		}
		goto st_out;
		ctr4:
		{
			#line 1 "-"
			{p = ((tok_te))-1;
			}}
		
		goto st2;
		ctr2:
		{
			#line 135 "rlscan.rl"
			{tok_te = p+1;{
					#line 135 "rlscan.rl"
					int base = tok_ts - token_data;
					int nameOff = 0;
					int litOff = 2;
					
					directToParser( inclToParser, fileName, line, column, TK_Word, 
					token_strings[base+nameOff], token_lens[base+nameOff] );
					directToParser( inclToParser, fileName, line, column, '=', 0, 0 );
					directToParser( inclToParser, fileName, line, column, TK_Literal,
					token_strings[base+litOff], token_lens[base+litOff] );
					directToParser( inclToParser, fileName, line, column, ';', 0, 0 );
				}}}
		
		goto st2;
		ctr3:
		{
			#line 107 "rlscan.rl"
			{tok_te = p+1;{
					#line 107 "rlscan.rl"
					int base = tok_ts - token_data;
					int nameOff = 0;
					int numOff = 2;
					
					directToParser( inclToParser, fileName, line, column, TK_Word, 
					token_strings[base+nameOff], token_lens[base+nameOff] );
					directToParser( inclToParser, fileName, line, column, '=', 0, 0 );
					directToParser( inclToParser, fileName, line, column, TK_UInt,
					token_strings[base+numOff], token_lens[base+numOff] );
					directToParser( inclToParser, fileName, line, column, ';', 0, 0 );
				}}}
		
		goto st2;
		ctr5:
		{
			#line 121 "rlscan.rl"
			{tok_te = p+1;{
					#line 121 "rlscan.rl"
					int base = tok_ts - token_data;
					int nameOff = 1;
					int litOff = 2;
					
					directToParser( inclToParser, fileName, line, column, TK_Word, 
					token_strings[base+nameOff], token_lens[base+nameOff] );
					directToParser( inclToParser, fileName, line, column, '=', 0, 0 );
					directToParser( inclToParser, fileName, line, column, TK_Literal,
					token_strings[base+litOff], token_lens[base+litOff] );
					directToParser( inclToParser, fileName, line, column, ';', 0, 0 );
				}}}
		
		goto st2;
		ctr6:
		{
			#line 93 "rlscan.rl"
			{tok_te = p+1;{
					#line 93 "rlscan.rl"
					int base = tok_ts - token_data;
					int nameOff = 1;
					int numOff = 2;
					
					directToParser( inclToParser, fileName, line, column, TK_Word, 
					token_strings[base+nameOff], token_lens[base+nameOff] );
					directToParser( inclToParser, fileName, line, column, '=', 0, 0 );
					directToParser( inclToParser, fileName, line, column, TK_UInt,
					token_strings[base+numOff], token_lens[base+numOff] );
					directToParser( inclToParser, fileName, line, column, ';', 0, 0 );
				}}}
		
		goto st2;
		ctr7:
		{
			#line 1 "-"
			{tok_te = p+1;}}
		
		goto st2;
		ctr13:
		{
			#line 1 "-"
			{tok_te = p;p = p - 1;}}
		
		goto st2;
		st2:
		{
			#line 1 "NONE"
			{tok_ts = 0;}}
		p+= 1;
		if ( p == pe )
		goto _test_eof2;
		st_case_2:
		{
			#line 1 "NONE"
			{tok_ts = p;}}
		switch( ( (*( p))) ) {
			case 128: {
				goto ctr8;
			}
			case 131: {
				goto ctr9;
			}
		}
		{
			goto ctr7;
		}
		ctr8:
		{
			#line 1 "NONE"
			{tok_te = p+1;}}
		
		goto st3;
		st3:
		p+= 1;
		if ( p == pe )
		goto _test_eof3;
		st_case_3:
		if ( ( (*( p))) == 61 ) {
			goto st0;
		}
		{
			goto ctr13;
		}
		st0:
		p+= 1;
		if ( p == pe )
		goto _test_eof0;
		st_case_0:
		switch( ( (*( p))) ) {
			case 129: {
				goto ctr2;
			}
			case 130: {
				goto ctr3;
			}
		}
		{
			goto ctr4;
		}
		ctr9:
		{
			#line 1 "NONE"
			{tok_te = p+1;}}
		
		goto st4;
		st4:
		p+= 1;
		if ( p == pe )
		goto _test_eof4;
		st_case_4:
		if ( ( (*( p))) == 128 ) {
			goto st1;
		}
		{
			goto ctr13;
		}
		st1:
		p+= 1;
		if ( p == pe )
		goto _test_eof1;
		st_case_1:
		switch( ( (*( p))) ) {
			case 129: {
				goto ctr5;
			}
			case 130: {
				goto ctr6;
			}
		}
		{
			goto ctr4;
		}
		st_out:
		_test_eof2: tok_cs = 2; goto _test_eof; 
		_test_eof3: tok_cs = 3; goto _test_eof; 
		_test_eof0: tok_cs = 0; goto _test_eof; 
		_test_eof4: tok_cs = 4; goto _test_eof; 
		_test_eof1: tok_cs = 1; goto _test_eof; 
		
		_test_eof: {}
		if ( p == eof )
		{
			switch ( tok_cs ) {
				case 3: goto ctr13;
				case 0: goto ctr4;
				case 4: goto ctr13;
				case 1: goto ctr4;
			}
		}
		
	}
	
	#line 161 "rlscan.rl"
	if ( tok_ts == 0 )
	cur_token = 0;
	else {
		cur_token = pe - tok_ts;
		int ts_offset = tok_ts - token_data;
		memmove( token_data, token_data+ts_offset, cur_token*sizeof(token_data[0]) );
		memmove( token_strings, token_strings+ts_offset, cur_token*sizeof(token_strings[0]) );
		memmove( token_lens, token_lens+ts_offset, cur_token*sizeof(token_lens[0]) );
	}
}

void Scanner::directToParser( Parser6 *toParser, const char *tokFileName, int tokLine, 
int tokColumn, int type, char *tokdata, int toklen )
{
	InputLoc loc;
	
	#ifdef LOG_TOKENS
	cerr << "scanner:" << tokLine << ":" << tokColumn << 
	": sending token to the parser " << Parser6_lelNames[type];
	cerr << " " << toklen;
	if ( tokdata != 0 )
	cerr << " " << tokdata;
	cerr << endl;
	#endif
	
	loc.fileName = tokFileName;
	loc.line = tokLine;
	loc.col = tokColumn;
	
	toParser->token( loc, type, tokdata, toklen );
}

void Scanner::importToken( int token, char *start, char *end )
{
	if ( cur_token == max_tokens )
	flushImport();
	
	token_data[cur_token] = token;
	if ( start == 0 ) {
		token_strings[cur_token] = 0;
		token_lens[cur_token] = 0;
	}
	else {
		int toklen = end-start;
		token_lens[cur_token] = toklen;
		token_strings[cur_token] = new char[toklen+1];
		memcpy( token_strings[cur_token], start, toklen );
		token_strings[cur_token][toklen] = 0;
	}
	cur_token++;
}

void Scanner::pass()
{
	if ( sectionPass )
	return;
	
	updateCol();
	
	/* If no errors and we are at the bottom of the include stack (the
	* source file listed on the command line) then write out the data. */
	if ( includeDepth == 0 && id.machineSpec == 0 && id.machineName == 0 )
	id.curItem->data.write( ts, te-ts );
}

void Scanner::pass( int token, char *start, char *end )
{
	if ( sectionPass )
	return;
	
	if ( importMachines )
	importToken( token, start, end );
	
	pass();
}

/*
* The scanner for processing sections, includes, imports, etc.
*/


static const int section_parse_start = 10;
static const int section_parse_first_final = 10;
static const int section_parse_error = 0;

static const int section_parse_en_main = 10;

static const char _section_parse_nfa_targs[] = {
	0, 0
};

static const char _section_parse_nfa_offsets[] = {
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0
};

static const char _section_parse_nfa_push_actions[] = {
	0, 0
};

static const char _section_parse_nfa_pop_trans[] = {
	0, 0
};


#line 247 "rlscan.rl"
void Scanner::init( )
{
	
	{
		cs = (int)section_parse_start;
	}
	
	#line 1 "--"
}

bool Scanner::active()
{
	if ( ignoreSection )
	return false;
	
	if ( parser == 0 && ! parserExistsError ) {
		scan_error() << "this specification has no name, nor does any previous"
		" specification" << endl;
		parserExistsError = true;
	}
	
	if ( parser == 0 )
	return false;
	
	return true;
}

ostream &Scanner::scan_error()
{
	/* Maintain the error count. */
	gblErrorCount += 1;
	cerr << makeInputLoc( fileName, line, column ) << ": ";
	return cerr;
}

/* An approximate check for duplicate includes. Due to aliasing of files it's
* possible for duplicates to creep in. */
bool Scanner::duplicateInclude( char *inclFileName, char *inclSectionName )
{
	for ( IncludeHistory::Iter hi = parser->includeHistory; hi.lte(); hi++ ) {
		if ( strcmp( hi->fileName, inclFileName ) == 0 &&
		strcmp( hi->sectionName, inclSectionName ) == 0 )
		{
			return true;
		}
	}
	return false;	
}

void Scanner::updateCol()
{
	char *from = lastnl;
	if ( from == 0 )
	from = ts;
	//cerr << "adding " << te - from << " to column" << endl;
	column += te - from;
	lastnl = 0;
}

void Scanner::handleMachine()
{
	if ( sectionPass ) {
		/* Assign a name to the machine. */
		char *machine = word;
		
		SectionDictEl *sdEl = id.sectionDict.find( machine );
		if ( sdEl == 0 ) {
			sdEl = new SectionDictEl( machine );
			sdEl->value = new Section( machine );
			id.sectionDict.insert( sdEl );
		}
		
		section = sdEl->value;
	}
	else {
		
		/* Assign a name to the machine. */
		char *machine = word;
		
		if ( !importMachines && inclSectionTarg == 0 ) {
			ignoreSection = false;
			
			ParserDictEl *pdEl = id.parserDict.find( machine );
			if ( pdEl == 0 ) {
				pdEl = new ParserDictEl( machine );
				pdEl->value = new Parser6( &id, fileName, machine, sectionLoc,
				id.hostLang, id.minimizeLevel, id.minimizeOpt );
				pdEl->value->init();
				id.parserDict.insert( pdEl );
				id.parserList.append( pdEl->value );
				
				/* Also into the parse data dict. This is the new style. */
				ParseDataDictEl *pddEl = new ParseDataDictEl( machine );
				pddEl->value = pdEl->value->pd;
				id.parseDataDict.insert( pddEl );
				id.parseDataList.append( pddEl->value );
			}
			
			parser = pdEl->value;
		}
		else if ( !importMachines && strcmp( inclSectionTarg, machine ) == 0 ) {
			/* found include target */
			ignoreSection = false;
			parser = inclToParser;
		}
		else {
			/* ignoring section */
			ignoreSection = true;
			parser = 0;
		}
	}
}

void Scanner::handleInclude()
{
	if ( sectionPass )
	return;
	
	if ( active() ) {
		char *inclSectionName = word;
		char **includeChecks = 0;
		
		/* Implement defaults for the input file and section name. */
		if ( inclSectionName == 0 )
		inclSectionName = parser->sectionName;
		
		if ( lit != 0 )
		includeChecks = makeIncludePathChecks( fileName, lit, lit_len );
		else {
			char *test = new char[strlen(fileName)+1];
			strcpy( test, fileName );
			
			includeChecks = new char*[2];
			
			includeChecks[0] = test;
			includeChecks[1] = 0;
		}
		
		long found = 0;
		ifstream *inFile = tryOpenInclude( includeChecks, found );
		if ( inFile == 0 ) {
			scan_error() << "include: failed to locate file" << endl;
			char **tried = includeChecks;
			while ( *tried != 0 )
			scan_error() << "include: attempted: \"" << *tried++ << '\"' << endl;
		}
		else {
			/* Don't include anything that's already been included. */
			if ( !duplicateInclude( includeChecks[found], inclSectionName ) ) {
				parser->includeHistory.append( IncludeHistoryItem( 
				includeChecks[found], inclSectionName ) );
				
				Scanner scanner( id, includeChecks[found], *inFile, parser,
				inclSectionName, includeDepth+1, false );
				scanner.do_scan( );
				delete inFile;
			}
		}
	}
}

void Scanner::handleImport()
{
	if ( sectionPass )
	return;
	
	if ( active() ) {
		char **importChecks = makeIncludePathChecks( fileName, lit, lit_len );
		
		/* Open the input file for reading. */
		long found = 0;
		ifstream *inFile = tryOpenInclude( importChecks, found );
		if ( inFile == 0 ) {
			scan_error() << "import: could not open import file " <<
			"for reading" << endl;
			char **tried = importChecks;
			while ( *tried != 0 )
			scan_error() << "import: attempted: \"" << *tried++ << '\"' << endl;
		}
		
		Scanner scanner( id, importChecks[found], *inFile, parser,
		0, includeDepth+1, true );
		scanner.do_scan( );
		scanner.importToken( 0, 0, 0 );
		scanner.flushImport();
		delete inFile;
	}
}


#line 437 "rlscan.rl"
void Scanner::token( int type, char c )
{
	token( type, &c, &c + 1 );
}

void Scanner::token( int type )
{
	token( type, 0, 0 );
}


void Scanner::token( int type, char *start, char *end )
{
	char *tokdata = 0;
	int toklen = 0;
	if ( start != 0 ) {
		toklen = end-start;
		tokdata = newTokdata( toklen + 1 );
		memcpy( tokdata, start, toklen );
		tokdata[toklen] = 0;
	}
	
	processToken( type, tokdata, toklen );
}

void Scanner::processToken( int type, char *tokdata, int toklen )
{
	int *p, *pe, *eof;
	
	if ( type < 0 )
	p = pe = eof = 0;
	else {
		p = &type;
		pe = &type + 1;
		eof = 0;
	}
	
	
	{
		if ( p == pe )
		goto _test_eof;
		switch ( cs )
		{
			case 10:
			goto st_case_10;
			case 1:
			goto st_case_1;
			case 0:
			goto st_case_0;
			case 2:
			goto st_case_2;
			case 3:
			goto st_case_3;
			case 4:
			goto st_case_4;
			case 5:
			goto st_case_5;
			case 6:
			goto st_case_6;
			case 7:
			goto st_case_7;
			case 8:
			goto st_case_8;
			case 9:
			goto st_case_9;
		}
		goto st_out;
		ctr2:
		{
			#line 452 "rlscan.rl"
			handleMachine(); }
		
		goto st10;
		ctr6:
		{
			#line 453 "rlscan.rl"
			handleInclude(); }
		
		goto st10;
		ctr10:
		{
			#line 454 "rlscan.rl"
			handleImport(); }
		
		goto st10;
		ctr13:
		{
			#line 511 "rlscan.rl"
			if ( sectionPass ) {
			}
			else {
				/* if ( active() && id.machineSpec == 0 && id.machineName == 0 )
				*	id.curItem->writeArgs.append( 0 ); */
			}
		}
		
		goto st10;
		ctr14:
		{
			#line 526 "rlscan.rl"
			if ( sectionPass ) {
				deleteTokdata( tokdata );
			}
			else {
				/* Send the token off to the parser. */
				if ( active() ) {
					if ( tokdata != 0 ) {
						linkTokdata( parser, tokdata );
					}
					
					directToParser( parser, fileName, line, column, type, tokdata, toklen );
				}
				else {
					deleteTokdata( tokdata );
				}
			}
		}
		
		goto st10;
		st10:
		p+= 1;
		if ( p == pe )
		goto _test_eof10;
		st_case_10:
		switch( ( (*( p))) ) {
			case 196: {
				goto st1;
			}
			case 197: {
				goto st3;
			}
			case 198: {
				goto st6;
			}
			case 199: {
				goto ctr18;
			}
		}
		{
			goto ctr14;
		}
		st1:
		p+= 1;
		if ( p == pe )
		goto _test_eof1;
		st_case_1:
		if ( ( (*( p))) == 128 ) {
			goto ctr1;
		}
		{
			goto ctr0;
		}
		ctr0:
		{
			#line 447 "rlscan.rl"
			scan_error() << "bad machine statement" << endl; }
		
		goto st0;
		ctr3:
		{
			#line 448 "rlscan.rl"
			scan_error() << "bad include statement" << endl; }
		
		goto st0;
		ctr8:
		{
			#line 449 "rlscan.rl"
			scan_error() << "bad import statement" << endl; }
		
		goto st0;
		ctr11:
		{
			#line 450 "rlscan.rl"
			scan_error() << "bad write statement" << endl; }
		
		goto st0;
		st_case_0:
		st0:
		cs = 0;
		goto _out;
		ctr1:
		{
			#line 444 "rlscan.rl"
			word = tokdata; word_len = toklen; }
		
		goto st2;
		st2:
		p+= 1;
		if ( p == pe )
		goto _test_eof2;
		st_case_2:
		if ( ( (*( p))) == 59 ) {
			goto ctr2;
		}
		{
			goto ctr0;
		}
		st3:
		p+= 1;
		if ( p == pe )
		goto _test_eof3;
		st_case_3:
		switch( ( (*( p))) ) {
			case 128: {
				goto ctr4;
			}
			case 129: {
				goto ctr5;
			}
		}
		{
			goto ctr3;
		}
		ctr4:
		{
			#line 443 "rlscan.rl"
			word = lit = 0; word_len = lit_len = 0; }
		{
			#line 444 "rlscan.rl"
			word = tokdata; word_len = toklen; }
		
		goto st4;
		st4:
		p+= 1;
		if ( p == pe )
		goto _test_eof4;
		st_case_4:
		switch( ( (*( p))) ) {
			case 59: {
				goto ctr6;
			}
			case 129: {
				goto ctr7;
			}
		}
		{
			goto ctr3;
		}
		ctr5:
		{
			#line 443 "rlscan.rl"
			word = lit = 0; word_len = lit_len = 0; }
		{
			#line 445 "rlscan.rl"
			lit = tokdata; lit_len = toklen; }
		
		goto st5;
		ctr7:
		{
			#line 445 "rlscan.rl"
			lit = tokdata; lit_len = toklen; }
		
		goto st5;
		st5:
		p+= 1;
		if ( p == pe )
		goto _test_eof5;
		st_case_5:
		if ( ( (*( p))) == 59 ) {
			goto ctr6;
		}
		{
			goto ctr3;
		}
		st6:
		p+= 1;
		if ( p == pe )
		goto _test_eof6;
		st_case_6:
		if ( ( (*( p))) == 129 ) {
			goto ctr9;
		}
		{
			goto ctr8;
		}
		ctr9:
		{
			#line 445 "rlscan.rl"
			lit = tokdata; lit_len = toklen; }
		
		goto st7;
		st7:
		p+= 1;
		if ( p == pe )
		goto _test_eof7;
		st_case_7:
		if ( ( (*( p))) == 59 ) {
			goto ctr10;
		}
		{
			goto ctr8;
		}
		ctr18:
		{
			#line 473 "rlscan.rl"
			if ( sectionPass ) {
				InputItem *inputItem = new InputItem;
				inputItem->type = InputItem::Write;
				inputItem->loc.fileName = fileName;
				inputItem->loc.line = line;
				inputItem->loc.col = column;
				inputItem->name = section->sectionName;
				inputItem->section = section;
				
				/* Track the last reference. */
				inputItem->section->lastReference = inputItem;
				
				id.inputItems.append( inputItem );
			}
			else {
				if ( includeDepth == 0 && active() &&
				id.machineSpec == 0 && id.machineName == 0 )
				{
					id.curItem = id.curItem->next;
					id.curItem->pd = parser->pd;
					id.curItem->parser = parser;
					id.checkLastRef( id.curItem );
				}
			}
		}
		
		goto st8;
		st8:
		p+= 1;
		if ( p == pe )
		goto _test_eof8;
		st_case_8:
		if ( ( (*( p))) == 128 ) {
			goto ctr12;
		}
		{
			goto ctr11;
		}
		ctr12:
		{
			#line 501 "rlscan.rl"
			if ( sectionPass ) {
			}
			else {
				if ( active() && id.machineSpec == 0 && id.machineName == 0 )
				id.curItem->writeArgs.append( strdup(tokdata) );
			}
		}
		
		goto st9;
		st9:
		p+= 1;
		if ( p == pe )
		goto _test_eof9;
		st_case_9:
		switch( ( (*( p))) ) {
			case 59: {
				goto ctr13;
			}
			case 128: {
				goto ctr12;
			}
		}
		{
			goto ctr11;
		}
		st_out:
		_test_eof10: cs = 10; goto _test_eof; 
		_test_eof1: cs = 1; goto _test_eof; 
		_test_eof2: cs = 2; goto _test_eof; 
		_test_eof3: cs = 3; goto _test_eof; 
		_test_eof4: cs = 4; goto _test_eof; 
		_test_eof5: cs = 5; goto _test_eof; 
		_test_eof6: cs = 6; goto _test_eof; 
		_test_eof7: cs = 7; goto _test_eof; 
		_test_eof8: cs = 8; goto _test_eof; 
		_test_eof9: cs = 9; goto _test_eof; 
		
		_test_eof: {}
		if ( p == eof )
		{
			switch ( cs ) {
				case 1: 
				
				case 2: 
				{
					#line 447 "rlscan.rl"
					scan_error() << "bad machine statement" << endl; }
				break;
				case 3: 
				
				case 4: 
				
				case 5: 
				{
					#line 448 "rlscan.rl"
					scan_error() << "bad include statement" << endl; }
				break;
				case 6: 
				
				case 7: 
				{
					#line 449 "rlscan.rl"
					scan_error() << "bad import statement" << endl; }
				break;
				case 8: 
				
				case 9: 
				{
					#line 450 "rlscan.rl"
					scan_error() << "bad write statement" << endl; }
				break;
			}
		}
		
		_out: {}
	}
	
	#line 596 "rlscan.rl"
	updateCol();
	
	/* Record the last token for use in controlling the scan of subsequent
	* tokens. */
	lastToken = type;
}

void Scanner::startSection( )
{
	parserExistsError = false;
	
	sectionLoc.fileName = fileName;
	sectionLoc.line = line;
	sectionLoc.col = column;
}

void Scanner::endSection( )
{
	/* Execute the eof actions for the section parser. */
	processToken( -1, 0, 0 );
	
	if ( sectionPass ) {
		InputItem *inputItem = new InputItem;
		inputItem->type = InputItem::EndSection;
		inputItem->loc.fileName = fileName;
		inputItem->loc.line = line;
		inputItem->loc.col = column;
		id.inputItems.append( inputItem );
		if ( section != 0 ) {
			inputItem->section = section;
			section->lastReference = inputItem;
		}
		
		if ( includeDepth == 0 ) {
			if ( id.machineSpec == 0 && id.machineName == 0 ) {
				/* The end section may include a newline on the end, so
				* we use the last line, which will count the newline. */
				InputItem *inputItem = new InputItem;
				inputItem->type = InputItem::HostData;
				inputItem->loc.fileName = fileName;
				inputItem->loc.line = line;
				inputItem->loc.col = column;
				id.inputItems.append( inputItem );
			}
		}
	}
	else {
		/* Close off the section with the parser. */
		if ( includeDepth == 0 && active() ) {
			InputLoc loc;
			loc.fileName = fileName;
			loc.line = line;
			loc.col = column;
			
			parser->token( loc, TK_EndSection, 0, 0 );
			
			id.curItem = id.curItem->next;
			
			if ( parser != 0 ) {
				id.curItem->pd = parser->pd;
				id.curItem->parser = parser;
			}
			
			id.checkLastRef( id.curItem );
		}
		
		if ( includeDepth == 0 ) {
			if ( id.machineSpec == 0 && id.machineName == 0 ) {
				id.curItem = id.curItem->next;
				id.checkLastRef( id.curItem );
			}
		}
	}
}

bool isAbsolutePath( const char *path )
{
	#ifdef _WIN32
	return isalpha( path[0] ) && path[1] == ':' && path[2] == '\\';
	#else
	return path[0] == '/';
	#endif
}

char **Scanner::makeIncludePathChecks( const char *thisFileName, 
const char *fileName, int fnlen )
{
	char **checks = 0;
	long nextCheck = 0;
	long length = 0;
	bool caseInsensitive = false;
	char *data = prepareLitString( InputLoc(), fileName, fnlen, 
	length, caseInsensitive );
	
	/* Absolute path? */
	if ( isAbsolutePath( data ) ) {
		checks = new char*[2];
		checks[nextCheck++] = data;
	}
	else {
		checks = new char*[2 + id.includePaths.length()];
		
		/* Search from the the location of the current file. */
		const char *lastSlash = strrchr( thisFileName, PATH_SEP );
		if ( lastSlash == 0 )
		checks[nextCheck++] = data;
		else {
			long givenPathLen = (lastSlash - thisFileName) + 1;
			long checklen = givenPathLen + length;
			char *check = new char[checklen+1];
			memcpy( check, thisFileName, givenPathLen );
			memcpy( check+givenPathLen, data, length );
			check[checklen] = 0;
			checks[nextCheck++] = check;
		}
		
		/* Search from the include paths given on the command line. */
		for ( ArgsVector::Iter incp = id.includePaths; incp.lte(); incp++ ) {
			long pathLen = strlen( *incp );
			long checkLen = pathLen + 1 + length;
			char *check = new char[checkLen+1];
			memcpy( check, *incp, pathLen );
			check[pathLen] = PATH_SEP;
			memcpy( check+pathLen+1, data, length );
			check[checkLen] = 0;
			checks[nextCheck++] = check;
		}
	}
	
	checks[nextCheck] = 0;
	return checks;
}

ifstream *Scanner::tryOpenInclude( char **pathChecks, long &found )
{
	char **check = pathChecks;
	ifstream *inFile = new ifstream;
	
	while ( *check != 0 ) {
		inFile->open( *check );
		if ( inFile->is_open() ) {
			found = check - pathChecks;
			return inFile;
		}
		
		/* 
		* 03/26/2011 jg:
		* Don't rely on sloppy runtime behaviour: reset the state of the stream explicitly.
		* If inFile->open() fails, which happens when include dirs are tested, the fail bit
		* is set by the runtime library. Currently the VS runtime library opens new files,
		* but when it comes to reading it refuses to work.
		*/
		inFile->clear();
		
		check += 1;
	}
	
	found = -1;
	delete inFile;
	return 0;
}


#line 763 "rlscan.rl"

static const int rlscan_start = 36;
static const int rlscan_first_final = 36;
static const int rlscan_error = 0;

static const int rlscan_en_inline_code = 50;
static const int rlscan_en_or_literal = 103;
static const int rlscan_en_ragel_re_literal = 105;
static const int rlscan_en_write_statement = 109;
static const int rlscan_en_parser_def = 112;
static const int rlscan_en_main = 36;

static const char _rlscan_nfa_targs[] = {
	0, 0
};

static const char _rlscan_nfa_offsets[] = {
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
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0
};

static const char _rlscan_nfa_push_actions[] = {
	0, 0
};

static const char _rlscan_nfa_pop_trans[] = {
	0, 0
};


#line 1 "--"
void Scanner::do_scan()
{
	int bufsize = 8;
	char *buf = new char[bufsize];
	int cs, act, have = 0;
	int top;
	
	/* The stack is two deep, one level for going into ragel defs from the main
	* machines which process outside code, and another for going into or literals
	* from either a ragel spec, or a regular expression. */
	int stack[2];
	int curly_count = 0;
	bool execute = true;
	bool singleLineSpec = false;
	InlineBlockType inlineBlockType = CurlyDelimited;
	
	line = 1;
	column = 1;
	lastnl = 0;
	
	/* Init the section parser and the character scanner. */
	init();
	
	{
		cs = (int)rlscan_start;
		top = 0;
		ts = 0;
		te = 0;
		act = 0;
	}
	
	#line 1 "--"
	/* Set up the start state. FIXME: After 5.20 is released the nocs write
	* init option should be used, the main machine eliminated and this statement moved
	* above the write init. */
	cs = rlscan_en_main;
	
	while ( execute ) {
		char *p = buf + have;
		int space = bufsize - have;
		
		if ( space == 0 ) {
			/* We filled up the buffer trying to scan a token. Grow it. */
			bufsize = bufsize * 2;
			char *newbuf = new char[bufsize];
			
			/* Recompute p and space. */
			p = newbuf + have;
			space = bufsize - have;
			
			/* Patch up pointers possibly in use. */
			if ( ts != 0 )
			ts = newbuf + ( ts - buf );
			te = newbuf + ( te - buf );
			
			/* Copy the new buffer in. */
			memcpy( newbuf, buf, have );
			delete[] buf;
			buf = newbuf;
		}
		
		input.read( p, space );
		int len = input.gcount();
		char *pe = p + len;
		
		/* If we see eof then append the eof var. */
		char *eof = 0;
		if ( len == 0 ) {
			eof = pe;
			execute = false;
		}
		
		
		{
			if ( p == pe )
			goto _test_eof;
			goto _resume;
			
			_again:
			switch ( cs ) {
				case 36: goto st36;
				case 37: goto st37;
				case 38: goto st38;
				case 1: goto st1;
				case 2: goto st2;
				case 39: goto st39;
				case 40: goto st40;
				case 41: goto st41;
				case 3: goto st3;
				case 4: goto st4;
				case 42: goto st42;
				case 5: goto st5;
				case 6: goto st6;
				case 7: goto st7;
				case 43: goto st43;
				case 44: goto st44;
				case 45: goto st45;
				case 46: goto st46;
				case 47: goto st47;
				case 48: goto st48;
				case 49: goto st49;
				case 50: goto st50;
				case 51: goto st51;
				case 52: goto st52;
				case 8: goto st8;
				case 9: goto st9;
				case 53: goto st53;
				case 54: goto st54;
				case 55: goto st55;
				case 10: goto st10;
				case 11: goto st11;
				case 56: goto st56;
				case 12: goto st12;
				case 13: goto st13;
				case 14: goto st14;
				case 57: goto st57;
				case 58: goto st58;
				case 15: goto st15;
				case 59: goto st59;
				case 60: goto st60;
				case 61: goto st61;
				case 62: goto st62;
				case 63: goto st63;
				case 64: goto st64;
				case 65: goto st65;
				case 66: goto st66;
				case 67: goto st67;
				case 68: goto st68;
				case 69: goto st69;
				case 70: goto st70;
				case 71: goto st71;
				case 72: goto st72;
				case 73: goto st73;
				case 74: goto st74;
				case 75: goto st75;
				case 76: goto st76;
				case 77: goto st77;
				case 78: goto st78;
				case 79: goto st79;
				case 80: goto st80;
				case 81: goto st81;
				case 82: goto st82;
				case 83: goto st83;
				case 84: goto st84;
				case 85: goto st85;
				case 86: goto st86;
				case 87: goto st87;
				case 88: goto st88;
				case 89: goto st89;
				case 90: goto st90;
				case 91: goto st91;
				case 92: goto st92;
				case 93: goto st93;
				case 94: goto st94;
				case 95: goto st95;
				case 96: goto st96;
				case 97: goto st97;
				case 98: goto st98;
				case 99: goto st99;
				case 100: goto st100;
				case 101: goto st101;
				case 102: goto st102;
				case 103: goto st103;
				case 104: goto st104;
				case 105: goto st105;
				case 106: goto st106;
				case 107: goto st107;
				case 108: goto st108;
				case 109: goto st109;
				case 0: goto st0;
				case 110: goto st110;
				case 111: goto st111;
				case 112: goto st112;
				case 113: goto st113;
				case 114: goto st114;
				case 16: goto st16;
				case 115: goto st115;
				case 17: goto st17;
				case 116: goto st116;
				case 18: goto st18;
				case 117: goto st117;
				case 118: goto st118;
				case 119: goto st119;
				case 19: goto st19;
				case 20: goto st20;
				case 120: goto st120;
				case 121: goto st121;
				case 122: goto st122;
				case 123: goto st123;
				case 124: goto st124;
				case 21: goto st21;
				case 125: goto st125;
				case 126: goto st126;
				case 22: goto st22;
				case 127: goto st127;
				case 128: goto st128;
				case 129: goto st129;
				case 23: goto st23;
				case 24: goto st24;
				case 25: goto st25;
				case 26: goto st26;
				case 27: goto st27;
				case 28: goto st28;
				case 29: goto st29;
				case 30: goto st30;
				case 31: goto st31;
				case 32: goto st32;
				case 33: goto st33;
				case 34: goto st34;
				case 130: goto st130;
				case 131: goto st131;
				case 132: goto st132;
				case 133: goto st133;
				case 134: goto st134;
				case 135: goto st135;
				case 136: goto st136;
				case 137: goto st137;
				case 138: goto st138;
				case 139: goto st139;
				case 140: goto st140;
				case 141: goto st141;
				case 142: goto st142;
				case 143: goto st143;
				case 144: goto st144;
				case 145: goto st145;
				case 146: goto st146;
				case 147: goto st147;
				case 148: goto st148;
				case 149: goto st149;
				case 150: goto st150;
				case 151: goto st151;
				case 152: goto st152;
				case 153: goto st153;
				case 154: goto st154;
				case 155: goto st155;
				case 156: goto st156;
				case 157: goto st157;
				case 158: goto st158;
				case 159: goto st159;
				case 160: goto st160;
				case 161: goto st161;
				case 162: goto st162;
				case 163: goto st163;
				case 164: goto st164;
				case 165: goto st165;
				case 166: goto st166;
				case 167: goto st167;
				case 168: goto st168;
				case 169: goto st169;
				case 170: goto st170;
				case 171: goto st171;
				case 172: goto st172;
				case 173: goto st173;
				case 174: goto st174;
				case 175: goto st175;
				case 176: goto st176;
				case 177: goto st177;
				case 178: goto st178;
				case 179: goto st179;
				case 180: goto st180;
				case 181: goto st181;
				case 182: goto st182;
				case 183: goto st183;
				case 184: goto st184;
				case 185: goto st185;
				case 186: goto st186;
				case 187: goto st187;
				case 188: goto st188;
				case 189: goto st189;
				case 190: goto st190;
				case 191: goto st191;
				case 192: goto st192;
				case 193: goto st193;
				case 194: goto st194;
				case 195: goto st195;
				case 196: goto st196;
				case 197: goto st197;
				case 198: goto st198;
				case 199: goto st199;
				case 200: goto st200;
				case 201: goto st201;
				case 202: goto st202;
				case 203: goto st203;
				case 204: goto st204;
				case 205: goto st205;
				case 206: goto st206;
				case 207: goto st207;
				case 208: goto st208;
				case 209: goto st209;
				case 210: goto st210;
				case 211: goto st211;
				case 212: goto st212;
				case 213: goto st213;
				case 214: goto st214;
				case 215: goto st215;
				case 216: goto st216;
				case 217: goto st217;
				case 218: goto st218;
				case 219: goto st219;
				case 220: goto st220;
				case 221: goto st221;
				case 222: goto st222;
				case 223: goto st223;
				case 224: goto st224;
				case 225: goto st225;
				case 226: goto st226;
				case 227: goto st227;
				case 228: goto st228;
				case 229: goto st229;
				case 230: goto st230;
				case 231: goto st231;
				case 232: goto st232;
				case 233: goto st233;
				case 234: goto st234;
				case 35: goto st35;
			}
			
			_resume:
			switch ( cs )
			{
				case 36:
				goto st_case_36;
				case 37:
				goto st_case_37;
				case 38:
				goto st_case_38;
				case 1:
				goto st_case_1;
				case 2:
				goto st_case_2;
				case 39:
				goto st_case_39;
				case 40:
				goto st_case_40;
				case 41:
				goto st_case_41;
				case 3:
				goto st_case_3;
				case 4:
				goto st_case_4;
				case 42:
				goto st_case_42;
				case 5:
				goto st_case_5;
				case 6:
				goto st_case_6;
				case 7:
				goto st_case_7;
				case 43:
				goto st_case_43;
				case 44:
				goto st_case_44;
				case 45:
				goto st_case_45;
				case 46:
				goto st_case_46;
				case 47:
				goto st_case_47;
				case 48:
				goto st_case_48;
				case 49:
				goto st_case_49;
				case 50:
				goto st_case_50;
				case 51:
				goto st_case_51;
				case 52:
				goto st_case_52;
				case 8:
				goto st_case_8;
				case 9:
				goto st_case_9;
				case 53:
				goto st_case_53;
				case 54:
				goto st_case_54;
				case 55:
				goto st_case_55;
				case 10:
				goto st_case_10;
				case 11:
				goto st_case_11;
				case 56:
				goto st_case_56;
				case 12:
				goto st_case_12;
				case 13:
				goto st_case_13;
				case 14:
				goto st_case_14;
				case 57:
				goto st_case_57;
				case 58:
				goto st_case_58;
				case 15:
				goto st_case_15;
				case 59:
				goto st_case_59;
				case 60:
				goto st_case_60;
				case 61:
				goto st_case_61;
				case 62:
				goto st_case_62;
				case 63:
				goto st_case_63;
				case 64:
				goto st_case_64;
				case 65:
				goto st_case_65;
				case 66:
				goto st_case_66;
				case 67:
				goto st_case_67;
				case 68:
				goto st_case_68;
				case 69:
				goto st_case_69;
				case 70:
				goto st_case_70;
				case 71:
				goto st_case_71;
				case 72:
				goto st_case_72;
				case 73:
				goto st_case_73;
				case 74:
				goto st_case_74;
				case 75:
				goto st_case_75;
				case 76:
				goto st_case_76;
				case 77:
				goto st_case_77;
				case 78:
				goto st_case_78;
				case 79:
				goto st_case_79;
				case 80:
				goto st_case_80;
				case 81:
				goto st_case_81;
				case 82:
				goto st_case_82;
				case 83:
				goto st_case_83;
				case 84:
				goto st_case_84;
				case 85:
				goto st_case_85;
				case 86:
				goto st_case_86;
				case 87:
				goto st_case_87;
				case 88:
				goto st_case_88;
				case 89:
				goto st_case_89;
				case 90:
				goto st_case_90;
				case 91:
				goto st_case_91;
				case 92:
				goto st_case_92;
				case 93:
				goto st_case_93;
				case 94:
				goto st_case_94;
				case 95:
				goto st_case_95;
				case 96:
				goto st_case_96;
				case 97:
				goto st_case_97;
				case 98:
				goto st_case_98;
				case 99:
				goto st_case_99;
				case 100:
				goto st_case_100;
				case 101:
				goto st_case_101;
				case 102:
				goto st_case_102;
				case 103:
				goto st_case_103;
				case 104:
				goto st_case_104;
				case 105:
				goto st_case_105;
				case 106:
				goto st_case_106;
				case 107:
				goto st_case_107;
				case 108:
				goto st_case_108;
				case 109:
				goto st_case_109;
				case 0:
				goto st_case_0;
				case 110:
				goto st_case_110;
				case 111:
				goto st_case_111;
				case 112:
				goto st_case_112;
				case 113:
				goto st_case_113;
				case 114:
				goto st_case_114;
				case 16:
				goto st_case_16;
				case 115:
				goto st_case_115;
				case 17:
				goto st_case_17;
				case 116:
				goto st_case_116;
				case 18:
				goto st_case_18;
				case 117:
				goto st_case_117;
				case 118:
				goto st_case_118;
				case 119:
				goto st_case_119;
				case 19:
				goto st_case_19;
				case 20:
				goto st_case_20;
				case 120:
				goto st_case_120;
				case 121:
				goto st_case_121;
				case 122:
				goto st_case_122;
				case 123:
				goto st_case_123;
				case 124:
				goto st_case_124;
				case 21:
				goto st_case_21;
				case 125:
				goto st_case_125;
				case 126:
				goto st_case_126;
				case 22:
				goto st_case_22;
				case 127:
				goto st_case_127;
				case 128:
				goto st_case_128;
				case 129:
				goto st_case_129;
				case 23:
				goto st_case_23;
				case 24:
				goto st_case_24;
				case 25:
				goto st_case_25;
				case 26:
				goto st_case_26;
				case 27:
				goto st_case_27;
				case 28:
				goto st_case_28;
				case 29:
				goto st_case_29;
				case 30:
				goto st_case_30;
				case 31:
				goto st_case_31;
				case 32:
				goto st_case_32;
				case 33:
				goto st_case_33;
				case 34:
				goto st_case_34;
				case 130:
				goto st_case_130;
				case 131:
				goto st_case_131;
				case 132:
				goto st_case_132;
				case 133:
				goto st_case_133;
				case 134:
				goto st_case_134;
				case 135:
				goto st_case_135;
				case 136:
				goto st_case_136;
				case 137:
				goto st_case_137;
				case 138:
				goto st_case_138;
				case 139:
				goto st_case_139;
				case 140:
				goto st_case_140;
				case 141:
				goto st_case_141;
				case 142:
				goto st_case_142;
				case 143:
				goto st_case_143;
				case 144:
				goto st_case_144;
				case 145:
				goto st_case_145;
				case 146:
				goto st_case_146;
				case 147:
				goto st_case_147;
				case 148:
				goto st_case_148;
				case 149:
				goto st_case_149;
				case 150:
				goto st_case_150;
				case 151:
				goto st_case_151;
				case 152:
				goto st_case_152;
				case 153:
				goto st_case_153;
				case 154:
				goto st_case_154;
				case 155:
				goto st_case_155;
				case 156:
				goto st_case_156;
				case 157:
				goto st_case_157;
				case 158:
				goto st_case_158;
				case 159:
				goto st_case_159;
				case 160:
				goto st_case_160;
				case 161:
				goto st_case_161;
				case 162:
				goto st_case_162;
				case 163:
				goto st_case_163;
				case 164:
				goto st_case_164;
				case 165:
				goto st_case_165;
				case 166:
				goto st_case_166;
				case 167:
				goto st_case_167;
				case 168:
				goto st_case_168;
				case 169:
				goto st_case_169;
				case 170:
				goto st_case_170;
				case 171:
				goto st_case_171;
				case 172:
				goto st_case_172;
				case 173:
				goto st_case_173;
				case 174:
				goto st_case_174;
				case 175:
				goto st_case_175;
				case 176:
				goto st_case_176;
				case 177:
				goto st_case_177;
				case 178:
				goto st_case_178;
				case 179:
				goto st_case_179;
				case 180:
				goto st_case_180;
				case 181:
				goto st_case_181;
				case 182:
				goto st_case_182;
				case 183:
				goto st_case_183;
				case 184:
				goto st_case_184;
				case 185:
				goto st_case_185;
				case 186:
				goto st_case_186;
				case 187:
				goto st_case_187;
				case 188:
				goto st_case_188;
				case 189:
				goto st_case_189;
				case 190:
				goto st_case_190;
				case 191:
				goto st_case_191;
				case 192:
				goto st_case_192;
				case 193:
				goto st_case_193;
				case 194:
				goto st_case_194;
				case 195:
				goto st_case_195;
				case 196:
				goto st_case_196;
				case 197:
				goto st_case_197;
				case 198:
				goto st_case_198;
				case 199:
				goto st_case_199;
				case 200:
				goto st_case_200;
				case 201:
				goto st_case_201;
				case 202:
				goto st_case_202;
				case 203:
				goto st_case_203;
				case 204:
				goto st_case_204;
				case 205:
				goto st_case_205;
				case 206:
				goto st_case_206;
				case 207:
				goto st_case_207;
				case 208:
				goto st_case_208;
				case 209:
				goto st_case_209;
				case 210:
				goto st_case_210;
				case 211:
				goto st_case_211;
				case 212:
				goto st_case_212;
				case 213:
				goto st_case_213;
				case 214:
				goto st_case_214;
				case 215:
				goto st_case_215;
				case 216:
				goto st_case_216;
				case 217:
				goto st_case_217;
				case 218:
				goto st_case_218;
				case 219:
				goto st_case_219;
				case 220:
				goto st_case_220;
				case 221:
				goto st_case_221;
				case 222:
				goto st_case_222;
				case 223:
				goto st_case_223;
				case 224:
				goto st_case_224;
				case 225:
				goto st_case_225;
				case 226:
				goto st_case_226;
				case 227:
				goto st_case_227;
				case 228:
				goto st_case_228;
				case 229:
				goto st_case_229;
				case 230:
				goto st_case_230;
				case 231:
				goto st_case_231;
				case 232:
				goto st_case_232;
				case 233:
				goto st_case_233;
				case 234:
				goto st_case_234;
				case 35:
				goto st_case_35;
			}
			goto st_out;
			ctr18:
			{
				#line 1193 "rlscan.rl"
				{p = ((te))-1;
					{
						#line 1193 "rlscan.rl"
						pass( *ts, 0, 0 ); }}}
			
			goto st36;
			ctr4:
			{
				#line 1177 "rlscan.rl"
				{te = p+1;{
						#line 1177 "rlscan.rl"
						pass( IMP_Literal, ts, te ); }}}
			
			goto st36;
			ctr17:
			{
				#line 1176 "rlscan.rl"
				{te = p+1;{
						#line 1176 "rlscan.rl"
						pass(); }}}
			
			goto st36;
			ctr20:
			{
				#line 769 "rlscan.rl"
				lastnl = p; 
				column = 0;
				line++;
			}
			{
				#line 1176 "rlscan.rl"
				{te = p+1;{
						#line 1176 "rlscan.rl"
						pass(); }}}
			
			goto st36;
			ctr94:
			{
				#line 1193 "rlscan.rl"
				{te = p+1;{
						#line 1193 "rlscan.rl"
						pass( *ts, 0, 0 ); }}}
			
			goto st36;
			ctr95:
			{
				#line 1 "-"
				{te = p+1;}}
			
			goto st36;
			ctr106:
			{
				#line 1191 "rlscan.rl"
				{te = p;p = p - 1;{
						#line 1191 "rlscan.rl"
						pass(); }}}
			
			goto st36;
			ctr115:
			{
				#line 1193 "rlscan.rl"
				{te = p;p = p - 1;{
						#line 1193 "rlscan.rl"
						pass( *ts, 0, 0 ); }}}
			
			goto st36;
			ctr112:
			{
				#line 1185 "rlscan.rl"
				{te = p;p = p - 1;{
						#line 1185 "rlscan.rl"
						updateCol();
						singleLineSpec = true;
						startSection();
						{stack[top] = 36; top+= 1; goto st112;}}}}
			
			goto st36;
			ctr113:
			{
				#line 1179 "rlscan.rl"
				{te = p+1;{
						#line 1179 "rlscan.rl"
						updateCol();
						singleLineSpec = false;
						startSection();
						{stack[top] = 36; top+= 1; goto st112;}}}}
			
			goto st36;
			ctr117:
			{
				#line 1175 "rlscan.rl"
				{te = p;p = p - 1;{
						#line 1175 "rlscan.rl"
						pass( IMP_UInt, ts, te ); }}}
			
			goto st36;
			ctr119:
			{
				#line 1 "NONE"
				{switch( act ) {
						case 154:  {
							p = ((te))-1;
							{
								#line 1173 "rlscan.rl"
								pass( IMP_Define, 0, 0 ); } break; }
						case 155:  {
							p = ((te))-1;
							{
								#line 1174 "rlscan.rl"
								pass( IMP_Word, ts, te ); } break; }
					}}
			}
			
			goto st36;
			ctr129:
			{
				#line 1174 "rlscan.rl"
				{te = p;p = p - 1;{
						#line 1174 "rlscan.rl"
						pass( IMP_Word, ts, te ); }}}
			
			goto st36;
			st36:
			{
				#line 1 "NONE"
				{ts = 0;}}
			p+= 1;
			if ( p == pe )
			goto _test_eof36;
			st_case_36:
			{
				#line 1 "NONE"
				{ts = p;}}
			switch( ( (*( p))) ) {
				case 0: {
					goto ctr95;
				}
				case 9: {
					goto st37;
				}
				case 10: {
					goto ctr97;
				}
				case 32: {
					goto st37;
				}
				case 34: {
					goto ctr98;
				}
				case 37: {
					goto st39;
				}
				case 39: {
					goto ctr100;
				}
				case 47: {
					goto ctr101;
				}
				case 95: {
					goto ctr103;
				}
				case 100: {
					goto st45;
				}
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto st43;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr94;
			}
			ctr97:
			{
				#line 769 "rlscan.rl"
				lastnl = p; 
				column = 0;
				line++;
			}
			
			goto st37;
			st37:
			p+= 1;
			if ( p == pe )
			goto _test_eof37;
			st_case_37:
			switch( ( (*( p))) ) {
				case 9: {
					goto st37;
				}
				case 10: {
					goto ctr97;
				}
				case 32: {
					goto st37;
				}
			}
			{
				goto ctr106;
			}
			ctr98:
			{
				#line 1 "NONE"
				{te = p+1;}}
			
			goto st38;
			st38:
			p+= 1;
			if ( p == pe )
			goto _test_eof38;
			st_case_38:
			switch( ( (*( p))) ) {
				case 10: {
					goto ctr3;
				}
				case 34: {
					goto ctr4;
				}
				case 92: {
					goto st2;
				}
			}
			{
				goto st1;
			}
			ctr3:
			{
				#line 769 "rlscan.rl"
				lastnl = p; 
				column = 0;
				line++;
			}
			
			goto st1;
			st1:
			p+= 1;
			if ( p == pe )
			goto _test_eof1;
			st_case_1:
			switch( ( (*( p))) ) {
				case 10: {
					goto ctr3;
				}
				case 34: {
					goto ctr4;
				}
				case 92: {
					goto st2;
				}
			}
			{
				goto st1;
			}
			st2:
			p+= 1;
			if ( p == pe )
			goto _test_eof2;
			st_case_2:
			if ( ( (*( p))) == 10 ) {
				goto ctr3;
			}
			{
				goto st1;
			}
			st39:
			p+= 1;
			if ( p == pe )
			goto _test_eof39;
			st_case_39:
			if ( ( (*( p))) == 37 ) {
				goto st40;
			}
			{
				goto ctr115;
			}
			st40:
			p+= 1;
			if ( p == pe )
			goto _test_eof40;
			st_case_40:
			if ( ( (*( p))) == 123 ) {
				goto ctr113;
			}
			{
				goto ctr112;
			}
			ctr100:
			{
				#line 1 "NONE"
				{te = p+1;}}
			
			goto st41;
			st41:
			p+= 1;
			if ( p == pe )
			goto _test_eof41;
			st_case_41:
			switch( ( (*( p))) ) {
				case 10: {
					goto ctr9;
				}
				case 39: {
					goto ctr4;
				}
				case 92: {
					goto st4;
				}
			}
			{
				goto st3;
			}
			ctr9:
			{
				#line 769 "rlscan.rl"
				lastnl = p; 
				column = 0;
				line++;
			}
			
			goto st3;
			st3:
			p+= 1;
			if ( p == pe )
			goto _test_eof3;
			st_case_3:
			switch( ( (*( p))) ) {
				case 10: {
					goto ctr9;
				}
				case 39: {
					goto ctr4;
				}
				case 92: {
					goto st4;
				}
			}
			{
				goto st3;
			}
			st4:
			p+= 1;
			if ( p == pe )
			goto _test_eof4;
			st_case_4:
			if ( ( (*( p))) == 10 ) {
				goto ctr9;
			}
			{
				goto st3;
			}
			ctr101:
			{
				#line 1 "NONE"
				{te = p+1;}}
			
			goto st42;
			st42:
			p+= 1;
			if ( p == pe )
			goto _test_eof42;
			st_case_42:
			switch( ( (*( p))) ) {
				case 42: {
					goto st5;
				}
				case 47: {
					goto st7;
				}
			}
			{
				goto ctr115;
			}
			ctr14:
			{
				#line 769 "rlscan.rl"
				lastnl = p; 
				column = 0;
				line++;
			}
			
			goto st5;
			st5:
			p+= 1;
			if ( p == pe )
			goto _test_eof5;
			st_case_5:
			switch( ( (*( p))) ) {
				case 10: {
					goto ctr14;
				}
				case 42: {
					goto st6;
				}
			}
			{
				goto st5;
			}
			st6:
			p+= 1;
			if ( p == pe )
			goto _test_eof6;
			st_case_6:
			switch( ( (*( p))) ) {
				case 10: {
					goto ctr14;
				}
				case 42: {
					goto st6;
				}
				case 47: {
					goto ctr17;
				}
			}
			{
				goto st5;
			}
			st7:
			p+= 1;
			if ( p == pe )
			goto _test_eof7;
			st_case_7:
			if ( ( (*( p))) == 10 ) {
				goto ctr20;
			}
			{
				goto st7;
			}
			st43:
			p+= 1;
			if ( p == pe )
			goto _test_eof43;
			st_case_43:
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto st43;
			}
			{
				goto ctr117;
			}
			ctr103:
			{
				#line 1 "NONE"
				{te = p+1;}}
			{
				#line 1174 "rlscan.rl"
				{act = 155;}}
			
			goto st44;
			ctr130:
			{
				#line 1 "NONE"
				{te = p+1;}}
			{
				#line 1173 "rlscan.rl"
				{act = 154;}}
			
			goto st44;
			st44:
			p+= 1;
			if ( p == pe )
			goto _test_eof44;
			st_case_44:
			if ( ( (*( p))) == 95 ) {
				goto ctr103;
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto ctr103;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr119;
			}
			st45:
			p+= 1;
			if ( p == pe )
			goto _test_eof45;
			st_case_45:
			switch( ( (*( p))) ) {
				case 95: {
					goto ctr103;
				}
				case 101: {
					goto st46;
				}
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto ctr103;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr129;
			}
			st46:
			p+= 1;
			if ( p == pe )
			goto _test_eof46;
			st_case_46:
			switch( ( (*( p))) ) {
				case 95: {
					goto ctr103;
				}
				case 102: {
					goto st47;
				}
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto ctr103;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr129;
			}
			st47:
			p+= 1;
			if ( p == pe )
			goto _test_eof47;
			st_case_47:
			switch( ( (*( p))) ) {
				case 95: {
					goto ctr103;
				}
				case 105: {
					goto st48;
				}
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto ctr103;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr129;
			}
			st48:
			p+= 1;
			if ( p == pe )
			goto _test_eof48;
			st_case_48:
			switch( ( (*( p))) ) {
				case 95: {
					goto ctr103;
				}
				case 110: {
					goto st49;
				}
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto ctr103;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr129;
			}
			st49:
			p+= 1;
			if ( p == pe )
			goto _test_eof49;
			st_case_49:
			switch( ( (*( p))) ) {
				case 95: {
					goto ctr103;
				}
				case 101: {
					goto ctr130;
				}
			}
			if ( ( (*( p))) < 65 ) {
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto ctr103;
				}
			} else if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr103;
				}
			} else {
				goto ctr103;
			}
			{
				goto ctr129;
			}
			ctr39:
			{
				#line 920 "rlscan.rl"
				{p = ((te))-1;
					{
						#line 920 "rlscan.rl"
						token( IL_Symbol, ts, te ); }}}
			
			goto st50;
			ctr25:
			{
				#line 857 "rlscan.rl"
				{te = p+1;{
						#line 857 "rlscan.rl"
						token( IL_Literal, ts, te ); }}}
			
			goto st50;
			ctr38:
			{
				#line 864 "rlscan.rl"
				{te = p+1;{
						#line 864 "rlscan.rl"
						token( IL_Comment, ts, te ); }}}
			
			goto st50;
			ctr41:
			{
				#line 769 "rlscan.rl"
				lastnl = p; 
				column = 0;
				line++;
			}
			{
				#line 864 "rlscan.rl"
				{te = p+1;{
						#line 864 "rlscan.rl"
						token( IL_Comment, ts, te ); }}}
			
			goto st50;
			ctr43:
			{
				#line 853 "rlscan.rl"
				{p = ((te))-1;
					{
						#line 853 "rlscan.rl"
						token( TK_UInt, ts, te ); }}}
			
			goto st50;
			ctr131:
			{
				#line 920 "rlscan.rl"
				{te = p+1;{
						#line 920 "rlscan.rl"
						token( IL_Symbol, ts, te ); }}}
			
			goto st50;
			ctr132:
			{
				#line 915 "rlscan.rl"
				{te = p+1;{
						#line 915 "rlscan.rl"
						scan_error() << "unterminated code block" << endl;
					}}}
			
			goto st50;
			ctr138:
			{
				#line 895 "rlscan.rl"
				{te = p+1;{
						#line 895 "rlscan.rl"
						token( *ts, ts, te ); }}}
			
			goto st50;
			ctr139:
			{
				#line 890 "rlscan.rl"
				{te = p+1;{
						#line 890 "rlscan.rl"
						whitespaceOn = true;
						token( *ts, ts, te );
					}}}
			
			goto st50;
			ctr144:
			{
				#line 874 "rlscan.rl"
				{te = p+1;{
						#line 874 "rlscan.rl"
						whitespaceOn = true;
						token( *ts, ts, te );
						if ( inlineBlockType == SemiTerminated )
						{top -= 1;cs = stack[top];goto _again;}
					}}}
			
			goto st50;
			ctr147:
			{
				#line 897 "rlscan.rl"
				{te = p+1;{
						#line 897 "rlscan.rl"
						token( IL_Symbol, ts, te );
						curly_count += 1; 
					}}}
			
			goto st50;
			ctr148:
			{
				#line 902 "rlscan.rl"
				{te = p+1;{
						#line 902 "rlscan.rl"
						if ( --curly_count == 0 && inlineBlockType == CurlyDelimited ) {
							/* Inline code block ends. */
							token( '}' );
						{top -= 1;cs = stack[top];goto _again;}
					}
					else {
						/* Either a semi terminated inline block or only the closing
						* brace of some inner scope, not the block's closing brace. */
						token( IL_Symbol, ts, te );
					}
				}}}
		
		goto st50;
		ctr150:
		{
			#line 859 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 859 "rlscan.rl"
					if ( whitespaceOn ) 
					token( IL_WhiteSpace, ts, te );
				}}}
		
		goto st50;
		ctr165:
		{
			#line 920 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 920 "rlscan.rl"
					token( IL_Symbol, ts, te ); }}}
		
		goto st50;
		ctr156:
		{
			#line 881 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 881 "rlscan.rl"
					if ( parser != 0 && parser->parseSubstitutions )
					token( TK_SubstRef, ts+1, te );
					else {
						token( IL_Symbol, ts, ts+1 );
						{p = (( ts+1))-1;}
						
					}
				}}}
		
		goto st50;
		ctr162:
		{
			#line 853 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 853 "rlscan.rl"
					token( TK_UInt, ts, te ); }}}
		
		goto st50;
		ctr164:
		{
			#line 854 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 854 "rlscan.rl"
					token( TK_Hex, ts, te ); }}}
		
		goto st50;
		ctr166:
		{
			#line 866 "rlscan.rl"
			{te = p+1;{
					#line 866 "rlscan.rl"
					token( TK_NameSep, ts, te ); }}}
		
		goto st50;
		ctr168:
		{
			#line 1 "NONE"
			{switch( act ) {
					case 1:  {
						p = ((te))-1;
						{
							#line 803 "rlscan.rl"
							token( KW_PChar ); } break; }
					case 3:  {
						p = ((te))-1;
						{
							#line 805 "rlscan.rl"
							token( KW_CurState ); } break; }
					case 4:  {
						p = ((te))-1;
						{
							#line 806 "rlscan.rl"
							token( KW_TargState ); } break; }
					case 5:  {
						p = ((te))-1;
						{
							#line 807 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Entry );
						} break; }
					case 6:  {
						p = ((te))-1;
						{
							#line 813 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Hold );
						} break; }
					case 7:  {
						p = ((te))-1;
						{
							#line 817 "rlscan.rl"
							token( KW_Exec, 0, 0 ); } break; }
					case 8:  {
						p = ((te))-1;
						{
							#line 818 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Goto );
						} break; }
					case 9:  {
						p = ((te))-1;
						{
							#line 822 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Next );
						} break; }
					case 10:  {
						p = ((te))-1;
						{
							#line 826 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Call );
						} break; }
					case 11:  {
						p = ((te))-1;
						{
							#line 830 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Ret );
						} break; }
					case 12:  {
						p = ((te))-1;
						{
							#line 834 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Break );
						} break; }
					case 13:  {
						p = ((te))-1;
						{
							#line 838 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Ncall );
						} break; }
					case 14:  {
						p = ((te))-1;
						{
							#line 842 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Nret );
						} break; }
					case 15:  {
						p = ((te))-1;
						{
							#line 846 "rlscan.rl"
							whitespaceOn = false; 
							token( KW_Nbreak );
						} break; }
					case 16:  {
						p = ((te))-1;
						{
							#line 851 "rlscan.rl"
							token( TK_Word, ts, te ); } break; }
				}}
		}
		
		goto st50;
		ctr264:
		{
			#line 851 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 851 "rlscan.rl"
					token( TK_Word, ts, te ); }}}
		
		goto st50;
		ctr189:
		{
			#line 804 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 804 "rlscan.rl"
					token( KW_Char ); }}}
		
		goto st50;
		st50:
		{
			#line 1 "NONE"
			{ts = 0;}}
		p+= 1;
		if ( p == pe )
		goto _test_eof50;
		st_case_50:
		{
			#line 1 "NONE"
			{ts = p;}}
		switch( ( (*( p))) ) {
			case 0: {
				goto ctr132;
			}
			case 9: {
				goto st51;
			}
			case 10: {
				goto ctr134;
			}
			case 32: {
				goto st51;
			}
			case 34: {
				goto ctr135;
			}
			case 36: {
				goto st53;
			}
			case 39: {
				goto ctr137;
			}
			case 40: {
				goto ctr138;
			}
			case 44: {
				goto ctr138;
			}
			case 47: {
				goto ctr140;
			}
			case 48: {
				goto ctr141;
			}
			case 58: {
				goto st60;
			}
			case 59: {
				goto ctr144;
			}
			case 95: {
				goto ctr145;
			}
			case 102: {
				goto st62;
			}
			case 123: {
				goto ctr147;
			}
			case 125: {
				goto ctr148;
			}
		}
		if ( ( (*( p))) < 49 ) {
			if ( 41 <= ( (*( p))) && ( (*( p))) <= 42 ) {
				goto ctr139;
			}
		} else if ( ( (*( p))) > 57 ) {
			if ( ( (*( p))) > 90 ) {
				if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
					goto ctr145;
				}
			} else if ( ( (*( p))) >= 65 ) {
				goto ctr145;
			}
		} else {
			goto st58;
		}
		{
			goto ctr131;
		}
		ctr134:
		{
			#line 769 "rlscan.rl"
			lastnl = p; 
			column = 0;
			line++;
		}
		
		goto st51;
		st51:
		p+= 1;
		if ( p == pe )
		goto _test_eof51;
		st_case_51:
		switch( ( (*( p))) ) {
			case 9: {
				goto st51;
			}
			case 10: {
				goto ctr134;
			}
			case 32: {
				goto st51;
			}
		}
		{
			goto ctr150;
		}
		ctr135:
		{
			#line 1 "NONE"
			{te = p+1;}}
		
		goto st52;
		st52:
		p+= 1;
		if ( p == pe )
		goto _test_eof52;
		st_case_52:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr24;
			}
			case 34: {
				goto ctr25;
			}
			case 92: {
				goto st9;
			}
		}
		{
			goto st8;
		}
		ctr24:
		{
			#line 769 "rlscan.rl"
			lastnl = p; 
			column = 0;
			line++;
		}
		
		goto st8;
		st8:
		p+= 1;
		if ( p == pe )
		goto _test_eof8;
		st_case_8:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr24;
			}
			case 34: {
				goto ctr25;
			}
			case 92: {
				goto st9;
			}
		}
		{
			goto st8;
		}
		st9:
		p+= 1;
		if ( p == pe )
		goto _test_eof9;
		st_case_9:
		if ( ( (*( p))) == 10 ) {
			goto ctr24;
		}
		{
			goto st8;
		}
		st53:
		p+= 1;
		if ( p == pe )
		goto _test_eof53;
		st_case_53:
		if ( ( (*( p))) == 95 ) {
			goto st54;
		}
		if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto st54;
			}
		} else if ( ( (*( p))) >= 65 ) {
			goto st54;
		}
		{
			goto ctr165;
		}
		st54:
		p+= 1;
		if ( p == pe )
		goto _test_eof54;
		st_case_54:
		if ( ( (*( p))) == 95 ) {
			goto st54;
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto st54;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto st54;
			}
		} else {
			goto st54;
		}
		{
			goto ctr156;
		}
		ctr137:
		{
			#line 1 "NONE"
			{te = p+1;}}
		
		goto st55;
		st55:
		p+= 1;
		if ( p == pe )
		goto _test_eof55;
		st_case_55:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr30;
			}
			case 39: {
				goto ctr25;
			}
			case 92: {
				goto st11;
			}
		}
		{
			goto st10;
		}
		ctr30:
		{
			#line 769 "rlscan.rl"
			lastnl = p; 
			column = 0;
			line++;
		}
		
		goto st10;
		st10:
		p+= 1;
		if ( p == pe )
		goto _test_eof10;
		st_case_10:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr30;
			}
			case 39: {
				goto ctr25;
			}
			case 92: {
				goto st11;
			}
		}
		{
			goto st10;
		}
		st11:
		p+= 1;
		if ( p == pe )
		goto _test_eof11;
		st_case_11:
		if ( ( (*( p))) == 10 ) {
			goto ctr30;
		}
		{
			goto st10;
		}
		ctr140:
		{
			#line 1 "NONE"
			{te = p+1;}}
		
		goto st56;
		st56:
		p+= 1;
		if ( p == pe )
		goto _test_eof56;
		st_case_56:
		switch( ( (*( p))) ) {
			case 42: {
				goto st12;
			}
			case 47: {
				goto st14;
			}
		}
		{
			goto ctr165;
		}
		ctr35:
		{
			#line 769 "rlscan.rl"
			lastnl = p; 
			column = 0;
			line++;
		}
		
		goto st12;
		st12:
		p+= 1;
		if ( p == pe )
		goto _test_eof12;
		st_case_12:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr35;
			}
			case 42: {
				goto st13;
			}
		}
		{
			goto st12;
		}
		st13:
		p+= 1;
		if ( p == pe )
		goto _test_eof13;
		st_case_13:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr35;
			}
			case 42: {
				goto st13;
			}
			case 47: {
				goto ctr38;
			}
		}
		{
			goto st12;
		}
		st14:
		p+= 1;
		if ( p == pe )
		goto _test_eof14;
		st_case_14:
		if ( ( (*( p))) == 10 ) {
			goto ctr41;
		}
		{
			goto st14;
		}
		ctr141:
		{
			#line 1 "NONE"
			{te = p+1;}}
		
		goto st57;
		st57:
		p+= 1;
		if ( p == pe )
		goto _test_eof57;
		st_case_57:
		if ( ( (*( p))) == 120 ) {
			goto st15;
		}
		if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
			goto st58;
		}
		{
			goto ctr162;
		}
		st58:
		p+= 1;
		if ( p == pe )
		goto _test_eof58;
		st_case_58:
		if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
			goto st58;
		}
		{
			goto ctr162;
		}
		st15:
		p+= 1;
		if ( p == pe )
		goto _test_eof15;
		st_case_15:
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto st59;
			}
		} else if ( ( (*( p))) > 70 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 102 ) {
				goto st59;
			}
		} else {
			goto st59;
		}
		{
			goto ctr43;
		}
		st59:
		p+= 1;
		if ( p == pe )
		goto _test_eof59;
		st_case_59:
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto st59;
			}
		} else if ( ( (*( p))) > 70 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 102 ) {
				goto st59;
			}
		} else {
			goto st59;
		}
		{
			goto ctr164;
		}
		st60:
		p+= 1;
		if ( p == pe )
		goto _test_eof60;
		st_case_60:
		if ( ( (*( p))) == 58 ) {
			goto ctr166;
		}
		{
			goto ctr165;
		}
		ctr145:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 851 "rlscan.rl"
			{act = 16;}}
		
		goto st61;
		ctr187:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 834 "rlscan.rl"
			{act = 12;}}
		
		goto st61;
		ctr195:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 826 "rlscan.rl"
			{act = 10;}}
		
		goto st61;
		ctr199:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 805 "rlscan.rl"
			{act = 3;}}
		
		goto st61;
		ctr208:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 807 "rlscan.rl"
			{act = 5;}}
		
		goto st61;
		ctr212:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 817 "rlscan.rl"
			{act = 7;}}
		
		goto st61;
		ctr218:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 818 "rlscan.rl"
			{act = 8;}}
		
		goto st61;
		ctr224:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 813 "rlscan.rl"
			{act = 6;}}
		
		goto st61;
		ctr237:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 846 "rlscan.rl"
			{act = 15;}}
		
		goto st61;
		ctr243:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 838 "rlscan.rl"
			{act = 13;}}
		
		goto st61;
		ctr247:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 822 "rlscan.rl"
			{act = 9;}}
		
		goto st61;
		ctr251:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 842 "rlscan.rl"
			{act = 14;}}
		
		goto st61;
		ctr253:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 803 "rlscan.rl"
			{act = 1;}}
		
		goto st61;
		ctr257:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 830 "rlscan.rl"
			{act = 11;}}
		
		goto st61;
		ctr265:
		{
			#line 1 "NONE"
			{te = p+1;}}
		{
			#line 806 "rlscan.rl"
			{act = 4;}}
		
		goto st61;
		st61:
		p+= 1;
		if ( p == pe )
		goto _test_eof61;
		st_case_61:
		if ( ( (*( p))) == 95 ) {
			goto ctr145;
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr168;
		}
		st62:
		p+= 1;
		if ( p == pe )
		goto _test_eof62;
		st_case_62:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 98: {
				goto st63;
			}
			case 99: {
				goto st67;
			}
			case 101: {
				goto st72;
			}
			case 103: {
				goto st78;
			}
			case 104: {
				goto st81;
			}
			case 110: {
				goto st84;
			}
			case 112: {
				goto st96;
			}
			case 114: {
				goto st97;
			}
			case 116: {
				goto st99;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st63:
		p+= 1;
		if ( p == pe )
		goto _test_eof63;
		st_case_63:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 114: {
				goto st64;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st64:
		p+= 1;
		if ( p == pe )
		goto _test_eof64;
		st_case_64:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 101: {
				goto st65;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st65:
		p+= 1;
		if ( p == pe )
		goto _test_eof65;
		st_case_65:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 97: {
				goto st66;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st66:
		p+= 1;
		if ( p == pe )
		goto _test_eof66;
		st_case_66:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 107: {
				goto ctr187;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st67:
		p+= 1;
		if ( p == pe )
		goto _test_eof67;
		st_case_67:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 97: {
				goto st68;
			}
			case 117: {
				goto st70;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr189;
		}
		st68:
		p+= 1;
		if ( p == pe )
		goto _test_eof68;
		st_case_68:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 108: {
				goto st69;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st69:
		p+= 1;
		if ( p == pe )
		goto _test_eof69;
		st_case_69:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 108: {
				goto ctr195;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st70:
		p+= 1;
		if ( p == pe )
		goto _test_eof70;
		st_case_70:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 114: {
				goto st71;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st71:
		p+= 1;
		if ( p == pe )
		goto _test_eof71;
		st_case_71:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 115: {
				goto ctr199;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st72:
		p+= 1;
		if ( p == pe )
		goto _test_eof72;
		st_case_72:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 110: {
				goto st73;
			}
			case 120: {
				goto st76;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st73:
		p+= 1;
		if ( p == pe )
		goto _test_eof73;
		st_case_73:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 116: {
				goto st74;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st74:
		p+= 1;
		if ( p == pe )
		goto _test_eof74;
		st_case_74:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 114: {
				goto st75;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st75:
		p+= 1;
		if ( p == pe )
		goto _test_eof75;
		st_case_75:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 121: {
				goto ctr208;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st76:
		p+= 1;
		if ( p == pe )
		goto _test_eof76;
		st_case_76:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 101: {
				goto st77;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st77:
		p+= 1;
		if ( p == pe )
		goto _test_eof77;
		st_case_77:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 99: {
				goto ctr212;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st78:
		p+= 1;
		if ( p == pe )
		goto _test_eof78;
		st_case_78:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 111: {
				goto st79;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st79:
		p+= 1;
		if ( p == pe )
		goto _test_eof79;
		st_case_79:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 116: {
				goto st80;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st80:
		p+= 1;
		if ( p == pe )
		goto _test_eof80;
		st_case_80:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 111: {
				goto ctr218;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st81:
		p+= 1;
		if ( p == pe )
		goto _test_eof81;
		st_case_81:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 111: {
				goto st82;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st82:
		p+= 1;
		if ( p == pe )
		goto _test_eof82;
		st_case_82:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 108: {
				goto st83;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st83:
		p+= 1;
		if ( p == pe )
		goto _test_eof83;
		st_case_83:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 100: {
				goto ctr224;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st84:
		p+= 1;
		if ( p == pe )
		goto _test_eof84;
		st_case_84:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 98: {
				goto st85;
			}
			case 99: {
				goto st89;
			}
			case 101: {
				goto st92;
			}
			case 114: {
				goto st94;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st85:
		p+= 1;
		if ( p == pe )
		goto _test_eof85;
		st_case_85:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 114: {
				goto st86;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st86:
		p+= 1;
		if ( p == pe )
		goto _test_eof86;
		st_case_86:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 101: {
				goto st87;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st87:
		p+= 1;
		if ( p == pe )
		goto _test_eof87;
		st_case_87:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 97: {
				goto st88;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st88:
		p+= 1;
		if ( p == pe )
		goto _test_eof88;
		st_case_88:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 107: {
				goto ctr237;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st89:
		p+= 1;
		if ( p == pe )
		goto _test_eof89;
		st_case_89:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 97: {
				goto st90;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st90:
		p+= 1;
		if ( p == pe )
		goto _test_eof90;
		st_case_90:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 108: {
				goto st91;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st91:
		p+= 1;
		if ( p == pe )
		goto _test_eof91;
		st_case_91:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 108: {
				goto ctr243;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st92:
		p+= 1;
		if ( p == pe )
		goto _test_eof92;
		st_case_92:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 120: {
				goto st93;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st93:
		p+= 1;
		if ( p == pe )
		goto _test_eof93;
		st_case_93:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 116: {
				goto ctr247;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st94:
		p+= 1;
		if ( p == pe )
		goto _test_eof94;
		st_case_94:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 101: {
				goto st95;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st95:
		p+= 1;
		if ( p == pe )
		goto _test_eof95;
		st_case_95:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 116: {
				goto ctr251;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st96:
		p+= 1;
		if ( p == pe )
		goto _test_eof96;
		st_case_96:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 99: {
				goto ctr253;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st97:
		p+= 1;
		if ( p == pe )
		goto _test_eof97;
		st_case_97:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 101: {
				goto st98;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st98:
		p+= 1;
		if ( p == pe )
		goto _test_eof98;
		st_case_98:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 116: {
				goto ctr257;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st99:
		p+= 1;
		if ( p == pe )
		goto _test_eof99;
		st_case_99:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 97: {
				goto st100;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st100:
		p+= 1;
		if ( p == pe )
		goto _test_eof100;
		st_case_100:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 114: {
				goto st101;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st101:
		p+= 1;
		if ( p == pe )
		goto _test_eof101;
		st_case_101:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 103: {
				goto st102;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		st102:
		p+= 1;
		if ( p == pe )
		goto _test_eof102;
		st_case_102:
		switch( ( (*( p))) ) {
			case 95: {
				goto ctr145;
			}
			case 115: {
				goto ctr265;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto ctr145;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto ctr145;
			}
		} else {
			goto ctr145;
		}
		{
			goto ctr264;
		}
		ctr266:
		{
			#line 947 "rlscan.rl"
			{te = p+1;{
					#line 947 "rlscan.rl"
					token( RE_Char, ts, te ); }}}
		
		goto st103;
		ctr267:
		{
			#line 942 "rlscan.rl"
			{te = p+1;{
					#line 942 "rlscan.rl"
					scan_error() << "unterminated OR literal" << endl;
				}}}
		
		goto st103;
		ctr268:
		{
			#line 937 "rlscan.rl"
			{te = p+1;{
					#line 937 "rlscan.rl"
					token( RE_Dash, 0, 0 ); }}}
		
		goto st103;
		ctr270:
		{
			#line 940 "rlscan.rl"
			{te = p+1;{
					#line 940 "rlscan.rl"
					token( RE_SqClose ); {top -= 1;cs = stack[top];goto _again;} }}}
		
		goto st103;
		ctr272:
		{
			#line 947 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 947 "rlscan.rl"
					token( RE_Char, ts, te ); }}}
		
		goto st103;
		ctr273:
		{
			#line 934 "rlscan.rl"
			{te = p+1;{
					#line 934 "rlscan.rl"
					token( RE_Char, ts+1, te ); }}}
		
		goto st103;
		ctr274:
		{
			#line 933 "rlscan.rl"
			{te = p+1;{
					#line 933 "rlscan.rl"
					updateCol(); }}}
		
		goto st103;
		ctr275:
		{
			#line 925 "rlscan.rl"
			{te = p+1;{
					#line 925 "rlscan.rl"
					token( RE_Char, '\0' ); }}}
		
		goto st103;
		ctr276:
		{
			#line 926 "rlscan.rl"
			{te = p+1;{
					#line 926 "rlscan.rl"
					token( RE_Char, '\a' ); }}}
		
		goto st103;
		ctr277:
		{
			#line 927 "rlscan.rl"
			{te = p+1;{
					#line 927 "rlscan.rl"
					token( RE_Char, '\b' ); }}}
		
		goto st103;
		ctr278:
		{
			#line 931 "rlscan.rl"
			{te = p+1;{
					#line 931 "rlscan.rl"
					token( RE_Char, '\f' ); }}}
		
		goto st103;
		ctr279:
		{
			#line 929 "rlscan.rl"
			{te = p+1;{
					#line 929 "rlscan.rl"
					token( RE_Char, '\n' ); }}}
		
		goto st103;
		ctr280:
		{
			#line 932 "rlscan.rl"
			{te = p+1;{
					#line 932 "rlscan.rl"
					token( RE_Char, '\r' ); }}}
		
		goto st103;
		ctr281:
		{
			#line 928 "rlscan.rl"
			{te = p+1;{
					#line 928 "rlscan.rl"
					token( RE_Char, '\t' ); }}}
		
		goto st103;
		ctr282:
		{
			#line 930 "rlscan.rl"
			{te = p+1;{
					#line 930 "rlscan.rl"
					token( RE_Char, '\v' ); }}}
		
		goto st103;
		st103:
		{
			#line 1 "NONE"
			{ts = 0;}}
		p+= 1;
		if ( p == pe )
		goto _test_eof103;
		st_case_103:
		{
			#line 1 "NONE"
			{ts = p;}}
		switch( ( (*( p))) ) {
			case 0: {
				goto ctr267;
			}
			case 45: {
				goto ctr268;
			}
			case 92: {
				goto st104;
			}
			case 93: {
				goto ctr270;
			}
		}
		{
			goto ctr266;
		}
		st104:
		p+= 1;
		if ( p == pe )
		goto _test_eof104;
		st_case_104:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr274;
			}
			case 48: {
				goto ctr275;
			}
			case 97: {
				goto ctr276;
			}
			case 98: {
				goto ctr277;
			}
			case 102: {
				goto ctr278;
			}
			case 110: {
				goto ctr279;
			}
			case 114: {
				goto ctr280;
			}
			case 116: {
				goto ctr281;
			}
			case 118: {
				goto ctr282;
			}
		}
		{
			goto ctr273;
		}
		ctr283:
		{
			#line 982 "rlscan.rl"
			{te = p+1;{
					#line 982 "rlscan.rl"
					token( RE_Char, ts, te ); }}}
		
		goto st105;
		ctr284:
		{
			#line 977 "rlscan.rl"
			{te = p+1;{
					#line 977 "rlscan.rl"
					scan_error() << "unterminated regular expression" << endl;
				}}}
		
		goto st105;
		ctr285:
		{
			#line 972 "rlscan.rl"
			{te = p+1;{
					#line 972 "rlscan.rl"
					token( RE_Star ); }}}
		
		goto st105;
		ctr286:
		{
			#line 971 "rlscan.rl"
			{te = p+1;{
					#line 971 "rlscan.rl"
					token( RE_Dot ); }}}
		
		goto st105;
		ctr291:
		{
			#line 965 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 965 "rlscan.rl"
					token( RE_Slash, ts, te ); 
					{goto st112;}}}}
		
		goto st105;
		ctr292:
		{
			#line 965 "rlscan.rl"
			{te = p+1;{
					#line 965 "rlscan.rl"
					token( RE_Slash, ts, te ); 
					{goto st112;}}}}
		
		goto st105;
		ctr294:
		{
			#line 974 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 974 "rlscan.rl"
					token( RE_SqOpen ); {stack[top] = 105; top+= 1; goto st103;}}}}
		
		goto st105;
		ctr295:
		{
			#line 975 "rlscan.rl"
			{te = p+1;{
					#line 975 "rlscan.rl"
					token( RE_SqOpenNeg ); {stack[top] = 105; top+= 1; goto st103;}}}}
		
		goto st105;
		ctr297:
		{
			#line 982 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 982 "rlscan.rl"
					token( RE_Char, ts, te ); }}}
		
		goto st105;
		ctr298:
		{
			#line 962 "rlscan.rl"
			{te = p+1;{
					#line 962 "rlscan.rl"
					token( RE_Char, ts+1, te ); }}}
		
		goto st105;
		ctr299:
		{
			#line 961 "rlscan.rl"
			{te = p+1;{
					#line 961 "rlscan.rl"
					updateCol(); }}}
		
		goto st105;
		ctr300:
		{
			#line 953 "rlscan.rl"
			{te = p+1;{
					#line 953 "rlscan.rl"
					token( RE_Char, '\0' ); }}}
		
		goto st105;
		ctr301:
		{
			#line 954 "rlscan.rl"
			{te = p+1;{
					#line 954 "rlscan.rl"
					token( RE_Char, '\a' ); }}}
		
		goto st105;
		ctr302:
		{
			#line 955 "rlscan.rl"
			{te = p+1;{
					#line 955 "rlscan.rl"
					token( RE_Char, '\b' ); }}}
		
		goto st105;
		ctr303:
		{
			#line 959 "rlscan.rl"
			{te = p+1;{
					#line 959 "rlscan.rl"
					token( RE_Char, '\f' ); }}}
		
		goto st105;
		ctr304:
		{
			#line 957 "rlscan.rl"
			{te = p+1;{
					#line 957 "rlscan.rl"
					token( RE_Char, '\n' ); }}}
		
		goto st105;
		ctr305:
		{
			#line 960 "rlscan.rl"
			{te = p+1;{
					#line 960 "rlscan.rl"
					token( RE_Char, '\r' ); }}}
		
		goto st105;
		ctr306:
		{
			#line 956 "rlscan.rl"
			{te = p+1;{
					#line 956 "rlscan.rl"
					token( RE_Char, '\t' ); }}}
		
		goto st105;
		ctr307:
		{
			#line 958 "rlscan.rl"
			{te = p+1;{
					#line 958 "rlscan.rl"
					token( RE_Char, '\v' ); }}}
		
		goto st105;
		st105:
		{
			#line 1 "NONE"
			{ts = 0;}}
		p+= 1;
		if ( p == pe )
		goto _test_eof105;
		st_case_105:
		{
			#line 1 "NONE"
			{ts = p;}}
		switch( ( (*( p))) ) {
			case 0: {
				goto ctr284;
			}
			case 42: {
				goto ctr285;
			}
			case 46: {
				goto ctr286;
			}
			case 47: {
				goto st106;
			}
			case 91: {
				goto st107;
			}
			case 92: {
				goto st108;
			}
		}
		{
			goto ctr283;
		}
		st106:
		p+= 1;
		if ( p == pe )
		goto _test_eof106;
		st_case_106:
		if ( ( (*( p))) == 105 ) {
			goto ctr292;
		}
		{
			goto ctr291;
		}
		st107:
		p+= 1;
		if ( p == pe )
		goto _test_eof107;
		st_case_107:
		if ( ( (*( p))) == 94 ) {
			goto ctr295;
		}
		{
			goto ctr294;
		}
		st108:
		p+= 1;
		if ( p == pe )
		goto _test_eof108;
		st_case_108:
		switch( ( (*( p))) ) {
			case 10: {
				goto ctr299;
			}
			case 48: {
				goto ctr300;
			}
			case 97: {
				goto ctr301;
			}
			case 98: {
				goto ctr302;
			}
			case 102: {
				goto ctr303;
			}
			case 110: {
				goto ctr304;
			}
			case 114: {
				goto ctr305;
			}
			case 116: {
				goto ctr306;
			}
			case 118: {
				goto ctr307;
			}
		}
		{
			goto ctr298;
		}
		ctr308:
		{
			#line 991 "rlscan.rl"
			{te = p+1;{
					#line 991 "rlscan.rl"
					scan_error() << "unterminated write statement" << endl;
				}}}
		
		goto st109;
		ctr311:
		{
			#line 989 "rlscan.rl"
			{te = p+1;{
					#line 989 "rlscan.rl"
					token( ';' ); {goto st112;}}}}
		
		goto st109;
		ctr314:
		{
			#line 988 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 988 "rlscan.rl"
					updateCol(); }}}
		
		goto st109;
		ctr316:
		{
			#line 987 "rlscan.rl"
			{te = p;p = p - 1;{
					#line 987 "rlscan.rl"
					token( TK_Word, ts, te ); }}}
		
		goto st109;
		st109:
		{
			#line 1 "NONE"
			{ts = 0;}}
		p+= 1;
		if ( p == pe )
		goto _test_eof109;
		st_case_109:
		{
			#line 1 "NONE"
			{ts = p;}}
		switch( ( (*( p))) ) {
			case 0: {
				goto ctr308;
			}
			case 32: {
				goto st110;
			}
			case 59: {
				goto ctr311;
			}
			case 95: {
				goto st111;
			}
		}
		if ( ( (*( p))) < 65 ) {
			if ( 9 <= ( (*( p))) && ( (*( p))) <= 10 ) {
				goto st110;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto st111;
			}
		} else {
			goto st111;
		}
		{
			goto st0;
		}
		st_case_0:
		st0:
		cs = 0;
		goto _out;
		st110:
		p+= 1;
		if ( p == pe )
		goto _test_eof110;
		st_case_110:
		if ( ( (*( p))) == 32 ) {
			goto st110;
		}
		if ( 9 <= ( (*( p))) && ( (*( p))) <= 10 ) {
			goto st110;
		}
		{
			goto ctr314;
		}
		st111:
		p+= 1;
		if ( p == pe )
		goto _test_eof111;
		st_case_111:
		if ( ( (*( p))) == 95 ) {
			goto st111;
		}
		if ( ( (*( p))) < 65 ) {
			if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
				goto st111;
			}
		} else if ( ( (*( p))) > 90 ) {
			if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
				goto st111;
			}
		} else {
			goto st111;
		}
		{
			goto ctr316;
		}
		ctr92:
		{
			#line 1168 "rlscan.rl"
			{p = ((te))-1;
				{
					#line 1168 "rlscan.rl"
					token( *ts ); }}}
		
		goto st112;
		ctr54:
		{
			#line 769 "rlscan.rl"
			lastnl = p; 
			column = 0;
			line++;
		}
		{
			#line 1059 "rlscan.rl"
			{te = p+1;{
					#line 1059 "rlscan.rl"
					updateCol(); }}}
		
		goto st112;
		ctr61:
		{
			#line 1112 "rlscan.rl"
			{p = ((te))-1;
				{
					#line 1112 "rlscan.rl"
					token( TK_DotDot ); }}}
		
		goto st112;
		ctr62:
		{
			#line 1113 "rlscan.rl"
			{te = p+1;{
					#line 1113 "rlscan.rl"
					token( TK_DotDotIndep ); }}}
		
		goto st112;
		ctr64:
		{
			#line 1046 "rlscan.rl"
			{p = ((te))-1;
				{
					#line 1046 "rlscan.rl"
					token( TK_UInt, ts, te ); }}}
		
		goto st112;
		ctr73:
		{
			#line 1126 "rlscan.rl"
			{te = p+1;{
					#line 1126 "rlscan.rl"
					token( TK_ColonCondOpen ); }}}
		
		goto st112;
		ctr80:
		{
			#line 1124 "rlscan.rl"
			{te = p+1;{
					#line 1124 "rlscan.rl"
					token( TK_ColonNfaOpen ); }}}
		
		goto st112;
		ctr83:
		{
			#line 1125 "rlscan.rl"
			{te = p+1;{
					#line 1125 "rlscan.rl"
					token( TK_ColonNfaOpen ); }}}
		
		goto st112;
		ctr91:
		{
			#line 1127 "rlscan.rl"
			{te = p+1;{
					#line 1127 "rlscan.rl"
					token( TK_ColonNoMaxOpen ); }}}
		
		goto st112;
		ctr93:
		{
			#line 1136 "rlscan.rl"
			{te = p+1;{
					#line 1136 "rlscan.rl"
					updateCol();
					endSection();
					{top -= 1;cs = stack[top];goto _again;}
				}}}
		
		goto st112;
		ctr317:
		{
			#line 1168 "rlscan.rl"
			{te = p+1;{
					#line 1168 "rlscan.rl"
					token( *ts ); }}}
		
		goto st112;
		ctr318:
		{
			#line 1164 "rlscan.rl"
			{te = p+1;{
					#line 1164 "rlscan.rl"
					scan_error() << "unterminated ragel section" << endl;
				}}}
		
		goto st112;
		ctr320:
		{
			#line 769 "rlscan.rl"
			lastnl = p; 
			column = 0;
			line++;
		}
		{
			#line 1145 "rlscan.rl"
			{te = p+1;{
					#line 1145 "rlscan.rl"
					updateCol();
					if ( singleLineSpec ) {
						endSection();
						{top -= 1;cs = stack[top];goto _again;}
					}
				}}}
		
		goto st112;
		ctr330:
		{
			#line 1056 "rlscan.rl"
			{te = p+1;{
					#line 1056 "rlscan.rl"
					token( RE_Slash ); {goto st105;}}}}
		
		goto st112;
		ctr353:
		{
			#line 1153 "rlscan.rl"
			{te = p+1;{
					#line 1153 "rlscan.rl"
					if ( lastToken == KW_Export || lastToken == KW_Entry )
					token( '{' );
						else {
							token( '{' );
								curly_count = 1; 
								inlineBlockType = CurlyDelimited;
								{stack[top] = 112; top+= 1; goto st50;}}
						}}}
				
				goto st112;
				ctr357:
				{
					#line 1142 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1142 "rlscan.rl"
							updateCol(); }}}
				
				goto st112;
				ctr646:
				{
					#line 1168 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1168 "rlscan.rl"
							token( *ts ); }}}
				
				goto st112;
				ctr361:
				{
					#line 1051 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1051 "rlscan.rl"
							token( TK_Literal, ts, te ); }}}
				
				goto st112;
				ctr362:
				{
					#line 1051 "rlscan.rl"
					{te = p+1;{
							#line 1051 "rlscan.rl"
							token( TK_Literal, ts, te ); }}}
				
				goto st112;
				ctr365:
				{
					#line 1090 "rlscan.rl"
					{te = p+1;{
							#line 1090 "rlscan.rl"
							token( TK_AllGblError ); }}}
				
				goto st112;
				ctr366:
				{
					#line 1074 "rlscan.rl"
					{te = p+1;{
							#line 1074 "rlscan.rl"
							token( TK_AllFromState ); }}}
				
				goto st112;
				ctr367:
				{
					#line 1082 "rlscan.rl"
					{te = p+1;{
							#line 1082 "rlscan.rl"
							token( TK_AllEOF ); }}}
				
				goto st112;
				ctr368:
				{
					#line 1109 "rlscan.rl"
					{te = p+1;{
							#line 1109 "rlscan.rl"
							token( TK_AllCond ); }}}
				
				goto st112;
				ctr369:
				{
					#line 1098 "rlscan.rl"
					{te = p+1;{
							#line 1098 "rlscan.rl"
							token( TK_AllLocalError ); }}}
				
				goto st112;
				ctr370:
				{
					#line 1066 "rlscan.rl"
					{te = p+1;{
							#line 1066 "rlscan.rl"
							token( TK_AllToState ); }}}
				
				goto st112;
				ctr372:
				{
					#line 1091 "rlscan.rl"
					{te = p+1;{
							#line 1091 "rlscan.rl"
							token( TK_FinalGblError ); }}}
				
				goto st112;
				ctr373:
				{
					#line 1075 "rlscan.rl"
					{te = p+1;{
							#line 1075 "rlscan.rl"
							token( TK_FinalFromState ); }}}
				
				goto st112;
				ctr374:
				{
					#line 1083 "rlscan.rl"
					{te = p+1;{
							#line 1083 "rlscan.rl"
							token( TK_FinalEOF ); }}}
				
				goto st112;
				ctr375:
				{
					#line 1110 "rlscan.rl"
					{te = p+1;{
							#line 1110 "rlscan.rl"
							token( TK_LeavingCond ); }}}
				
				goto st112;
				ctr376:
				{
					#line 1099 "rlscan.rl"
					{te = p+1;{
							#line 1099 "rlscan.rl"
							token( TK_FinalLocalError ); }}}
				
				goto st112;
				ctr377:
				{
					#line 1067 "rlscan.rl"
					{te = p+1;{
							#line 1067 "rlscan.rl"
							token( TK_FinalToState ); }}}
				
				goto st112;
				ctr380:
				{
					#line 1128 "rlscan.rl"
					{te = p+1;{
							#line 1128 "rlscan.rl"
							token( TK_CloseColon ); }}}
				
				goto st112;
				ctr382:
				{
					#line 1115 "rlscan.rl"
					{te = p+1;{
							#line 1115 "rlscan.rl"
							token( TK_StarStar ); }}}
				
				goto st112;
				ctr384:
				{
					#line 1116 "rlscan.rl"
					{te = p+1;{
							#line 1116 "rlscan.rl"
							token( TK_DashDash ); }}}
				
				goto st112;
				ctr385:
				{
					#line 1117 "rlscan.rl"
					{te = p+1;{
							#line 1117 "rlscan.rl"
							token( TK_Arrow ); }}}
				
				goto st112;
				ctr389:
				{
					#line 1112 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1112 "rlscan.rl"
							token( TK_DotDot ); }}}
				
				goto st112;
				ctr394:
				{
					#line 1046 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1046 "rlscan.rl"
							token( TK_UInt, ts, te ); }}}
				
				goto st112;
				ctr396:
				{
					#line 1047 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1047 "rlscan.rl"
							token( TK_Hex, ts, te ); }}}
				
				goto st112;
				ctr398:
				{
					#line 1134 "rlscan.rl"
					{te = p+1;{
							#line 1134 "rlscan.rl"
							token( TK_NameSep, ts, te ); }}}
				
				goto st112;
				ctr399:
				{
					#line 1061 "rlscan.rl"
					{te = p+1;{
							#line 1061 "rlscan.rl"
							token( TK_ColonEquals ); }}}
				
				goto st112;
				ctr404:
				{
					#line 1120 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1120 "rlscan.rl"
							token( TK_ColonGt ); }}}
				
				goto st112;
				ctr405:
				{
					#line 1121 "rlscan.rl"
					{te = p+1;{
							#line 1121 "rlscan.rl"
							token( TK_ColonGtGt ); }}}
				
				goto st112;
				ctr407:
				{
					#line 1092 "rlscan.rl"
					{te = p+1;{
							#line 1092 "rlscan.rl"
							token( TK_NotStartGblError ); }}}
				
				goto st112;
				ctr408:
				{
					#line 1076 "rlscan.rl"
					{te = p+1;{
							#line 1076 "rlscan.rl"
							token( TK_NotStartFromState ); }}}
				
				goto st112;
				ctr409:
				{
					#line 1084 "rlscan.rl"
					{te = p+1;{
							#line 1084 "rlscan.rl"
							token( TK_NotStartEOF ); }}}
				
				goto st112;
				ctr410:
				{
					#line 1122 "rlscan.rl"
					{te = p+1;{
							#line 1122 "rlscan.rl"
							token( TK_LtColon ); }}}
				
				goto st112;
				ctr412:
				{
					#line 1100 "rlscan.rl"
					{te = p+1;{
							#line 1100 "rlscan.rl"
							token( TK_NotStartLocalError ); }}}
				
				goto st112;
				ctr413:
				{
					#line 1068 "rlscan.rl"
					{te = p+1;{
							#line 1068 "rlscan.rl"
							token( TK_NotStartToState ); }}}
				
				goto st112;
				ctr415:
				{
					#line 1105 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1105 "rlscan.rl"
							token( TK_Middle ); }}}
				
				goto st112;
				ctr416:
				{
					#line 1094 "rlscan.rl"
					{te = p+1;{
							#line 1094 "rlscan.rl"
							token( TK_MiddleGblError ); }}}
				
				goto st112;
				ctr417:
				{
					#line 1078 "rlscan.rl"
					{te = p+1;{
							#line 1078 "rlscan.rl"
							token( TK_MiddleFromState ); }}}
				
				goto st112;
				ctr418:
				{
					#line 1086 "rlscan.rl"
					{te = p+1;{
							#line 1086 "rlscan.rl"
							token( TK_MiddleEOF ); }}}
				
				goto st112;
				ctr419:
				{
					#line 1102 "rlscan.rl"
					{te = p+1;{
							#line 1102 "rlscan.rl"
							token( TK_MiddleLocalError ); }}}
				
				goto st112;
				ctr420:
				{
					#line 1070 "rlscan.rl"
					{te = p+1;{
							#line 1070 "rlscan.rl"
							token( TK_MiddleToState ); }}}
				
				goto st112;
				ctr422:
				{
					#line 1118 "rlscan.rl"
					{te = p+1;{
							#line 1118 "rlscan.rl"
							token( TK_DoubleArrow ); }}}
				
				goto st112;
				ctr424:
				{
					#line 1089 "rlscan.rl"
					{te = p+1;{
							#line 1089 "rlscan.rl"
							token( TK_StartGblError ); }}}
				
				goto st112;
				ctr425:
				{
					#line 1073 "rlscan.rl"
					{te = p+1;{
							#line 1073 "rlscan.rl"
							token( TK_StartFromState ); }}}
				
				goto st112;
				ctr426:
				{
					#line 1081 "rlscan.rl"
					{te = p+1;{
							#line 1081 "rlscan.rl"
							token( TK_StartEOF ); }}}
				
				goto st112;
				ctr427:
				{
					#line 1108 "rlscan.rl"
					{te = p+1;{
							#line 1108 "rlscan.rl"
							token( TK_StartCond ); }}}
				
				goto st112;
				ctr428:
				{
					#line 1097 "rlscan.rl"
					{te = p+1;{
							#line 1097 "rlscan.rl"
							token( TK_StartLocalError ); }}}
				
				goto st112;
				ctr429:
				{
					#line 1065 "rlscan.rl"
					{te = p+1;{
							#line 1065 "rlscan.rl"
							token( TK_StartToState ); }}}
				
				goto st112;
				ctr431:
				{
					#line 1093 "rlscan.rl"
					{te = p+1;{
							#line 1093 "rlscan.rl"
							token( TK_NotFinalGblError ); }}}
				
				goto st112;
				ctr432:
				{
					#line 1077 "rlscan.rl"
					{te = p+1;{
							#line 1077 "rlscan.rl"
							token( TK_NotFinalFromState ); }}}
				
				goto st112;
				ctr433:
				{
					#line 1085 "rlscan.rl"
					{te = p+1;{
							#line 1085 "rlscan.rl"
							token( TK_NotFinalEOF ); }}}
				
				goto st112;
				ctr434:
				{
					#line 1101 "rlscan.rl"
					{te = p+1;{
							#line 1101 "rlscan.rl"
							token( TK_NotFinalLocalError ); }}}
				
				goto st112;
				ctr435:
				{
					#line 1069 "rlscan.rl"
					{te = p+1;{
							#line 1069 "rlscan.rl"
							token( TK_NotFinalToState ); }}}
				
				goto st112;
				ctr437:
				{
					#line 1 "NONE"
					{switch( act ) {
							case 66:  {
								p = ((te))-1;
								{
									#line 999 "rlscan.rl"
									token( KW_Machine ); } break; }
							case 67:  {
								p = ((te))-1;
								{
									#line 1000 "rlscan.rl"
									token( KW_Include ); } break; }
							case 68:  {
								p = ((te))-1;
								{
									#line 1001 "rlscan.rl"
									token( KW_Import ); } break; }
							case 69:  {
								p = ((te))-1;
								{
									#line 1002 "rlscan.rl"
									token( KW_Write );
									{goto st109;}} break; }
							case 70:  {
								p = ((te))-1;
								{
									#line 1006 "rlscan.rl"
									token( KW_Action ); } break; }
							case 71:  {
								p = ((te))-1;
								{
									#line 1007 "rlscan.rl"
									token( KW_AlphType ); } break; }
							case 72:  {
								p = ((te))-1;
								{
									#line 1008 "rlscan.rl"
									token( KW_PrePush ); } break; }
							case 73:  {
								p = ((te))-1;
								{
									#line 1009 "rlscan.rl"
									token( KW_PostPop ); } break; }
							case 74:  {
								p = ((te))-1;
								{
									#line 1011 "rlscan.rl"
									token( KW_NfaPrePush ); } break; }
							case 75:  {
								p = ((te))-1;
								{
									#line 1012 "rlscan.rl"
									token( KW_NfaPostPop ); } break; }
							case 76:  {
								p = ((te))-1;
								{
									#line 1017 "rlscan.rl"
									token( KW_GetKey );
									inlineBlockType = SemiTerminated;
									{stack[top] = 112; top+= 1; goto st50;}} break; }
							case 77:  {
								p = ((te))-1;
								{
									#line 1022 "rlscan.rl"
									token( KW_Access );
									inlineBlockType = SemiTerminated;
									{stack[top] = 112; top+= 1; goto st50;}} break; }
							case 78:  {
								p = ((te))-1;
								{
									#line 1027 "rlscan.rl"
									token( KW_Variable );
									inlineBlockType = SemiTerminated;
									{stack[top] = 112; top+= 1; goto st50;}} break; }
							case 79:  {
								p = ((te))-1;
								{
									#line 1032 "rlscan.rl"
									token( KW_When ); } break; }
							case 80:  {
								p = ((te))-1;
								{
									#line 1033 "rlscan.rl"
									token( KW_InWhen ); } break; }
							case 81:  {
								p = ((te))-1;
								{
									#line 1034 "rlscan.rl"
									token( KW_OutWhen ); } break; }
							case 82:  {
								p = ((te))-1;
								{
									#line 1035 "rlscan.rl"
									token( KW_Eof ); } break; }
							case 83:  {
								p = ((te))-1;
								{
									#line 1036 "rlscan.rl"
									token( KW_Err ); } break; }
							case 84:  {
								p = ((te))-1;
								{
									#line 1037 "rlscan.rl"
									token( KW_Lerr ); } break; }
							case 85:  {
								p = ((te))-1;
								{
									#line 1038 "rlscan.rl"
									token( KW_To ); } break; }
							case 86:  {
								p = ((te))-1;
								{
									#line 1039 "rlscan.rl"
									token( KW_From ); } break; }
							case 87:  {
								p = ((te))-1;
								{
									#line 1040 "rlscan.rl"
									token( KW_Export ); } break; }
							case 88:  {
								p = ((te))-1;
								{
									#line 1043 "rlscan.rl"
									token( TK_Word, ts, te ); } break; }
						}}
				}
				
				goto st112;
				ctr439:
				{
					#line 1053 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1053 "rlscan.rl"
							token( RE_SqOpen ); {stack[top] = 112; top+= 1; goto st103;}}}}
				
				goto st112;
				ctr440:
				{
					#line 1054 "rlscan.rl"
					{te = p+1;{
							#line 1054 "rlscan.rl"
							token( RE_SqOpenNeg ); {stack[top] = 112; top+= 1; goto st103;}}}}
				
				goto st112;
				ctr641:
				{
					#line 1043 "rlscan.rl"
					{te = p;p = p - 1;{
							#line 1043 "rlscan.rl"
							token( TK_Word, ts, te ); }}}
				
				goto st112;
				ctr644:
				{
					#line 1131 "rlscan.rl"
					{te = p+1;{
							#line 1131 "rlscan.rl"
							token( TK_BarStar ); }}}
				
				goto st112;
				ctr645:
				{
					#line 1062 "rlscan.rl"
					{te = p+1;{
							#line 1062 "rlscan.rl"
							token( TK_BarEquals ); }}}
				
				goto st112;
				st112:
				{
					#line 1 "NONE"
					{ts = 0;}}
				p+= 1;
				if ( p == pe )
				goto _test_eof112;
				st_case_112:
				{
					#line 1 "NONE"
					{ts = p;}}
				switch( ( (*( p))) ) {
					case 0: {
						goto ctr318;
					}
					case 9: {
						goto st113;
					}
					case 10: {
						goto ctr320;
					}
					case 13: {
						goto st113;
					}
					case 32: {
						goto st113;
					}
					case 34: {
						goto ctr321;
					}
					case 35: {
						goto ctr322;
					}
					case 36: {
						goto st117;
					}
					case 37: {
						goto st118;
					}
					case 39: {
						goto ctr325;
					}
					case 41: {
						goto st120;
					}
					case 42: {
						goto st121;
					}
					case 45: {
						goto st122;
					}
					case 46: {
						goto st123;
					}
					case 47: {
						goto ctr330;
					}
					case 48: {
						goto ctr331;
					}
					case 58: {
						goto ctr333;
					}
					case 60: {
						goto st130;
					}
					case 61: {
						goto st132;
					}
					case 62: {
						goto st133;
					}
					case 64: {
						goto st134;
					}
					case 91: {
						goto st136;
					}
					case 95: {
						goto ctr338;
					}
					case 97: {
						goto st137;
					}
					case 101: {
						goto st151;
					}
					case 102: {
						goto st158;
					}
					case 103: {
						goto st161;
					}
					case 105: {
						goto st166;
					}
					case 108: {
						goto st179;
					}
					case 109: {
						goto st182;
					}
					case 110: {
						goto st188;
					}
					case 111: {
						goto st202;
					}
					case 112: {
						goto st208;
					}
					case 116: {
						goto st219;
					}
					case 118: {
						goto st220;
					}
					case 119: {
						goto st227;
					}
					case 123: {
						goto ctr353;
					}
					case 124: {
						goto st233;
					}
					case 125: {
						goto ctr355;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 49 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto st126;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr317;
				}
				st113:
				p+= 1;
				if ( p == pe )
				goto _test_eof113;
				st_case_113:
				switch( ( (*( p))) ) {
					case 9: {
						goto st113;
					}
					case 13: {
						goto st113;
					}
					case 32: {
						goto st113;
					}
				}
				{
					goto ctr357;
				}
				ctr321:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st114;
				st114:
				p+= 1;
				if ( p == pe )
				goto _test_eof114;
				st_case_114:
				switch( ( (*( p))) ) {
					case 10: {
						goto ctr48;
					}
					case 34: {
						goto st115;
					}
					case 92: {
						goto st17;
					}
				}
				{
					goto st16;
				}
				ctr48:
				{
					#line 769 "rlscan.rl"
					lastnl = p; 
					column = 0;
					line++;
				}
				
				goto st16;
				st16:
				p+= 1;
				if ( p == pe )
				goto _test_eof16;
				st_case_16:
				switch( ( (*( p))) ) {
					case 10: {
						goto ctr48;
					}
					case 34: {
						goto st115;
					}
					case 92: {
						goto st17;
					}
				}
				{
					goto st16;
				}
				st115:
				p+= 1;
				if ( p == pe )
				goto _test_eof115;
				st_case_115:
				if ( ( (*( p))) == 105 ) {
					goto ctr362;
				}
				{
					goto ctr361;
				}
				st17:
				p+= 1;
				if ( p == pe )
				goto _test_eof17;
				st_case_17:
				if ( ( (*( p))) == 10 ) {
					goto ctr48;
				}
				{
					goto st16;
				}
				ctr322:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st116;
				st116:
				p+= 1;
				if ( p == pe )
				goto _test_eof116;
				st_case_116:
				if ( ( (*( p))) == 10 ) {
					goto ctr54;
				}
				{
					goto st18;
				}
				st18:
				p+= 1;
				if ( p == pe )
				goto _test_eof18;
				st_case_18:
				if ( ( (*( p))) == 10 ) {
					goto ctr54;
				}
				{
					goto st18;
				}
				st117:
				p+= 1;
				if ( p == pe )
				goto _test_eof117;
				st_case_117:
				switch( ( (*( p))) ) {
					case 33: {
						goto ctr365;
					}
					case 42: {
						goto ctr366;
					}
					case 47: {
						goto ctr367;
					}
					case 63: {
						goto ctr368;
					}
					case 94: {
						goto ctr369;
					}
					case 126: {
						goto ctr370;
					}
				}
				{
					goto ctr646;
				}
				st118:
				p+= 1;
				if ( p == pe )
				goto _test_eof118;
				st_case_118:
				switch( ( (*( p))) ) {
					case 33: {
						goto ctr372;
					}
					case 42: {
						goto ctr373;
					}
					case 47: {
						goto ctr374;
					}
					case 63: {
						goto ctr375;
					}
					case 94: {
						goto ctr376;
					}
					case 126: {
						goto ctr377;
					}
				}
				{
					goto ctr646;
				}
				ctr325:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st119;
				st119:
				p+= 1;
				if ( p == pe )
				goto _test_eof119;
				st_case_119:
				switch( ( (*( p))) ) {
					case 10: {
						goto ctr57;
					}
					case 39: {
						goto st115;
					}
					case 92: {
						goto st20;
					}
				}
				{
					goto st19;
				}
				ctr57:
				{
					#line 769 "rlscan.rl"
					lastnl = p; 
					column = 0;
					line++;
				}
				
				goto st19;
				st19:
				p+= 1;
				if ( p == pe )
				goto _test_eof19;
				st_case_19:
				switch( ( (*( p))) ) {
					case 10: {
						goto ctr57;
					}
					case 39: {
						goto st115;
					}
					case 92: {
						goto st20;
					}
				}
				{
					goto st19;
				}
				st20:
				p+= 1;
				if ( p == pe )
				goto _test_eof20;
				st_case_20:
				if ( ( (*( p))) == 10 ) {
					goto ctr57;
				}
				{
					goto st19;
				}
				st120:
				p+= 1;
				if ( p == pe )
				goto _test_eof120;
				st_case_120:
				if ( ( (*( p))) == 58 ) {
					goto ctr380;
				}
				{
					goto ctr646;
				}
				st121:
				p+= 1;
				if ( p == pe )
				goto _test_eof121;
				st_case_121:
				if ( ( (*( p))) == 42 ) {
					goto ctr382;
				}
				{
					goto ctr646;
				}
				st122:
				p+= 1;
				if ( p == pe )
				goto _test_eof122;
				st_case_122:
				switch( ( (*( p))) ) {
					case 45: {
						goto ctr384;
					}
					case 62: {
						goto ctr385;
					}
				}
				{
					goto ctr646;
				}
				st123:
				p+= 1;
				if ( p == pe )
				goto _test_eof123;
				st_case_123:
				if ( ( (*( p))) == 46 ) {
					goto ctr387;
				}
				{
					goto ctr646;
				}
				ctr387:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st124;
				st124:
				p+= 1;
				if ( p == pe )
				goto _test_eof124;
				st_case_124:
				if ( ( (*( p))) == 47 ) {
					goto st21;
				}
				{
					goto ctr389;
				}
				st21:
				p+= 1;
				if ( p == pe )
				goto _test_eof21;
				st_case_21:
				if ( ( (*( p))) == 105 ) {
					goto ctr62;
				}
				{
					goto ctr61;
				}
				ctr331:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st125;
				st125:
				p+= 1;
				if ( p == pe )
				goto _test_eof125;
				st_case_125:
				if ( ( (*( p))) == 120 ) {
					goto st22;
				}
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto st126;
				}
				{
					goto ctr394;
				}
				st126:
				p+= 1;
				if ( p == pe )
				goto _test_eof126;
				st_case_126:
				if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
					goto st126;
				}
				{
					goto ctr394;
				}
				st22:
				p+= 1;
				if ( p == pe )
				goto _test_eof22;
				st_case_22:
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto st127;
					}
				} else if ( ( (*( p))) > 70 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 102 ) {
						goto st127;
					}
				} else {
					goto st127;
				}
				{
					goto ctr64;
				}
				st127:
				p+= 1;
				if ( p == pe )
				goto _test_eof127;
				st_case_127:
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto st127;
					}
				} else if ( ( (*( p))) > 70 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 102 ) {
						goto st127;
					}
				} else {
					goto st127;
				}
				{
					goto ctr396;
				}
				ctr333:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st128;
				st128:
				p+= 1;
				if ( p == pe )
				goto _test_eof128;
				st_case_128:
				switch( ( (*( p))) ) {
					case 58: {
						goto ctr398;
					}
					case 61: {
						goto ctr399;
					}
					case 62: {
						goto st129;
					}
					case 99: {
						goto st23;
					}
					case 110: {
						goto st27;
					}
				}
				{
					goto ctr646;
				}
				st129:
				p+= 1;
				if ( p == pe )
				goto _test_eof129;
				st_case_129:
				if ( ( (*( p))) == 62 ) {
					goto ctr405;
				}
				{
					goto ctr404;
				}
				st23:
				p+= 1;
				if ( p == pe )
				goto _test_eof23;
				st_case_23:
				if ( ( (*( p))) == 111 ) {
					goto st24;
				}
				{
					goto ctr92;
				}
				st24:
				p+= 1;
				if ( p == pe )
				goto _test_eof24;
				st_case_24:
				if ( ( (*( p))) == 110 ) {
					goto st25;
				}
				{
					goto ctr92;
				}
				st25:
				p+= 1;
				if ( p == pe )
				goto _test_eof25;
				st_case_25:
				if ( ( (*( p))) == 100 ) {
					goto st26;
				}
				{
					goto ctr92;
				}
				st26:
				p+= 1;
				if ( p == pe )
				goto _test_eof26;
				st_case_26:
				if ( ( (*( p))) == 40 ) {
					goto ctr73;
				}
				{
					goto ctr92;
				}
				st27:
				p+= 1;
				if ( p == pe )
				goto _test_eof27;
				st_case_27:
				switch( ( (*( p))) ) {
					case 102: {
						goto st28;
					}
					case 111: {
						goto st31;
					}
				}
				{
					goto ctr92;
				}
				st28:
				p+= 1;
				if ( p == pe )
				goto _test_eof28;
				st_case_28:
				if ( ( (*( p))) == 97 ) {
					goto st29;
				}
				{
					goto ctr92;
				}
				st29:
				p+= 1;
				if ( p == pe )
				goto _test_eof29;
				st_case_29:
				switch( ( (*( p))) ) {
					case 40: {
						goto ctr80;
					}
					case 51: {
						goto st30;
					}
				}
				{
					goto ctr92;
				}
				st30:
				p+= 1;
				if ( p == pe )
				goto _test_eof30;
				st_case_30:
				if ( ( (*( p))) == 40 ) {
					goto ctr83;
				}
				{
					goto ctr92;
				}
				st31:
				p+= 1;
				if ( p == pe )
				goto _test_eof31;
				st_case_31:
				if ( ( (*( p))) == 109 ) {
					goto st32;
				}
				{
					goto ctr92;
				}
				st32:
				p+= 1;
				if ( p == pe )
				goto _test_eof32;
				st_case_32:
				if ( ( (*( p))) == 97 ) {
					goto st33;
				}
				{
					goto ctr92;
				}
				st33:
				p+= 1;
				if ( p == pe )
				goto _test_eof33;
				st_case_33:
				if ( ( (*( p))) == 120 ) {
					goto st34;
				}
				{
					goto ctr92;
				}
				st34:
				p+= 1;
				if ( p == pe )
				goto _test_eof34;
				st_case_34:
				if ( ( (*( p))) == 40 ) {
					goto ctr91;
				}
				{
					goto ctr92;
				}
				st130:
				p+= 1;
				if ( p == pe )
				goto _test_eof130;
				st_case_130:
				switch( ( (*( p))) ) {
					case 33: {
						goto ctr407;
					}
					case 42: {
						goto ctr408;
					}
					case 47: {
						goto ctr409;
					}
					case 58: {
						goto ctr410;
					}
					case 62: {
						goto st131;
					}
					case 94: {
						goto ctr412;
					}
					case 126: {
						goto ctr413;
					}
				}
				{
					goto ctr646;
				}
				st131:
				p+= 1;
				if ( p == pe )
				goto _test_eof131;
				st_case_131:
				switch( ( (*( p))) ) {
					case 33: {
						goto ctr416;
					}
					case 42: {
						goto ctr417;
					}
					case 47: {
						goto ctr418;
					}
					case 94: {
						goto ctr419;
					}
					case 126: {
						goto ctr420;
					}
				}
				{
					goto ctr415;
				}
				st132:
				p+= 1;
				if ( p == pe )
				goto _test_eof132;
				st_case_132:
				if ( ( (*( p))) == 62 ) {
					goto ctr422;
				}
				{
					goto ctr646;
				}
				st133:
				p+= 1;
				if ( p == pe )
				goto _test_eof133;
				st_case_133:
				switch( ( (*( p))) ) {
					case 33: {
						goto ctr424;
					}
					case 42: {
						goto ctr425;
					}
					case 47: {
						goto ctr426;
					}
					case 63: {
						goto ctr427;
					}
					case 94: {
						goto ctr428;
					}
					case 126: {
						goto ctr429;
					}
				}
				{
					goto ctr646;
				}
				st134:
				p+= 1;
				if ( p == pe )
				goto _test_eof134;
				st_case_134:
				switch( ( (*( p))) ) {
					case 33: {
						goto ctr431;
					}
					case 42: {
						goto ctr432;
					}
					case 47: {
						goto ctr433;
					}
					case 94: {
						goto ctr434;
					}
					case 126: {
						goto ctr435;
					}
				}
				{
					goto ctr646;
				}
				ctr338:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1043 "rlscan.rl"
					{act = 88;}}
				
				goto st135;
				ctr453:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1022 "rlscan.rl"
					{act = 77;}}
				
				goto st135;
				ctr459:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1006 "rlscan.rl"
					{act = 70;}}
				
				goto st135;
				ctr471:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1007 "rlscan.rl"
					{act = 71;}}
				
				goto st135;
				ctr477:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1035 "rlscan.rl"
					{act = 82;}}
				
				goto st135;
				ctr479:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1036 "rlscan.rl"
					{act = 83;}}
				
				goto st135;
				ctr487:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1040 "rlscan.rl"
					{act = 87;}}
				
				goto st135;
				ctr493:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1039 "rlscan.rl"
					{act = 86;}}
				
				goto st135;
				ctr503:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1017 "rlscan.rl"
					{act = 76;}}
				
				goto st135;
				ctr514:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1001 "rlscan.rl"
					{act = 68;}}
				
				goto st135;
				ctr525:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1000 "rlscan.rl"
					{act = 67;}}
				
				goto st135;
				ctr531:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1033 "rlscan.rl"
					{act = 80;}}
				
				goto st135;
				ctr537:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1037 "rlscan.rl"
					{act = 84;}}
				
				goto st135;
				ctr549:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 999 "rlscan.rl"
					{act = 66;}}
				
				goto st135;
				ctr568:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1012 "rlscan.rl"
					{act = 75;}}
				
				goto st135;
				ctr578:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1011 "rlscan.rl"
					{act = 74;}}
				
				goto st135;
				ctr590:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1034 "rlscan.rl"
					{act = 81;}}
				
				goto st135;
				ctr603:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1009 "rlscan.rl"
					{act = 73;}}
				
				goto st135;
				ctr613:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1008 "rlscan.rl"
					{act = 72;}}
				
				goto st135;
				ctr615:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1038 "rlscan.rl"
					{act = 85;}}
				
				goto st135;
				ctr629:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1027 "rlscan.rl"
					{act = 78;}}
				
				goto st135;
				ctr636:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1032 "rlscan.rl"
					{act = 79;}}
				
				goto st135;
				ctr642:
				{
					#line 1 "NONE"
					{te = p+1;}}
				{
					#line 1002 "rlscan.rl"
					{act = 69;}}
				
				goto st135;
				st135:
				p+= 1;
				if ( p == pe )
				goto _test_eof135;
				st_case_135:
				if ( ( (*( p))) == 95 ) {
					goto ctr338;
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr437;
				}
				st136:
				p+= 1;
				if ( p == pe )
				goto _test_eof136;
				st_case_136:
				if ( ( (*( p))) == 94 ) {
					goto ctr440;
				}
				{
					goto ctr439;
				}
				st137:
				p+= 1;
				if ( p == pe )
				goto _test_eof137;
				st_case_137:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 99: {
						goto st138;
					}
					case 108: {
						goto st145;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st138:
				p+= 1;
				if ( p == pe )
				goto _test_eof138;
				st_case_138:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 99: {
						goto st139;
					}
					case 116: {
						goto st142;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st139:
				p+= 1;
				if ( p == pe )
				goto _test_eof139;
				st_case_139:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st140;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st140:
				p+= 1;
				if ( p == pe )
				goto _test_eof140;
				st_case_140:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 115: {
						goto st141;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st141:
				p+= 1;
				if ( p == pe )
				goto _test_eof141;
				st_case_141:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 115: {
						goto ctr453;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st142:
				p+= 1;
				if ( p == pe )
				goto _test_eof142;
				st_case_142:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 105: {
						goto st143;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st143:
				p+= 1;
				if ( p == pe )
				goto _test_eof143;
				st_case_143:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st144;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st144:
				p+= 1;
				if ( p == pe )
				goto _test_eof144;
				st_case_144:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 110: {
						goto ctr459;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st145:
				p+= 1;
				if ( p == pe )
				goto _test_eof145;
				st_case_145:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st146;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st146:
				p+= 1;
				if ( p == pe )
				goto _test_eof146;
				st_case_146:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto st147;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st147:
				p+= 1;
				if ( p == pe )
				goto _test_eof147;
				st_case_147:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto st148;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st148:
				p+= 1;
				if ( p == pe )
				goto _test_eof148;
				st_case_148:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 121: {
						goto st149;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st149:
				p+= 1;
				if ( p == pe )
				goto _test_eof149;
				st_case_149:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st150;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st150:
				p+= 1;
				if ( p == pe )
				goto _test_eof150;
				st_case_150:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto ctr471;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st151:
				p+= 1;
				if ( p == pe )
				goto _test_eof151;
				st_case_151:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st152;
					}
					case 114: {
						goto st153;
					}
					case 120: {
						goto st154;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st152:
				p+= 1;
				if ( p == pe )
				goto _test_eof152;
				st_case_152:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 102: {
						goto ctr477;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st153:
				p+= 1;
				if ( p == pe )
				goto _test_eof153;
				st_case_153:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto ctr479;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st154:
				p+= 1;
				if ( p == pe )
				goto _test_eof154;
				st_case_154:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st155;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st155:
				p+= 1;
				if ( p == pe )
				goto _test_eof155;
				st_case_155:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st156;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st156:
				p+= 1;
				if ( p == pe )
				goto _test_eof156;
				st_case_156:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto st157;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st157:
				p+= 1;
				if ( p == pe )
				goto _test_eof157;
				st_case_157:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto ctr487;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st158:
				p+= 1;
				if ( p == pe )
				goto _test_eof158;
				st_case_158:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto st159;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st159:
				p+= 1;
				if ( p == pe )
				goto _test_eof159;
				st_case_159:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st160;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st160:
				p+= 1;
				if ( p == pe )
				goto _test_eof160;
				st_case_160:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 109: {
						goto ctr493;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st161:
				p+= 1;
				if ( p == pe )
				goto _test_eof161;
				st_case_161:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st162;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st162:
				p+= 1;
				if ( p == pe )
				goto _test_eof162;
				st_case_162:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto st163;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st163:
				p+= 1;
				if ( p == pe )
				goto _test_eof163;
				st_case_163:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 107: {
						goto st164;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st164:
				p+= 1;
				if ( p == pe )
				goto _test_eof164;
				st_case_164:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st165;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st165:
				p+= 1;
				if ( p == pe )
				goto _test_eof165;
				st_case_165:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 121: {
						goto ctr503;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st166:
				p+= 1;
				if ( p == pe )
				goto _test_eof166;
				st_case_166:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 109: {
						goto st167;
					}
					case 110: {
						goto st171;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st167:
				p+= 1;
				if ( p == pe )
				goto _test_eof167;
				st_case_167:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st168;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st168:
				p+= 1;
				if ( p == pe )
				goto _test_eof168;
				st_case_168:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st169;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st169:
				p+= 1;
				if ( p == pe )
				goto _test_eof169;
				st_case_169:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto st170;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st170:
				p+= 1;
				if ( p == pe )
				goto _test_eof170;
				st_case_170:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto ctr514;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st171:
				p+= 1;
				if ( p == pe )
				goto _test_eof171;
				st_case_171:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 99: {
						goto st172;
					}
					case 119: {
						goto st176;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st172:
				p+= 1;
				if ( p == pe )
				goto _test_eof172;
				st_case_172:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 108: {
						goto st173;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st173:
				p+= 1;
				if ( p == pe )
				goto _test_eof173;
				st_case_173:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 117: {
						goto st174;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st174:
				p+= 1;
				if ( p == pe )
				goto _test_eof174;
				st_case_174:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 100: {
						goto st175;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st175:
				p+= 1;
				if ( p == pe )
				goto _test_eof175;
				st_case_175:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto ctr525;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st176:
				p+= 1;
				if ( p == pe )
				goto _test_eof176;
				st_case_176:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto st177;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st177:
				p+= 1;
				if ( p == pe )
				goto _test_eof177;
				st_case_177:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st178;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st178:
				p+= 1;
				if ( p == pe )
				goto _test_eof178;
				st_case_178:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 110: {
						goto ctr531;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st179:
				p+= 1;
				if ( p == pe )
				goto _test_eof179;
				st_case_179:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st180;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st180:
				p+= 1;
				if ( p == pe )
				goto _test_eof180;
				st_case_180:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto st181;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st181:
				p+= 1;
				if ( p == pe )
				goto _test_eof181;
				st_case_181:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto ctr537;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st182:
				p+= 1;
				if ( p == pe )
				goto _test_eof182;
				st_case_182:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 97: {
						goto st183;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st183:
				p+= 1;
				if ( p == pe )
				goto _test_eof183;
				st_case_183:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 99: {
						goto st184;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st184:
				p+= 1;
				if ( p == pe )
				goto _test_eof184;
				st_case_184:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto st185;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st185:
				p+= 1;
				if ( p == pe )
				goto _test_eof185;
				st_case_185:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 105: {
						goto st186;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st186:
				p+= 1;
				if ( p == pe )
				goto _test_eof186;
				st_case_186:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 110: {
						goto st187;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st187:
				p+= 1;
				if ( p == pe )
				goto _test_eof187;
				st_case_187:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto ctr549;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st188:
				p+= 1;
				if ( p == pe )
				goto _test_eof188;
				st_case_188:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 102: {
						goto st189;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st189:
				p+= 1;
				if ( p == pe )
				goto _test_eof189;
				st_case_189:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 97: {
						goto st190;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st190:
				p+= 1;
				if ( p == pe )
				goto _test_eof190;
				st_case_190:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st191;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st191:
				p+= 1;
				if ( p == pe )
				goto _test_eof191;
				st_case_191:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st192;
					}
					case 114: {
						goto st197;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st192:
				p+= 1;
				if ( p == pe )
				goto _test_eof192;
				st_case_192:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 115: {
						goto st193;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st193:
				p+= 1;
				if ( p == pe )
				goto _test_eof193;
				st_case_193:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto st194;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st194:
				p+= 1;
				if ( p == pe )
				goto _test_eof194;
				st_case_194:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st195;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st195:
				p+= 1;
				if ( p == pe )
				goto _test_eof195;
				st_case_195:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st196;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st196:
				p+= 1;
				if ( p == pe )
				goto _test_eof196;
				st_case_196:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto ctr568;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st197:
				p+= 1;
				if ( p == pe )
				goto _test_eof197;
				st_case_197:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st198;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st198:
				p+= 1;
				if ( p == pe )
				goto _test_eof198;
				st_case_198:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st199;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st199:
				p+= 1;
				if ( p == pe )
				goto _test_eof199;
				st_case_199:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 117: {
						goto st200;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st200:
				p+= 1;
				if ( p == pe )
				goto _test_eof200;
				st_case_200:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 115: {
						goto st201;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st201:
				p+= 1;
				if ( p == pe )
				goto _test_eof201;
				st_case_201:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto ctr578;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st202:
				p+= 1;
				if ( p == pe )
				goto _test_eof202;
				st_case_202:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 117: {
						goto st203;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st203:
				p+= 1;
				if ( p == pe )
				goto _test_eof203;
				st_case_203:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto st204;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st204:
				p+= 1;
				if ( p == pe )
				goto _test_eof204;
				st_case_204:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 119: {
						goto st205;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st205:
				p+= 1;
				if ( p == pe )
				goto _test_eof205;
				st_case_205:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto st206;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st206:
				p+= 1;
				if ( p == pe )
				goto _test_eof206;
				st_case_206:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st207;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st207:
				p+= 1;
				if ( p == pe )
				goto _test_eof207;
				st_case_207:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 110: {
						goto ctr590;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st208:
				p+= 1;
				if ( p == pe )
				goto _test_eof208;
				st_case_208:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st209;
					}
					case 114: {
						goto st214;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st209:
				p+= 1;
				if ( p == pe )
				goto _test_eof209;
				st_case_209:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 115: {
						goto st210;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st210:
				p+= 1;
				if ( p == pe )
				goto _test_eof210;
				st_case_210:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto st211;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st211:
				p+= 1;
				if ( p == pe )
				goto _test_eof211;
				st_case_211:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st212;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st212:
				p+= 1;
				if ( p == pe )
				goto _test_eof212;
				st_case_212:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto st213;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st213:
				p+= 1;
				if ( p == pe )
				goto _test_eof213;
				st_case_213:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto ctr603;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st214:
				p+= 1;
				if ( p == pe )
				goto _test_eof214;
				st_case_214:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st215;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st215:
				p+= 1;
				if ( p == pe )
				goto _test_eof215;
				st_case_215:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 112: {
						goto st216;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st216:
				p+= 1;
				if ( p == pe )
				goto _test_eof216;
				st_case_216:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 117: {
						goto st217;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st217:
				p+= 1;
				if ( p == pe )
				goto _test_eof217;
				st_case_217:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 115: {
						goto st218;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st218:
				p+= 1;
				if ( p == pe )
				goto _test_eof218;
				st_case_218:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto ctr613;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st219:
				p+= 1;
				if ( p == pe )
				goto _test_eof219;
				st_case_219:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 111: {
						goto ctr615;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st220:
				p+= 1;
				if ( p == pe )
				goto _test_eof220;
				st_case_220:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 97: {
						goto st221;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st221:
				p+= 1;
				if ( p == pe )
				goto _test_eof221;
				st_case_221:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 114: {
						goto st222;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st222:
				p+= 1;
				if ( p == pe )
				goto _test_eof222;
				st_case_222:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 105: {
						goto st223;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st223:
				p+= 1;
				if ( p == pe )
				goto _test_eof223;
				st_case_223:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 97: {
						goto st224;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 98 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st224:
				p+= 1;
				if ( p == pe )
				goto _test_eof224;
				st_case_224:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 98: {
						goto st225;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st225:
				p+= 1;
				if ( p == pe )
				goto _test_eof225;
				st_case_225:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 108: {
						goto st226;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st226:
				p+= 1;
				if ( p == pe )
				goto _test_eof226;
				st_case_226:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto ctr629;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st227:
				p+= 1;
				if ( p == pe )
				goto _test_eof227;
				st_case_227:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 104: {
						goto st228;
					}
					case 114: {
						goto st230;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st228:
				p+= 1;
				if ( p == pe )
				goto _test_eof228;
				st_case_228:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto st229;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st229:
				p+= 1;
				if ( p == pe )
				goto _test_eof229;
				st_case_229:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 110: {
						goto ctr636;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st230:
				p+= 1;
				if ( p == pe )
				goto _test_eof230;
				st_case_230:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 105: {
						goto st231;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st231:
				p+= 1;
				if ( p == pe )
				goto _test_eof231;
				st_case_231:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 116: {
						goto st232;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st232:
				p+= 1;
				if ( p == pe )
				goto _test_eof232;
				st_case_232:
				switch( ( (*( p))) ) {
					case 95: {
						goto ctr338;
					}
					case 101: {
						goto ctr642;
					}
				}
				if ( ( (*( p))) < 65 ) {
					if ( 48 <= ( (*( p))) && ( (*( p))) <= 57 ) {
						goto ctr338;
					}
				} else if ( ( (*( p))) > 90 ) {
					if ( 97 <= ( (*( p))) && ( (*( p))) <= 122 ) {
						goto ctr338;
					}
				} else {
					goto ctr338;
				}
				{
					goto ctr641;
				}
				st233:
				p+= 1;
				if ( p == pe )
				goto _test_eof233;
				st_case_233:
				switch( ( (*( p))) ) {
					case 42: {
						goto ctr644;
					}
					case 61: {
						goto ctr645;
					}
				}
				{
					goto ctr646;
				}
				ctr355:
				{
					#line 1 "NONE"
					{te = p+1;}}
				
				goto st234;
				st234:
				p+= 1;
				if ( p == pe )
				goto _test_eof234;
				st_case_234:
				if ( ( (*( p))) == 37 ) {
					goto st35;
				}
				{
					goto ctr646;
				}
				st35:
				p+= 1;
				if ( p == pe )
				goto _test_eof35;
				st_case_35:
				if ( ( (*( p))) == 37 ) {
					goto ctr93;
				}
				{
					goto ctr92;
				}
				st_out:
				_test_eof36: cs = 36; goto _test_eof; 
				_test_eof37: cs = 37; goto _test_eof; 
				_test_eof38: cs = 38; goto _test_eof; 
				_test_eof1: cs = 1; goto _test_eof; 
				_test_eof2: cs = 2; goto _test_eof; 
				_test_eof39: cs = 39; goto _test_eof; 
				_test_eof40: cs = 40; goto _test_eof; 
				_test_eof41: cs = 41; goto _test_eof; 
				_test_eof3: cs = 3; goto _test_eof; 
				_test_eof4: cs = 4; goto _test_eof; 
				_test_eof42: cs = 42; goto _test_eof; 
				_test_eof5: cs = 5; goto _test_eof; 
				_test_eof6: cs = 6; goto _test_eof; 
				_test_eof7: cs = 7; goto _test_eof; 
				_test_eof43: cs = 43; goto _test_eof; 
				_test_eof44: cs = 44; goto _test_eof; 
				_test_eof45: cs = 45; goto _test_eof; 
				_test_eof46: cs = 46; goto _test_eof; 
				_test_eof47: cs = 47; goto _test_eof; 
				_test_eof48: cs = 48; goto _test_eof; 
				_test_eof49: cs = 49; goto _test_eof; 
				_test_eof50: cs = 50; goto _test_eof; 
				_test_eof51: cs = 51; goto _test_eof; 
				_test_eof52: cs = 52; goto _test_eof; 
				_test_eof8: cs = 8; goto _test_eof; 
				_test_eof9: cs = 9; goto _test_eof; 
				_test_eof53: cs = 53; goto _test_eof; 
				_test_eof54: cs = 54; goto _test_eof; 
				_test_eof55: cs = 55; goto _test_eof; 
				_test_eof10: cs = 10; goto _test_eof; 
				_test_eof11: cs = 11; goto _test_eof; 
				_test_eof56: cs = 56; goto _test_eof; 
				_test_eof12: cs = 12; goto _test_eof; 
				_test_eof13: cs = 13; goto _test_eof; 
				_test_eof14: cs = 14; goto _test_eof; 
				_test_eof57: cs = 57; goto _test_eof; 
				_test_eof58: cs = 58; goto _test_eof; 
				_test_eof15: cs = 15; goto _test_eof; 
				_test_eof59: cs = 59; goto _test_eof; 
				_test_eof60: cs = 60; goto _test_eof; 
				_test_eof61: cs = 61; goto _test_eof; 
				_test_eof62: cs = 62; goto _test_eof; 
				_test_eof63: cs = 63; goto _test_eof; 
				_test_eof64: cs = 64; goto _test_eof; 
				_test_eof65: cs = 65; goto _test_eof; 
				_test_eof66: cs = 66; goto _test_eof; 
				_test_eof67: cs = 67; goto _test_eof; 
				_test_eof68: cs = 68; goto _test_eof; 
				_test_eof69: cs = 69; goto _test_eof; 
				_test_eof70: cs = 70; goto _test_eof; 
				_test_eof71: cs = 71; goto _test_eof; 
				_test_eof72: cs = 72; goto _test_eof; 
				_test_eof73: cs = 73; goto _test_eof; 
				_test_eof74: cs = 74; goto _test_eof; 
				_test_eof75: cs = 75; goto _test_eof; 
				_test_eof76: cs = 76; goto _test_eof; 
				_test_eof77: cs = 77; goto _test_eof; 
				_test_eof78: cs = 78; goto _test_eof; 
				_test_eof79: cs = 79; goto _test_eof; 
				_test_eof80: cs = 80; goto _test_eof; 
				_test_eof81: cs = 81; goto _test_eof; 
				_test_eof82: cs = 82; goto _test_eof; 
				_test_eof83: cs = 83; goto _test_eof; 
				_test_eof84: cs = 84; goto _test_eof; 
				_test_eof85: cs = 85; goto _test_eof; 
				_test_eof86: cs = 86; goto _test_eof; 
				_test_eof87: cs = 87; goto _test_eof; 
				_test_eof88: cs = 88; goto _test_eof; 
				_test_eof89: cs = 89; goto _test_eof; 
				_test_eof90: cs = 90; goto _test_eof; 
				_test_eof91: cs = 91; goto _test_eof; 
				_test_eof92: cs = 92; goto _test_eof; 
				_test_eof93: cs = 93; goto _test_eof; 
				_test_eof94: cs = 94; goto _test_eof; 
				_test_eof95: cs = 95; goto _test_eof; 
				_test_eof96: cs = 96; goto _test_eof; 
				_test_eof97: cs = 97; goto _test_eof; 
				_test_eof98: cs = 98; goto _test_eof; 
				_test_eof99: cs = 99; goto _test_eof; 
				_test_eof100: cs = 100; goto _test_eof; 
				_test_eof101: cs = 101; goto _test_eof; 
				_test_eof102: cs = 102; goto _test_eof; 
				_test_eof103: cs = 103; goto _test_eof; 
				_test_eof104: cs = 104; goto _test_eof; 
				_test_eof105: cs = 105; goto _test_eof; 
				_test_eof106: cs = 106; goto _test_eof; 
				_test_eof107: cs = 107; goto _test_eof; 
				_test_eof108: cs = 108; goto _test_eof; 
				_test_eof109: cs = 109; goto _test_eof; 
				_test_eof110: cs = 110; goto _test_eof; 
				_test_eof111: cs = 111; goto _test_eof; 
				_test_eof112: cs = 112; goto _test_eof; 
				_test_eof113: cs = 113; goto _test_eof; 
				_test_eof114: cs = 114; goto _test_eof; 
				_test_eof16: cs = 16; goto _test_eof; 
				_test_eof115: cs = 115; goto _test_eof; 
				_test_eof17: cs = 17; goto _test_eof; 
				_test_eof116: cs = 116; goto _test_eof; 
				_test_eof18: cs = 18; goto _test_eof; 
				_test_eof117: cs = 117; goto _test_eof; 
				_test_eof118: cs = 118; goto _test_eof; 
				_test_eof119: cs = 119; goto _test_eof; 
				_test_eof19: cs = 19; goto _test_eof; 
				_test_eof20: cs = 20; goto _test_eof; 
				_test_eof120: cs = 120; goto _test_eof; 
				_test_eof121: cs = 121; goto _test_eof; 
				_test_eof122: cs = 122; goto _test_eof; 
				_test_eof123: cs = 123; goto _test_eof; 
				_test_eof124: cs = 124; goto _test_eof; 
				_test_eof21: cs = 21; goto _test_eof; 
				_test_eof125: cs = 125; goto _test_eof; 
				_test_eof126: cs = 126; goto _test_eof; 
				_test_eof22: cs = 22; goto _test_eof; 
				_test_eof127: cs = 127; goto _test_eof; 
				_test_eof128: cs = 128; goto _test_eof; 
				_test_eof129: cs = 129; goto _test_eof; 
				_test_eof23: cs = 23; goto _test_eof; 
				_test_eof24: cs = 24; goto _test_eof; 
				_test_eof25: cs = 25; goto _test_eof; 
				_test_eof26: cs = 26; goto _test_eof; 
				_test_eof27: cs = 27; goto _test_eof; 
				_test_eof28: cs = 28; goto _test_eof; 
				_test_eof29: cs = 29; goto _test_eof; 
				_test_eof30: cs = 30; goto _test_eof; 
				_test_eof31: cs = 31; goto _test_eof; 
				_test_eof32: cs = 32; goto _test_eof; 
				_test_eof33: cs = 33; goto _test_eof; 
				_test_eof34: cs = 34; goto _test_eof; 
				_test_eof130: cs = 130; goto _test_eof; 
				_test_eof131: cs = 131; goto _test_eof; 
				_test_eof132: cs = 132; goto _test_eof; 
				_test_eof133: cs = 133; goto _test_eof; 
				_test_eof134: cs = 134; goto _test_eof; 
				_test_eof135: cs = 135; goto _test_eof; 
				_test_eof136: cs = 136; goto _test_eof; 
				_test_eof137: cs = 137; goto _test_eof; 
				_test_eof138: cs = 138; goto _test_eof; 
				_test_eof139: cs = 139; goto _test_eof; 
				_test_eof140: cs = 140; goto _test_eof; 
				_test_eof141: cs = 141; goto _test_eof; 
				_test_eof142: cs = 142; goto _test_eof; 
				_test_eof143: cs = 143; goto _test_eof; 
				_test_eof144: cs = 144; goto _test_eof; 
				_test_eof145: cs = 145; goto _test_eof; 
				_test_eof146: cs = 146; goto _test_eof; 
				_test_eof147: cs = 147; goto _test_eof; 
				_test_eof148: cs = 148; goto _test_eof; 
				_test_eof149: cs = 149; goto _test_eof; 
				_test_eof150: cs = 150; goto _test_eof; 
				_test_eof151: cs = 151; goto _test_eof; 
				_test_eof152: cs = 152; goto _test_eof; 
				_test_eof153: cs = 153; goto _test_eof; 
				_test_eof154: cs = 154; goto _test_eof; 
				_test_eof155: cs = 155; goto _test_eof; 
				_test_eof156: cs = 156; goto _test_eof; 
				_test_eof157: cs = 157; goto _test_eof; 
				_test_eof158: cs = 158; goto _test_eof; 
				_test_eof159: cs = 159; goto _test_eof; 
				_test_eof160: cs = 160; goto _test_eof; 
				_test_eof161: cs = 161; goto _test_eof; 
				_test_eof162: cs = 162; goto _test_eof; 
				_test_eof163: cs = 163; goto _test_eof; 
				_test_eof164: cs = 164; goto _test_eof; 
				_test_eof165: cs = 165; goto _test_eof; 
				_test_eof166: cs = 166; goto _test_eof; 
				_test_eof167: cs = 167; goto _test_eof; 
				_test_eof168: cs = 168; goto _test_eof; 
				_test_eof169: cs = 169; goto _test_eof; 
				_test_eof170: cs = 170; goto _test_eof; 
				_test_eof171: cs = 171; goto _test_eof; 
				_test_eof172: cs = 172; goto _test_eof; 
				_test_eof173: cs = 173; goto _test_eof; 
				_test_eof174: cs = 174; goto _test_eof; 
				_test_eof175: cs = 175; goto _test_eof; 
				_test_eof176: cs = 176; goto _test_eof; 
				_test_eof177: cs = 177; goto _test_eof; 
				_test_eof178: cs = 178; goto _test_eof; 
				_test_eof179: cs = 179; goto _test_eof; 
				_test_eof180: cs = 180; goto _test_eof; 
				_test_eof181: cs = 181; goto _test_eof; 
				_test_eof182: cs = 182; goto _test_eof; 
				_test_eof183: cs = 183; goto _test_eof; 
				_test_eof184: cs = 184; goto _test_eof; 
				_test_eof185: cs = 185; goto _test_eof; 
				_test_eof186: cs = 186; goto _test_eof; 
				_test_eof187: cs = 187; goto _test_eof; 
				_test_eof188: cs = 188; goto _test_eof; 
				_test_eof189: cs = 189; goto _test_eof; 
				_test_eof190: cs = 190; goto _test_eof; 
				_test_eof191: cs = 191; goto _test_eof; 
				_test_eof192: cs = 192; goto _test_eof; 
				_test_eof193: cs = 193; goto _test_eof; 
				_test_eof194: cs = 194; goto _test_eof; 
				_test_eof195: cs = 195; goto _test_eof; 
				_test_eof196: cs = 196; goto _test_eof; 
				_test_eof197: cs = 197; goto _test_eof; 
				_test_eof198: cs = 198; goto _test_eof; 
				_test_eof199: cs = 199; goto _test_eof; 
				_test_eof200: cs = 200; goto _test_eof; 
				_test_eof201: cs = 201; goto _test_eof; 
				_test_eof202: cs = 202; goto _test_eof; 
				_test_eof203: cs = 203; goto _test_eof; 
				_test_eof204: cs = 204; goto _test_eof; 
				_test_eof205: cs = 205; goto _test_eof; 
				_test_eof206: cs = 206; goto _test_eof; 
				_test_eof207: cs = 207; goto _test_eof; 
				_test_eof208: cs = 208; goto _test_eof; 
				_test_eof209: cs = 209; goto _test_eof; 
				_test_eof210: cs = 210; goto _test_eof; 
				_test_eof211: cs = 211; goto _test_eof; 
				_test_eof212: cs = 212; goto _test_eof; 
				_test_eof213: cs = 213; goto _test_eof; 
				_test_eof214: cs = 214; goto _test_eof; 
				_test_eof215: cs = 215; goto _test_eof; 
				_test_eof216: cs = 216; goto _test_eof; 
				_test_eof217: cs = 217; goto _test_eof; 
				_test_eof218: cs = 218; goto _test_eof; 
				_test_eof219: cs = 219; goto _test_eof; 
				_test_eof220: cs = 220; goto _test_eof; 
				_test_eof221: cs = 221; goto _test_eof; 
				_test_eof222: cs = 222; goto _test_eof; 
				_test_eof223: cs = 223; goto _test_eof; 
				_test_eof224: cs = 224; goto _test_eof; 
				_test_eof225: cs = 225; goto _test_eof; 
				_test_eof226: cs = 226; goto _test_eof; 
				_test_eof227: cs = 227; goto _test_eof; 
				_test_eof228: cs = 228; goto _test_eof; 
				_test_eof229: cs = 229; goto _test_eof; 
				_test_eof230: cs = 230; goto _test_eof; 
				_test_eof231: cs = 231; goto _test_eof; 
				_test_eof232: cs = 232; goto _test_eof; 
				_test_eof233: cs = 233; goto _test_eof; 
				_test_eof234: cs = 234; goto _test_eof; 
				_test_eof35: cs = 35; goto _test_eof; 
				
				_test_eof: {}
				if ( p == eof )
				{
					switch ( cs ) {
						case 37: goto ctr106;
						case 38: goto ctr115;
						case 1: goto ctr18;
						case 2: goto ctr18;
						case 39: goto ctr115;
						case 40: goto ctr112;
						case 41: goto ctr115;
						case 3: goto ctr18;
						case 4: goto ctr18;
						case 42: goto ctr115;
						case 5: goto ctr18;
						case 6: goto ctr18;
						case 7: goto ctr18;
						case 43: goto ctr117;
						case 44: goto ctr119;
						case 45: goto ctr129;
						case 46: goto ctr129;
						case 47: goto ctr129;
						case 48: goto ctr129;
						case 49: goto ctr129;
						case 51: goto ctr150;
						case 52: goto ctr165;
						case 8: goto ctr39;
						case 9: goto ctr39;
						case 53: goto ctr165;
						case 54: goto ctr156;
						case 55: goto ctr165;
						case 10: goto ctr39;
						case 11: goto ctr39;
						case 56: goto ctr165;
						case 12: goto ctr39;
						case 13: goto ctr39;
						case 14: goto ctr39;
						case 57: goto ctr162;
						case 58: goto ctr162;
						case 15: goto ctr43;
						case 59: goto ctr164;
						case 60: goto ctr165;
						case 61: goto ctr168;
						case 62: goto ctr264;
						case 63: goto ctr264;
						case 64: goto ctr264;
						case 65: goto ctr264;
						case 66: goto ctr264;
						case 67: goto ctr189;
						case 68: goto ctr264;
						case 69: goto ctr264;
						case 70: goto ctr264;
						case 71: goto ctr264;
						case 72: goto ctr264;
						case 73: goto ctr264;
						case 74: goto ctr264;
						case 75: goto ctr264;
						case 76: goto ctr264;
						case 77: goto ctr264;
						case 78: goto ctr264;
						case 79: goto ctr264;
						case 80: goto ctr264;
						case 81: goto ctr264;
						case 82: goto ctr264;
						case 83: goto ctr264;
						case 84: goto ctr264;
						case 85: goto ctr264;
						case 86: goto ctr264;
						case 87: goto ctr264;
						case 88: goto ctr264;
						case 89: goto ctr264;
						case 90: goto ctr264;
						case 91: goto ctr264;
						case 92: goto ctr264;
						case 93: goto ctr264;
						case 94: goto ctr264;
						case 95: goto ctr264;
						case 96: goto ctr264;
						case 97: goto ctr264;
						case 98: goto ctr264;
						case 99: goto ctr264;
						case 100: goto ctr264;
						case 101: goto ctr264;
						case 102: goto ctr264;
						case 104: goto ctr272;
						case 106: goto ctr291;
						case 107: goto ctr294;
						case 108: goto ctr297;
						case 110: goto ctr314;
						case 111: goto ctr316;
						case 113: goto ctr357;
						case 114: goto ctr646;
						case 16: goto ctr92;
						case 115: goto ctr361;
						case 17: goto ctr92;
						case 116: goto ctr646;
						case 18: goto ctr92;
						case 117: goto ctr646;
						case 118: goto ctr646;
						case 119: goto ctr646;
						case 19: goto ctr92;
						case 20: goto ctr92;
						case 120: goto ctr646;
						case 121: goto ctr646;
						case 122: goto ctr646;
						case 123: goto ctr646;
						case 124: goto ctr389;
						case 21: goto ctr61;
						case 125: goto ctr394;
						case 126: goto ctr394;
						case 22: goto ctr64;
						case 127: goto ctr396;
						case 128: goto ctr646;
						case 129: goto ctr404;
						case 23: goto ctr92;
						case 24: goto ctr92;
						case 25: goto ctr92;
						case 26: goto ctr92;
						case 27: goto ctr92;
						case 28: goto ctr92;
						case 29: goto ctr92;
						case 30: goto ctr92;
						case 31: goto ctr92;
						case 32: goto ctr92;
						case 33: goto ctr92;
						case 34: goto ctr92;
						case 130: goto ctr646;
						case 131: goto ctr415;
						case 132: goto ctr646;
						case 133: goto ctr646;
						case 134: goto ctr646;
						case 135: goto ctr437;
						case 136: goto ctr439;
						case 137: goto ctr641;
						case 138: goto ctr641;
						case 139: goto ctr641;
						case 140: goto ctr641;
						case 141: goto ctr641;
						case 142: goto ctr641;
						case 143: goto ctr641;
						case 144: goto ctr641;
						case 145: goto ctr641;
						case 146: goto ctr641;
						case 147: goto ctr641;
						case 148: goto ctr641;
						case 149: goto ctr641;
						case 150: goto ctr641;
						case 151: goto ctr641;
						case 152: goto ctr641;
						case 153: goto ctr641;
						case 154: goto ctr641;
						case 155: goto ctr641;
						case 156: goto ctr641;
						case 157: goto ctr641;
						case 158: goto ctr641;
						case 159: goto ctr641;
						case 160: goto ctr641;
						case 161: goto ctr641;
						case 162: goto ctr641;
						case 163: goto ctr641;
						case 164: goto ctr641;
						case 165: goto ctr641;
						case 166: goto ctr641;
						case 167: goto ctr641;
						case 168: goto ctr641;
						case 169: goto ctr641;
						case 170: goto ctr641;
						case 171: goto ctr641;
						case 172: goto ctr641;
						case 173: goto ctr641;
						case 174: goto ctr641;
						case 175: goto ctr641;
						case 176: goto ctr641;
						case 177: goto ctr641;
						case 178: goto ctr641;
						case 179: goto ctr641;
						case 180: goto ctr641;
						case 181: goto ctr641;
						case 182: goto ctr641;
						case 183: goto ctr641;
						case 184: goto ctr641;
						case 185: goto ctr641;
						case 186: goto ctr641;
						case 187: goto ctr641;
						case 188: goto ctr641;
						case 189: goto ctr641;
						case 190: goto ctr641;
						case 191: goto ctr641;
						case 192: goto ctr641;
						case 193: goto ctr641;
						case 194: goto ctr641;
						case 195: goto ctr641;
						case 196: goto ctr641;
						case 197: goto ctr641;
						case 198: goto ctr641;
						case 199: goto ctr641;
						case 200: goto ctr641;
						case 201: goto ctr641;
						case 202: goto ctr641;
						case 203: goto ctr641;
						case 204: goto ctr641;
						case 205: goto ctr641;
						case 206: goto ctr641;
						case 207: goto ctr641;
						case 208: goto ctr641;
						case 209: goto ctr641;
						case 210: goto ctr641;
						case 211: goto ctr641;
						case 212: goto ctr641;
						case 213: goto ctr641;
						case 214: goto ctr641;
						case 215: goto ctr641;
						case 216: goto ctr641;
						case 217: goto ctr641;
						case 218: goto ctr641;
						case 219: goto ctr641;
						case 220: goto ctr641;
						case 221: goto ctr641;
						case 222: goto ctr641;
						case 223: goto ctr641;
						case 224: goto ctr641;
						case 225: goto ctr641;
						case 226: goto ctr641;
						case 227: goto ctr641;
						case 228: goto ctr641;
						case 229: goto ctr641;
						case 230: goto ctr641;
						case 231: goto ctr641;
						case 232: goto ctr641;
						case 233: goto ctr646;
						case 234: goto ctr646;
						case 35: goto ctr92;
					}
				}
				
				_out: {}
			}
			
			#line 1 "--"
			/* Check if we failed. */
			if ( cs == rlscan_error ) {
				/* Machine failed before finding a token. I'm not yet sure if this
				* is reachable. */
				scan_error() << "scanner error" << endl;
				exit(1);
			}
			
			/* Decide if we need to preserve anything. */
			char *preserve = ts;
			
			/* Now set up the prefix. */
			if ( preserve == 0 )
			have = 0;
			else {
				/* There is data that needs to be shifted over. */
				have = pe - preserve;
				memmove( buf, preserve, have );
				unsigned int shiftback = preserve - buf;
				if ( ts != 0 )
				ts -= shiftback;
				te -= shiftback;
				
				preserve = buf;
			}
		}
		
		delete[] buf;
	}
