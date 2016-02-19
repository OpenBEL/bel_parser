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

static const int  section_parser_start  = 7;
static const int  section_parser_first_final  = 7;
static const int  section_parser_error  = 0;
static const int  section_parser_en_main  = 7;
struct Scanner
{
	Scanner( const char *fileName, istream &input, 
			ParserDict &parserDict, int include_depth ) : 
		fileName(fileName), input(input), 
		parserDict(parserDict), include_depth(include_depth),
		parser(0), curline(1)
	{
		
	{
	cs = section_parser_start;
}
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


	{
	if ( p == pe  )
	goto _test_eof;
	
switch ( cs  ) {
	case 7:
goto st_case_7;
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
	
}
goto st_out;
ctr2:
	{char *parserName = captured;
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


	goto st7;
ctr4:
	{char **checks = makeIncludePathChecks( this->fileName, captured );

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


	goto st7;
ctr6:
	{if ( include_depth == 0 ) {
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


	goto st7;
ctr7:
	{if ( parser == 0 )
			error() << "no section name and no previously named section" << endl;
		else {
			int line = TK_Inline ? inline_start_line : curline;
			int result = parser->token( line, tokid, tokdata );
			if ( result < 0 )
				error() << "parse error on or near this line" << endl;
		}
	}


	goto st7;
st7:
	p+= 1;
if ( p == pe  )
	goto _test_eof7;

st_case_7:
	switch ( ( (*( p  ))
)  ) {
	case 128:
{
goto st1;
	}
		 case 129:
{
goto st3;
	}
		 case 130:
{
goto st5;
	}
	
}
if ( 131 <= ( (*( p  ))
)  )
	{
		goto ctr7;
	}

{
	goto ctr7;
}
st1:
	p+= 1;
if ( p == pe  )
	goto _test_eof1;

st_case_1:
	if ( ( (*( p  ))
) == 143  )
	{
		goto ctr0;
	}

{
	goto st0;
}
st_case_0:
st0:
cs = 0;
goto _out;
ctr0:
	{captured = tokdata; }


	goto st2;
st2:
	p+= 1;
if ( p == pe  )
	goto _test_eof2;

st_case_2:
	if ( ( (*( p  ))
) == 59  )
	{
		goto ctr2;
	}

{
	goto st0;
}
st3:
	p+= 1;
if ( p == pe  )
	goto _test_eof3;

st_case_3:
	if ( ( (*( p  ))
) == 144  )
	{
		goto ctr3;
	}

{
	goto st0;
}
ctr3:
	{captured = tokdata; }


	goto st4;
st4:
	p+= 1;
if ( p == pe  )
	goto _test_eof4;

st_case_4:
	if ( ( (*( p  ))
) == 59  )
	{
		goto ctr4;
	}

{
	goto st0;
}
st5:
	p+= 1;
if ( p == pe  )
	goto _test_eof5;

st_case_5:
	if ( ( (*( p  ))
) == 143  )
	{
		goto ctr5;
	}

{
	goto st0;
}
ctr5:
	{captured = tokdata; }


	goto st6;
st6:
	p+= 1;
if ( p == pe  )
	goto _test_eof6;

st_case_6:
	if ( ( (*( p  ))
) == 59  )
	{
		goto ctr6;
	}

{
	goto st0;
}
	st_out:
	_test_eof7: cs = 7;
goto _test_eof; 
	_test_eof1: cs = 1;
goto _test_eof; 
	_test_eof2: cs = 2;
goto _test_eof; 
	_test_eof3: cs = 3;
goto _test_eof; 
	_test_eof4: cs = 4;
goto _test_eof; 
	_test_eof5: cs = 5;
goto _test_eof; 
	_test_eof6: cs = 6;
goto _test_eof; 

	_test_eof: {}
	_out: {}
	}
}

static const int  klscan_start  = 20;
static const int  klscan_first_final  = 20;
static const int  klscan_error  = -1;
static const int  klscan_en_inline_code  = 29;
static const int  klscan_en_access_stmt  = 39;
static const int  klscan_en_parser_def  = 41;
static const int  klscan_en_main  = 20;
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

	
	{
	cs = klscan_start;
ts = 0;
te = 0;
act = 0;
}
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

		
	{
	if ( p == pe  )
	goto _test_eof;
	
switch ( cs  ) {
	case 20:
goto st_case_20;
	case 21:
goto st_case_21;
	case 22:
goto st_case_22;
	case 0:
goto st_case_0;
	case 1:
goto st_case_1;
	case 23:
goto st_case_23;
	case 24:
goto st_case_24;
	case 25:
goto st_case_25;
	case 2:
goto st_case_2;
	case 3:
goto st_case_3;
	case 26:
goto st_case_26;
	case 4:
goto st_case_4;
	case 5:
goto st_case_5;
	case 6:
goto st_case_6;
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
	case 7:
goto st_case_7;
	case 8:
goto st_case_8;
	case 32:
goto st_case_32;
	case 33:
goto st_case_33;
	case 34:
goto st_case_34;
	case 9:
goto st_case_9;
	case 10:
goto st_case_10;
	case 35:
goto st_case_35;
	case 11:
goto st_case_11;
	case 12:
goto st_case_12;
	case 13:
goto st_case_13;
	case 36:
goto st_case_36;
	case 37:
goto st_case_37;
	case 38:
goto st_case_38;
	case 39:
goto st_case_39;
	case 40:
goto st_case_40;
	case 41:
goto st_case_41;
	case 42:
goto st_case_42;
	case 43:
goto st_case_43;
	case 14:
goto st_case_14;
	case 15:
goto st_case_15;
	case 44:
goto st_case_44;
	case 16:
goto st_case_16;
	case 45:
goto st_case_45;
	case 17:
goto st_case_17;
	case 18:
goto st_case_18;
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
	case 53:
goto st_case_53;
	case 54:
goto st_case_54;
	case 55:
goto st_case_55;
	case 56:
goto st_case_56;
	case 57:
goto st_case_57;
	case 58:
goto st_case_58;
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
	case 19:
goto st_case_19;
	
}
goto st_out;
ctr0:
	{{p = ((te))-1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr2:
	{{te = p+1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr9:
	{{te = p+1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr11:
	{curline++; }
{{te = p+1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr33:
	{{te = p+1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr34:
	{{te = p+1;
}}


	goto st20;
ctr43:
	{{te = p;
p-= 1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr44:
	{{te = p;
p-= 1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr46:
	{{te = p;
p-= 1;
{startSection( true );
			{goto st41;}}
}}


	goto st20;
ctr47:
	{{te = p+1;
{startSection( false );
			{goto st41;}}
}}


	goto st20;
ctr48:
	{{te = p;
p-= 1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
ctr49:
	{{te = p;
p-= 1;
{if ( !generateGraphviz && gblErrorCount == 0 && include_depth == 0 )
			outStream->write( ts, te-ts );
	}
}}


	goto st20;
st20:
	{{ts = 0;
}}

	p+= 1;
if ( p == pe  )
	goto _test_eof20;

st_case_20:
	{{ts = p;
}}
switch ( ( (*( p  ))
)  ) {
	case 0:
{
goto ctr34;
	}
		 case 9:
{
goto st21;
	}
		 case 10:
{
goto ctr36;
	}
		 case 13:
{
goto st21;
	}
		 case 32:
{
goto st21;
	}
		 case 33:
{
goto ctr33;
	}
		 case 34:
{
goto ctr37;
	}
		 case 37:
{
goto st23;
	}
		 case 38:
{
goto ctr33;
	}
		 case 39:
{
goto ctr39;
	}
		 case 47:
{
goto ctr40;
	}
		 case 95:
{
goto st28;
	}
		 case 96:
{
goto ctr33;
	}
	
}
if ( ( (*( p  ))
) < 48  )
	{
		if ( ( (*( p  ))
) < 14  )
	{
			if ( ( (*( p  ))
) > 8  )
	{
				if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
					goto ctr33;
				}
			
} 
else if ( ( (*( p  ))
) >= 1  )
	{
				goto ctr33;
			}
		
} 
else if ( ( (*( p  ))
) > 31  )
	{
			if ( ( (*( p  ))
) > 36  )
	{
				if ( 40 <= ( (*( p  ))
) && ( (*( p  ))
) <= 46  )
	{
					goto ctr33;
				}
			
} 
else if ( ( (*( p  ))
) >= 35  )
	{
				goto ctr33;
			}
		
} 
else
	{
			goto ctr33;
		}
	
} 
else if ( ( (*( p  ))
) > 57  )
	{
		if ( ( (*( p  ))
) < 91  )
	{
			if ( ( (*( p  ))
) > 64  )
	{
				{
					goto st28;
				}
			} 
else
	{
				goto ctr33;
			}
		
} 
else if ( ( (*( p  ))
) > 94  )
	{
			if ( ( (*( p  ))
) > 122  )
	{
				{
					goto ctr33;
				}
			} 
else if ( ( (*( p  ))
) >= 97  )
	{
				goto st28;
			}
		
} 
else
	{
			goto ctr33;
		}
	
} 
else
	{
		goto st27;
	}

{
	goto ctr33;
}
ctr36:
	{curline++; }


	goto st21;
st21:
	p+= 1;
if ( p == pe  )
	goto _test_eof21;

st_case_21:
	switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st21;
	}
		 case 10:
{
goto ctr36;
	}
		 case 13:
{
goto st21;
	}
		 case 32:
{
goto st21;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto ctr43;
		}
	
} 
else if ( ( (*( p  ))
) > 31  )
	{
		if ( 33 <= ( (*( p  ))
)  )
	{
			goto ctr43;
		}
	
} 
else
	{
		goto ctr43;
	}

{
	goto ctr43;
}
ctr37:
	{{te = p+1;
}}


	goto st22;
st22:
	p+= 1;
if ( p == pe  )
	goto _test_eof22;

st_case_22:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr44;
	}
		 case 13:
{
goto ctr44;
	}
		 case 34:
{
goto ctr2;
	}
		 case 92:
{
goto st1;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st0;
		}
	
} 
else if ( ( (*( p  ))
) > 33  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st0;
			}
		
} 
else if ( ( (*( p  ))
) >= 35  )
	{
			goto st0;
		}
	
} 
else
	{
		goto st0;
	}

{
	goto st0;
}
st0:
	p+= 1;
if ( p == pe  )
	goto _test_eof0;

st_case_0:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr0;
	}
		 case 13:
{
goto ctr0;
	}
		 case 34:
{
goto ctr2;
	}
		 case 92:
{
goto st1;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st0;
		}
	
} 
else if ( ( (*( p  ))
) > 33  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st0;
			}
		
} 
else if ( ( (*( p  ))
) >= 35  )
	{
			goto st0;
		}
	
} 
else
	{
		goto st0;
	}

{
	goto st0;
}
st1:
	p+= 1;
if ( p == pe  )
	goto _test_eof1;

st_case_1:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr0;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st0;
	}

{
	goto st0;
}
st23:
	p+= 1;
if ( p == pe  )
	goto _test_eof23;

st_case_23:
	if ( ( (*( p  ))
) == 37  )
	{
		goto st24;
	}
	
if ( 38 <= ( (*( p  ))
)  )
	{
		goto ctr44;
	}

{
	goto ctr44;
}
st24:
	p+= 1;
if ( p == pe  )
	goto _test_eof24;

st_case_24:
	if ( ( (*( p  ))
) == 123  )
	{
		goto ctr47;
	}
	
if ( 124 <= ( (*( p  ))
)  )
	{
		goto ctr46;
	}

{
	goto ctr46;
}
ctr39:
	{{te = p+1;
}}


	goto st25;
st25:
	p+= 1;
if ( p == pe  )
	goto _test_eof25;

st_case_25:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr44;
	}
		 case 13:
{
goto ctr44;
	}
		 case 39:
{
goto ctr2;
	}
		 case 92:
{
goto st3;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st2;
		}
	
} 
else if ( ( (*( p  ))
) > 38  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st2;
			}
		
} 
else if ( ( (*( p  ))
) >= 40  )
	{
			goto st2;
		}
	
} 
else
	{
		goto st2;
	}

{
	goto st2;
}
st2:
	p+= 1;
if ( p == pe  )
	goto _test_eof2;

st_case_2:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr0;
	}
		 case 13:
{
goto ctr0;
	}
		 case 39:
{
goto ctr2;
	}
		 case 92:
{
goto st3;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st2;
		}
	
} 
else if ( ( (*( p  ))
) > 38  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st2;
			}
		
} 
else if ( ( (*( p  ))
) >= 40  )
	{
			goto st2;
		}
	
} 
else
	{
		goto st2;
	}

{
	goto st2;
}
st3:
	p+= 1;
if ( p == pe  )
	goto _test_eof3;

st_case_3:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr0;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st2;
	}

{
	goto st2;
}
ctr40:
	{{te = p+1;
}}


