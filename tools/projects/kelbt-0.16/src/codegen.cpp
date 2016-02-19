/*
 *  Copyright 2003-2012 Adrian Thurston <thurston@complang.org>
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
#include <stdlib.h>
#include <ctype.h>
#include <limits.h>
#include "kelbt.h"
#include "parsedata.h"
#include "avlmap.h"
#include "avlbasic.h"
#include "avlset.h"
#include "mergesort.h"

using std::cerr;
using std::endl;

#define FRESH_BLOCK 8128
#define act_sb "0x1"
#define act_rb "0x2"
#define lower "0x0000ffff"
#define upper "0xffff0000"

void ParseData::startCodeGen()
{
	if ( ! inhibitLineDirectives ) {
		/* Write the preprocessor line info for going to the output file. */
		*outStream << "#line " << outFilter->line + 1 << 
				" \"" << outputFile << "\"\n";
	}
}

void ParseData::endCodeGen( int endLine )
{
	if ( ! inhibitLineDirectives ) {
		/* Write the preprocessor line info for to the input file. */
		*outStream << "#line " << endLine << " \"" << fileName << "\"\n";
	}
}


void ParseData::writeReferencePtr( InputLoc &loc, Definition *prod, char *data, int refNum )
{
	bool user = false, refThis = false;
	int rhsPos = -1;
	
	if ( data[0] == '$' )
		user = true;
	
	if ( data[1] == '$' || data[1] == '@' )
		refThis = true;
	else
		rhsPos = atoi(data+1);

	/* Get the language element. */
	KlangEl *lel = refThis ? prod->prodName : prod->rhsLelVect[rhsPos-1];
		
	if ( user ) {
		if ( lel == 0 || lel->type == KlangEl::Term ) {
			if ( tokenIsClass )
				out << Token() << " *__ref" << refNum << " = (" << Token() << "*)";
			else
				out << Token() << " *__ref" << refNum << " = (" << Token() << "*)&";
		}
		else if ( lel != 0 && lel->type == KlangEl::NonTerm  ) {
			if ( lel->typeDef != 0 && lel->typeDef->isClass ) 
				out << Lel_() << lel->typeDef->data << " *__ref" << refNum << " = (" << Lel_() << lel->typeDef->data << "*)";
			else
				out << Lel_() << lel->typeDef->data << " *__ref" << refNum << " = (" << Lel_() << lel->typeDef->data << "*)&";
		}
		else {
			assert( false );
		}
	}
	else {
		out << LangEl() << " *__ref" << refNum << " = (" << LangEl() << "*)";
	}

	/* Write the access to the language element. */
	if ( refThis )
		out << "redLel";
	else
		out << "rhs[" << (rhsPos-1) << "]";

	if ( user ) {
		if ( lel == 0 || lel->type == KlangEl::Term ) {
			/* Terminal (maybe a lit). */
			out << "->user.token";
		}
		else if ( lel->type == KlangEl::NonTerm && lel->typeDef != 0 )
			out << "->user." << lel->typeDef->data;
		else {
			error(loc) << "reference to " << data << " in code block "
					"does not have a user type" << endl;
			exit(1);
		}
	}

	out << ";\n";
}

void ParseData::writeReference( InputLoc &loc, Definition *prod, char *data, int refNum )
{
	out << "(__ref" << refNum << ")";
}

void ParseData::writeInlineBlock( Definition *prod, InlineBlock *block )
{
	int refNum = 0;
	for ( InlineList::Iter item = *block->inlineList; item.lte(); item++ ) {
		if ( item->type == InlineItem::Reference )
			writeReferencePtr( item->loc, prod, item->data, refNum++ );
	}

	if ( ! inhibitLineDirectives )
		out << "#line " << block->loc.line << " \"" << fileName << "\"\n";

	refNum = 0;
	for ( InlineList::Iter item = *block->inlineList; item.lte(); item++ ) {
		switch ( item->type ) {
		case InlineItem::Text:
			out << item->data;
			break;
		case InlineItem::Reference:
			writeReference( item->loc, prod, item->data, refNum++ );
			break;
		}
	}

	if ( ! inhibitLineDirectives )
		out << "\n\n#line " << outFilter->line + 1 << " \"" << outputFile << "\"\n";
}


void ParseData::writeTokenIds()
{
	out << "/*\n";
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		if ( lel->data != 0 )
			out << "	" << lel->data << " " << lel->id << endl;
		else
			out << "	" << lel->id << endl;
	}
	out << "*/\n\n";
}

