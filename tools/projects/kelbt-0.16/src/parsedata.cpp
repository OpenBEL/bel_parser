/*
 *  Copyright 2001-2007 Adrian Thurston <thurston@complang.org>
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
#include <iomanip>
#include <errno.h>
#include <stdlib.h>

/* Parsing. */
#include "kelbt.h"
#include "parsedata.h"

/* Dumping the fsm. */
#include "mergesort.h"

using namespace std;

char startDefName[] = "start";

void ParseData::printDotSet( ostream &out, long dotItem )
{
	long pos = 0, base = dotItem;
	DotItemIndexEl *iel;
	for (;;) {
		iel = dotItemIndex.find( base );
		if ( iel != 0 )
			break;
		base -= 1;
	}

	out << "    " << iel->value->data << ":";
	for ( ProdElList::Iter pli = *iel->value->prodElList; pli.lte(); pli++, pos++ ) {
		if ( pos == dotItem - base )
			out << " .";
		
		if ( pli->type == Factor::LiteralType )
			out << " '" << (char)pli->literal->value << "'";
		else
			out << " " << pli->langEl->data;
	}
	if ( pos == dotItem - base )
		out << " .";
	out << endl;
}

/* Count the transitions in the fsm by walking the state list. */
int countTransitions( FsmAp *fsm )
{
	int numTrans = 0;
	StateAp *state = fsm->stateList.head;
	while ( state != 0 ) {
		numTrans += state->transMap.length();
		state = state->next;
	}
	return numTrans;
}

KlangEl::KlangEl( char *data, Type type )
:
	type(type),
	id(-1),
	isUserTerm(false),
	isContext(false),
	typeDef(0),
	displayString(0),
	numAppearances(0),
	isShortest(false)
{
	/* If there is a data, take a copy. */
	this->data = strdup(data);
}
 
/* Return a string that describes what the lang el is.
 *   literal-term, term, regular, non-term */
const char *KlangEl::typeString()
{
	switch ( type ) {
	case Term:    return "term";
	case NonTerm: return "non-term";
	default: return 0;
	}
}

FsmAp *ProdElList::walk( ParseData *pd )
{
	FsmAp *prodFsm = new FsmAp();
	StateAp *last = prodFsm->addState();
	prodFsm->setStartState( last );

	int prodLength = 0;
	for ( Iter prodEl = first(); prodEl.lte(); prodEl++, prodLength++ ) {
		//FsmAp *itemFsm = prodEl->walk( pd );
		long value = 0;

		if ( prodEl->type == Factor::LiteralType )
			value = prodEl->literal->value;
		else if ( Factor::ReferenceType )
			value = prodEl->langEl->id;

		StateAp *newState = prodFsm->addState();
		TransAp *newTrans = prodFsm->attachNewTrans( last, newState, value, value );

		newTrans->isShift = true;
		newTrans->shiftPrior = prodEl->priorVal;
		//cerr << "PRIOR VAL: " << newTrans->shiftPrior << endl;

		if ( prodEl->commit ) {
			//cout << "COMMIT: inserting commit of length: " << pd->prodLength << endl;
			/* Insert the commit into transitions out of last */
			for ( TransMap::Iter trans = last->transMap; trans.lte(); trans++ )
				trans->value->commits.insert( prodLength );
		}

		last = newState;
	}

	/* Make the last state the final state. */
	prodFsm->setFinState( last );
	return prodFsm;
}


/*
 * ParseData
 */

/* Initialize the structure that will collect info during the parse of a
 * machine. */
ParseData::ParseData( const char *fileName, char *parserName, ostream &out )
:	
	/* 0 is reserved for global error actions. */
	fileName(fileName),
	parserName(parserName),
	out(out),
	access(0),
	tokenStruct(0),
	startKlangEl(0),
	eofKlangEl(0),
	errorKlangEl(0),
	userStartKlangEl(0),
	startDef(0),
	nextSymbolId(0), 
	firstNonTermId(0),
	elementBlock(0),
	tokenBlock(0),
	preReduceBlock(0),
	postReduceBlock(0),
	translateBlock(0),
	undoTransBlock(0),
	tokenFinalBlock(0),
	prodIdIndex(0),
	didTokens(false),
	didGraph(false),
	tokenIsClass(false)
{}


