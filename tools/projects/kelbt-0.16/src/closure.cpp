/*
 *  Copyright 2005 Adrian Thurston <thurston@complang.org>
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

#include "kelbt.h"
#include "parsedata.h"

#include "vector.h"
#include <assert.h>
#include <string.h>
#include <iostream>

using std::endl;
using std::cerr;

void ParseData::lr0BringInItem( StateAp *dest, StateAp *prodState, 
		TransAp *expandFrom, Definition *prod )
{
	/* We use dot sets for finding unique states. In the future, should merge
	 * dots sets with the stateSet pointer (only need one of these). */
	assert( dest != prodState );
	dest->dotSet.insert( prodState->dotSet );

	/* Get the epsilons, context, out priorities. */
	dest->pendingCommits.insert( prodState->pendingCommits );
	//if ( prodState->pendingCommits.length() > 0 )
	//	cerr << "THERE ARE PENDING COMMITS DRAWN IN" << endl;
	
	if ( prodState->transMap.length() > 0 ) {
		assert( prodState->transMap.length() == 1 );
		TransAp *srcTrans = prodState->transMap[0].value;

		/* Look for the source in the destination. */
		TransMapEl *destTel = dest->transMap.find( srcTrans->lowKey );
		if ( destTel == 0 ) {
			/* Make a new state and transition to it. */
			StateAp *newState = graph->addState();
			TransAp *newTrans = new TransAp();

			/* Attach the new transition to the new state. */
			newTrans->lowKey = srcTrans->lowKey;
			graph->attachTrans( dest, newState, newTrans );
			graph->addInTrans( newTrans, srcTrans );

			/* The transitions we make during lr0 closure are all shifts. */
			assert( newTrans->isShift );
			assert( srcTrans->isShift );

			/* The new state must have its state set setup. */
			newState->stateSet = new StateSet;
			newState->stateSet->insert( srcTrans->toState );

			/* Insert the transition into the map. Be sure to set destTel, it
			 * is needed below. */
			dest->transMap.insert( srcTrans->lowKey, newTrans, &destTel );

			/* If the item is a non-term, queue it for closure. */
			KlangEl *langEl = langElIndex[srcTrans->lowKey];
			if ( langEl != 0 && langEl->type == KlangEl::NonTerm ) {
				graph->transClosureQueue.append( newTrans );
				//cerr << "put to trans closure queue" << endl;
			}
		}
		else {
			//cerr << "merging transitions" << endl;
			destTel->value->toState->stateSet->insert( srcTrans->toState );
			graph->addInTrans( destTel->value, srcTrans );
		}

		/* If this is an expansion then we may need to bring in commits. */
		if ( expandFrom != 0 && expandFrom->commits.length() > 0 ) {
			//cerr << "SETTING COMMIT ON CLOSURE ROUND" << endl;
			destTel->value->commits.insert( expandFrom->commits );

			expandFrom->commits.empty();
		}
	}
	else {
		/* ProdState does not have any transitions out. It is at the end of a
		 * production. */
		if ( expandFrom != 0 && expandFrom->commits.length() > 0 ) {
			//cerr << "SETTING COMMIT IN PENDING LOOKAHEAD" << endl;
			for ( LongSet::Iter len = expandFrom->commits; len.lte(); len++ )
				dest->pendingCommits.insert( ProdIdPair( prod->prodId, *len ) );

			expandFrom->commits.empty();
		}
	}
}

void ParseData::lr0InvokeClosure( StateAp *state )
{
	/* State should not already be closed. */
	assert( !state->inClosedMap );

	/* This is used each time we invoke closure, it must be cleared. */
	graph->transClosureQueue.abandon();

	/* Drag in the core items. */
	for ( StateSet::Iter ssi = *state->stateSet; ssi.lte(); ssi++ )
		lr0BringInItem( state, *ssi, 0, 0 );

	/* Now bring in the derived items. */
	while ( graph->transClosureQueue.length() > 0 ) {
		TransAp *toClose = graph->transClosureQueue.detachFirst();
		//cerr << "have a transition to derive" << endl;

		/* Get the langEl. */
		KlangEl *langEl = langElIndex[toClose->lowKey];

		/* Make graphs for all of the productions that the non
		 * terminal goes to that are not already in the state's dotSet. */
		for ( LelDefList::Iter prod = langEl->defList; prod.lte(); prod++ ) {
			/* Bring in the start state of the production. */
			lr0BringInItem( state, prod->fsm->startState, toClose, prod );
		}
	}

	/* Try and insert into the closed dict. */
	DotSetMapEl *lastFound;
	if ( graph->closedMap.insert( state, &lastFound ) ) {
		/* Insertion into closed dict succeeded. There is no state with the
		 * same dot set. The state is now closed. It is guaranteed a spot in
		 * the closed dict and it will never go away (states never deleted
		 * during closure). */
		graph->stateClosedList.append( state );
		state->inClosedMap = true;

		/* Add all of the states in the out transitions to the closure queue.
		 * This will give us a depth first search of the graph. */
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			/* Get the state the transEl goes to. */
			StateAp *targ = trans->value->toState;

			/* If the state on this tranisition has not already been slated
			 * for closure, then add it to the queue. */
			if ( !targ->onClosureQueue && !targ->inClosedMap ) {
				graph->stateClosureQueue.append( targ );
				targ->onClosureQueue = true;
			}
		}
	}
	else {
		/* Insertion into closed dict failed. There is an existing state
		 * with the same dot set. Get the existing state. */
		graph->inTransMove( lastFound, state );
		for ( TransMap::Iter tel = state->transMap; tel.lte(); tel++ ) {
			graph->stateList.detach( tel->value->toState );
			delete tel->value->toState;
			delete tel->value;
		}
		graph->stateList.detach( state );
		delete state;
	}
}

