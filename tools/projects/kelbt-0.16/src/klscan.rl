/*
 *  Copyright 2006-2009 Adrian Thurston <thurston@complang.org>
 */

/*  This file is part of Kelbt.
 *
 *  Kelbt is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 * 
 *  Kelbt is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 * 
 *  You should have received a copy of the GNU General Public License
 *  along with Kelbt; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
 */

#include <iostream>
#include <fstream>
#include <string.h>

#include "kelbt.h"
#include "klparse.h"

using std::ifstream;
using std::istream;
using std::ostream;
using std::cout;
using std::cerr;
using std::endl;

%%{
	machine section_parser;
	write data;
}%%

struct Scanner
{
	Scanner( const char *fileName, istream &input, 
			ParserDict &parserDict, int include_depth ) : 
		fileName(fileName), input(input), 
		parserDict(parserDict), include_depth(include_depth),
		parser(0), curline(1)
	{
		%% write init;
	}
	
	void startSection( bool singleLineSpec );
	void endSection();

	void do_scan();
	void try_token( int tokid );
	void try_token( int tokid, char *start, char *end );

	ifstream *tryOpenInclude( char **pathChecks, long &found );
	char **makeIncludePathChecks( const char *thisFileName, const char *fileName );

	/* Open an error message with the file name and line. */
	ostream &error()
	{
		/* Keep the error count. */
		gblErrorCount += 1;
	
		cerr << fileName << ":" << curline << ": ";
		return cerr;
	}

	const char *fileName;
	istream &input;
	ParserDict &parserDict;
	int include_depth;
	Parser *parser;
	int curline, inline_start_line;
	bool singleLineSpec;

	/* Write statements seen. */
	bool writeInstanceData;
	bool writeTokenDefs;
	bool writeTypes; 
	bool writeData;
	bool writeInit;
	bool writeExec;
	bool writeFinish;

	/* For section parser. */
	int cs;
	char *captured;
};

void Scanner::startSection( bool singleLineSpec )
{
	this->singleLineSpec = singleLineSpec;
	writeInstanceData = false;
	writeTokenDefs = false;
	writeTypes = false;
	writeData = false;
	writeInit = false;
	writeExec = false;
	writeFinish = false;
}

void Scanner::endSection()
{
	if ( !::generateGraphviz ) {
		if ( writeInstanceData )
			parser->pd.generateInstanceData();
		if ( writeTokenDefs )
			parser->pd.generateTokenDefs();
		if ( writeTypes )
			parser->pd.generateTypes();
		if ( writeInit )
			parser->pd.generateInit();
		if ( writeData )
			parser->pd.generateData();
		if ( writeExec )
			parser->pd.generateExec();
		if ( writeFinish )
			parser->pd.generateFinish();
		
		if ( ! inhibitLineDirectives )
			*outStream << "#line " << curline << " \"" << fileName << "\"\n";
	}
	
	/* This causes us to use the parser with the last parser definition when
	 * generating graphviz code. */
	graphvizGenParser = parser;
}

void Scanner::try_token( int tokid )
{
	try_token( tokid, 0, 0 );
}

bool isAbsolutePath( const char *path )
{
	return path[0] == '/';
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
		check += 1;
	}

	found = -1;
	delete inFile;
	return 0;
}

char **Scanner::makeIncludePathChecks( const char *thisFileName, const char *fileName )
{
	char **checks = 0;
	long nextCheck = 0;
	char *data = strdup(fileName);
	long length = strlen(fileName);

	/* Absolute path? */
	if ( isAbsolutePath( data ) ) {
		checks = new char*[2];
		checks[nextCheck++] = data;
	}
	else {
		/* Search from the the location of the current file. */
		checks = new char *[2 + includePaths.length()];
		const char *lastSlash = strrchr( thisFileName, '/' );
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
		for ( ArgsVector::Iter incp = includePaths; incp.lte(); incp++ ) {
			long pathLen = strlen( *incp );
			long checkLen = pathLen + 1 + length;
			char *check = new char[checkLen+1];
			memcpy( check, *incp, pathLen );
			check[pathLen] = '/';
			memcpy( check+pathLen+1, data, length );
			check[checkLen] = 0;
			checks[nextCheck++] = check;
		}
	}

	checks[nextCheck] = 0;
	return checks;
}