	goto st26;
st26:
	p+= 1;
if ( p == pe  )
	goto _test_eof26;

st_case_26:
	switch ( ( (*( p  ))
)  ) {
	case 42:
{
goto st4;
	}
		 case 47:
{
goto st6;
	}
	
}
if ( ( (*( p  ))
) > 46  )
	{
		if ( 48 <= ( (*( p  ))
)  )
	{
			goto ctr44;
		}
	
} 
else if ( ( (*( p  ))
) >= 43  )
	{
		goto ctr44;
	}

{
	goto ctr44;
}
ctr7:
	{curline++; }


	goto st4;
st4:
	p+= 1;
if ( p == pe  )
	goto _test_eof4;

st_case_4:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr7;
	}
		 case 42:
{
goto st5;
	}
	
}
if ( ( (*( p  ))
) > 41  )
	{
		if ( 43 <= ( (*( p  ))
)  )
	{
			goto st4;
		}
	
} 
else if ( ( (*( p  ))
) >= 11  )
	{
		goto st4;
	}

{
	goto st4;
}
st5:
	p+= 1;
if ( p == pe  )
	goto _test_eof5;

st_case_5:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr7;
	}
		 case 42:
{
goto st5;
	}
		 case 47:
{
goto ctr9;
	}
	
}
if ( ( (*( p  ))
) < 43  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 41  )
	{
			goto st4;
		}
	
} 
else if ( ( (*( p  ))
) > 46  )
	{
		if ( 48 <= ( (*( p  ))
)  )
	{
			goto st4;
		}
	
} 
else
	{
		goto st4;
	}

{
	goto st4;
}
st6:
	p+= 1;
if ( p == pe  )
	goto _test_eof6;

st_case_6:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr11;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st6;
	}

{
	goto st6;
}
st27:
	p+= 1;
if ( p == pe  )
	goto _test_eof27;

st_case_27:
	if ( ( (*( p  ))
) > 57  )
	{
		{
			goto ctr48;
		}
	} 
else if ( ( (*( p  ))
) >= 48  )
	{
		goto st27;
	}

{
	goto ctr48;
}
st28:
	p+= 1;
if ( p == pe  )
	goto _test_eof28;

st_case_28:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto st28;
	}
		 case 96:
{
goto ctr49;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr49;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto st28;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 97  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr49;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr49;
			}
		} 
else
	{
			goto st28;
		}
	
} 
else
	{
		goto st28;
	}

{
	goto ctr49;
}
ctr12:
	{{p = ((te))-1;
}}


	goto st29;
ctr14:
	{{te = p+1;
}}


	goto st29;
ctr21:
	{{te = p+1;
}}


	goto st29;
ctr23:
	{curline++; }
{{te = p+1;
}}


	goto st29;
ctr50:
	{{te = p+1;
}}


	goto st29;
ctr60:
	{{te = p+1;
{curly_count += 1; }
}}


	goto st29;
ctr61:
	{{te = p+1;
{if ( --curly_count == 0 ) {
				/* Send the entire block and free the inline_start pointer. */
				try_token( TK_Inline, inline_start, te );
				inline_start = 0;
				{goto st41;}}
		}
}}


	goto st29;
ctr62:
	{{te = p;
p-= 1;
}}


	goto st29;