/* Invoke cloure on the graph. We use a queue here to achieve a breadth
 * first search of the tree we build. Note, there are back edges in this
 * tree. They are the edges made when upon closure, a dot set exists
 * already. */
void ParseData::lr0CloseAllStates()
{
	/* While there are items on the closure queue. */
	while ( graph->stateClosureQueue.length() > 0 ) {
		/* Pop the first item off. */
		StateAp *state = graph->stateClosureQueue.detachFirst();
		state->onClosureQueue = false;

		/* Invoke closure upon the state. */
		lr0InvokeClosure( state );
	}
}

void ParseData::transferCommits( TransAp *trans, StateAp *state, long prodId )
{
	ProdIdPairSet &pendingCommits = state->pendingCommits;
	for ( ProdIdPairSet::Iter pi = pendingCommits; pi.lte(); pi++ ) {
		if ( pi->onReduce == prodId )
			trans->commits.insert( pi->length );
	}
}

void ParseData::lalr1AddFollow2( TransAp *trans, FollowToAdd &followKeys )
{
	for ( ExpandToSet::Iter ets = trans->expandTo; ets.lte(); ets++ ) {
		int prodId = ets->prodId;
		StateAp *expandTo = ets->state;

		for ( FollowToAdd::Iter fkey = followKeys; fkey.lte(); fkey++ ) {
			TransMapEl *transEl = expandTo->transMap.find( fkey->key );

			if ( transEl != 0 ) {
				/* Set up the follow transition. */
				TransAp *destTrans = transEl->value;

				transferCommits( destTrans, expandTo, prodId );

				graph->addInReduction( destTrans, prodId, fkey->value );
			}
			else {
				/* Set up the follow transition. */
				TransAp *followTrans = new TransAp;
				followTrans->lowKey = fkey->key;
				followTrans->isShift = false;
				followTrans->reductions.insert( prodId, fkey->value );

				transferCommits( followTrans, expandTo, prodId );

				graph->attachTrans( expandTo, actionDestState, followTrans );
				expandTo->transMap.insert( followTrans->lowKey, followTrans );
				graph->transClosureQueue.append( followTrans );
			}
		}
	}
}

long TransAp::maxPrior()
{
	long prior = LONG_MIN;
	if ( isShift && shiftPrior > prior )
		prior = shiftPrior;
	for ( ReductionMap::Iter red = reductions; red.lte(); red++ ) {
		if ( red->value > prior )
			prior = red->value;
	}
	return prior;
}

void ParseData::lalr1AddFollow1( StateAp *state )
{
	/* Finding non-terminals into the state. */
	for ( TransInList::Iter in = state->inRange; in.lte(); in++ ) {
		long key = in->lowKey; 
		KlangEl *langEl = langElIndex[key];
		if ( langEl != 0 && langEl->type == KlangEl::NonTerm ) {
			/* Finding the following transitions. */
			FollowToAdd followKeys;
			for ( TransMap::Iter fout = state->transMap; fout.lte(); fout++ ) {
				int fkey = fout->key; 
				KlangEl *flel = langElIndex[fkey];
				if ( flel == 0 || flel->type == KlangEl::Term ) {
					long prior = fout->value->maxPrior();
					followKeys.insert( fkey, prior );
				}
			}

			if ( followKeys.length() > 0 )
				lalr1AddFollow2( in, followKeys );
		}
	}
}