void Scanner::try_token( int tokid, char *start, char *end )
{
	char *tokdata = 0;
	int *p = &tokid, *pe = &tokid + 1;

	if ( start != 0 ) {
		int len = end-start;
		tokdata = new char[len+1];
		memcpy( tokdata, start, len );
		tokdata[len] = 0;
	}

%%{
	machine section_parser;
	alphtype int;

	# Bring in tokens from the parser. 
	import "klparse.h";

	action handle_parser
	{
		//cout << "PARSER STATEMENT" << endl;

		char *parserName = captured;
		ParserDictEl *pdEl = parserDict.find( parserName );
		if ( pdEl != 0 ) {
			//cout << "USING EXISTING PARSER" << endl;
			delete[] parserName;
		}
		else {
			//cout << "CREATING NEW PARSER" << endl;
			pdEl = new ParserDictEl;
			pdEl->name = parserName;
			pdEl->parser = new Parser( fileName, parserName, *outStream );
			pdEl->parser->init();
			parserDict.insert( pdEl );
		}

		parser = pdEl->parser;
	}

	action handle_include
	{
		/* Make the list of files to try. */
		char **checks = makeIncludePathChecks( this->fileName, captured );

		/* Open the input file for reading. */
		long found = 0;
		ifstream *inFile = tryOpenInclude( checks, found );

		/* Open the input file for reading. */
		if ( inFile == 0 )
			error() << "include: could not open " << captured << " for reading" << endl;
		else {
			Scanner subScanner( checks[found], *inFile, parserDict, include_depth+1 );
			subScanner.do_scan();
			delete inFile;
		}
	}

	action handle_write
	{
		if ( include_depth == 0 ) {
			char *writeArg = captured;
			if ( strcmp( writeArg, "instance_data" ) == 0 )
				writeInstanceData = true;
			else if ( strcmp( writeArg, "token_defs" ) == 0 )
				writeTokenDefs = true;
			else if ( strcmp( writeArg, "types" ) == 0 )
				writeTypes = true;
			else if ( strcmp( writeArg, "data" ) == 0 )
				writeData = true;
			else if ( strcmp( writeArg, "init" ) == 0 )
				writeInit = true;
			else if ( strcmp( writeArg, "exec" ) == 0 )
				writeExec = true;
			else if ( strcmp( writeArg, "finish" ) == 0 )
				writeFinish = true;
		}
	}

	action handle_else
	{
		if ( parser == 0 )
			error() << "no section name and no previously named section" << endl;
		else {
			int line = TK_Inline ? inline_start_line : curline;
			int result = parser->token( line, tokid, tokdata );
			if ( result < 0 )
				error() << "parse error on or near this line" << endl;
		}
	}

	captured_word = TK_Word @{ captured = tokdata; };
	captured_string = TK_String @{ captured = tokdata; };

	main := (
		# Parser statements
		KW_Parser captured_word ';' @handle_parser |

		# Include statements.
		KW_Include captured_string ';' @handle_include |

		KW_Write captured_word ';' @handle_write |

		# Everything else.
		^(KW_Parser | KW_Include | KW_Write) @handle_else
	)*;

	write exec;
}%%
}