ctr63:
	{{te = p;
p-= 1;
}}


	goto st29;
ctr64:
	{{te = p+1;
{if ( inline_start < ts )
				try_token( TK_Inline, inline_start, ts );
			try_token( TK_Reference, ts, te );
			inline_start = te;
		}
}}


	goto st29;
ctr66:
	{{te = p;
p-= 1;
{if ( inline_start < ts )
				try_token( TK_Inline, inline_start, ts );
			try_token( TK_Reference, ts, te );
			inline_start = te;
		}
}}


	goto st29;
ctr67:
	{{te = p;
p-= 1;
}}


	goto st29;
ctr68:
	{{te = p;
p-= 1;
}}


	goto st29;
st29:
	{{ts = 0;
}}

	p+= 1;
if ( p == pe  )
	goto _test_eof29;

st_case_29:
	{{ts = p;
}}
switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st30;
	}
		 case 10:
{
goto ctr52;
	}
		 case 13:
{
goto st30;
	}
		 case 32:
{
goto st30;
	}
		 case 33:
{
goto ctr50;
	}
		 case 34:
{
goto ctr53;
	}
		 case 35:
{
goto ctr50;
	}
		 case 36:
{
goto st32;
	}
		 case 39:
{
goto ctr55;
	}
		 case 47:
{
goto ctr56;
	}
		 case 64:
{
goto st37;
	}
		 case 95:
{
goto st38;
	}
		 case 96:
{
goto ctr50;
	}
		 case 123:
{
goto ctr60;
	}
		 case 124:
{
goto ctr50;
	}
		 case 125:
{
goto ctr61;
	}
	
}
if ( ( (*( p  ))
) < 48  )
	{
		if ( ( (*( p  ))
) < 14  )
	{
			if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
				goto ctr50;
			}
		
} 
else if ( ( (*( p  ))
) > 31  )
	{
			if ( ( (*( p  ))
) > 38  )
	{
				if ( 40 <= ( (*( p  ))
) && ( (*( p  ))
) <= 46  )
	{
					goto ctr50;
				}
			
} 
else if ( ( (*( p  ))
) >= 37  )
	{
				goto ctr50;
			}
		
} 
else
	{
			goto ctr50;
		}
	
} 
else if ( ( (*( p  ))
) > 57  )
	{
		if ( ( (*( p  ))
) < 91  )
	{
			if ( ( (*( p  ))
) > 63  )
	{
				if ( 65 <= ( (*( p  ))
)  )
	{
					goto st38;
				}
			
} 
else
	{
				goto ctr50;
			}
		
} 
else if ( ( (*( p  ))
) > 94  )
	{
			if ( ( (*( p  ))
) > 122  )
	{
				if ( 126 <= ( (*( p  ))
)  )
	{
					goto ctr50;
				}
			
} 
else if ( ( (*( p  ))
) >= 97  )
	{
				goto st38;
			}
		
} 
else
	{
			goto ctr50;
		}
	
} 
else
	{
		goto st36;
	}

{
	goto ctr50;
}
ctr52:
	{curline++; }


	goto st30;
st30:
	p+= 1;
if ( p == pe  )
	goto _test_eof30;

st_case_30:
	switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st30;
	}
		 case 10:
{
goto ctr52;
	}
		 case 13:
{
goto st30;
	}
		 case 32:
{
goto st30;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto ctr62;
		}
	
} 
else if ( ( (*( p  ))
) > 31  )
	{
		if ( 33 <= ( (*( p  ))
)  )
	{
			goto ctr62;
		}
	
} 
else
	{
		goto ctr62;
	}

{
	goto ctr62;
}
ctr53:
	{{te = p+1;
}}


	goto st31;
st31:
	p+= 1;
if ( p == pe  )
	goto _test_eof31;

st_case_31:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr63;
	}
		 case 13:
{
goto ctr63;
	}
		 case 34:
{
goto ctr14;
	}
		 case 92:
{
goto st8;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st7;
		}
	
} 
else if ( ( (*( p  ))
) > 33  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st7;
			}
		
} 
else if ( ( (*( p  ))
) >= 35  )
	{
			goto st7;
		}
	
} 
else
	{
		goto st7;
	}

{
	goto st7;
}
st7:
	p+= 1;
if ( p == pe  )
	goto _test_eof7;

st_case_7:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr12;
	}
		 case 13:
{
goto ctr12;
	}
		 case 34:
{
goto ctr14;
	}
		 case 92:
{
goto st8;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st7;
		}
	
} 
else if ( ( (*( p  ))
) > 33  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st7;
			}
		
} 
else if ( ( (*( p  ))
) >= 35  )
	{
			goto st7;
		}
	
} 
else
	{
		goto st7;
	}

{
	goto st7;
}
st8:
	p+= 1;
if ( p == pe  )
	goto _test_eof8;

st_case_8:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr12;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st7;
	}

{
	goto st7;
}
st32:
	p+= 1;
if ( p == pe  )
	goto _test_eof32;

st_case_32:
	if ( ( (*( p  ))
) == 36  )
	{
		goto ctr64;
	}
	
if ( ( (*( p  ))
) < 48  )
	{
		if ( 37 <= ( (*( p  ))
)  )
	{
			goto ctr63;
		}
	
} 
else if ( ( (*( p  ))
) > 57  )
	{
		{
			goto ctr63;
		}
	} 
else
	{
		goto st33;
	}

{
	goto ctr63;
}
st33:
	p+= 1;
if ( p == pe  )
	goto _test_eof33;

st_case_33:
	if ( ( (*( p  ))
) > 57  )
	{
		{
			goto ctr66;
		}
	} 
else if ( ( (*( p  ))
) >= 48  )
	{
		goto st33;
	}

{
	goto ctr66;
}
ctr55:
	{{te = p+1;
}}


	goto st34;
st34:
	p+= 1;
if ( p == pe  )
	goto _test_eof34;

st_case_34:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr63;
	}
		 case 13:
{
goto ctr63;
	}
		 case 39:
{
goto ctr14;
	}
		 case 92:
{
goto st10;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st9;
		}
	
} 
else if ( ( (*( p  ))
) > 38  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st9;
			}
		
} 
else if ( ( (*( p  ))
) >= 40  )
	{
			goto st9;
		}
	
} 
else
	{
		goto st9;
	}

{
	goto st9;
}
st9:
	p+= 1;
if ( p == pe  )
	goto _test_eof9;

st_case_9:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr12;
	}
		 case 13:
{
goto ctr12;
	}
		 case 39:
{
goto ctr14;
	}
		 case 92:
{
goto st10;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st9;
		}
	
} 
else if ( ( (*( p  ))
) > 38  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st9;
			}
		
} 
else if ( ( (*( p  ))
) >= 40  )
	{
			goto st9;
		}
	
} 
else
	{
		goto st9;
	}

{
	goto st9;
}
st10:
	p+= 1;
if ( p == pe  )
	goto _test_eof10;

st_case_10:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr12;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st9;
	}

{
	goto st9;
}
ctr56:
	{{te = p+1;
}}


	goto st35;
st35:
	p+= 1;
if ( p == pe  )
	goto _test_eof35;

st_case_35:
	switch ( ( (*( p  ))
)  ) {
	case 42:
{
goto st11;
	}
		 case 47:
{
goto st13;
	}
	
}
if ( ( (*( p  ))
) > 46  )
	{
		if ( 48 <= ( (*( p  ))
)  )
	{
			goto ctr63;
		}
	
} 
else if ( ( (*( p  ))
) >= 43  )
	{
		goto ctr63;
	}

{
	goto ctr63;
}
ctr19:
	{curline++; }


	goto st11;
st11:
	p+= 1;
if ( p == pe  )
	goto _test_eof11;

st_case_11:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr19;
	}
		 case 42:
{
goto st12;
	}
	
}
if ( ( (*( p  ))
) > 41  )
	{
		if ( 43 <= ( (*( p  ))
)  )
	{
			goto st11;
		}
	
} 
else if ( ( (*( p  ))
) >= 11  )
	{
		goto st11;
	}

{
	goto st11;
}
st12:
	p+= 1;
