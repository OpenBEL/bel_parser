/*
 *  Copyright 2001-2003,2005 Adrian Thurston <thurston@complang.org>
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

#ifndef _KELBT_H
#define _KELBT_H

#include <stdio.h>
#include <iostream>
#include <fstream>
#include "avltree.h"
#include "vector.h"
#include "config.h"

#define PROGNAME "kelbt"

struct Parser;

/* Filter on the output stream that keeps track of the number of lines
 * output. */
class output_filter : public std::filebuf
{
public:
	output_filter() : line(1) { }

	virtual int sync();
	virtual std::streamsize xsputn(const char* s, std::streamsize n);

	int line;
};

/* IO filenames and stream. */
extern const char *outputFile;
extern std::ostream *outStream;
extern output_filter *outFilter;
extern bool generateGraphviz;
extern Parser *graphvizGenParser;
extern bool branchPointInfo;
extern bool addUniqueEmptyProductions;
extern bool inhibitLineDirectives;

extern int gblErrorCount;
extern char startDefName[];

typedef Vector<const char *> ArgsVector;
extern ArgsVector includePaths;

/* Error reporting. */
struct InputLoc;
std::ostream &error();
std::ostream &error( const InputLoc &loc ); 
std::ostream &error( int first_line, int first_column );
std::ostream &warning( ); 
std::ostream &warning( const InputLoc &loc ); 
std::ostream &warning( int first_line, int first_column );

/* Size of the include stack. */
#define INCLUDE_STACK_SIZE 32

#endif /* _KELBT_H */