KlangEl *getKlangEl( ParseData *pd, char *data, KlangEl::Type defType )
{
    /* If the id is already in the dict, it will be placed in last found. If
     * it is not there then it will be inserted and last found will be set to it. */
    SymbolMapEl *inDict = pd->symbolMap.find( data );
    if ( inDict == 0 ) {
        /* Language element not there. Make the new lang el and insert.. */
        KlangEl *langEl = new KlangEl( data, defType );
        inDict = pd->symbolMap.insert( langEl->data, langEl );
        pd->langEls.append( langEl );
    }
    return inDict->value;
}

ProdElList *makeProdElList( char *name, KlangEl *langEl )
{
	ProdElList *prodElList = new ProdElList();
	prodElList->append( new Factor( InputLoc(), false, langEl, 0 ) );
	return prodElList;
}

void ParseData::makeDefinitionNames()
{
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		int prodNum = 1;
		for ( LelDefList::Iter def = lel->defList; def.lte(); def++ ) {
			def->data = new char[strlen(lel->data) + 30];
			sprintf( def->data, "%s-%i", lel->data, prodNum++ );
		}
	}
}

/* Make sure there there are no language elements whose type is unkonwn. This
 * can happen when an id is used on the rhs of a definition but is not defined
 * as anything. */
void ParseData::noUndefinedKlangEls()
{
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		if ( lel->type == KlangEl::Unknown )
			error() << "'" << lel->data << "' was not defined as anything" << endl;
	}
}

void ParseData::noUndefinedUses()
{
	for ( TypeDefMap::Iter tmel = typeDefMap; tmel.lte(); tmel++ ) {
		if ( tmel->value->typeBlock == 0 )
			error() << "'" << tmel->value->data << "' is an undefined type" << endl;
	}
}


void ParseData::makeTokens( )
{
	if ( didTokens )
		return;
	didTokens = true;

	/* Make an EOF language element. */
	char *eofName = new char[strlen(parserName) + 16];
	sprintf( eofName, "%s_tk_eof", parserName );
	eofKlangEl = new KlangEl( eofName, KlangEl::Term );
	langEls.append( eofKlangEl );
	SymbolMapEl *eofMapEl = symbolMap.insert( eofKlangEl->data, eofKlangEl );
	assert( eofMapEl != 0 );

	nextSymbolId = 128;

	/* First pass assigns to the user terminals. */
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		/* Must be a term, and not any of the special reserved terminals.
		 * Remember if the non terminal is a user non terminal. */
		if ( lel->type == KlangEl::Term && lel != eofKlangEl && lel != errorKlangEl ) {
			lel->isUserTerm = true;
			lel->id = nextSymbolId++;
		}
	}

	/* Next assign to the eof token, which we always create. */
	eofKlangEl->id = nextSymbolId++;
}

void ParseData::makeKlangElIds()
{
	/* First pass assigns to the user terminals. */
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		if ( lel->id < 0 ) {
			/* Must be a term, and not any of the special reserved terminals.
			 * Remember if the non terminal is a user non terminal. */
			if ( lel->type == KlangEl::Term && lel != eofKlangEl && lel != errorKlangEl ) {
				lel->isUserTerm = true;
				lel->id = nextSymbolId++;
			}
		}
	}

	/* Possibly assign to the error language element. */
	if ( errorKlangEl != 0 )
		errorKlangEl->id = nextSymbolId++;

	/* Save this for for the code generation. */
	firstNonTermId = nextSymbolId;

	/* A third and final pass assigns to everything else. */
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ ) {
		/* Anything else not yet assigned gets assigned now. */
		if ( lel->id < 0 )
			lel->id = nextSymbolId++;
	}
}

void ParseData::checkInlineListReferences( Definition *prod, InlineBlock *inlineBlock )
{
	for ( InlineList::Iter ili = *inlineBlock->inlineList; ili.lte(); ili++ ) {
		if ( ili->type == InlineItem::Reference ) {
			if ( ili->data[1] != '$' && ili->data[1] != '@' ) {
				int refPos = atoi( ili->data+1 ) - 1;
				if ( refPos < 0 || refPos >= prod->rhsFactorVect.length() ) {
					error( ili->loc ) << "reference " << 
						ili->data << " is out range for production" << endl;
				}
			}
		}
	}
}

void ParseData::checkReferences( Definition *prod )
{
	if ( prod->redBlock != 0 )
		checkInlineListReferences( prod, prod->redBlock );
	if ( prod->undoBlock != 0 )
		checkInlineListReferences( prod, prod->undoBlock );
	if ( prod->finalBlock != 0 )
		checkInlineListReferences( prod, prod->finalBlock );
}

