/*
 *  Copyright 2001-2005, 2009-2012 Adrian Thurston <thurston@complang.org>
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

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <fstream>
#include <unistd.h>

/* Parsing. */
#include "kelbt.h"
#include "parsedata.h"

/* Parameters and output. */
#include "pcheck.h"
#include "vector.h"
#include "version.h"

using std::ostream;
using std::istream;
using std::ifstream;
using std::ios;
using std::cout;
using std::cerr;
using std::cin;
using std::endl;

/* Target language and output style. */
const char *defExtension = ".cpp";

/* Io globals. */
ostream *outStream = 0;
output_filter *outFilter = 0;
const char *inputFile = 0;
const char *outputFile = 0;
bool generateGraphviz = false;
Parser *graphvizGenParser = 0;
bool branchPointInfo = false;
bool addUniqueEmptyProductions = false;
bool inhibitLineDirectives = false;
istream *inStream = 0;
ArgsVector includePaths;

/* Print a summary of the options. */
void usage()
{
	cout <<
"usage: kelbt [options] file\n"
"general:\n"
"   -h, -H, -?, --help    Print this usage and exit\n"
"   -v, --version         Print version information and exit\n"
"   -o <file>             Write output to <file>\n"
"   -V                    Generate a Graphviz dotfile\n"
"   -i                    Show branch point info\n"
"   -t                    Force top-down with unique empty productions\n"
"   -l                    Inhibit writing of #line directives\n"
	;	
}

/* Print version information. */
void version()
{
	cout << "Kelbt version " VERSION << " " PUBDATE << endl <<
			"Copyright (c) 2005-2012 by Adrian Thurston" << endl;
}

/* Scans a string looking for the file extension. If there is a file
 * extension then pointer returned points to inside the string
 * passed in. Otherwise returns null. */
const char *findFileExtension( const char *stemFile )
{
	const char *ppos = stemFile + strlen(stemFile) - 1;
	/* Scan backwards from the end looking for the first dot.
	 * If we encounter a '/' before the first dot, then stop the scan. */
	while ( 1 ) {
		/* If we found a dot or got to the beginning of the string then
		 * we are done. */
		if ( ppos == stemFile || *ppos == '.' )
			break;

		/* If we hit a / then there is no extension. Done. */
		if ( *ppos == '/' ) {
			ppos = stemFile;
			break;
		}
		ppos--;
	} 

	/* If we got to the front of the string then bail we 
	 * did not find an extension  */
	if ( ppos == stemFile )
		ppos = 0;

	return ppos;
}

/* Make a file name from a stem. Removes the old filename suffix and
 * replaces it with a new one. Returns a newed up string. */
const char *fileNameFromStem( const char *stemFile, const char *suffix )
{
	int len = strlen( stemFile );
	assert( len > 0 );

	/* Get the extension. */
	const char *ppos = findFileExtension( stemFile );

	/* If an extension was found, then shorten what we think the len is. */
	if ( ppos != 0 )
		len = ppos - stemFile;

	/* Make the return string from the stem and the suffix. */
	char *retVal = new char[ len + strlen( suffix ) + 1 ];
	strncpy( retVal, stemFile, len );
	strcpy( retVal + len, suffix );

	return retVal;
}

/* Total error count. */
int gblErrorCount = 0;

/* Print the opening to a program error, then return the error stream. */
ostream &error()
{
	/* Keep the error count. */
//	if ( id != 0 && id->pd != 0 )
//		id->pd->errorCount += 1;
	gblErrorCount += 1;
	
	cerr << PROGNAME ": ";
	return cerr;
}

/* Print the opening to an error in the input, then return the error ostream. */
ostream &error( const InputLoc &loc )
{
	assert( inputFile != 0 );

	/* Keep the error count. */
	gblErrorCount += 1;
	cerr << inputFile << ":" << loc.line << ":" << 
			loc.col << ": ";
	return cerr;
}

/* Print the opening to a warning, then return the error ostream. */
ostream &warning( )
{
	assert( inputFile != 0 );
	cerr << inputFile << ": warning: ";
	return cerr;
}

/* Print the opening to a warning in the input, then return the error ostream. */
ostream &warning( const InputLoc &loc )
{
	assert( inputFile != 0 );
	cerr << inputFile << ":" << loc.line << ":" << 
			loc.col << ": warning: ";
	return cerr;
}

int output_filter::sync( )
{
	line += 1;
	return std::filebuf::sync();
}

/* Counts newlines before sending data out to file. */
std::streamsize output_filter::xsputn( const char *s, std::streamsize n )
{
	for ( int i = 0; i < n; i++ ) {
		if ( s[i] == '\n' )
			line += 1;
	}
	return std::filebuf::xsputn( s, n );
}

void escapeLineDirectivePath( std::ostream &out, const char *path )
{
	for ( const char *pc = path; *pc != 0; pc++ ) {
		if ( *pc == '\\' )
			out << "\\\\";
		else
			out << *pc;
	}
}