if ( p == pe  )
	goto _test_eof12;

st_case_12:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr19;
	}
		 case 42:
{
goto st12;
	}
		 case 47:
{
goto ctr21;
	}
	
}
if ( ( (*( p  ))
) < 43  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 41  )
	{
			goto st11;
		}
	
} 
else if ( ( (*( p  ))
) > 46  )
	{
		if ( 48 <= ( (*( p  ))
)  )
	{
			goto st11;
		}
	
} 
else
	{
		goto st11;
	}

{
	goto st11;
}
st13:
	p+= 1;
if ( p == pe  )
	goto _test_eof13;

st_case_13:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr23;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st13;
	}

{
	goto st13;
}
st36:
	p+= 1;
if ( p == pe  )
	goto _test_eof36;

st_case_36:
	if ( ( (*( p  ))
) > 57  )
	{
		{
			goto ctr67;
		}
	} 
else if ( ( (*( p  ))
) >= 48  )
	{
		goto st36;
	}

{
	goto ctr67;
}
st37:
	p+= 1;
if ( p == pe  )
	goto _test_eof37;

st_case_37:
	if ( ( (*( p  ))
) == 64  )
	{
		goto ctr64;
	}
	
if ( ( (*( p  ))
) < 58  )
	{
		if ( 48 <= ( (*( p  ))
)  )
	{
			goto st33;
		}
	
} 
else if ( ( (*( p  ))
) > 63  )
	{
		if ( 65 <= ( (*( p  ))
)  )
	{
			goto ctr63;
		}
	
} 
else
	{
		goto ctr63;
	}

{
	goto ctr63;
}
st38:
	p+= 1;
if ( p == pe  )
	goto _test_eof38;

st_case_38:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto st38;
	}
		 case 96:
{
goto ctr68;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr68;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto st38;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 97  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr68;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr68;
			}
		} 
else
	{
			goto st38;
		}
	
} 
else
	{
		goto st38;
	}

{
	goto ctr68;
}
ctr70:
	{{te = p+1;
{try_token( ';' ); 
			{goto st41;}}
}}


	goto st39;
ctr71:
	{{te = p;
p-= 1;
{try_token( TK_AccessData, ts, te ); }
}}


	goto st39;
st39:
	{{ts = 0;
}}

	p+= 1;
if ( p == pe  )
	goto _test_eof39;

st_case_39:
	{{ts = p;
}}
if ( ( (*( p  ))
) == 59  )
	{
		goto ctr70;
	}
	
if ( 60 <= ( (*( p  ))
)  )
	{
		goto st40;
	}

{
	goto st40;
}
st40:
	p+= 1;
if ( p == pe  )
	goto _test_eof40;

st_case_40:
	if ( ( (*( p  ))
) == 59  )
	{
		goto ctr71;
	}
	
if ( 60 <= ( (*( p  ))
)  )
	{
		goto st40;
	}

{
	goto st40;
}
ctr24:
	{{p = ((te))-1;
{try_token( *ts, 0, 0 ); }
}}


	goto st41;
ctr26:
	{{te = p+1;
{try_token( TK_String, ts+1, te-1 ); }
}}


	goto st41;
ctr29:
	{curline++; }
{{te = p+1;
}}


	goto st41;
ctr30:
	{{te = p+1;
{try_token( TK_Literal, ts+1, te-1 ); }
}}


	goto st41;
ctr32:
	{{te = p+1;
{endSection();
			{goto st20;}}
}}


	goto st41;
ctr72:
	{{te = p+1;
{try_token( *ts, 0, 0 ); }
}}


	goto st41;
ctr74:
	{curline++; }
{{te = p+1;
{if ( singleLineSpec ) {
				endSection();
				{goto st20;}}
		}
}}


	goto st41;
ctr90:
	{{te = p+1;
{inline_start_line = curline;
			inline_start = ts;
			curly_count = 1; 
			{goto st29;}}
}}


	goto st41;
ctr92:
	{{te = p;
p-= 1;
}}


	goto st41;
ctr93:
	{{te = p;
p-= 1;
{try_token( *ts, 0, 0 ); }
}}


	goto st41;
ctr95:
	{{te = p;
p-= 1;
{try_token( TK_Number, ts, te ); }
}}


	goto st41;
ctr96:
	{{switch ( act  ) {
	case 12 :
p = ((te))-1;
{try_token( KW_Commit ); }

break;
case 13 :
p = ((te))-1;
{try_token( KW_Try ); }

break;
case 14 :
p = ((te))-1;
{try_token( KW_Undo ); }

break;
case 15 :
p = ((te))-1;
{try_token( KW_Final ); }

break;
case 16 :
p = ((te))-1;
{try_token( KW_Translate ); }

break;
case 17 :
p = ((te))-1;
{try_token( KW_Token ); }

break;
case 18 :
p = ((te))-1;
{try_token( KW_NonTerm ); }

break;
case 19 :
p = ((te))-1;
{try_token( KW_Uses ); }

break;
case 20 :
p = ((te))-1;
{try_token( KW_Type ); }

break;
case 21 :
p = ((te))-1;
{try_token( KW_Parser ); }

break;
case 22 :
p = ((te))-1;
{try_token( KW_Include ); }

break;
case 23 :
p = ((te))-1;
{try_token( KW_Pri ); }

break;
case 24 :
p = ((te))-1;
{try_token( KW_Write ); }

break;
case 25 :
p = ((te))-1;
{try_token( KW_Class ); }

break;
case 26 :
p = ((te))-1;
{try_token( KW_Shortest ); }

break;
case 28 :
p = ((te))-1;
{try_token( TK_Word, ts, te ); }

break;

}
}
	}


	goto st41;
ctr97:
	{{te = p;
p-= 1;
{try_token( TK_Word, ts, te ); }
}}


	goto st41;
ctr103:
	{{te = p;
p-= 1;
{try_token( KW_Access );
			{goto st39;}}
}}


	goto st41;
st41:
	{{ts = 0;
}}

	p+= 1;
if ( p == pe  )
	goto _test_eof41;

st_case_41:
	{{ts = p;
}}
switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st42;
	}
		 case 10:
{
goto ctr74;
	}
		 case 13:
{
goto st42;
	}
		 case 32:
{
goto st42;
	}
		 case 33:
{
goto ctr72;
	}
		 case 34:
{
goto ctr75;
	}
		 case 35:
{
goto ctr76;
	}
		 case 39:
{
goto ctr77;
	}
		 case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr72;
	}
		 case 97:
{
goto st48;
	}
		 case 98:
{
goto ctr79;
	}
		 case 99:
{
goto st55;
	}
		 case 102:
{
goto st63;
	}
		 case 105:
{
goto st67;
	}
		 case 110:
{
goto st73;
	}
		 case 111:
{
goto ctr79;
	}
		 case 112:
{
goto st79;
	}
		 case 115:
{
goto st85;
	}
		 case 116:
{
goto st92;
	}
		 case 117:
{
goto st105;
	}
		 case 118:
{
goto ctr79;
	}
		 case 119:
{
goto st110;
	}
		 case 123:
{
goto ctr90;
	}
		 case 124:
{
goto ctr72;
	}
		 case 125:
{
goto ctr91;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) < 36  )
	{
			if ( ( (*( p  ))
) > 12  )
	{
				if ( 14 <= ( (*( p  ))
) && ( (*( p  ))
) <= 31  )
	{
					goto ctr72;
				}
			
} 
else if ( ( (*( p  ))
) >= 11  )
	{
				goto ctr72;
			}
		
} 
else if ( ( (*( p  ))
) > 38  )
	{
			if ( ( (*( p  ))
) < 48  )
	{
				if ( 40 <= ( (*( p  ))
)  )
	{
					goto ctr72;
				}
			
} 
else if ( ( (*( p  ))
) > 57  )
	{
				{
					goto ctr72;
				}
			} 
else
	{
				goto st46;
			}
		
} 
else
	{
			goto ctr72;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 106  )
	{
			if ( ( (*( p  ))
) < 100  )
	{
				if ( ( (*( p  ))
) <= 94  )
	{
					goto ctr72;
				}
			
} 
else if ( ( (*( p  ))
) > 101  )
	{
				if ( 103 <= ( (*( p  ))
) && ( (*( p  ))
) <= 104  )
	{
					goto ctr79;
				}
			
} 
else
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 109  )
	{
			if ( ( (*( p  ))
) < 120  )
	{
				if ( 113 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
					goto ctr79;
				}
			
} 
else if ( ( (*( p  ))
) > 122  )
	{
				if ( 126 <= ( (*( p  ))
)  )
	{
					goto ctr72;
				}
			
} 
else
	{
				goto ctr79;
			}
		
} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr79;
	}