/* Set up dot sets, shift info, and prod sets. */
void ParseData::makeProdFsms()
{
	/* There are two items in the index for each production (high and low). */
	int indexLen = prodList.length() * 2;
	dotItemIndex.setAsNew( indexLen );
	int dsiLow = 0, indexPos = 0;

	/* Build FSMs for all production language elements. */
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		/* Verify that rhs references are legal. */
		checkReferences( prod );
		prod->fsm = prod->prodElList->walk( this );
	}

	makeNonTermFirstSets();
	makeFirstSets();

	/* Build FSMs for all production language elements. */
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		if ( addUniqueEmptyProductions ) {
			/* This must be re-implemented. */
			assert( false );
			//if ( !prod->isLeftRec && prod->uniqueEmptyLeader != 0 ) {
			//	FsmAp *emptyLeader = prod->uniqueEmptyLeader->walk( this );
			//	emptyLeader->concatOp( prod->fsm );
			//	prod->fsm = emptyLeader;
			//}
		}

		/* Compute the machine's length. */
		prod->fsmLength = prod->fsm->fsmLength( );

		/* Productions have a unique production id for each final state.
		 * This lets us use a production length specific to each final state.
		 * Start states are always isolated therefore if the start state is
		 * final then reductions from it will always have a fixed production
		 * length. This is a simple method for determining the length
		 * of zero-length derivations when reducing. */

		/* Number of dot items needed for the production is elements + 1
		 * because the dot can be before the first and after the last element. */
		int numForProd = prod->fsm->stateList.length() + 1;

		/* Set up the low and high values in the index for this production. */
		dotItemIndex.data[indexPos].key = dsiLow;
		dotItemIndex.data[indexPos].value = prod;
		dotItemIndex.data[indexPos+1].key = dsiLow + numForProd - 1;
		dotItemIndex.data[indexPos+1].value = prod;

		int dsi = dsiLow;
		for ( StateList::Iter state = prod->fsm->stateList; state.lte(); state++, dsi++ ) {
			/* All transitions are shifts. */
			for ( TransMap::Iter out = state->transMap; out.lte(); out++ )
				assert( out->value->isShift );

			state->dotSet.insert( dsi );
		}

		/* Move over the production. */
		dsiLow += numForProd;
		indexPos += 2;

		if ( prod->prodCommit ) {
			for ( StateSet::Iter fin = prod->fsm->finStateSet; fin.lte(); fin++ ) {
				int length = prod->fsmLength;
				//cerr << "PENDING COMMIT IN FINAL STATE of " << prod->prodId <<
				//		" with len: " << length << endl;
				(*fin)->pendingCommits.insert( ProdIdPair( prod->prodId, length ) );
			}
		}
	}

	/* Make the final state specific prod id to prod id mapping. */
	prodIdIndex = new Definition*[prodList.length()];
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ )
		prodIdIndex[prod->prodId] = prod;
}

/* Want the first set of over src. If the first set contains epsilon, go over
 * it and over tab. If overSrc is the end of the production, find the follow
 * from the table, taking only the characters on which the parent is reduced.
 * */
void ParseData::findFollow( AlphSet &result, StateAp *overTab, 
		StateAp *overSrc, Definition *parentDef )
{
	if ( overSrc->isFinState() ) {
		assert( overSrc->transMap.length() == 0 );

		/* At the end of the production. Turn to the table. */
		long redCode = makeReduceCode( parentDef->prodId, false );
		for ( TransMap::Iter tabTrans = overTab->transMap; tabTrans.lte(); tabTrans++ ) {
			for ( ActDataList::Iter adl = tabTrans->value->actions; adl.lte(); adl++ ) {
				if ( *adl == redCode ) {
					result.insert( tabTrans->key );
				}
			}
		}
	}
	else {
		/* Get the first set of the item. If the first set contains epsilon
		 * then move over overSrc and overTab and recurse. */
		assert( overSrc->transMap.length() == 1 );
		TransMap::Iter pastTrans = overSrc->transMap;

		KlangEl *langEl = langElIndex[pastTrans->key];
		if ( langEl != 0 && langEl->type == KlangEl::NonTerm ) {
			bool hasEpsilon = false;
			for ( LelDefList::Iter def = langEl->defList; def.lte(); def++ ) {
				result.insert( def->firstSet );

				if ( def->firstSet.find( -1 ) )
					hasEpsilon = true;
			}

			/* Find the equivalent state in the parser. */
			if ( hasEpsilon ) {
				TransAp *tabTrans = overTab->findTrans( pastTrans->key );
				findFollow( result, tabTrans->toState, 
						pastTrans->value->toState, parentDef );
			}
		}
		else {
			result.insert( pastTrans->key );
		}
	}
}