/* Write the classes representing the non-terminal language elements. */
void ParseData::writeTypes()
{
	for ( TypeDefMap::Iter td = typeDefMap; td.lte(); td++ ) {
		/* Start the class representing the non-terminal. */
		out <<
			"struct " << Lel_() << td->key << "\n"
			"{\n";

		writeInlineBlock( 0, td->value->typeBlock );

		/* Close the struct off. */
		out <<
			"};\n"
			"\n";
	}

	out << 
		"union " << UserData() << "\n"
		"{\n";

	for ( TypeDefMap::Iter td = typeDefMap; td.lte(); td++ ) {
		if ( td->value->isClass )
			out << "	char " << td->key << "[sizeof(" << Lel_() << td->key << ")];\n";
		else
			out << "	struct " << Lel_() << td->key << " " << td->key << ";\n";
	}

	if ( tokenIsClass )
		out << "	char token[sizeof(" << Token() << ")];\n";
	else
		out << "	struct " << Token() << " token;\n";

	out <<
		"};\n"
		"\n";

	out << 
		"struct " << LangEl() << "\n"
		"{\n"
		"	char *file;\n"
		"	int line;\n"
		"	int type;\n"
		"	int reduction;\n" /* Should be able to extract this from the FSM. */
		"	int state;\n"
		"	int causeReduce;\n"
		"	union " << UserData() << " user;\n";

	if ( elementBlock != 0 )
		writeInlineBlock( 0, elementBlock );

	out <<
		"	unsigned int retry;\n"
		"	struct " << LangEl() << " *next, *child, *prev;\n"
		"};\n"
		"\n";

	out << 
		"struct " << Block() << "\n"
		"{\n"
		"	struct " << LangEl() << " data[" << FRESH_BLOCK << "];\n"
		"	struct " << Block() << " *next;\n"
		"};\n"
		"\n";

}



void ParseData::writeInstanceData()
{
	out << 
		"	struct " << Block() << " *block;\n"
		"	struct " << LangEl() << " *freshEl;\n"
		"	int freshPos;\n"
		"	struct " << LangEl() << " *pool;\n"
		"	int numRetry;\n"
		"	int numNodes;\n"
		"	struct " << LangEl() << " *stackTop;\n"
		"	struct " << LangEl() << " *lastFinal;\n"
		"	int errCount;\n"
		"	int curs;\n";
}

void ParseData::writeTokenDefs()
{
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		if ( lel->isUserTerm || lel == eofKlangEl ) {
			/* Write out the token that will be generated by the scanner. */
			out << "#define " << lel->data << " " << lel->id << "\n";
		}
	}
	out << "\n";
}

void ParseData::writeInit()
{
	out <<
		"	" << curs() << " = " << startState() << ";\n"
		"	" << pool() << " = 0;\n"
		"	" << block() << " = (struct " << Block() << "*) "
				"malloc( sizeof(struct " << Block() << ") );\n"
		"	" << block() << "->next = 0;\n"
		"	" << freshEl() << " = " << block() << "->data;\n"
		"	#ifdef KELBT_LOG_ACTIONS\n"
		"	cerr << \"allocating " << FRESH_BLOCK << " LangEls\" << endl;\n"
		"	#endif\n"
		"	" << stackTop() << " = " << freshEl() << ";\n"
		"	" << stackTop() << "->type = 0;\n"
		"	" << stackTop() << "->state = -1;\n"
		"	" << stackTop() << "->next = 0;\n"
		"	" << stackTop() << "->child = 0;\n"
		"	" << stackTop() << "->causeReduce = 0;\n"
		"	" << freshPos() << " = 1;\n"
		"	" << lastFinal() << " = " << stackTop() << ";\n"
		"	" << numRetry() << " = 0;\n"
		"	" << numNodes() << " = 0;\n"
		"	" << errCount() << " = 0;\n";
}


std::ostream &ParseData::UARRAY_TYPE( unsigned long long maxVal )
{
	ostream &out = *outStream;
	if ( maxVal <= UCHAR_MAX )
		out << "unsigned char";
	else if ( maxVal <= USHRT_MAX )
		out << "unsigned short";
	else if ( maxVal <= UINT_MAX )
		out << "unsigned int";
	else if ( maxVal <= ULONG_MAX )
		out << "unsigned long";
	else
		out << "unsigned long long";
	return out;
}

std::ostream &ParseData::SARRAY_TYPE( signed long long maxVal )
{
	ostream &out = *outStream;
	if ( maxVal <= CHAR_MAX )
		out << "char";
	else if ( maxVal <= SHRT_MAX )
		out << "short";
	else if ( maxVal <= INT_MAX )
		out << "int";
	else if ( maxVal <= LONG_MAX )
		out << "long";
	else 
		out << "long long";
	return out;
}