void scan( const char *fileName, istream &input );

/* Main, process args and call yyparse to start scanning input. */
int main(int argc, const char **argv)
{
	ParamCheck pc("I:io:VdvHh?-:tl", argc, argv);

	while ( pc.check() ) {
		switch ( pc.state ) {
		case ParamCheck::match:
			switch ( pc.parameter ) {
			/* Output. */
			case 'o':
				if ( *pc.paramArg == 0 ) {
					/* Complain, someone used -o "" */
					error() << "zero length output file name" << endl;
					exit(1);
				}
				else if ( outputFile != 0 ) {
					/* Complain, two output files given. */
					error() << "more than one output file" << endl;
					exit(1);
				}
				else {
					/* Ok, remember the output file name. */
					outputFile = pc.paramArg;
				}
				break;

			/* Version and help. */
			case 'v':
				version();
				exit(0);
			case 'H': case 'h': case '?':
				usage();
				exit(0);
			case 'V':
				generateGraphviz = true;
				break;
			case 'i':
				branchPointInfo = true;
				break;
			case '-':
				if ( strcasecmp(pc.paramArg, "help") == 0 ) {
					usage();
					exit(0);
				}
				else if ( strcasecmp(pc.paramArg, "version") == 0 ) {
					version();
					exit(0);
				}
				else {
					error() << "invalid parameter" << endl;
					exit(1);
				}
				break;
			case 't':
				addUniqueEmptyProductions = true;
				break;
			case 'l':
				inhibitLineDirectives = true;
				break;
			case 'I':
				includePaths.append( pc.paramArg );
				break;
			}
			break;

		case ParamCheck::invalid:
			error() << "invalid parameter" << endl;
			exit(1);

		case ParamCheck::noparam:
			/* It is interpreted as an input file. */
			if ( *pc.curArg == 0 ) {
				error() << "zero length input file name" << endl;
				exit(1);
			}
			if ( inputFile != 0 ) {
				error() << "more than one input file" << endl;
				exit(1);
			}
			/* Remember the filename. */
			inputFile = pc.curArg;
			break;
		}
	}

	/* Look for no input file specified. */
	if ( inputFile == 0 )
		error() << "no input file" << endl;

	/* Bail on above errors. */
	if ( gblErrorCount > 0 )
		exit(1);

	if ( ! generateGraphviz ) {
		if ( outputFile == 0 )
			outputFile = fileNameFromStem( inputFile, defExtension );

		/* Make sure we are not writing to the same file as the input file. */
		if ( outputFile != 0 && strcmp( inputFile, outputFile  ) == 0 ) {
			error() << "output file \"" << outputFile  << 
					"\" is the same as the input file" << endl;
		}
	}

	/* Open the input file for reading. */
	ifstream *inFile = new ifstream( inputFile );
	inStream = inFile;
	if ( ! inFile->is_open() )
		error() << "could not open " << inputFile << " for reading" << endl;

	/* Bail on above errors. */
	if ( gblErrorCount > 0 )
		exit(1);

	if ( outputFile != 0 ) {
		/* Create the filter on the output and open it. */
		outFilter = new output_filter;
		outFilter->open( outputFile, ios::out|ios::trunc );
		if ( !outFilter->is_open() ) {
			error() << "error opening " << outputFile << " for writing" << endl;
			exit(1);
		}

		/* Open the output stream, attaching it to the filter. */
		outStream = new ostream( outFilter );
	}
	else {
		/* Writing to std out. */
		outStream = &cout;
	}

	if ( ! generateGraphviz ) {
		/* Put a header on the output to indicate that the file was machine generated. */
		*outStream <<
			"/* Automatically generated by Kelbt from \"" << inputFile << "\".\n"
			" *\n"
			" * Parts of this file are copied from Kelbt source covered by the GNU\n"
			" * GPL. As a special exception, you may use the parts of this file copied\n"
			" * from Kelbt source without restriction. The remainder is derived from\n"
			" * \"" << inputFile << "\" and inherits the copyright status of that file.\n"
			" */\n\n";

		/* Initial line directive. */
		if ( ! inhibitLineDirectives ) {
			*outStream << "#line 1 \"";
			escapeLineDirectivePath( *outStream, inputFile );
			*outStream << "\"\n";
		}
	}

	/* Parse the input! */
	scan( inputFile, *inStream );

	/* If writing to a file, delete the ostream, causing it to flush.
	 * Standard out is flushed automatically. */
	if ( outputFile != 0 ) {
		delete outStream;
		delete outFilter;
	}

	delete inStream;

	/* Finished, final check for errors.. */
	if ( gblErrorCount > 0 ) {
		/* If we opened and output file, remove it. */
		if ( outputFile != 0 )
			unlink( outputFile );
		exit(1);
	}
	return 0;
}