StateAp *ParseData::followProd( StateAp *tabState, StateAp *prodState )
{
	while ( prodState->transMap.length() == 1 ) {
		TransMap::Iter prodTrans = prodState->transMap;
		TransAp *tabTrans = tabState->findTrans( prodTrans->key );
		prodState = prodTrans->value->toState;
		tabState = tabTrans->toState;
	}
	return tabState;
}

/* Go down a defintiion and then handle the follow actions. */
void ParseData::actionOrdsFollow( StateAp *tabState, TransAp *tabTrans,
		TransAp *srcTrans, Definition *parentDef, Definition *definition, 
		long &time )
{
	/* We need the follow from tabState/srcState over the defintion we are
	 * currently processing. */
	StateAp *overTab = tabTrans->toState;
	StateAp *overSrc = srcTrans->toState;

	AlphSet alphSet;
	if ( parentDef == startDef )
		alphSet.insert( eofKlangEl->id );
	else
		findFollow( alphSet, overTab, overSrc, parentDef );		

	/* Now follow the production to find out where it expands to. */
	StateAp *expandToState = followProd( tabState, definition->fsm->startState );

	/* Find the reduce item. */
	long redCode = makeReduceCode( definition->prodId, false );

	for ( TransMap::Iter tt = expandToState->transMap; tt.lte(); tt++ ) {
		if ( alphSet.find( tt->key ) ) {
			for ( ActDataList::Iter adl = tt->value->actions; adl.lte(); adl++ ) {
				if ( *adl == redCode ) {
					if ( tt->value->actOrds[adl.pos()] == 0 ) {
//						cerr << "setting reduction(" << redCode << "): state = " 
//								<< expandToState->stateNum 
//								<< ", trans = " << tt->key 
//								<< ", time = " << time << endl;
						tt->value->actOrds[adl.pos()] = time++;
					}
				}
			}
		}
	}
}

void ParseData::actionOrdsProd( StateAp *tabState, StateAp *srcState, 
		Definition *parentDef, long &time )
{
	assert( srcState->dotSet.length() == 1 );
	if ( tabState->dotSet2.find( srcState->dotSet[0] ) )
		return;
	tabState->dotSet2.insert( srcState->dotSet[0] );
	
	assert( srcState->transMap.length() == 0 || srcState->transMap.length() == 1 );

	if ( srcState->transMap.length() == 1 ) { 
		TransMap::Iter srcTrans = srcState->transMap;

		/* Find the equivalent state in the parser. */
		TransAp *tabTrans = tabState->findTrans( srcTrans->key );

		/* Recurse into the transition if it is a non-terminal. */
		KlangEl *langEl = langElIndex[srcTrans->key];
		if ( langEl != 0 ) {
			if ( langEl->isShortest ) {
				/* Use a shortest match ordering for the contents of this
				 * nonterminal. Does follows for all productions first, then
				 * goes down the productions. */
				for ( LelDefList::Iter expDef = langEl->defList; expDef.lte(); expDef++ ) {
					actionOrdsFollow( tabState, tabTrans, srcTrans->value, 
							parentDef, expDef, time );
				}

				for ( LelDefList::Iter expDef = langEl->defList; expDef.lte(); expDef++ )
					actionOrdsProd( tabState, expDef->fsm->startState, expDef, time );
			}
			else {
				/* The default action ordering. For each prod, goes down the
				 * prod then sets the follow before going to the next prod. */
				for ( LelDefList::Iter expDef = langEl->defList; expDef.lte(); expDef++ ) {
					actionOrdsProd( tabState, expDef->fsm->startState, expDef, time );

					actionOrdsFollow( tabState, tabTrans, srcTrans->value, 
							parentDef, expDef, time );
				}
			}
		}

		/* Find the shift item. */
		ActDataList::Iter adl = tabTrans->actions;
		for ( ; adl.lte(); adl++ ) {
			if ( *adl == SHIFT_CODE )
				break;
		}

		/* If the time of the shift is not already set, set it. */
		if ( tabTrans->actOrds[adl.pos()] == 0 ) {
			//cerr << "setting shift: state = " << tabState->stateNum 
			//		<< ", trans = " << tabTrans->lowKey
			//		<< ", time = " << time << endl;
			tabTrans->actOrds[adl.pos()] = time++;
		}

		/* Go over one in the production. */
		actionOrdsProd( tabTrans->toState, 
				srcTrans->value->toState, parentDef, time );
	}
}

