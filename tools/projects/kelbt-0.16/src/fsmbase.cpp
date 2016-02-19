/*
 *  Copyright 2001, 2005 Adrian Thurston <thurston@complang.org>
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

#include <string.h>
#include <assert.h>
#include <iostream>
#include "fsmgraph.h"

using std::cerr;
using std::endl;

/* Create a new fsm state. State has not out transitions or in transitions, not
 * out out transition data and not number. */
StateAp::StateAp()
:
	/* No in transitions. */
	inRange(),

	/* No entry points, or epsilon trans. */
	pendingCommits(),

	stateSet(0),

	/* Only used during merging. Normally null. */
	stateDictEl(0),

	/* No state identification bits. */
	stateBits(0),

	onClosureQueue(false),
	inClosedMap(false),
	followMarked(false)
{
}

/* Copy everything except actual the transitions. That is left up to the
 * FsmAp copy constructor. */
StateAp::StateAp(const StateAp &other)
:
	inRange(),

	/* Duplicate the entry id set, epsilon transitions and context sets. These
	 * are sets of integers and as such need no fixing. */
	pendingCommits(other.pendingCommits),

	stateSet(0),

	/* This is only used during merging. Normally null. */
	stateDictEl(0),

	/* Fsm state data. */
	stateBits(other.stateBits),

	dotSet(other.dotSet),
	onClosureQueue(false),
	inClosedMap(false),
	followMarked(false),

	transMap()
{
	/* Duplicate all the transitions. */
	for ( TransMap::Iter trans = other.transMap; trans.lte(); trans++ ) {
		/* Dupicate and store the orginal target in the transition. This will
		 * be corrected once all the states have been created. */
		TransAp *newTrans = new TransAp(*trans->value);
		newTrans->toState = trans->value->toState;
		transMap.append( TransMapEl( newTrans->lowKey, newTrans ) );
	}
}

/* If there is a state dict element, then delete it. Everything else is left
 * up to the FsmGraph destructor. */
StateAp::~StateAp()
{
	if ( stateDictEl != 0 )
		delete stateDictEl;
}

/* Graph constructor. */
FsmAp::FsmAp()
:
	/* No start state. */
	startState(0)
{
}

/* Copy all graph data including transitions. */
FsmAp::FsmAp( const FsmAp &graph )
:
	/* Lists start empty. Will be filled by copy. */
	stateList(),
	misfitList(),

	/* Copy in the entry points, 
	 * pointers will be resolved later. */
	startState(graph.startState),

	/* Will be filled by copy. */
	finStateSet()
{
	/* Create the states and record their map in the original state. */
	StateList::Iter origState = graph.stateList;
	for ( ; origState.lte(); origState++ ) {
		/* Make the new state. */
		StateAp *newState = new StateAp( *origState );

		/* Add the state to the list.  */
		stateList.append( newState );

		/* Set the mapsTo item of the old state. */
		origState->stateMap = newState;
	}
	
	/* Derefernce all the state maps. */
	for ( StateList::Iter state = stateList; state.lte(); state++ ) {
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
			/* The points to the original in the src machine. The taget's duplicate
			 * is in the statemap. */
			StateAp *toState = trans->value->toState != 0 ? 
					trans->value->toState->stateMap : 0;

			/* Attach The transition to the duplicate. */
			trans->value->toState = 0;
			attachTrans( state, toState, trans->value );
		}
	}

	/* Fix the start state pointer and the new start state's count of in
	 * transiions. */
	startState = startState->stateMap;

	/* Build the final state set. */
	StateSet::Iter st = graph.finStateSet; 
	for ( ; st.lte(); st++ ) 
		finStateSet.insert((*st)->stateMap);
}

/* Deletes all transition data then deletes each state. */
FsmAp::~FsmAp()
{
	/* Delete all the transitions. */
	StateList::Iter state = stateList;
	for ( ; state.lte(); state++ ) {
		for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ )
			delete trans->value;
	}

	/* Delete all the states. */
	stateList.empty();
}

/* Set a state final. The state has its isFinState set to true and the state
 * is added to the finStateSet. */
void FsmAp::setFinState( StateAp *state )
{
	/* Is it already a fin state. */
	if ( state->stateBits & SB_ISFINAL )
		return;
	
	state->stateBits |= SB_ISFINAL;
	finStateSet.insert( state );
}

void FsmAp::unsetAllFinStates( )
{
	for ( StateSet::Iter st = finStateSet; st.lte(); st++ ) {
		StateAp *state = *st;
		state->stateBits &= ~ SB_ISFINAL;
	}
	finStateSet.empty();
}

/* Set and unset a state as the start state. */
void FsmAp::setStartState( StateAp *state )
{
	/* Sould change from unset to set. */
	assert( startState == 0 );
	startState = state;
}

/* Mark all states reachable from state. Traverses transitions forward. Used
 * for removing states that have no path into them. */
void FsmAp::markReachableFromHere( StateAp *state )
{
	/* Base case: return; */
	if ( state->stateBits & SB_ISMARKED )
		return;
	
	/* Set this state as processed. We are going to visit all states that this
	 * state has a transition to. */
	state->stateBits |= SB_ISMARKED;

	/* Recurse on all out transitions. */
	for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
		if ( trans->value->toState != 0 )
			markReachableFromHere( trans->value->toState );
	}
}

void FsmAp::setStateNumbers()
{
	int curNum = 0;
	StateList::Iter state = stateList;
	for ( ; state.lte(); state++ )
		state->stateNum = curNum++;
}
