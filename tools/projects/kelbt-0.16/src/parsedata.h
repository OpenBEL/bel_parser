/*
 *  Copyright 2001-2005 Adrian Thurston <thurston@complang.org>
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

#ifndef _PARSEDATA_H
#define _PARSEDATA_H

#include <iostream>
#include <limits.h>
#include <string>
#include "avlmap.h"
#include "bstmap.h"
#include "dlist.h"
#include "fsmgraph.h"
#include "compare.h"
#include "vector.h"
#include "dlistmel.h"

using std::ostream;
using std::string;

/* Forwards. */
struct RedFsmAp;
struct KlangEl;

#define SHIFT_CODE 0x1
#define REDUCE_CODE 0x2
#define SHIFT_REDUCE_CODE 0x3

inline long makeReduceCode( long reduction, bool isShiftReduce )
{
	return ( isShiftReduce ? SHIFT_REDUCE_CODE : REDUCE_CODE ) | 
		( reduction << 2 );
}

/* Location in an input file. */
struct InputLoc
{
	int line;
	int col;
};

/*
 * Inline code tree
 */
struct InlineItem
{
	enum Type 
	{
		Text, 
		Reference
	};

	InlineItem( const InputLoc &loc, char *data, Type type ) : 
		loc(loc), data(data), type(type) { }

	InlineItem( const InputLoc &loc, Type type ) : 
		loc(loc), data(0), type(type) { }
	
	InputLoc loc;
	char *data;
	Type type;

	InlineItem *prev, *next;
};

typedef DList<InlineItem> InlineList;

/* Element in a list of strings used for storing inline code blocks. */
struct InlineBlock
{
	InlineBlock( const InputLoc &loc, InlineList *inlineList ) 
			: loc(loc), inlineList(inlineList)
	{
		inlineList->head->data++;
		inlineList->tail->data[strlen(inlineList->tail->data)-1] = 0;
	}

	InputLoc loc;
	InlineList *inlineList;

	InlineBlock *prev, *next;
};

/* List of inline code blocks. */
typedef DList<InlineBlock> InlineBlockList;

/* Structure for reverse action mapping. */
struct RevActionMapEl
{
	char *name;
	InputLoc location;
};

struct Factor;
struct ProdElList;
struct Literal;
struct Definition;

struct DefListEl { Definition *prev, *next; };
struct LelDefListEl { Definition *prev, *next; };
typedef Vector< KlangEl* > KlangElVect;
typedef Vector< Factor* > FactorVect;

struct TypeDef
{
	TypeDef( char *data ) 
		: data(data), typeBlock(0), isClass(false) {}
	TypeDef( char *data, InlineBlock *typeBlock, bool isClass ) 
		: data(data), typeBlock(typeBlock), isClass(isClass) {}

	char *data;
	InlineBlock *typeBlock;
	bool isClass;
};

typedef BstMap< char*, TypeDef*, CmpStr > TypeDefMap;
typedef BstMapEl< char*, TypeDef* > TypeDefMapEl;

/* Graph dictionary. */
struct Definition 
:
	public DefListEl, public LelDefListEl
{
	enum Type { Production };

	Definition( const InputLoc &loc, KlangEl *prodName, ProdElList *prodElList, 
			bool prodCommit, InlineBlock *redBlock, InlineBlock *undoBlock, 
			InlineBlock *finalBlock, int prodId, Type type ) : 
		loc(loc), prodName(prodName), prodElList(prodElList), prodCommit(prodCommit),
		redBlock(redBlock), undoBlock(undoBlock), finalBlock(finalBlock), 
		prodId(prodId), type(type), fsm(0), fsmLength(0),
		data(0), uniqueEmptyLeader(0), isLeftRec(false) {}

	InputLoc loc;
	KlangEl *prodName;
	ProdElList *prodElList;
	bool prodCommit;
	InlineBlock *redBlock;
	InlineBlock *undoBlock;
	InlineBlock *finalBlock;
	int prodId;
	Type type;

	FsmAp *fsm;
	int fsmLength;
	char *data;
	KlangElVect rhsLelVect;
	FactorVect rhsFactorVect;
	LongSet reducesTo;

	KlangEl *uniqueEmptyLeader;

	ProdIdSet nonTermFirstSet;
	AlphSet firstSet;
	bool isLeftRec;
};

struct CmpDefById
{
	static int compare( Definition *d1, Definition *d2 )
	{
		if ( d1->prodId < d2->prodId )
			return -1;
		else if ( d1->prodId > d2->prodId )
			return 1;
		else
			return 0;
	}
};


/* Map dotItems to productions. */
typedef BstMap< int, Definition*, CmpOrd<int> > DotItemIndex;
typedef BstMapEl< int, Definition*> DotItemIndexEl;