long ParseData::computeActOrds()
{
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		assert( (state->stateBits & SB_ISMARKED) == 0 );

		/* Traverse the src state's transitions. */
		long last = 0;
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			if ( ! trans.first() )
				assert( last < trans->key );
			last = trans->key;
		}
	}

	/* Compute the action orderings, record the max value. */
	long time = 1;
	StateAp *startState = startDef->fsm->startState;
	actionOrdsProd( graph->startState, startState, startDef, time );

	/* Walk over the start lang el and set the time for shift of
	 * the eof action that completes the parse. This could use some cleanup,
	 * in particular a find routine. */
	TransAp *overStart = graph->startState->findTrans( userStartKlangEl->id );
	TransAp *eofTrans = overStart->toState->findTrans( eofKlangEl->id );
	eofTrans->actOrds[0] = time++;

	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		assert( CmpDotSet::compare( state->dotSet, state->dotSet2 ) == 0 );
		for ( TransMap::Iter tel = state->transMap; tel.lte(); tel++ ) {
			TransAp *trans = tel->value;
			/* Check every action has an ordering. */
			for ( ActDataList::Iter adl = trans->actOrds; adl.lte(); adl++ ) {
				if ( *adl == 0 ) {
					warning() << "action ordering for " << 
						trans->actions[adl.pos()] << " is unset, state: " << 
						state->stateNum << ", trans: ";

					KlangEl *lel = langElIndex[trans->lowKey];
					if ( lel == 0 )
						cerr << (char)trans->lowKey << endl;
					else
						cerr << lel->data << endl;
					*adl = time++;
				}
			}
		}
	}
	return time;
}

long min( Vector<long> &v )
{
	Vector<long>::Iter i = v;
	long m = *i;
	i++;
	for ( ; i.lte(); i++ ) {
		if ( *i < m )
			m = *i;
	}
	return m;
}

void ParseData::advanceReductions( long nextTime )
{
	/* Loop all states. */
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		bool outHasShift = false;
		long minTime = nextTime;
		ReductionMap outReds;
		LongSet outCommits;
		for ( TransMap::Iter out = state->transMap; out.lte(); out++ ) {
			/* Get the transition from the trans el. */
			if ( out->value->isShift )
				outHasShift = true;
			outReds.insert( out->value->reductions );
			outCommits.insert( out->value->commits );
			long nmt = min( out->value->actOrds );
			if ( nmt < minTime )
				minTime = nmt;
		}

		bool inHasShift = false;
		ReductionMap inReds;
		for ( TransInList::Iter in = state->inRange; in.lte(); in++ ) {
			/* Get the transition from the trans el. */
			if ( in->isShift )
				inHasShift = true;
			inReds.insert( in->reductions );
		}

		if ( !outHasShift && outReds.length() == 1 && 
				inHasShift && inReds.length() == 0 )
		{
			//cerr << "moving reduction to shift" << endl;

			/* Move the reduction to all in transitions. */
			for ( TransInList::Iter in = state->inRange; in.lte(); in++ ) {
				assert( in->actions.length() == 1 );
				assert( in->actions[0] == SHIFT_CODE );
				in->actions[0] = makeReduceCode( outReds[0].key, true );
				in->actOrds[0] = minTime;
				in->afterShiftCommits.insert( outCommits );
			}

			/* 
			 * Remove all transitions out of the state.
			 */

			/* Detach out range transitions. */
			for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
				graph->detachTrans( state, trans->value->toState, trans->value );
				delete trans->value;
			}
			state->transMap.empty();

			/* Redirect all the in transitions to the actionDestState. */
			graph->inTransMove( actionDestState, state );
		}
	}

	graph->removeUnreachableStates();

	long *map = new long[nextTime];
	memset( map, 0, sizeof(long)*nextTime );
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			for ( ActDataList::Iter t = trans->value->actOrds; t.lte(); t++ )
				map[*t] = 1;
		}
	}
	for ( int i = 0, j = 1; i < nextTime; i++ ) {
		if ( map[i] )
			map[i] = j++;
	}
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			for ( ActDataList::Iter t = trans->value->actOrds; t.lte(); t++ )
				*t = map[*t];
		}
	}
	delete[] map;
}

