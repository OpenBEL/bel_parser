/*
 *  Copyright 2001, 2005, 2006 Adrian Thurston <thurston@complang.org>
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
#include "fsmgraph.h"
#include "kelbt.h"
#include "parsedata.h"

#include <iostream>
using namespace std;

/* Insert a transition into an inlist. The head must be supplied. */
void FsmAp::attachToInList( StateAp *from, StateAp *to, 
		TransAp *&head, TransAp *trans )
{
	trans->ilnext = head;
	trans->ilprev = 0;

	/* If in trans list is not empty, set the head->prev to trans. */
	if ( head != 0 )
		head->ilprev = trans;

	/* Now insert ourselves at the front of the list. */
	head = trans;
};

/* Detach a transition from an inlist. The head of the inlist must be supplied. */
void FsmAp::detachFromInList( StateAp *from, StateAp *to, 
		TransAp *&head, TransAp *trans )
{
	/* Detach in the inTransList. */
	if ( trans->ilprev == 0 ) 
		head = trans->ilnext; 
	else
		trans->ilprev->ilnext = trans->ilnext; 

	if ( trans->ilnext != 0 )
		trans->ilnext->ilprev = trans->ilprev; 
}

/* Attach states on the default transition, range list or on out/in list key.
 * Type of attaching and is controlled by keyType. First makes a new
 * transition. If there is already a transition out from fromState on the
 * default, then will assertion fail. */
TransAp *FsmAp::attachNewTrans( StateAp *from, StateAp *to, long lowKey, long )
{
	/* Make the new transition. */
	TransAp *retVal = new TransAp();

	/* The transition is now attached. Remember the parties involved. */
	retVal->fromState = from;
	retVal->toState = to;

	/* Make the entry in the out list for the transitions. */
	from->transMap.append( TransMapEl( lowKey, retVal ) );

	/* Set the the keys of the new trans. */
	retVal->lowKey = lowKey;

	/* Attach using inRange as the head pointer. */
	attachToInList( from, to, to->inRange.head, retVal );

	return retVal;
}

/* Attach for range lists or for the default transition. Type of attaching is
 * controlled by the keyType parameter. This attach should be used when a
 * transition already is allocated and must be attached to a target state.
 * Does not handle adding the transition into the out list. */
void FsmAp::attachTrans( StateAp *from, StateAp *to, TransAp *trans )
{
	assert( trans->fromState == 0 && trans->toState == 0 );
	trans->fromState = from;
	trans->toState = to;

	/* Attach using the inRange pointer as the head pointer. */
	attachToInList( from, to, to->inRange.head, trans );
}

/* Detach for out/in lists or for default transition. The type of detaching is
 * controlled by the keyType parameter. */
void FsmAp::detachTrans( StateAp *from, StateAp *to, TransAp *trans )
{
	assert( trans->fromState == from && trans->toState == to );
	trans->fromState = 0;
	trans->toState = 0;

	/* Detach using to's inRange pointer as the head. */
	detachFromInList( from, to, to->inRange.head, trans );
}


/* Detach a state from the graph. Detaches and deletes transitions in and out
 * of the state. Empties inList and outList. Removes the state from the final
 * state set. A detached state becomes useless and should be deleted. */
void FsmAp::detachState( StateAp *state )
{
	/* Detach the in transitions from the inRange list of transitions. */
	while ( state->inRange.head != 0 ) {
		/* Get pointers to the trans and the state. */
		TransAp *trans = state->inRange.head;
		StateAp *fromState = trans->fromState;

		/* Detach the transitions from the source state. */
		detachTrans( fromState, state, trans );

		/* Ok to delete the transition. */
		fromState->transMap.remove( trans->lowKey );
		delete trans;
	}

	/* Detach out range transitions. */
	for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
		detachTrans( state, trans->value->toState, trans->value );
		delete trans->value;
	}

	/* Delete all of the out range pointers. */
	state->transMap.empty();

	/* Unset final stateness before detaching from graph. */
	if ( state->stateBits & SB_ISFINAL )
		finStateSet.remove( state );
}

/* Move all the transitions that go into src so that they go into dest.  */
void FsmAp::inTransMove( StateAp *dest, StateAp *src )
{
	/* Do not try to move in trans to and from the same state. */
	assert( dest != src );

	/* If src is the start state, dest becomes the start state. */
	assert( src != startState );

	/* Move the transitions in inRange. */
	while ( src->inRange.head != 0 ) {
		/* Get trans and from state. */
		TransAp *trans = src->inRange.head;
		StateAp *fromState = trans->fromState;

		/* Detach from src, reattach to dest. */
		detachTrans( fromState, src, trans );
		attachTrans( fromState, dest, trans );
	}
}