{
	goto ctr72;
}
st42:
	p+= 1;
if ( p == pe  )
	goto _test_eof42;

st_case_42:
	switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st42;
	}
		 case 13:
{
goto st42;
	}
		 case 32:
{
goto st42;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 10 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto ctr92;
		}
	
} 
else if ( ( (*( p  ))
) > 31  )
	{
		if ( 33 <= ( (*( p  ))
)  )
	{
			goto ctr92;
		}
	
} 
else
	{
		goto ctr92;
	}

{
	goto ctr92;
}
ctr75:
	{{te = p+1;
}}


	goto st43;
st43:
	p+= 1;
if ( p == pe  )
	goto _test_eof43;

st_case_43:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr93;
	}
		 case 13:
{
goto ctr93;
	}
		 case 34:
{
goto ctr26;
	}
		 case 92:
{
goto st15;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st14;
		}
	
} 
else if ( ( (*( p  ))
) > 33  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st14;
			}
		
} 
else if ( ( (*( p  ))
) >= 35  )
	{
			goto st14;
		}
	
} 
else
	{
		goto st14;
	}

{
	goto st14;
}
st14:
	p+= 1;
if ( p == pe  )
	goto _test_eof14;

st_case_14:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr24;
	}
		 case 13:
{
goto ctr24;
	}
		 case 34:
{
goto ctr26;
	}
		 case 92:
{
goto st15;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st14;
		}
	
} 
else if ( ( (*( p  ))
) > 33  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st14;
			}
		
} 
else if ( ( (*( p  ))
) >= 35  )
	{
			goto st14;
		}
	
} 
else
	{
		goto st14;
	}

{
	goto st14;
}
st15:
	p+= 1;
if ( p == pe  )
	goto _test_eof15;

st_case_15:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr24;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st14;
	}

{
	goto st14;
}
ctr76:
	{{te = p+1;
}}


	goto st44;
st44:
	p+= 1;
if ( p == pe  )
	goto _test_eof44;

st_case_44:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr29;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st16;
	}

{
	goto st16;
}
st16:
	p+= 1;
if ( p == pe  )
	goto _test_eof16;

st_case_16:
	if ( ( (*( p  ))
) == 10  )
	{
		goto ctr29;
	}
	
if ( 11 <= ( (*( p  ))
)  )
	{
		goto st16;
	}

{
	goto st16;
}
ctr77:
	{{te = p+1;
}}


	goto st45;
st45:
	p+= 1;
if ( p == pe  )
	goto _test_eof45;

st_case_45:
	switch ( ( (*( p  ))
)  ) {
	case 10:
{
goto ctr93;
	}
		 case 13:
{
goto ctr93;
	}
		 case 39:
{
goto ctr93;
	}
		 case 92:
{
goto st18;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto st17;
		}
	
} 
else if ( ( (*( p  ))
) > 38  )
	{
		if ( ( (*( p  ))
) > 91  )
	{
			if ( 93 <= ( (*( p  ))
)  )
	{
				goto st17;
			}
		
} 
else if ( ( (*( p  ))
) >= 40  )
	{
			goto st17;
		}
	
} 
else
	{
		goto st17;
	}

{
	goto st17;
}
st17:
	p+= 1;
if ( p == pe  )
	goto _test_eof17;

st_case_17:
	if ( ( (*( p  ))
) == 39  )
	{
		goto ctr30;
	}
	
if ( 40 <= ( (*( p  ))
)  )
	{
		goto ctr24;
	}

{
	goto ctr24;
}
st18:
	p+= 1;
if ( p == pe  )
	goto _test_eof18;

st_case_18:
{
	goto st17;
}
st46:
	p+= 1;
if ( p == pe  )
	goto _test_eof46;

st_case_46:
	if ( ( (*( p  ))
) > 57  )
	{
		{
			goto ctr95;
		}
	} 
else if ( ( (*( p  ))
) >= 48  )
	{
		goto st46;
	}

{
	goto ctr95;
}
ctr79:
	{{te = p+1;
}}
{{act = 28;
}}


	goto st47;
ctr110:
	{{te = p+1;
}}
{{act = 25;
}}


	goto st47;
ctr114:
	{{te = p+1;
}}
{{act = 12;
}}


	goto st47;
ctr118:
	{{te = p+1;
}}
{{act = 15;
}}


	goto st47;
ctr124:
	{{te = p+1;
}}
{{act = 22;
}}


	goto st47;
ctr130:
	{{te = p+1;
}}
{{act = 18;
}}


	goto st47;
ctr136:
	{{te = p+1;
}}
{{act = 21;
}}


	goto st47;
ctr137:
	{{te = p+1;
}}
{{act = 23;
}}


	goto st47;
ctr144:
	{{te = p+1;
}}
{{act = 26;
}}


	goto st47;
ctr150:
	{{te = p+1;
}}
{{act = 17;
}}


	goto st47;
ctr152:
	{{te = p+1;
}}
{{act = 13;
}}


	goto st47;
ctr158:
	{{te = p+1;
}}
{{act = 16;
}}


	goto st47;
ctr160:
	{{te = p+1;
}}
{{act = 20;
}}


	goto st47;
ctr164:
	{{te = p+1;
}}
{{act = 14;
}}


	goto st47;
ctr166:
	{{te = p+1;
}}
{{act = 19;
}}


	goto st47;
ctr170:
	{{te = p+1;
}}
{{act = 24;
}}


	goto st47;
st47:
	p+= 1;
if ( p == pe  )
	goto _test_eof47;

st_case_47:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr96;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr96;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto ctr79;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 97  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr96;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr96;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr79;
	}

{
	goto ctr96;
}
st48:
	p+= 1;
if ( p == pe  )
	goto _test_eof48;

st_case_48:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 99:
{
goto st49;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 100  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 98  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st49:
	p+= 1;
if ( p == pe  )
	goto _test_eof49;

st_case_49:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 99:
{
goto st50;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 100  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 98  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st50:
	p+= 1;
if ( p == pe  )
	goto _test_eof50;

st_case_50:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto st51;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st51:
	p+= 1;
if ( p == pe  )
	goto _test_eof51;

st_case_51:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto st52;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st52:
	p+= 1;
if ( p == pe  )
	goto _test_eof52;

st_case_52:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto st53;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st53:
	p+= 1;
if ( p == pe  )
	goto _test_eof53;

st_case_53:
	switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st54;
	}
		 case 10:
{
goto ctr105;
	}
		 case 13:
{
goto st54;
	}
		 case 32:
{
goto st54;
	}
		 case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr103;
	}
	
}
if ( ( (*( p  ))
) < 58  )
	{
		if ( ( (*( p  ))
) < 14  )
	{
			if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
				goto ctr103;
			}
		
} 
else if ( ( (*( p  ))
) > 31  )
	{
			if ( ( (*( p  ))
) > 47  )
	{
				{
					goto ctr79;
				}
			} 
else if ( ( (*( p  ))
) >= 33  )
	{
				goto ctr103;
			}
		
} 
else
	{
			goto ctr103;
		}
	
} 
else if ( ( (*( p  ))
) > 64  )
	{
		if ( ( (*( p  ))
) < 91  )
	{
			{
				goto ctr79;
			}
		} 
else if ( ( (*( p  ))
) > 94  )
	{
			if ( ( (*( p  ))
) > 122  )
	{
				{
					goto ctr103;
				}
			} 
else if ( ( (*( p  ))
) >= 97  )
	{
				goto ctr79;
			}
		
} 
else
	{
			goto ctr103;
		}
	
} 
else
	{
		goto ctr103;
	}