%%{
	machine klscan;

	# This is sent by the driver code.
	EOF = 0;

	# Machine which tracks newlines
	NL = '\n' @{ curline++; };

	# Identifiers, numbers, commetns, and other common things.
	ident = ( alpha | '_' ) ( alpha |digit |'_' )*;
	number = digit+;
	c_comment = '/*' ( any | NL )* :>> '*/' | '//' [^\n]* NL;
	single_literal = "'" ([^'\\\r\n] | '\\' [^\n])* "'";
	double_literal = '"' ([^"\\\r\n] | '\\' [^\n])* '"';
	literal = single_literal | double_literal;
	whitespace = [ \t\r] | NL;
	pound_comment = '#' [^\n]* NL;

	# An inline block of code. This is specified as a scanned, but is sent to
	# the parser as one long block. The inline_block pointer is used to handle
	# the preservation of the data.
	inline_code := |*
		ident; 
		number;
		c_comment;
		literal;
		whitespace+;

		'{' => { curly_count += 1; };

		'}' => { 
			if ( --curly_count == 0 ) {
				/* Send the entire block and free the inline_start pointer. */
				try_token( TK_Inline, inline_start, te );
				inline_start = 0;
				fgoto parser_def;
			}
		};

		( '$' | '@' ) number | '$$' | '@@' => {
			if ( inline_start < ts )
				try_token( TK_Inline, inline_start, ts );
			try_token( TK_Reference, ts, te );
			inline_start = te;
		};

		any;
	*|;

	access_stmt := |*
		[^;\0]+ => { try_token( TK_AccessData, ts, te ); };
		';' => { 
			try_token( ';' ); 
			fgoto parser_def;
		};
	*|;

	# Parser definitions. 
	parser_def := |*
		'commit' => { try_token( KW_Commit ); };
		'try' => { try_token( KW_Try ); };
		'undo' => { try_token( KW_Undo ); };
		'final' => { try_token( KW_Final ); };
		'translate' => { try_token( KW_Translate ); };
		'token' => { try_token( KW_Token ); };
		'nonterm' => { try_token( KW_NonTerm ); };
		'uses' => { try_token( KW_Uses ); };
		'type' => { try_token( KW_Type ); };
		'parser' => { try_token( KW_Parser ); };
		'include' => { try_token( KW_Include ); };
		'pri' => { try_token( KW_Pri ); };
		'write' => { try_token( KW_Write ); };
		'class' => { try_token( KW_Class ); };
		'shortest' => { try_token( KW_Shortest ); };

		'access' whitespace* => { 
			try_token( KW_Access );
			fgoto access_stmt;
		};

		# Parser literals are single characters with single quotes.
		parser_literal = "'" ([^'\\\r\n] | '\\' any) "'";

		ident => { try_token( TK_Word, ts, te ); } ;
		parser_literal => { try_token( TK_Literal, ts+1, te-1 ); } ;
		double_literal => { try_token( TK_String, ts+1, te-1 ); } ;
		number => { try_token( TK_Number, ts, te ); };

		pound_comment;

		'}%%' => { 
			endSection();
			fgoto main;
		};

		[ \t\r]+;

		NL => {
			if ( singleLineSpec ) {
				endSection();
				fgoto main;
			}
		};

		'{' => { 
			inline_start_line = curline;
			inline_start = ts;
			curly_count = 1; 
			fgoto inline_code;
		};

		any => { try_token( *ts, 0, 0 ); } ;
	*|;

	action pass {
		if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}

	# Outside code scanner. These tokens get passed through.
	main := |*
		ident => pass;
		number => pass;
		c_comment => pass;
		literal => pass;
		'%%' => {
			startSection( true );
			fgoto parser_def;
		};
		'%%{' => { 
			startSection( false );
			fgoto parser_def;
		};
		whitespace+ => pass;
		EOF;
		any => pass;
	*|;

}%%

%% write data;

void Scanner::do_scan()
{
	int bufsize = 8;
	char *buf = new char[bufsize];
	char *ts, *te;
	int cs, act, have = 0;
	int curly_count = 0;
	char *inline_start = 0;
	char *litstart = 0, *litend = 0;
	char *identstart = 0, *identend = 0;
	bool execute = true;

	%% write init;

	while ( execute ) {
		char *p = buf + have;
		int space = bufsize - have;

		if ( space == 0 ) {
			/* We filled up the buffer trying to scan a token. Grow it. */
			bufsize = bufsize * 2;
			char *newbuf = new char[bufsize];
			//cout << "FULL BUFFER, NEW SIZE: " << bufsize << endl;

			/* Recompute p and space. */
			p = newbuf + have;
			space = bufsize - have;

			/* Patch up pointers possibly in use. */
			if ( ts != 0 )
				ts = newbuf + ( ts - buf );
			if ( inline_start != 0 )
				inline_start = newbuf + ( inline_start - buf );
			te = newbuf + ( te - buf );
			litstart = newbuf + ( litstart - buf );
			litend = newbuf + ( litend - buf );
			identstart = newbuf + ( identstart - buf );
			identend = newbuf + ( identend - buf );

			/* Copy the new buffer in. */
			memcpy( newbuf, buf, have );
			delete[] buf;
			buf = newbuf;
		}

		input.read( p, space );
		int len = input.gcount();
		char *pe = p + len;

		/* Check for EOF. */
		char *eof = 0;
	 	if ( len == 0 ) {
			eof = pe;
			execute = false;
		}

		%% write exec;

		/* Check if we failed. */
		if ( cs == klscan_error ) {
			/* Machine failed before finding a token. */
			cout << "PARSE ERROR" << endl;
			exit(1);
		}

		/* Decide if we need to preserve anything. */
		char *preserve = ts;
		if ( inline_start != 0 && ( preserve == 0 || inline_start < preserve ) )
			preserve = inline_start;

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
			if ( inline_start != 0 )
				inline_start -= shiftback;

			te -= shiftback;
			litstart -= shiftback;
			litend -= shiftback;
			identstart -= shiftback;
			identend -= shiftback;

			preserve = buf;
		}
	}

	delete[] buf;
}

void scan( const char *fileName, istream &input )
{
	ParserDict parserDict;
	Scanner scanner( fileName, input, parserDict, 0 );
	scanner.do_scan();

	/* This uses the most recent parser definition. */
	if ( ::generateGraphviz && ::graphvizGenParser != 0 )
		graphvizGenParser->pd.generateGraphviz();
}