void ParseData::writeData()
{
	out << "unsigned int " << startState() << " = " <<
		graph->startState->stateNum << ";\n\n";

	SARRAY_TYPE(maxIndex) << " " << indicies() << "[] = {\n\t";
	int totalItems = 0;
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			out << trans->value->actionSetEl->key.id;
			if ( !state.last() || !trans.last() ) {
				out << ", ";
				if ( ++totalItems % 8 == 0 )
					out << "\n\t";
			}

			if ( ! trans.last() ) {
				TransMap::Iter next = trans.next();
				for ( long key = trans->key+1; key < next->key; key++ ) {
					out << "-1, ";
					if ( ++totalItems % 8 == 0 )
						out << "\n\t";
				}
			}
		}
	}
	out << "\n};\n\n";

	UARRAY_TYPE(maxLelId) << " " << keys() << "[] = {\n\t";
	totalItems = 0;
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		if ( state->transMap.length() == 0 ) {
			out << "0, 0";
			if ( !state.last() ) {
				out << ", ";
				totalItems += 2;
				if ( totalItems % 8 == 0 )
					out << "\n\t";
			}
		}
		else {
			TransMap::Iter first = state->transMap.first();
			TransMap::Iter last = state->transMap.last();
			out << first->key << ", " << last->key;
			if ( !state.last() ) {
				out << ", ";
				totalItems += 2;
				if ( totalItems % 8 == 0 )
					out << "\n\t";
			}
		}
	}
	out << "\n};\n\n";

	UARRAY_TYPE(maxOffset) << " " << offsets() << "[] = {\n\t";
	totalItems = 0;
	int curOffset = 0;
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		out << curOffset;
		if ( !state.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}

		/* Increment the offset. */
		if ( state->transMap.length() > 0 ) {
			TransMap::Iter first = state->transMap.first();
			TransMap::Iter last = state->transMap.last();
			curOffset += last->key - first->key + 1;
		}
	}
	out << "\n};\n\n";

	UARRAY_TYPE(maxState) << " " << targs() << "[] = {\n\t";
	totalItems = 0;
	for ( ActionSet::Iter asi = actionSet; asi.lte(); asi++ ) {
		out << asi->key.targ;
		if ( ! asi.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}
	}
	out << "\n};\n\n";

	out << "unsigned int " << actInds() << "[] = {\n\t";
	totalItems = 0;
	int pos = 0;
	for ( ActionSet::Iter asi = actionSet; asi.lte(); asi++ ) {
		out << pos;
		if ( ! asi.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}
		pos += asi->key.actions.length() + 1;
	}
	out << "\n};\n\n";

	out << "unsigned int " << actions() << "[] = {\n\t";
	totalItems = 0;
	for ( ActionSet::Iter asi = actionSet; asi.lte(); asi++ ) {
		for ( ActDataList::Iter ali = asi->key.actions; ali.lte(); ali++ ) {
			out << *ali << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}

		out << "0";
		if ( ! asi.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}
	}
	out << "\n};\n\n";

	out << "int " << commitLen() << "[] = {\n\t";
	totalItems = 0;
	for ( ActionSet::Iter asi = actionSet; asi.lte(); asi++ ) {
		out << asi->key.commitLen;
		if ( ! asi.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}
	}
	out << "\n};\n\n";

	SARRAY_TYPE(maxProdLen) << " " << prodLengths() << "[] = {\n\t";
	totalItems = 0;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		int numFin = prod->fsm->finStateSet.length();
		assert( numFin == 1 );
		for ( int i = 0; i < numFin; i++ ) {
			out << prod->fsmLength;
			if ( !prod.last() || i < (numFin-1)  ) {
				out << ", ";
				if ( ++totalItems % 8 == 0 )
					out << "\n\t";
			}
		}
	}
	out << "\n};\n\n";

	UARRAY_TYPE(maxLelId) << " " << prodLhsIds() << "[] = {\n\t";
	totalItems = 0;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		out << prod->prodName->id;
		if ( ! prod.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}
	}
	out << "\n};\n\n";

	out << "const char *" << prodNames() << "[] = {\n";
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		out << "\t\"" << prod->data << "\"";
		if ( ! prod.last() )
			out << ",";
		out << "\n";
	}
	out << "};\n\n";

	out << "const char *" << lelNames() << "[] = {\n";
	for ( int i = 0; i < nextSymbolId; i++ ) {
		KlangEl *lel = langElIndex[i];
		if ( lel != 0 )
			out << "\t\"" << lel->data << "\"";
		else {
			out << "\t\"";
			if ( 33 <= i && i <= 126 ) {
				if ( i == '"' || i == '\\' )
					out << "\\";
				out << (char)i;
			}
			else
				out << "D-" << i;
			out << "\"";
		}
		if ( i < nextSymbolId-1 )
			out << ",";
		out << "\n";
	}
	out << "};\n\n";