void ParseData::sortActions()
{
	/* Sort the actions. */
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		assert( CmpDotSet::compare( state->dotSet, state->dotSet2 ) == 0 );
		for ( TransMap::Iter tel = state->transMap; tel.lte(); tel++ ) {
			TransAp *trans = tel->value;

			/* Sort by the action ords. */
			ActDataList actions( trans->actions );
			ActDataList actOrds( trans->actOrds );
			ActDataList actPriors( trans->actPriors );
			trans->actions.empty();
			trans->actOrds.empty();
			trans->actPriors.empty();
			while ( actOrds.length() > 0 ) {
				int min = 0;
				for ( int i = 1; i < actOrds.length(); i++ ) {
					if ( actPriors[i] > actPriors[min] ||
							(actPriors[i] == actPriors[min] &&
							actOrds[i] < actOrds[min] ) )
					{
						min = i;
					}
				}
				trans->actions.append( actions[min] );
				trans->actOrds.append( actOrds[min] );
				trans->actPriors.append( actPriors[min] );
				actions.remove(min);
				actOrds.remove(min);
				actPriors.remove(min);
			}

			if ( branchPointInfo && trans->actions.length() > 1 ) {
				cout << "info: branch point"
						<< " state: " << state->stateNum
						<< " trans: ";

				KlangEl *lel = langElIndex[trans->lowKey];
				if ( lel == 0 )
					cout << (char)trans->lowKey << endl;
				else
					cout << lel->data << endl;

				cout << "  actions:" << endl;
				for ( ActDataList::Iter act = trans->actions; act.lte(); act++ ) {
					switch ( *act & 0x3 ) {
					case 1: 
						cout << "    shift" << endl;
						break;
					case 2: 
						cout << "    reduce " << 
								prodIdIndex[(*act >> 2)]->data << endl;
						break;
					case 3:
						cout << "    shift-reduce" << endl;
						break;
					}
				}

				cout << "  dot set of state:" << endl;
				for ( DotSet::Iter dsi = state->dotSet; dsi.lte(); dsi++ )
					printDotSet( cout, *dsi );

			}

			/* Verify that shifts of nonterminals don't have any branch
			 * points or commits. */
			if ( trans->lowKey >= firstNonTermId ) {
				if ( trans->actions.length() != 1 || 
					(trans->actions[0] & 0x3) != 1 )
				{
					error() << "TRANS ON NONTERMINAL is something "
						"other than a shift" << endl;
				}
				if ( trans->commits.length() > 0 )
					error() << "TRANS ON NONTERMINAL has a commit" << endl;
			}

			/* TODO: Shift-reduces are optimizations. Verify that
			 * shift-reduces exist only if they don't entail a conflict. */
		}
	}
}

void ParseData::reduceActions()
{
	/* Reduce the actions. */
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		for ( TransMap::Iter tel = state->transMap; tel.lte(); tel++ ) {
			TransAp *trans = tel->value;
			ActionSetEl *inSet;

			int commitLen = trans->commits.length() > 0 ?
				trans->commits[trans->commits.length()-1] : 0;

			if ( trans->afterShiftCommits.length() > 0 ) {
				int afterShiftCommit = trans->afterShiftCommits[
					trans->afterShiftCommits.length()-1];

				if ( commitLen > 0 && commitLen+1 > afterShiftCommit )
					commitLen = ( commitLen + 1 );
				else
					commitLen = afterShiftCommit;
			}
			else {
				commitLen = commitLen * -1;
			}
			
//			if ( commitLen != 0 ) {
//				cerr << "FINAL ACTION COMMIT LEN: " << commitLen << endl;
//			}

			actionSet.insert( ActionData( trans->toState->stateNum, 
					trans->actions, commitLen ), &inSet );
			trans->actionSetEl = inSet;
		}
	}
}

void ParseData::analyzeMachine()
{
	maxState = graph->stateList.length() - 1;
	maxLelId = nextSymbolId - 1;
	maxOffset = graph->stateList.length() * maxLelId;

	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			if ( trans->value->isShift ) {
				trans->value->actions.append( SHIFT_CODE );
				trans->value->actPriors.append( trans->value->shiftPrior );
			}
			for ( ReductionMap::Iter red = trans->value->reductions; red.lte(); red++ ) {
				trans->value->actions.append( makeReduceCode( red->key, false ) );
				trans->value->actPriors.append( red->value );
			}
			trans->value->actOrds.appendDup( 0, trans->value->actions.length() );
		}
	}

	long nextTime = computeActOrds();
	sortActions();
	advanceReductions( nextTime );
	graph->setStateNumbers();
	reduceActions();

	/* Set the action ids. */
	int actionSetId = 0;
	for ( ActionSet::Iter asi = actionSet; asi.lte(); asi++ )
		asi->key.id = actionSetId++;
	
	/* Get the max index. */
	maxIndex = actionSetId - 1;

	/* Compute the max prod length. */
	maxProdLen = 0;
	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
		if ( (unsigned)prod->fsmLength > maxProdLen )
			maxProdLen = prod->fsmLength;
	}
}

