/*
 *  Copyright 2001, 2002, 2005 Adrian Thurston <thurston@complang.org>
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

#include <assert.h>
#include <iostream>

using std::cerr;
using std::endl;

#include "fsmgraph.h"
#include "mergesort.h"

void FsmAp::addInReduction( TransAp *dest, long prodId, long prior )
{
	/* Look for the reduction. If not there insert it, otherwise take
	 * the max of the priorities. */
	ReductionMapEl *redMapEl = dest->reductions.find( prodId );
	if ( redMapEl == 0 )
		dest->reductions.insert( prodId, prior );
	else if ( prior > redMapEl->value )
		redMapEl->value = prior;
}

/* Callback invoked when another trans (or possibly this) is added into this
 * transition during the merging process.  Draw in any properties of srcTrans
 * into this transition. AddInTrans is called when a new transitions is made
 * that will be a duplicate of another transition or a combination of several
 * other transitions. AddInTrans will be called for each transition that the
 * new transition is to represent. */
void FsmAp::addInTrans( TransAp *destTrans, TransAp *srcTrans )
{
	/* Protect against adding in from ourselves. */
	if ( srcTrans != destTrans ) {

		/* Add in the shift priority. */
		if ( destTrans->isShift && srcTrans->isShift ) {
			/* Both shifts are set. We want the max of the two. */
			if ( srcTrans->shiftPrior > destTrans->shiftPrior )
				destTrans->shiftPrior = srcTrans->shiftPrior;
		}
		else if ( srcTrans->isShift ) {
			/* Just the source is set, copy the source prior over. */
			destTrans->shiftPrior = srcTrans->shiftPrior;
		}

		/* If either is a shift, dest is a shift. */
		destTrans->isShift = destTrans->isShift || srcTrans->isShift;

		/* Add in the reductions. */
		for ( ReductionMap::Iter red = srcTrans->reductions; red.lte(); red++ )
			addInReduction( destTrans, red->key, red->value );

		/* Add in the commit points. */
		destTrans->commits.insert( srcTrans->commits );
	}
}

void FsmAp::addInState( StateAp *destState, StateAp *srcState )
{
	/* Draw in any properties of srcState into destState. */
	if ( srcState != destState ) {
		/* Get the epsilons, context, out priorities. */
		destState->pendingCommits.insert( srcState->pendingCommits );
		if ( srcState->pendingCommits.length() > 0 )
			cerr << "THERE ARE PENDING COMMITS DRAWN IN" << endl;

		/* Parser generation data. */
		destState->dotSet.insert( srcState->dotSet );

		if ( srcState->onClosureQueue && !destState->onClosureQueue ) {
			stateClosureQueue.append( destState );
			destState->onClosureQueue = true;
		}
	}
}

/* Make a new state. The new state will be put on the graph's
 * list of state. The new state can be created final or non final. */
StateAp *FsmAp::addState()
{
	/* Make the new state to return. */
	StateAp *state = new StateAp();

	/* Create the new state. */
	stateList.append( state );

	return state;
}


/* Follow from to the final state of srcFsm. */
StateAp *FsmAp::followFsm( StateAp *from, FsmAp *srcFsm )
{
	StateAp *followSrc = srcFsm->startState;

	while ( ! followSrc->isFinState() ) {
		assert( followSrc->transMap.length() == 1 );
		TransAp *followTrans = followSrc->transMap[0].value;

		TransAp *inTrans = from->findTrans( followTrans->lowKey );
		assert( inTrans != 0 );

		from = inTrans->toState;
		followSrc = followTrans->toState;
	}

	return from;
}

int FsmAp::fsmLength( )
{
	int length = 0;
	StateAp *state = startState;
	while ( ! state->isFinState() ) {
		length += 1;
		state = state->transMap[0].value->toState;
	}
	return length;
}

/* Remove states that have no path to them from the start state. Recursively
 * traverses the graph marking states that have paths into them. Then removes
 * all states that did not get marked. */
void FsmAp::removeUnreachableStates()
{
	/* Mark all the states that can be reached 
	 * through the existing set of entry points. */
	markReachableFromHere( startState );

	/* Delete all states that are not marked
	 * and unmark the ones that are marked. */
	StateAp *state = stateList.head;
	while ( state ) {
		StateAp *next = state->next;

		if ( state->stateBits & SB_ISMARKED )
			state->stateBits &= ~ SB_ISMARKED;
		else {
			detachState( state );
			stateList.detach( state );
			delete state;
		}

		state = next;
	}
}