void ParseData::lalr1AddFollow2( TransAp *trans, long followKey, long prior )
{
	for ( ExpandToSet::Iter ets = trans->expandTo; ets.lte(); ets++ ) {
		int prodId = ets->prodId;
		StateAp *expandTo = ets->state;

		TransMapEl *transEl = expandTo->transMap.find( followKey );
		if ( transEl != 0 ) {
			/* Add in the reductions, or in the shift. */
			TransAp *destTrans = transEl->value;

			transferCommits( destTrans, expandTo, prodId );

			graph->addInReduction( destTrans, prodId, prior );
		}
		else {
			/* Set up the follow transition. */
			TransAp *followTrans = new TransAp;
			followTrans->lowKey = followKey;
			followTrans->isShift = false;
			followTrans->reductions.insert( prodId, prior );

			transferCommits( followTrans, expandTo, prodId );

			graph->attachTrans( expandTo, actionDestState, followTrans );
			expandTo->transMap.insert( followTrans->lowKey, followTrans );
			graph->transClosureQueue.append( followTrans );
		}
	}
}

void ParseData::lalr1AddFollow1( TransAp *trans )
{
	StateAp *state = trans->fromState;
	int fkey = trans->lowKey; 
	KlangEl *flel = langElIndex[fkey];
	if ( flel == 0 || flel->type == KlangEl::Term ) {
		/* Finding non-terminals into the state. */
		for ( TransInList::Iter in = state->inRange; in.lte(); in++ ) {
			long key = in->lowKey; 
			KlangEl *langEl = langElIndex[key];
			if ( langEl != 0 && langEl->type == KlangEl::NonTerm ) {
				//cerr << "FOLLOW PRIOR TRANSFER 2: " << prior << endl;
				long prior = trans->maxPrior();
				lalr1AddFollow2( in, fkey, prior );
			}
		}
	}
}

/* Add follow sets to an LR(0) graph to make it LALR(1). */
void ParseData::lalr1AddFollowSets( )
{
	/* Make the state that all reduction actions go to. Since a reduction pops
	 * states of the stack and sets the new target state, this state is
	 * actually never reached. Just here to link the trans to. */
	actionDestState = graph->addState();
	graph->setFinState( actionDestState );

	/* Get the entry into the graph and traverse over start. */
	StateAp *overStart = graph->followFsm( graph->startState, startDef->fsm );

	/* Add _eof after the initial _start. */
	TransAp *eofTrans = graph->attachNewTrans( overStart, actionDestState, 
			eofKlangEl->id, eofKlangEl->id );
	eofTrans->isShift = true;

	/* This was used during lr0 table construction. */
	graph->transClosureQueue.abandon();

	/* Need to pass over every state initially. */
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ )
		lalr1AddFollow1( state );

	/* While the closure queue has items, pop them off and add follow
	 * characters. */
	while ( graph->transClosureQueue.length() > 0 ) {
		/* Pop the first item off and add Follow for it . */
		TransAp *trans = graph->transClosureQueue.detachFirst();
		lalr1AddFollow1( trans );
	}
}

void ParseData::linkExpansions()
{
	graph->setStateNumbers();
	for ( StateList::Iter state = graph->stateList; state.lte(); state++ ) {
		/* Find transitions out on non terminals. */
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			long key = trans->key;
			KlangEl *langEl = langElIndex[key];
			if ( langEl != 0 && langEl->type == KlangEl::NonTerm ) {
				/* For each production that the non terminal expand to ... */
				for ( LelDefList::Iter prod = langEl->defList; prod.lte(); prod++ ) {
					/* Follow the production and add to the trans's expand to set. */
					StateAp *followRes = graph->followFsm( state, prod->fsm );

					//KlangEl *lel = langElIndex[key];
					//cerr << state->stateNum << ", "; 
					//if ( lel != 0 )
					//	cerr << lel->data;
					//else
					//	cerr << (char)key;
					//cerr << " -> " << (*fto)->stateNum << " on " <<
					//		prod->data << " (fss = " << fin.pos() << ")" << endl;
					trans->value->expandTo.insert( ExpandToEl( followRes, prod->prodId ) );
				}
			}
		}
	}
}

/* Generate a LALR(1) graph. */
void ParseData::lalr1GenerateParser()
{
	/* Make the intial graph. */
	graph = new FsmAp();
	graph->langElIndex = langElIndex;

	StateAp *start = graph->addState();
	graph->setStartState( start );

	start->stateSet = new StateSet;
	start->stateSet->insert( startDef->fsm->startState );

	/* Queue the start state for closure. */
	start->onClosureQueue = true;
	graph->stateClosureQueue.append( start );

	/* Run the lr0 closure. */
	lr0CloseAllStates();

	/* Link production expansions to the place they expand to. */
	linkExpansions();

	/* Walk the graph adding follow sets to the LR(0) graph. */
	lalr1AddFollowSets();

	/* Set the commit on the final eof shift. */
	TransAp *overStart = graph->startState->findTrans( userStartKlangEl->id );
	TransAp *eofTrans = overStart->toState->findTrans( eofKlangEl->id );
	eofTrans->afterShiftCommits.insert( 2 );
}