void ParseData::wrapUserStartSymbol()
{
	SymbolMapEl *startMapEl = symbolMap.find( startDefName );
	if ( startMapEl == 0 ) {
		/* No recovery action, fsm is skipped. */
		error(sectionLoc) << "start non-terminal not defined in \"" 
			<< parserName << "\"" << endl;
		return;
	}
	userStartKlangEl = startMapEl->value;

	/* Make a language element that will go to the start symbol only. This will
	 * guarantee a start symbol with only one production. A name with an underscore 
	 * at the beginning will never clash with any user name. */
	startKlangEl = new KlangEl( strdup("_start"), KlangEl::NonTerm );
	langEls.append( startKlangEl );
	startMapEl = symbolMap.insert( startKlangEl->data, startKlangEl );
	assert( startMapEl != 0 );

	/* Make a single production for the start element. */
	ProdElList *startProdElList = makeProdElList( startKlangEl->data, userStartKlangEl );
	startDef = new Definition( InputLoc(), startKlangEl, 
			startProdElList, false, 0, 0, 0,
			prodList.length(), Definition::Production );

	prodList.append( startDef );
	startKlangEl->defList.append( startDef );
}

bool ParseData::makeNonTermFirstSetProd( Definition *prod, StateAp *state )
{
	bool modified = false;
	for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
		if ( trans->key >= firstNonTermId ) {
			long *inserted = prod->nonTermFirstSet.insert( trans->key );
			if ( inserted != 0 )
				modified = true;

			bool hasEpsilon = false;
			KlangEl *lel = langElIndex[trans->key];
			for ( LelDefList::Iter ldef = lel->defList; ldef.lte(); ldef++ ) {
				for ( ProdIdSet::Iter pid = ldef->nonTermFirstSet; 
						pid.lte(); pid++ )
				{
					if ( *pid == -1 )
						hasEpsilon = true;
					else {
						long *inserted = prod->nonTermFirstSet.insert( *pid );
						if ( inserted != 0 )
							modified = true;
					}
				}
			}

			if ( hasEpsilon ) {
				if ( trans->value->toState->isFinState() ) {
					long *inserted = prod->nonTermFirstSet.insert( -1 );
					if ( inserted != 0 )
						modified = true;
				}

				bool lmod = makeNonTermFirstSetProd( prod, trans->value->toState );
				if ( lmod )
					modified = true;
			}
		}
	}
	return modified;
}


void ParseData::makeNonTermFirstSets()
{
//	cerr << "MAKING NONTERM FIRST SETS" << endl;
	bool modified = true;
	while ( modified ) {
		modified = false;
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			if ( prod->fsm->startState->isFinState() ) {
				long *inserted = prod->nonTermFirstSet.insert( -1 );
				if ( inserted != 0 )
					modified = true;
			}

			bool lmod = makeNonTermFirstSetProd( prod, prod->fsm->startState );
			if ( lmod )
				modified = true;
		}
	}

	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
//		cerr << prod->data << ": ";
//		for ( ProdIdSet::Iter pid = prod->nonTermFirstSet; pid.lte(); pid++ )
//		{
//			if ( *pid < 0 )
//				cerr << " <EPSILON>";
//			else {
//				KlangEl *lel = langElIndex[*pid];
//				cerr << " " << lel->data;
//			}
//		}
//		cerr << endl;

		if ( prod->nonTermFirstSet.find( prod->prodName->id ) ) {
//			cerr << "PROD IS LEFT REC: " << prod->data << endl;
			prod->isLeftRec = true;
		}
	}
}

bool ParseData::makeFirstSetProd( Definition *prod, StateAp *state )
{
	bool modified = false;
	for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
		if ( trans->key < firstNonTermId ) {
			long *inserted = prod->firstSet.insert( trans->key );
			if ( inserted != 0 )
				modified = true;
		}
		else {
			long *inserted = prod->firstSet.insert( trans->key );
			if ( inserted != 0 )
				modified = true;

			bool hasEpsilon = false;
			KlangEl *lel = langElIndex[trans->key];
			for ( LelDefList::Iter ldef = lel->defList; ldef.lte(); ldef++ ) {
				for ( ProdIdSet::Iter pid = ldef->firstSet; 
						pid.lte(); pid++ )
				{
					if ( *pid == -1 )
						hasEpsilon = true;
					else {
						long *inserted = prod->firstSet.insert( *pid );
						if ( inserted != 0 )
							modified = true;
					}
				}
			}

			if ( hasEpsilon ) {
				if ( trans->value->toState->isFinState() ) {
					long *inserted = prod->firstSet.insert( -1 );
					if ( inserted != 0 )
						modified = true;
				}

				bool lmod = makeFirstSetProd( prod, trans->value->toState );
				if ( lmod )
					modified = true;
			}
		}
	}
	return modified;
}