{
	goto ctr103;
}
ctr105:
	{curline++; }


	goto st54;
st54:
	p+= 1;
if ( p == pe  )
	goto _test_eof54;

st_case_54:
	switch ( ( (*( p  ))
)  ) {
	case 9:
{
goto st54;
	}
		 case 10:
{
goto ctr105;
	}
		 case 13:
{
goto st54;
	}
		 case 32:
{
goto st54;
	}
	
}
if ( ( (*( p  ))
) < 14  )
	{
		if ( 11 <= ( (*( p  ))
) && ( (*( p  ))
) <= 12  )
	{
			goto ctr103;
		}
	
} 
else if ( ( (*( p  ))
) > 31  )
	{
		if ( 33 <= ( (*( p  ))
)  )
	{
			goto ctr103;
		}
	
} 
else
	{
		goto ctr103;
	}

{
	goto ctr103;
}
st55:
	p+= 1;
if ( p == pe  )
	goto _test_eof55;

st_case_55:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 108:
{
goto st56;
	}
		 case 111:
{
goto st59;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 109  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 107  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 110  )
	{
			if ( ( (*( p  ))
) > 122  )
	{
				{
					goto ctr97;
				}
			} 
else if ( ( (*( p  ))
) >= 112  )
	{
				goto ctr79;
			}
		
} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st56:
	p+= 1;
if ( p == pe  )
	goto _test_eof56;

st_case_56:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 97:
{
goto st57;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr97;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto ctr79;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 98  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr97;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr79;
	}

{
	goto ctr97;
}
st57:
	p+= 1;
if ( p == pe  )
	goto _test_eof57;

st_case_57:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto st58;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st58:
	p+= 1;
if ( p == pe  )
	goto _test_eof58;

st_case_58:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto ctr110;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st59:
	p+= 1;
if ( p == pe  )
	goto _test_eof59;