#if 0
	out << "char prodCommit[] = {\n\t";
	totalItems = 0;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		out << ( prod->prodCommit ? '1' : '0' );
		if ( ! prod.last() ) {
			out << ", ";
			if ( ++totalItems % 8 == 0 )
				out << "\n\t";
		}
	}
	out << "\n};\n\n";
#endif
}


void ParseData::writeReduceBlocks()
{
	bool generate = false;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		TypeDef *typeDef = prod->prodName->typeDef;
		bool doConstruct = typeDef != 0 && typeDef->isClass;

		if ( doConstruct || prod->redBlock != 0 ) {
			generate = true;
			break;
		}
	}

	if ( generate ) {
		out << "switch ( reduction ) {\n";
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			TypeDef *typeDef = prod->prodName->typeDef;
			bool doConstruct = typeDef != 0 && typeDef->isClass;

			/* If there is reduction code, embed it here. */
			if ( doConstruct || prod->redBlock != 0 ) {
				out << "case " << prod->prodId << ": {\n";

				if ( doConstruct ) {
					out << "	new(redLel->user." << typeDef->data << ") " << 
							Lel_() << typeDef->data << "();\n";
				}

				if ( prod->redBlock != 0 )
					writeInlineBlock( prod, prod->redBlock );

				out << "} break;\n";
			}
		}
		out << "}\n";
	}
}

void ParseData::writeUndoBlocks()
{
	bool generate = false;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		TypeDef *typeDef = prod->prodName->typeDef;
		bool doDestruct = typeDef != 0 && typeDef->isClass;

		if ( doDestruct || prod->undoBlock != 0 ) {
			generate = true;
			break;
		}
	}

	if ( generate ) {
		out << "switch ( redLel->reduction ) {\n";
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			TypeDef *typeDef = prod->prodName->typeDef;
			bool doDestruct = typeDef != 0 && typeDef->isClass;

			/* If there is reduction code, embed it here. */
			if ( doDestruct || prod->undoBlock != 0 ) {
				out << "case " << prod->prodId << ": {\n";

				if ( prod->undoBlock != 0 )
					writeInlineBlock( prod, prod->undoBlock );

				if ( doDestruct ) {
					out << Lel_() << typeDef->data << " *dlel = "
						"((" << Lel_() << typeDef->data << "*)"
						"redLel->user." << typeDef->data << ");\n";

					out << "dlel->~" << Lel_() << typeDef->data << "();\n";
				}

				out << "} break;\n";
			}
		}
		out << "}\n";
	}
}

void ParseData::writeFinalBlocks()
{
	bool generate = false;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		if ( prod->finalBlock != 0 ) {
			generate = true;
			break;
		}
	}

	if ( generate ) {
		out << "switch ( lel->reduction ) {\n";
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			/* If there is reduction code, embed it here. */
			if ( prod->finalBlock != 0 ) {
				out << "case " << prod->prodId << ": {\n";

				if ( prod->finalBlock != 0 )
					writeInlineBlock( prod, prod->finalBlock );

				out << "} break;\n";
			}
		}
		out << "}\n";
	}
}

void ParseData::writeNonTermDestructors()
{
	bool generate = false;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		TypeDef *typeDef = prod->prodName->typeDef;
		bool doDestruct = typeDef != 0 && typeDef->isClass;

		if ( doDestruct ) {
			generate = true;
			break;
		}
	}

	if ( generate ) {
		out << "switch ( child->reduction ) {\n";
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			TypeDef *typeDef = prod->prodName->typeDef;
			bool doDestruct = typeDef != 0 && typeDef->isClass;

			/* If there is reduction code, embed it here. */
			if ( doDestruct ) {
				out << "case " << prod->prodId << ": {\n";

				out << Lel_() << typeDef->data << " *dlel = ((" <<
						Lel_() << typeDef->data << "*)"
						"child->user." << typeDef->data << ");\n";

				out << "dlel->~" << Lel_() << typeDef->data << "();\n";

				out << "} break;\n";
			}
		}
		out << "}\n";
	}
}

void ParseData::writeFinishBlocks()
{
	bool generate = false;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		TypeDef *typeDef = prod->prodName->typeDef;
		bool doDestruct = typeDef != 0 && typeDef->isClass;

		if ( doDestruct ) {
			generate = true;
			break;
		}
	}

	if ( generate ) {
		out << "switch ( lel->reduction ) {\n";
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			TypeDef *typeDef = prod->prodName->typeDef;
			bool doDestruct = typeDef != 0 && typeDef->isClass;

			/* If there is reduction code, embed it here. */
			if ( doDestruct ) {
				out << "case " << prod->prodId << ": {\n";

				out << Lel_() << typeDef->data << " *dlel ="
					"((" << Lel_() << typeDef->data << "*)\n";

				out << "dlel->~" << Lel_() << typeDef->data << "();\n";

				out << "} break;\n";
			}
		}
		out << "}\n";
	}

}