/* Symbol Map. */
typedef AvlMap< char*, KlangEl*, CmpStr > SymbolMap;
typedef AvlMapEl< char*, KlangEl* > SymbolMapEl;

/* A vector of production vectors. Each non terminal can have many productions. */
typedef DListMel<Definition, DefListEl> DefList;
typedef DListMel<Definition, LelDefListEl> LelDefList;

/* A set of machines made during a closure round. */
typedef Vector< FsmAp* > Machines;

/* List of language elements. */
typedef DList<KlangEl> LelList;

/* Class to collect information about the machine during the 
 * parse of input. */
struct ParseData
{
	/* Create a new parse data object. This is done at the beginning of every
	 * fsm specification. */
	ParseData( const char *fileName, char *parserName, ostream &out );

	void wrapUserStartSymbol();
	void makeTokens();
	void makeDefinitionNames();
	void noUndefinedKlangEls();
	void noUndefinedUses();
	void makeKlangElIds();

	/* Parser generation. */
	void advanceReductions( long nextTime );
	void sortActions();
	void linkExpansions();
	void lalr1FollowEpsilonOp();

	void transferCommits( TransAp *trans, StateAp *state, long prodId );

	void lalr1AddFollow2( TransAp *trans, FollowToAdd &followKeys );
	void lalr1AddFollow1( StateAp *state );

	void lalr1AddFollow2( TransAp *trans, long followKey, long prior );
	void lalr1AddFollow1( TransAp *trans );

	void lalr1AddFollowSets();

	void lr0BringInItem( StateAp *dest, StateAp *prodState, 
			TransAp *expandFrom, Definition *prod );
	void lr0InvokeClosure( StateAp *state );
	void lr0CloseAllStates();

	void lalr1GenerateParser();

	void reduceActions();

	bool makeNonTermFirstSetProd( Definition *prod, StateAp *state );
	void makeNonTermFirstSets();

	bool makeFirstSetProd( Definition *prod, StateAp *state );
	void makeFirstSets();

	StateAp *followProd( StateAp *tabState, StateAp *prodState );
	void findFollow( AlphSet &result, StateAp *overTab, 
			StateAp *overSrc, Definition *parentDef );
	long computeActOrds();
	void actionOrdsFollow( StateAp *tabState, TransAp *tabTrans, TransAp *srcTrans,
			Definition *parentDef, Definition *definition, long &time );
	void actionOrdsProd( StateAp *tabState, StateAp *srcState,
			Definition *parentDef, long &time );
	void analyzeMachine();
	void checkInlineListReferences( Definition *prod, InlineBlock *inlineBlock );
	void checkReferences( Definition *prod );
	void makeProdFsms();
	void uniqueEmptyProductions();

	void makeGraph();

	/* Generate and write out the fsm. */
	void generateInstanceData();
	void generateTokenDefs();
	void generateTypes();
	void generateData();
	void generateInit();
	void generateExec();
	void generateFinish();
	void generateGraphviz();

	/*
	 * Querying the parse data
	 */

	/*
	 * Code Generation.
	 */
	void startCodeGen();
	void endCodeGen( int endLine );

	void writeNonTermDestructors();
	void writeFinishBlocks();
	void writeFinalBlocks();
	void writeReduceBlocks();
	void writeUndoBlocks();
	void writeTokenIds();
	void writeLangEls();

	void writeReferencePtr( InputLoc &loc, Definition *prod, char *data, int refNum );
	void writeReference( InputLoc &loc, Definition *prod, char *data, int refNum );
	void writeUndoReference( Definition *prod, char *data );
	void writeFinalReference( Definition *prod, char *data );
	void writeInlineBlock( Definition *prod, InlineBlock *inlineBlock );
	void writeFirstLocate( Definition *prod );
	void writeRhsLocate( Definition *prod );

	ostream &UARRAY_TYPE( unsigned long long maxVal );
	ostream &SARRAY_TYPE( signed long long maxVal );
	ostream &ALLOCATE_EL( const char *name );


	void writeInstanceData();
	void writeTokenDefs();
	void writeTypes();
	void writeData();
	void writeInit();
	void writeExec();
	void writeFinish();

	string PARSER() { string ret = parserName; ret += "_"; return ret; }

	string Block() { return PARSER() + "Block"; }
	string LangEl() { return PARSER() + "LangEl"; }
	string Token() { 
		string ret;
		if ( tokenStruct != 0 )
			ret = tokenStruct;
		else
			ret = "Token";
		return ret;
	}
	string Lel_() { return PARSER() + "Lel_"; }
	string UserData() { return PARSER() + "UserData"; }