st_case_59:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 109:
{
goto st60;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 110  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 108  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st60:
	p+= 1;
if ( p == pe  )
	goto _test_eof60;

st_case_60:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 109:
{
goto st61;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 110  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 108  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st61:
	p+= 1;
if ( p == pe  )
	goto _test_eof61;

st_case_61:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 105:
{
goto st62;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 106  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 104  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st62:
	p+= 1;
if ( p == pe  )
	goto _test_eof62;

st_case_62:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 116:
{
goto ctr114;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 117  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 115  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st63:
	p+= 1;
if ( p == pe  )
	goto _test_eof63;

st_case_63:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 105:
{
goto st64;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 106  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 104  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st64:
	p+= 1;
if ( p == pe  )
	goto _test_eof64;

st_case_64:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 110:
{
goto st65;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 111  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 109  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st65:
	p+= 1;
if ( p == pe  )
	goto _test_eof65;

st_case_65:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 97:
{
goto st66;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr97;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto ctr79;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 98  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr97;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr79;
	}

{
	goto ctr97;
}
st66:
	p+= 1;
if ( p == pe  )
	goto _test_eof66;

st_case_66:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 108:
{
goto ctr118;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 109  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 107  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st67:
	p+= 1;
if ( p == pe  )
	goto _test_eof67;

st_case_67:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 110:
{
goto st68;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 111  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 109  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st68:
	p+= 1;
if ( p == pe  )
	goto _test_eof68;

st_case_68:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 99:
{
goto st69;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 100  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 98  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st69:
	p+= 1;
if ( p == pe  )
	goto _test_eof69;

st_case_69:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 108:
{
goto st70;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 109  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 107  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st70:
	p+= 1;
if ( p == pe  )
	goto _test_eof70;

st_case_70:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 117:
{
goto st71;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 118  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 116  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st71:
	p+= 1;
if ( p == pe  )
	goto _test_eof71;

st_case_71:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 100:
{
goto st72;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 101  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 99  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st72:
	p+= 1;
if ( p == pe  )
	goto _test_eof72;

st_case_72:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto ctr124;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st73:
	p+= 1;
if ( p == pe  )
	goto _test_eof73;

st_case_73:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 111:
{
goto st74;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 112  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 110  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st74:
	p+= 1;
if ( p == pe  )
	goto _test_eof74;

st_case_74:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 110:
{
goto st75;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 111  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 109  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st75:
	p+= 1;
if ( p == pe  )
	goto _test_eof75;

st_case_75:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 116:
{
goto st76;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 117  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 115  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st76:
	p+= 1;
if ( p == pe  )
	goto _test_eof76;

st_case_76:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto st77;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st77:
	p+= 1;
if ( p == pe  )
	goto _test_eof77;

st_case_77:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 114:
{
goto st78;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 115  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 113  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st78:
	p+= 1;
if ( p == pe  )
	goto _test_eof78;

st_case_78:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 109:
{
goto ctr130;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 110  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 108  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st79:
	p+= 1;
if ( p == pe  )
	goto _test_eof79;

st_case_79:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 97:
{
goto st80;
	}
		 case 114:
{
goto st84;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 115  )
	{
			if ( 98 <= ( (*( p  ))
) && ( (*( p  ))
) <= 113  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st80:
	p+= 1;
if ( p == pe  )
	goto _test_eof80;

st_case_80:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 114:
{
goto st81;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 115  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 113  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st81:
	p+= 1;
if ( p == pe  )
	goto _test_eof81;

st_case_81:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto st82;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st82:
	p+= 1;
if ( p == pe  )
	goto _test_eof82;

st_case_82:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto st83;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st83:
	p+= 1;
if ( p == pe  )
	goto _test_eof83;

st_case_83:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 114:
{
goto ctr136;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 115  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 113  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st84:
	p+= 1;
if ( p == pe  )
	goto _test_eof84;

st_case_84:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 105:
{
goto ctr137;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 106  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 104  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st85:
	p+= 1;
if ( p == pe  )
	goto _test_eof85;

st_case_85:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 104:
{
goto st86;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 105  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 103  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st86:
	p+= 1;
if ( p == pe  )
	goto _test_eof86;

st_case_86:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 111:
{
goto st87;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 112  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 110  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st87:
	p+= 1;
if ( p == pe  )
	goto _test_eof87;

st_case_87:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 114:
{
goto st88;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 115  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 113  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st88:
	p+= 1;
if ( p == pe  )
	goto _test_eof88;

st_case_88:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 116:
{
goto st89;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 117  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 115  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st89:
	p+= 1;
if ( p == pe  )
	goto _test_eof89;

st_case_89:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto st90;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st90:
	p+= 1;
if ( p == pe  )
	goto _test_eof90;

st_case_90:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto st91;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st91:
	p+= 1;
if ( p == pe  )
	goto _test_eof91;

st_case_91:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 116:
{
goto ctr144;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 117  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 115  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st92:
	p+= 1;
if ( p == pe  )
	goto _test_eof92;

st_case_92:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 111:
{
goto st93;
	}
		 case 114:
{
goto st96;
	}
		 case 121:
{
goto st103;
	}
		 case 122:
{
goto ctr79;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 112  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 110  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 113  )
	{
			if ( ( (*( p  ))
) > 120  )
	{
				if ( 123 <= ( (*( p  ))
)  )
	{
					goto ctr97;
				}
			
} 
else if ( ( (*( p  ))
) >= 115  )
	{
				goto ctr79;
			}
		
} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st93:
	p+= 1;
if ( p == pe  )
	goto _test_eof93;

st_case_93:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 107:
{
goto st94;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 108  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 106  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st94:
	p+= 1;
if ( p == pe  )
	goto _test_eof94;

st_case_94:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto st95;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st95:
	p+= 1;
if ( p == pe  )
	goto _test_eof95;

st_case_95:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 110:
{
goto ctr150;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 111  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 109  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st96:
	p+= 1;
if ( p == pe  )
	goto _test_eof96;

st_case_96:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 97:
{
goto st97;
	}
		 case 121:
{
goto ctr152;
	}
		 case 122:
{
goto ctr79;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr97;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto ctr79;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 98  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr97;
			}
		
} 
else if ( ( (*( p  ))
) > 120  )
	{
			if ( 123 <= ( (*( p  ))
)  )
	{
				goto ctr97;
			}
		
} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr79;
	}

{
	goto ctr97;
}
st97:
	p+= 1;
if ( p == pe  )
	goto _test_eof97;

st_case_97:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 110:
{
goto st98;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 111  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 109  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st98:
	p+= 1;
if ( p == pe  )
	goto _test_eof98;

st_case_98:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto st99;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st99:
	p+= 1;
if ( p == pe  )
	goto _test_eof99;

st_case_99:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 108:
{
goto st100;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 109  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 107  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st100:
	p+= 1;
if ( p == pe  )
	goto _test_eof100;

st_case_100:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 97:
{
goto st101;
	}
	
}
if ( ( (*( p  ))
) < 65  )
	{
		if ( ( (*( p  ))
) > 57  )
	{
			{
				goto ctr97;
			}
		} 
else if ( ( (*( p  ))
) >= 48  )
	{
			goto ctr79;
		}
	
} 
else if ( ( (*( p  ))
) > 90  )
	{
		if ( ( (*( p  ))
) < 98  )
	{
			if ( ( (*( p  ))
) <= 94  )
	{
				goto ctr97;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr79;
	}

{
	goto ctr97;
}
st101:
	p+= 1;
if ( p == pe  )
	goto _test_eof101;

st_case_101:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 116:
{
goto st102;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 117  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 115  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st102:
	p+= 1;
if ( p == pe  )
	goto _test_eof102;

st_case_102:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto ctr158;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st103:
	p+= 1;
if ( p == pe  )
	goto _test_eof103;

st_case_103:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 112:
{
goto st104;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 113  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 111  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st104:
	p+= 1;
if ( p == pe  )
	goto _test_eof104;

st_case_104:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto ctr160;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st105:
	p+= 1;
if ( p == pe  )
	goto _test_eof105;

st_case_105:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 110:
{
goto st106;
	}
		 case 115:
{
goto st108;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 111  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 109  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 114  )
	{
			if ( ( (*( p  ))
) > 122  )
	{
				{
					goto ctr97;
				}
			} 
else if ( ( (*( p  ))
) >= 116  )
	{
				goto ctr79;
			}
		
} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st106:
	p+= 1;
if ( p == pe  )
	goto _test_eof106;

st_case_106:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 100:
{
goto st107;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 101  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 99  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st107:
	p+= 1;
if ( p == pe  )
	goto _test_eof107;

st_case_107:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 111:
{
goto ctr164;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 112  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 110  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st108:
	p+= 1;
if ( p == pe  )
	goto _test_eof108;

st_case_108:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto st109;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st109:
	p+= 1;
if ( p == pe  )
	goto _test_eof109;

st_case_109:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 115:
{
goto ctr166;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 116  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 114  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st110:
	p+= 1;
if ( p == pe  )
	goto _test_eof110;

st_case_110:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 114:
{
goto st111;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 115  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 113  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st111:
	p+= 1;
if ( p == pe  )
	goto _test_eof111;

st_case_111:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 105:
{
goto st112;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 106  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 104  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st112:
	p+= 1;
if ( p == pe  )
	goto _test_eof112;

st_case_112:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 116:
{
goto st113;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 117  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 115  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
st113:
	p+= 1;
if ( p == pe  )
	goto _test_eof113;

st_case_113:
	switch ( ( (*( p  ))
)  ) {
	case 95:
{
goto ctr79;
	}
		 case 96:
{
goto ctr97;
	}
		 case 101:
{
goto ctr170;
	}
	
}
if ( ( (*( p  ))
) < 91  )
	{
		if ( ( (*( p  ))
) < 58  )
	{
			if ( 48 <= ( (*( p  ))
)  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 64  )
	{
			{
				goto ctr79;
			}
		} 
else
	{
			goto ctr97;
		}
	
} 
else if ( ( (*( p  ))
) > 94  )
	{
		if ( ( (*( p  ))
) < 102  )
	{
			if ( 97 <= ( (*( p  ))
) && ( (*( p  ))
) <= 100  )
	{
				goto ctr79;
			}
		
} 
else if ( ( (*( p  ))
) > 122  )
	{
			{
				goto ctr97;
			}
		} 
else
	{
			goto ctr79;
		}
	
} 
else
	{
		goto ctr97;
	}

{
	goto ctr97;
}
ctr91:
	{{te = p+1;
}}


	goto st114;
st114:
	p+= 1;
if ( p == pe  )
	goto _test_eof114;

st_case_114:
	if ( ( (*( p  ))
) == 37  )
	{
		goto st19;
	}
	
if ( 38 <= ( (*( p  ))
)  )
	{
		goto ctr93;
	}

{
	goto ctr93;
}
st19:
	p+= 1;
if ( p == pe  )
	goto _test_eof19;

st_case_19:
	if ( ( (*( p  ))
) == 37  )
	{
		goto ctr32;
	}
	
if ( 38 <= ( (*( p  ))
)  )
	{
		goto ctr24;
	}

{
	goto ctr24;
}
	st_out:
	_test_eof20: cs = 20;
goto _test_eof; 
	_test_eof21: cs = 21;
goto _test_eof; 
	_test_eof22: cs = 22;
goto _test_eof; 
	_test_eof0: cs = 0;
goto _test_eof; 
	_test_eof1: cs = 1;
goto _test_eof; 
	_test_eof23: cs = 23;
goto _test_eof; 
	_test_eof24: cs = 24;
goto _test_eof; 
	_test_eof25: cs = 25;
goto _test_eof; 
	_test_eof2: cs = 2;
goto _test_eof; 
	_test_eof3: cs = 3;
goto _test_eof; 
	_test_eof26: cs = 26;
goto _test_eof; 
	_test_eof4: cs = 4;
goto _test_eof; 
	_test_eof5: cs = 5;
goto _test_eof; 
	_test_eof6: cs = 6;
goto _test_eof; 
	_test_eof27: cs = 27;
goto _test_eof; 
	_test_eof28: cs = 28;
goto _test_eof; 
	_test_eof29: cs = 29;
goto _test_eof; 
	_test_eof30: cs = 30;
goto _test_eof; 
	_test_eof31: cs = 31;
goto _test_eof; 
	_test_eof7: cs = 7;
goto _test_eof; 
	_test_eof8: cs = 8;
goto _test_eof; 
	_test_eof32: cs = 32;
goto _test_eof; 
	_test_eof33: cs = 33;
goto _test_eof; 
	_test_eof34: cs = 34;
goto _test_eof; 
	_test_eof9: cs = 9;
goto _test_eof; 
	_test_eof10: cs = 10;
goto _test_eof; 
	_test_eof35: cs = 35;
goto _test_eof; 
	_test_eof11: cs = 11;
goto _test_eof; 
	_test_eof12: cs = 12;
goto _test_eof; 
	_test_eof13: cs = 13;
goto _test_eof; 
	_test_eof36: cs = 36;
goto _test_eof; 
	_test_eof37: cs = 37;
goto _test_eof; 
	_test_eof38: cs = 38;
goto _test_eof; 
	_test_eof39: cs = 39;
goto _test_eof; 
	_test_eof40: cs = 40;
goto _test_eof; 
	_test_eof41: cs = 41;
goto _test_eof; 
	_test_eof42: cs = 42;
goto _test_eof; 
	_test_eof43: cs = 43;
goto _test_eof; 
	_test_eof14: cs = 14;
goto _test_eof; 
	_test_eof15: cs = 15;
goto _test_eof; 
	_test_eof44: cs = 44;
goto _test_eof; 
	_test_eof16: cs = 16;
goto _test_eof; 
	_test_eof45: cs = 45;
goto _test_eof; 
	_test_eof17: cs = 17;
goto _test_eof; 
	_test_eof18: cs = 18;
goto _test_eof; 
	_test_eof46: cs = 46;
goto _test_eof; 
	_test_eof47: cs = 47;
goto _test_eof; 
	_test_eof48: cs = 48;
goto _test_eof; 
	_test_eof49: cs = 49;
goto _test_eof; 
	_test_eof50: cs = 50;
goto _test_eof; 
	_test_eof51: cs = 51;
goto _test_eof; 
	_test_eof52: cs = 52;
goto _test_eof; 
	_test_eof53: cs = 53;
goto _test_eof; 
	_test_eof54: cs = 54;
goto _test_eof; 
	_test_eof55: cs = 55;
goto _test_eof; 
	_test_eof56: cs = 56;
goto _test_eof; 
	_test_eof57: cs = 57;
goto _test_eof; 
	_test_eof58: cs = 58;
goto _test_eof; 
	_test_eof59: cs = 59;
goto _test_eof; 
	_test_eof60: cs = 60;
goto _test_eof; 
	_test_eof61: cs = 61;
goto _test_eof; 
	_test_eof62: cs = 62;
goto _test_eof; 
	_test_eof63: cs = 63;
goto _test_eof; 
	_test_eof64: cs = 64;
goto _test_eof; 
	_test_eof65: cs = 65;
goto _test_eof; 
	_test_eof66: cs = 66;
goto _test_eof; 
	_test_eof67: cs = 67;
goto _test_eof; 
	_test_eof68: cs = 68;
goto _test_eof; 
	_test_eof69: cs = 69;
goto _test_eof; 
	_test_eof70: cs = 70;
goto _test_eof; 
	_test_eof71: cs = 71;
goto _test_eof; 
	_test_eof72: cs = 72;
goto _test_eof; 
	_test_eof73: cs = 73;
goto _test_eof; 
	_test_eof74: cs = 74;
goto _test_eof; 
	_test_eof75: cs = 75;
goto _test_eof; 
	_test_eof76: cs = 76;
goto _test_eof; 
	_test_eof77: cs = 77;
goto _test_eof; 
	_test_eof78: cs = 78;
goto _test_eof; 
	_test_eof79: cs = 79;
goto _test_eof; 
	_test_eof80: cs = 80;
goto _test_eof; 
	_test_eof81: cs = 81;
goto _test_eof; 
	_test_eof82: cs = 82;
goto _test_eof; 
	_test_eof83: cs = 83;
goto _test_eof; 
	_test_eof84: cs = 84;
goto _test_eof; 
	_test_eof85: cs = 85;
goto _test_eof; 
	_test_eof86: cs = 86;
goto _test_eof; 
	_test_eof87: cs = 87;
goto _test_eof; 
	_test_eof88: cs = 88;
goto _test_eof; 
	_test_eof89: cs = 89;
goto _test_eof; 
	_test_eof90: cs = 90;
goto _test_eof; 
	_test_eof91: cs = 91;
goto _test_eof; 
	_test_eof92: cs = 92;
goto _test_eof; 
	_test_eof93: cs = 93;
goto _test_eof; 
	_test_eof94: cs = 94;
goto _test_eof; 
	_test_eof95: cs = 95;
goto _test_eof; 
	_test_eof96: cs = 96;
goto _test_eof; 
	_test_eof97: cs = 97;
goto _test_eof; 
	_test_eof98: cs = 98;
goto _test_eof; 
	_test_eof99: cs = 99;
goto _test_eof; 
	_test_eof100: cs = 100;
goto _test_eof; 
	_test_eof101: cs = 101;
goto _test_eof; 
	_test_eof102: cs = 102;
goto _test_eof; 
	_test_eof103: cs = 103;
goto _test_eof; 
	_test_eof104: cs = 104;
goto _test_eof; 
	_test_eof105: cs = 105;
goto _test_eof; 
	_test_eof106: cs = 106;
goto _test_eof; 
	_test_eof107: cs = 107;
goto _test_eof; 
	_test_eof108: cs = 108;
goto _test_eof; 
	_test_eof109: cs = 109;
goto _test_eof; 
	_test_eof110: cs = 110;
goto _test_eof; 
	_test_eof111: cs = 111;
goto _test_eof; 
	_test_eof112: cs = 112;
goto _test_eof; 
	_test_eof113: cs = 113;
goto _test_eof; 
	_test_eof114: cs = 114;
goto _test_eof; 
	_test_eof19: cs = 19;
goto _test_eof; 

	_test_eof: {}
	if ( p == eof  )
	{
	switch ( cs  ) {
	case 21:
goto ctr43;
	case 22:
goto ctr44;
	case 0:
goto ctr0;
	case 1:
goto ctr0;
	case 23:
goto ctr44;
	case 24:
goto ctr46;
	case 25:
goto ctr44;
	case 2:
goto ctr0;
	case 3:
goto ctr0;
	case 26:
goto ctr44;
	case 4:
goto ctr0;
	case 5:
goto ctr0;
	case 6:
goto ctr0;
	case 27:
goto ctr48;
	case 28:
goto ctr49;
	case 30:
goto ctr62;
	case 31:
goto ctr63;
	case 7:
goto ctr12;
	case 8:
goto ctr12;
	case 32:
goto ctr63;
	case 33:
goto ctr66;
	case 34:
goto ctr63;
	case 9:
goto ctr12;
	case 10:
goto ctr12;
	case 35:
goto ctr63;
	case 11:
goto ctr12;
	case 12:
goto ctr12;
	case 13:
goto ctr12;
	case 36:
goto ctr67;
	case 37:
goto ctr63;
	case 38:
goto ctr68;
	case 40:
goto ctr71;
	case 42:
goto ctr92;
	case 43:
goto ctr93;
	case 14:
goto ctr24;
	case 15:
goto ctr24;
	case 44:
goto ctr93;
	case 16:
goto ctr24;
	case 45:
goto ctr93;
	case 17:
goto ctr24;
	case 18:
goto ctr24;
	case 46:
goto ctr95;
	case 47:
goto ctr96;
	case 48:
goto ctr97;
	case 49:
goto ctr97;
	case 50:
goto ctr97;
	case 51:
goto ctr97;
	case 52:
goto ctr97;
	case 53:
goto ctr103;
	case 54:
goto ctr103;
	case 55:
goto ctr97;
	case 56:
goto ctr97;
	case 57:
goto ctr97;
	case 58:
goto ctr97;
	case 59:
goto ctr97;
	case 60:
goto ctr97;
	case 61:
goto ctr97;
	case 62:
goto ctr97;
	case 63:
goto ctr97;
	case 64:
goto ctr97;
	case 65:
goto ctr97;
	case 66:
goto ctr97;
	case 67:
goto ctr97;
	case 68:
goto ctr97;
	case 69:
goto ctr97;
	case 70:
goto ctr97;
	case 71:
goto ctr97;
	case 72:
goto ctr97;
	case 73:
goto ctr97;
	case 74:
goto ctr97;
	case 75:
goto ctr97;
	case 76:
goto ctr97;
	case 77:
goto ctr97;
	case 78:
goto ctr97;
	case 79:
goto ctr97;
	case 80:
goto ctr97;
	case 81:
goto ctr97;
	case 82:
goto ctr97;
	case 83:
goto ctr97;
	case 84:
goto ctr97;
	case 85:
goto ctr97;
	case 86:
goto ctr97;
	case 87:
goto ctr97;
	case 88:
goto ctr97;
	case 89:
goto ctr97;
	case 90:
goto ctr97;
	case 91:
goto ctr97;
	case 92:
goto ctr97;
	case 93:
goto ctr97;
	case 94:
goto ctr97;
	case 95:
goto ctr97;
	case 96:
goto ctr97;
	case 97:
goto ctr97;
	case 98:
goto ctr97;
	case 99:
goto ctr97;
	case 100:
goto ctr97;
	case 101:
goto ctr97;
	case 102:
goto ctr97;
	case 103:
goto ctr97;
	case 104:
goto ctr97;
	case 105:
goto ctr97;
	case 106:
goto ctr97;
	case 107:
goto ctr97;
	case 108:
goto ctr97;
	case 109:
goto ctr97;
	case 110:
goto ctr97;
	case 111:
goto ctr97;
	case 112:
goto ctr97;
	case 113:
goto ctr97;
	case 114:
goto ctr93;
	case 19:
goto ctr24;
	
}
}

	
}
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