ostream &ParseData::ALLOCATE_EL( const char *name )
{
	out <<
		"	if ( " << pool() << " == 0 ) {\n"
		"		if ( " << freshPos() << " == " << FRESH_BLOCK << " ) {\n"
		"			struct " << Block() << "* newBlock  = (struct " << Block() << "*) "
							"malloc( sizeof(struct " << Block() << ") );\n"
		"			newBlock->next = " << block() << ";\n"
		"			" << block() << " = newBlock;\n"
		"			" << freshEl() << " = newBlock->data;\n"
		"			#ifdef KELBT_LOG_ACTIONS\n"
		"			cerr << \"allocating " << FRESH_BLOCK << " LangEls\" << endl;\n"
		"			#endif\n"
		"			" << freshPos() << " = 0;\n"
		"		}\n"
		"		" << name << " = " << freshEl() << " + " << freshPos() << "++;\n"
		"	}\n"
		"	else {\n"
		"		" << name << " = " << pool() << ";\n"
		"		" << pool() << " = " << pool() << "->next;\n"
		"	}\n"
		"	" << numNodes() << " += 1;\n";

	return out;
}

void ParseData::writeExec()
{
	out <<
		"#define reject() induceReject = 1\n"
		"\n"
		"	int pos, targState;\n"
		"	unsigned int *action;\n"
		"	int rhsLen;\n"
		"	struct " << LangEl() << " *rhs[32];\n"
		"	struct " << LangEl() << " *lel = 0;\n"
		"	struct " << LangEl() << " *input = 0;\n"
		"	struct " << LangEl() << " *queue = 0;\n"
		"	char induceReject;\n"
		"\n"
		"	if ( " << curs() << " < 0 )\n"
		"		return 0;\n"
		"\n";
		ALLOCATE_EL( "queue" ) <<
		"\n"
		"	queue->type = type;\n";

	if ( tokenIsClass )
		out << "	new(queue->user.token) " << Token() << "(*token);\n";
	else
		out << "	queue->user.token = *token;\n";

	out <<
		"	queue->next = 0;\n"
		"	queue->retry = 0;\n"
		"	queue->child = 0;\n"
		"	queue->causeReduce = 0;\n"
		"\n"
		"again:\n"
		"	if ( input == 0 ) {\n"
		"		if ( queue == 0 )\n"
		"			goto _out;\n"
		"\n"
		"		input = queue;\n"
		"		queue = queue->next;\n"
		"		input->next = 0;\n";

	if ( translateBlock != 0 )
		writeInlineBlock( 0, translateBlock );
	
	out <<
		"	}\n"
		"\n";

	out <<
		"	lel = input;\n"
		"	if ( lel->type < " << keys() << "[" << curs() << "<<1] || lel->type > " <<
				keys() << "[(" << curs() << "<<1)+1] )\n"
		"		goto parseError;\n"
		"\n"
		"	pos = " << indicies() << "[" << offsets() << "[" << curs() << 
				"] + (lel->type - " << keys() << "[" << curs() << "<<1])];\n"
		"	if ( pos < 0 )\n"
		"		goto parseError;\n"
		"\n"
		"	induceReject = 0;\n"
		"	targState = " << targs() << "[pos];\n"
		"	action = " << actions() << " + " << actInds() << "[pos];\n"
		"	if ( lel->retry & " << lower << " )\n"
		"		action += (lel->retry & " << lower << ");\n"
		"\n"
		"	if ( *action & " << act_sb << " ) {\n"
		"		#ifdef KELBT_LOG_ACTIONS\n"
		"		cerr << \"shifted: \" << " << lelNames() << "[lel->type];\n"
		"		#endif\n"
		"		input = input->next;\n"
		"		lel->state = " << curs() << ";\n"
		"		lel->next = " << stackTop() << ";\n"
		"		" << stackTop() << " = lel;\n"
		"\n"
		"		if ( action[1] == 0 )\n"
		"			lel->retry &= " << upper << ";\n"
		"		else {\n"
		"			lel->retry += 1;\n"
		"			" << numRetry() << " += 1;\n"
		"			#ifdef KELBT_LOG_ACTIONS\n"
		"			cerr << \" retry: \" << " << stackTop() << ";\n"
		"			#endif\n"
		"		}\n"
		"		#ifdef KELBT_LOG_ACTIONS\n"
		"		cerr << endl;\n"
		"		#endif\n"
		"	}\n"
		"\n"
		"	if ( " << commitLen() << "[pos] != 0 ) {\n"
		"		struct " << LangEl() << " *commitHead = " << stackTop() << ", *lel;\n"
		"		int sp = 0, doExec = 0;\n"
		"		#ifdef KELBT_LOG_ACTIONS\n"
		"		cerr << \"commit encountered, executing final actions\" << endl;\n"
		"		#endif\n"
		"		if ( " << commitLen() << "[pos] < 0 )\n"
		"			commitHead = commitHead->next;\n"
		"\n"
		"		lel = commitHead;\n"
		"\n"
		"commit_head:\n"
		"		if ( lel == " << lastFinal() << " ) {\n"
		"			doExec = 1;\n"
		"			goto commit_base;\n"
		"		}\n"
		"\n"
		"		if ( lel->next != 0 ) {\n"
		"			sp += 1;\n"
		"			lel->next->prev = lel;\n"
		"			lel = lel->next;\n"
		"			lel->retry = 0;\n"
		"			goto commit_head;\n"
		"		}\n"
		"\n"
		"commit_reverse:\n"
		"\n"
		"		if ( lel->child != 0 ) {\n"
		"			sp += 1;\n"
		"			lel->child->prev = lel;\n"
		"			lel = lel->child;\n"
		"			lel->retry = 1;\n"
		"			goto commit_head;\n"
		"		}\n"
		"\n"
		"commit_upwards:\n"
		"\n"
		"		if ( doExec ) {\n"
		"			if ( lel->type < " << firstNonTermId << " ) {\n";

	if ( tokenFinalBlock != 0 )
		writeInlineBlock( 0, tokenFinalBlock );

	out <<
		"			}\n"
		"			else {\n"
		"				struct " << LangEl() << " *redLel = lel;\n"
		"				if ( redLel->child != 0 ) {\n"
		"					int r = " << prodLengths() << "[redLel->reduction] - 1;\n"
		"					struct " << LangEl() << " *rhsEl = redLel->child;\n"
		"					while ( rhsEl != 0 ) {\n"
		"						rhs[r--] = rhsEl;\n"
		"						rhsEl = rhsEl->next;\n"
		"					}\n"
		"				}\n";

	writeFinalBlocks();	

	out <<
		"			}\n"
		"\n"
		"			if ( lel->child != 0 ) {\n"
		"				struct " << LangEl() << " *first = lel->child;\n"
		"				struct " << LangEl() << " *child = lel->child;\n"
		"				lel->child = 0;\n"
		"				while ( 1 ) {\n"
		"					if ( child->type < " << firstNonTermId << " ) {\n";

	if ( tokenIsClass ) {
		out << Token() << " *dlel = ((" << Token() << "*)child->user.token);\n";
		out << "dlel->~" << Token() << "();\n";
	}
	
	out <<
		"					}\n"
		"					else {\n";

	writeNonTermDestructors();

	out <<
		"					}\n"
		"					" << numNodes() << " -= 1;\n"
		"					if ( child->next == 0 )\n"
		"						break;\n"
		"					child = child->next;\n"
		"				}\n"
		"				child->next = " << pool() << ";\n"
		"				" << pool() << " = first;\n"
		"			}\n"
		"		}\n"
		"\n"
		"commit_base:\n"
		"		if ( sp > 0 ) {\n"
		"			sp -= 1;\n"
		"			if ( lel->retry == 0 ) {\n"
		"				lel = lel->prev;\n"
		"				goto commit_reverse;\n"
		"			}\n"
		"			else {\n"
		"				lel->retry = 0;\n"
		"				lel = lel->prev;\n"
		"				goto commit_upwards;\n"
		"			}\n"
		"		}\n"
		"		lel->retry = 0;\n"
		"\n"
		"		" << lastFinal() << " = lel;\n"
		"		" << numRetry() << " = 0;\n"
		"	}\n"
		"\n"
		"	if ( *action & " << act_rb << " ) {\n"
		"		int reduction = *action >> 2;\n"
		"		struct " << LangEl() << " *redLel;\n"
		"\n"
		"		if ( input != 0 )\n"
		"			input->causeReduce += 1;\n"
		"\n";
		ALLOCATE_EL("redLel") <<
		"\n"
		"		redLel->type = " << prodLhsIds() << "[reduction];\n"
		"		redLel->reduction = reduction;\n"
		"		redLel->child = 0;\n"
		"		redLel->next = 0;\n"
		"		redLel->retry = (lel->retry << 16);\n"
		"		redLel->causeReduce = 0;\n"
		"		lel->retry &= " << upper << ";\n"
		"\n"
		"		rhsLen = " << prodLengths() << "[reduction];\n"
		"		if ( rhsLen > 0 ) {\n"
		"			int r;\n"
		"			for ( r = rhsLen-1; r > 0; r-- ) {\n"
		"				rhs[r] = " << stackTop() << ";\n"
		"				" << stackTop() << " = " << stackTop() << "->next;\n"
		"			}\n"
		"			rhs[0] = " << stackTop() << ";\n"
		"			" << stackTop() << " = " << stackTop() << "->next;\n"
		"			rhs[0]->next = 0;\n"
		"		}\n";

	writeReduceBlocks();

	out <<
		"		#ifdef KELBT_LOG_ACTIONS\n"
		"		cerr << \"reduced: \"\n"
		"				<< " << prodNames() << "[reduction]\n"
		"				<< \" rhsLen: \" << rhsLen;\n"
		"		#endif\n"
		"		if ( action[1] == 0 )\n"
		"			redLel->retry = 0;\n"
		"		else {\n"
		"			redLel->retry += 0x10000;\n"
		"			" << numRetry() << " += 1;\n"
		"			#ifdef KELBT_LOG_ACTIONS\n"
		"			cerr << \" retry: \" << redLel;\n"
		"			#endif\n"
		"		}\n"
		"\n"
		"		#ifdef KELBT_LOG_ACTIONS\n"
		"		cerr << endl;\n"
		"		#endif\n"
		"\n"
		"		if ( rhsLen == 0 ) {\n"
		"			redLel->file = lel->file;\n"
		"			redLel->line = lel->line;\n"
		"			targState = " << curs() << ";\n"
		"		}\n"
		"		else {\n"
		"			redLel->child = rhs[rhsLen-1];\n"
		"			redLel->file = rhs[0]->file;\n"
		"			redLel->line = rhs[0]->line;\n"
		"			targState = rhs[0]->state;\n"
		"		}\n"
		"\n"
		"		if ( induceReject ) {\n"
		"			#ifdef KELBT_LOG_ACTIONS\n"
		"			cerr << \"error induced during reduction of \" <<\n"
		"					" << lelNames() << "[redLel->type] << endl;\n"
		"			#endif\n"
		"			redLel->state = " << curs() << ";\n"
		"			redLel->next = " << stackTop() << ";\n"
		"			" << stackTop() << " = redLel;\n"
		"			" << curs() << " = targState;\n"
		"			goto parseError;\n"
		"		}\n"
		"		else {\n"
		"			redLel->next = input;\n"
		"			input = redLel;\n"
		"		}\n"
		"	}\n"
		"\n"
		"\n"
		"	" << curs() << " = targState;\n"
		"	goto again;\n"
		"\n"
		"parseError:\n"
		"	#ifdef KELBT_LOG_BACKTRACK\n"
		"	cerr << \"hit error\" << endl;\n"
		"	#endif\n";

	out << 
		"	if ( " << numRetry() << " > 0 ) {\n"
		"		struct " << LangEl() << " *redLel;\n"
		"\n"
		"		if ( input != 0 ) {\n"
		"			redLel = input;\n"
		"			goto have_undo_element;\n"
		"		}\n"
		"\n"
		"		while ( 1 ) {\n"
		"			redLel = " << stackTop() << ";\n"
		"			if ( " << stackTop() << "->type < " << firstNonTermId << " ) {\n"
		"				#ifdef KELBT_LOG_BACKTRACK\n"
		"				cerr << \"backing up over terminal: \" <<\n"
		"						" << lelNames() << "[" << stackTop() << "->type] << endl;\n"
		"				#endif\n"
		"				" << stackTop() << " = " << stackTop() << "->next;\n"
		"				redLel->next = input;\n"
		"				input = redLel;\n"
		"			}\n"
		"			else {\n"
		"				#ifdef KELBT_LOG_BACKTRACK\n"
		"				cerr << \"backing up over non-terminal: \" <<\n"
		"						" << lelNames() << "[" << stackTop() << "->type] << endl;\n"
		"				#endif\n"
		"				" << stackTop() << " = " << stackTop() << "->next;\n"
		"				struct " << LangEl() << " *first = redLel->child;\n"
		"				if ( first == 0 )\n"
		"					rhsLen = 0;\n"
		"				else {\n"
		"					rhsLen = 1;\n"
		"					while ( first->next != 0 ) {\n"
		"						first = first->next;\n"
		"						rhsLen += 1;\n"
		"					}\n"
		"					first->next = " << stackTop() << ";\n"
		"					" << stackTop() << " = redLel->child;\n"
		"\n"
		"					struct " << LangEl() << " *rhsEl = " << stackTop() << ";\n"
		"					int p = rhsLen;\n"
		"					while ( p > 0 ) {\n"
		"						rhs[--p] = rhsEl;\n"
		"						rhsEl = rhsEl->next;\n"
		"					}\n"
		"				}\n";

	writeUndoBlocks();

	out <<
		"				redLel->next = " << pool() << ";\n"
		"				" << pool() << " = redLel;\n"
		"				" << numNodes() << " -= 1;\n"
		"\n"
		"				if ( input != 0 )\n"
		"					input->causeReduce -= 1;\n"
		"			}\n"
		"\n"
		"have_undo_element:\n"
		"			if ( redLel->retry == 0 ) {\n"
		"				if ( input != 0 && input->causeReduce == 0 ) {\n"
		"					#ifdef KELBT_LOG_BACKTRACK\n"
		"					cerr << \"pushing back: \" << " << lelNames() <<
								"[input->type] << endl;\n"
		"					#endif\n";

	if ( undoTransBlock != 0 )
		writeInlineBlock( 0, undoTransBlock );

	out <<
		"					input->next = queue;\n"
		"					queue = input;\n"
		"					input = 0;\n"
		"				}\n"
		"			}\n"
		"			else {\n"
		"				#ifdef KELBT_LOG_BACKTRACK\n"
		"				cerr << \"found retry targ: \" << redLel << endl;\n"
		"				#endif\n"
		"				" << numRetry() << " -= 1;\n"
		"				#ifdef KELBT_LOG_BACKTRACK\n"
		"				cerr << \"found retry: \" << redLel << endl;\n"
		"				#endif\n"
		"				if ( redLel->retry & " << lower << " )\n"
		"					" << curs() << " = input->state;\n"
		"				else {\n"
		"					input->retry = redLel->retry >> 16;\n"
		"					if ( " << stackTop() << "->state < 0 )\n"
		"						" << curs() << " = " << startState() << ";\n"
		"					else {\n"
		"						" << curs() << " = " << targs() << "[(int)" <<
									indicies() << "[" << offsets() << "[" <<
									stackTop() << "->state] + (" <<
									stackTop() << "->type - " << keys() << "[" <<
									stackTop() << "->state<<1])]];\n"
		"					}\n"
		"				}\n"
		"				goto again;\n"
		"			}\n"
		"		}\n"
		"	}\n"
		"	" << curs() << " = -1;\n"
		"	" << errCount() << " += 1;\n"
		"_out: {}\n";
}