void ParseData::makeFirstSets()
{
//	cerr << "MAKING TERM FIRST SETS" << endl;
	bool modified = true;
	while ( modified ) {
		modified = false;
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			if ( prod->fsm->startState->isFinState() ) {
				long *inserted = prod->firstSet.insert( -1 );
				if ( inserted != 0 )
					modified = true;
			}

			bool lmod = makeFirstSetProd( prod, prod->fsm->startState );
			if ( lmod )
				modified = true;
		}
	}

//	for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
//		cerr << prod->data << ": ";
//		for ( ProdIdSet::Iter pid = prod->firstSet; pid.lte(); pid++ )
//		{
//			if ( *pid < 0 )
//				cerr << " <EPSILON>";
//			else {
//				KlangEl *lel = langElIndex[*pid];
//				if ( lel != 0 ) 
//					cerr << endl << "    " << lel->data;
//				else
//					cerr << endl << "    " << *pid;
//			}
//		}
//		cerr << endl;
//	}
}

void ParseData::uniqueEmptyProductions()
{
	if ( addUniqueEmptyProductions ) {
		int limit = prodList.length();
		for ( DefList::Iter prod = prodList; prod.lte(); prod++ ) {
			if ( prod->prodId == limit )
				break;

			/* Get a language element. */
			char name[20];
			sprintf(name, "U%li", prodList.length());
			KlangEl *prodName = getKlangEl( this, name, KlangEl::NonTerm );
			Definition *newDef = new Definition( InputLoc(), prodName, 
					0 /* FIXME new VarDef( name, 0 )*/, 
					false, 0, 0, 0, prodList.length(), Definition::Production );
			prodName->defList.append( newDef );
			prodList.append( newDef );

			prod->uniqueEmptyLeader = prodName;
		}
	}
}

void ParseData::makeGraph()
{
	if ( didGraph )
		return;
	didGraph = true;

	makeTokens();

	uniqueEmptyProductions();

	wrapUserStartSymbol();
	if ( gblErrorCount > 0 ) 
		return;

	makeKlangElIds();
	makeDefinitionNames();
	noUndefinedKlangEls();
	noUndefinedUses();

	/* Put the language elements in an index by language element id. */
	langElIndex = new KlangEl*[nextSymbolId+1];
	memset( langElIndex, 0, sizeof(KlangEl*)*(nextSymbolId+1) );
	for ( LelList::Iter lel = langEls; lel.lte(); lel++ )
		langElIndex[lel->id] = lel;
	
	//for ( DefList::Iter prod = prodList; prod.lte(); prod++ )
	//	cerr << prod->prodId << " " << prod->data << endl;

	makeProdFsms();

	lalr1GenerateParser();
	graph->setStateNumbers();
	analyzeMachine();

	//cerr << "NUMBER OF STATES: " << graph->stateList.length() << endl;
}

void ParseData::generateInstanceData()
{
	makeTokens( );
	startCodeGen();
	writeInstanceData();
}

void ParseData::generateTokenDefs()
{
	makeTokens( );
	startCodeGen();
	writeTokenDefs();
}

void ParseData::generateTypes()
{
	makeGraph();
	if ( gblErrorCount > 0 ) 
		return;
	startCodeGen();
	writeTypes();
}

void ParseData::generateData()
{
	makeGraph();
	if ( gblErrorCount > 0 ) 
		return;
	startCodeGen();
	writeData();
}

void ParseData::generateInit()
{
	makeGraph();
	if ( gblErrorCount > 0 ) 
		return;
	startCodeGen();
	writeInit();
}

void ParseData::generateExec()
{
	makeGraph();
	if ( gblErrorCount > 0 ) 
		return;
	startCodeGen();
	writeExec();
}

void ParseData::generateFinish()
{
	makeGraph();
	if ( gblErrorCount > 0 ) 
		return;
	startCodeGen();
	writeFinish();
}

void ParseData::generateGraphviz( )
{
	makeGraph();
	if ( gblErrorCount > 0 ) 
		return;
	writeDotFile();
}