	string startState() { return PARSER() + "startState"; }
	string indicies() { return PARSER() + "indicies"; }
	string keys() { return PARSER() + "keys"; }
	string offsets() { return PARSER() + "offsets"; }
	string targs() { return PARSER() + "targs"; }
	string actInds() { return PARSER() + "actInds"; }
	string actions() { return PARSER() + "actions"; }
	string commitLen() { return PARSER() + "commitLen"; }
	string prodLengths() { return PARSER() + "prodLengths"; }
	string prodLhsIds() { return PARSER() + "prodLhsIds"; }
	string prodNames() { return PARSER() + "prodNames"; }
	string lelNames() { return PARSER() + "lelNames"; }

	string ACCESS()
	{
		string ret;
		if ( access != 0 )
			ret = access;
		return ret;
	}

	string curs() { return ACCESS() + "curs"; }
	string pool() { return ACCESS() + "pool"; }
	string freshEl() { return ACCESS() + "freshEl"; }
	string block() { return ACCESS() + "block"; }
	string stackTop() { return ACCESS() + "stackTop"; }
	string freshPos() { return ACCESS() + "freshPos"; }
	string lastFinal() { return ACCESS() + "lastFinal"; }
	string numRetry() { return ACCESS() + "numRetry"; }
	string numNodes() { return ACCESS() + "numNodes"; }
	string errCount() { return ACCESS() + "errCount"; }

	void printDotSet( ostream &out, long dotItem );

	/* 
	 * Graphviz Generation
	 */
	void writeTransList(StateAp *state );
	void writeDotFile(FsmAp *graph );
	void writeDotFile( );
	
	/*
	 * Data collected during the parse.
	 */

	/* Dictionary of graphs. Both instances and non-instances go here. */
	SymbolMap symbolMap;
    LelList langEls;

	/* The list of instances. */
	DefList prodList;

	/* Dumping. */
	DotItemIndex dotItemIndex;

	/* The name of the file the fsm is from, and the spec name. */
	const char *fileName;
	char *parserName;
	ostream &out;
	InputLoc sectionLoc;

	/* How to access the instance data. */
	char *access;

	/* The name of the token structure. */
	char *tokenStruct;

	KlangEl *startKlangEl;
	KlangEl *eofKlangEl;
	KlangEl *errorKlangEl;
	KlangEl *userStartKlangEl;
	Definition *startDef;

	int nextSymbolId;
	int firstNonTermId;

	KlangEl **langElIndex;
	FsmAp *graph;
	StateAp *actionDestState;
	DefSetSet prodSetSet;
	ActionSet actionSet;

	/* Collected machine information. */
	unsigned long long maxState;
	unsigned long long maxAction;
	unsigned long long maxLelId;
	unsigned long long maxOffset;
	unsigned long long maxIndex;
	unsigned long long maxProdLen;

	InlineBlock *elementBlock;
	InlineBlock *tokenBlock;
	InlineBlock *preReduceBlock;
	InlineBlock *postReduceBlock;
	InlineBlock *translateBlock;
	InlineBlock *undoTransBlock;
	InlineBlock *tokenFinalBlock;

	Definition **prodIdIndex;
	AlphSet literalSet;
	TypeDefMap typeDefMap;

	bool didTokens, didGraph, tokenIsClass;
};

/* A language element class. Can be a nonTerm or a term. */
struct KlangEl : public DListEl<KlangEl>
{
	enum Type { Unknown, Term, NonTerm };

	KlangEl( char *data, Type type );
	~KlangEl();

	char *data;
	Type type;
	long id;
	bool isUserTerm;
	bool isContext;
	TypeDef *typeDef;
	char *displayString;
	int numAppearances;
	bool isShortest;

	/* Return a string that describes what the lang el is.
	 *   literal-term, term, regular, non-term */
	const char *typeString();

	/* Productions from the language element if it is a non-terminal. */
	LelDefList defList;
};

KlangEl *getKlangEl( ParseData *pd, char *data, KlangEl::Type defType );

struct Factor
{
	/* Language elements a factor node can be. */
	enum Type {
		LiteralType, 
		ReferenceType
	}; 

	/* Construct with a literal fsm. */
	Factor( const InputLoc &loc, bool commit, Literal *literal, int priorVal ) :
		loc(loc), commit(commit), literal(literal), 
		priorVal(priorVal), type(LiteralType) {}

	/* Construct with a reference to a var def. */
	Factor( const InputLoc &loc, bool commit, KlangEl *langEl, int priorVal ) :
		loc(loc), commit(commit), langEl(langEl),
		priorVal(priorVal), type(ReferenceType) {}

	InputLoc loc;
	bool commit;
	Literal *literal;
	KlangEl *langEl;
	int priorVal;
	Type type;

	Factor *prev, *next;
};

struct ProdElList : public DList<Factor>
{
	FsmAp *walk( ParseData *pd );
};

/* Some literal machine. Can be a number or literal string. */
struct Literal
{
	Literal( const InputLoc &loc, long value )
		: loc(loc), value(value) { }

	InputLoc loc;
	long value;
};


#endif /* _PARSEDATA_H */