void ParseData::writeFinish()
{
	/* Clean up the stack and free memory. */
	out <<
		"	struct " << Block() << " *todel = 0;\n"
		"	struct " << LangEl() << " *lel = " << stackTop() << ";\n"
		"	int sp = 0;\n"
		"	#ifdef KELBT_LOG_ACTIONS\n"
		"	cerr << \"cleaning up stack\" << endl;\n"
		"	#endif\n"
		"\n"
		"clean_head:\n"
		"	if ( lel->next != 0 ) {\n"
		"		sp += 1;\n"
		"		lel->next->prev = lel;\n"
		"		lel = lel->next;\n"
		"		lel->retry = 0;\n"
		"		goto clean_head;\n"
		"	}\n"
		"\n"
		"clean_reverse:\n"
		"	if ( lel->child != 0 ) {\n"
		"		sp += 1;\n"
		"		lel->child->prev = lel;\n"
		"		lel = lel->child;\n"
		"		lel->retry = 1;\n"
		"		goto clean_head;\n"
		"	}\n"
		"\n"
		"clean_upwards:\n"
		"	if ( lel->state != -1 ) {\n"
		"		if ( lel->type < " << firstNonTermId << " ) {\n";

	if ( tokenIsClass ) {
		out << Token() << " *dlel = ((" << Token() << "*)lel->user.token);\n";
		out << "dlel->~" << Token() << "();\n";
	}
	
	out <<
		"		}\n"
		"		else {\n";
	
	writeFinishBlocks();
	
	out <<
		"		}\n"
		"		#ifdef KELBT_LOG_ACTIONS\n"
		"		cerr << \"deleted: \" << " << lelNames() << "[lel->type] << endl;\n"
		"		#endif\n"
		"	}\n"
		"	if ( sp > 0 ) {\n"
		"		sp -= 1;\n"
		"		if ( lel->retry == 0 ) {\n"
		"			lel = lel->prev;\n"
		"			goto clean_reverse;\n"
		"		}\n"
		"		else {\n"
		"			lel = lel->prev;\n"
		"			goto clean_upwards;\n"
		"		}\n"
		"	}\n"
		"\n";
	
	/* Now clean up the allocated blocks. */
	out <<
		"	while ( " << block() << " != 0 ) {\n"
		"		todel = " << block() << ";\n"
		"		" << block() << " = " << block() << "->next;\n"
		"		free( todel );\n"
		"	}\n";
}

