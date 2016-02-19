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

#ifndef _FSMGRAPH_H
#define _FSMGRAPH_H

#include <assert.h>
#include "vector.h"
#include "bstset.h"
#include "compare.h"
#include "avltree.h"
#include "dlist.h"
#include "bstmap.h"
#include "sbstmap.h"
#include "sbstset.h"
#include "sbsttable.h"
#include "avlset.h"
#include "dlistmel.h"
#include "avltree.h"

/* Flags for states. */
#define SB_ISFINAL    0x04
#define SB_ISMARKED   0x08
#define SB_ISSTART    0x10

/* Flags for transitions. */
#define TB_ISMARKED   0x01

struct TransAp;
struct StateAp;
struct FsmAp;
struct LongestMatchPart;
struct Definition;
struct KlangEl;

typedef Vector<long> ActDataList;

struct ActionData
{
	ActionData( int targ, ActDataList &actions, int commitLen )
		: targ(targ), commitLen(commitLen), id(0), actions(actions) { }

	int targ;
	int commitLen;
	int id;

	ActDataList actions;
};


struct CmpActionData
{
	static int compare( const ActionData &ap1, const ActionData &ap2 )
	{
		if ( ap1.targ < ap2.targ )
			return -1;
		else if ( ap1.targ > ap2.targ )
			return 1;
		else if ( ap1.commitLen < ap2.commitLen )
			return -1;
		else if ( ap1.commitLen > ap2.commitLen )
			return 1;
		else if ( ap1.id < ap2.id )
			return -1;
		else if ( ap1.id > ap2.id )
			return 1;

		return CmpTable< long, CmpOrd<long> >::
			compare( ap1.actions, ap2.actions );
	}
};

typedef AvlSet<ActionData, CmpActionData> ActionSet;
typedef AvlSetEl<ActionData> ActionSetEl;

/* State list element for unambiguous access to list element. */
struct FsmListEl { StateAp *prev, *next; };

/* List pointers for the closure queue. Goes into state. */
struct ClosureQueueListEl { StateAp *prev, *next; };

/* Queue of states, transitions to be closed. */
typedef DListMel< StateAp, ClosureQueueListEl > StateClosureQueue;
typedef DList<TransAp> TransClosureQueue;

typedef BstSet< Definition*, CmpOrd<Definition*> > DefSet;
typedef CmpTable< Definition*, CmpOrd<Definition*> > CmpDefSet;
typedef BstSet< DefSet, CmpDefSet > DefSetSet;

typedef Vector< Definition* > DefVect;
typedef BstSet< long, CmpOrd<long> > AlphSet;

struct ExpandToEl
{
	ExpandToEl( StateAp *state, int prodId )
		: state(state), prodId(prodId) { }

	StateAp *state;
	int prodId;
};

struct CmpExpandToEl
{
	static inline int compare( const ExpandToEl &etel1, const ExpandToEl &etel2 )
	{ 
		if ( etel1.state < etel2.state )
			return -1;
		else if ( etel1.state > etel2.state )
			return 1;
		else if ( etel1.prodId < etel2.prodId )
			return -1;
		else if ( etel1.prodId > etel2.prodId )
			return 1;
		else
			return 0;
	}
};

typedef BstSet<ExpandToEl, CmpExpandToEl> ExpandToSet;
typedef BstSet< int, CmpOrd<int> > IntSet;
typedef CmpTable< int, CmpOrd<int> > CmpIntSet;

typedef BstSet< long, CmpOrd<long> > LongSet;
typedef CmpTable< long, CmpOrd<long> > CmpLongSet;

typedef BstMap< long, long, CmpOrd<long> > LongMap;
typedef BstMapEl< long, long > LongMapEl;

typedef LongSet ProdIdSet;
typedef CmpLongSet CmpProdIdSet;

/* Set of states, list of states. */
typedef BstSet<StateAp*> StateSet;
typedef Vector<StateAp*> StateVect;
typedef DList<StateAp> StateList;

typedef LongMap FollowToAdd;
typedef LongMap ReductionMap;
typedef LongMapEl ReductionMapEl;

struct ProdIdPair
{
	ProdIdPair( int onReduce, int length )
		: onReduce(onReduce), length(length) {}

	int onReduce;
	int length;
};

struct CmpProdIdPair
{
	static inline int compare( const ProdIdPair &pair1, const ProdIdPair &pair2 )
	{ 
		if ( pair1.onReduce < pair2.onReduce )
			return -1;
		else if ( pair1.onReduce > pair2.onReduce )
			return 1;
		else if ( pair1.length < pair2.length )
			return -1;
		else if ( pair1.length > pair2.length )
			return 1;
		else
			return 0;
	}
};

typedef BstSet< ProdIdPair, CmpProdIdPair > ProdIdPairSet;

/* Transition class that implements actions and priorities. */
struct TransAp 
{
	TransAp() : 
		fromState(0), 
		toState(0), 
		isShift(false), 
		isShiftReduce(false),
		shiftPrior(0)
	{ }

	TransAp( const TransAp &other ) :
		lowKey(other.lowKey),
		fromState(0), toState(0),
		isShift(other.isShift),
		isShiftReduce(other.isShiftReduce),
		shiftPrior(other.shiftPrior),
		reductions(other.reductions),
		commits(other.commits)
	{ }

	long lowKey;
	StateAp *fromState;
	StateAp *toState;

	/* Pointers for outlist. */
	TransAp *prev, *next;

	/* Pointers for in-list. */
	TransAp *ilprev, *ilnext;

	long maxPrior();

	/* Parse Table construction data. */
	bool isShift, isShiftReduce;
	int shiftPrior;
	ReductionMap reductions;
	ActDataList actions;
	ActDataList actOrds;
	ActDataList actPriors;

	ExpandToSet expandTo;

	ActionSetEl *actionSetEl;

	LongSet commits;
	LongSet afterShiftCommits;
};

/* In transition list. Like DList except only has head pointers, which is all
 * that is required. Insertion and deletion is handled by the graph. This
 * class provides the iterator of a single list. */
struct TransInList
{
	TransInList() : head(0) { }

	TransAp *head;

	struct Iter
	{
		/* Default construct. */
		Iter() : ptr(0) { }

		/* Construct, assign from a list. */
		Iter( const TransInList &il )  : ptr(il.head) { }
		Iter &operator=( const TransInList &dl ) { ptr = dl.head; return *this; }

		/* At the end */
		bool lte() const    { return ptr != 0; }
		bool end() const    { return ptr == 0; }

		/* At the first, last element. */
		bool first() const { return ptr && ptr->ilprev == 0; }
		bool last() const  { return ptr && ptr->ilnext == 0; }

		/* Cast, dereference, arrow ops. */
		operator TransAp*() const   { return ptr; }
		TransAp &operator *() const { return *ptr; }
		TransAp *operator->() const { return ptr; }

		/* Increment, decrement. */
		inline void operator++(int)   { ptr = ptr->ilnext; }
		inline void operator--(int)   { ptr = ptr->ilprev; }

		/* The iterator is simply a pointer. */
		TransAp *ptr;
	};
};

typedef DList<TransAp> TransList;

/* A element in a state dict. */
struct StateDictEl 
:
	public AvlTreeEl<StateDictEl>
{
	StateDictEl(const StateSet &stateSet) 
		: stateSet(stateSet) { }

	const StateSet &getKey() { return stateSet; }
	StateSet stateSet;
	StateAp *targState;
};

/* Dictionary mapping a set of states to a target state. */
typedef AvlTree< StateDictEl, StateSet, CmpTable<StateAp*> > StateDict;

/* What items does a particular state encompass. */
typedef BstSet< long, CmpOrd<long> > DotSet;
typedef CmpTable< long, CmpOrd<long> > CmpDotSet;

/* Map of dot sets to states. */
typedef AvlTree< StateAp, DotSet, CmpDotSet > DotSetMap;
typedef StateAp DotSetMapEl;

typedef BstMap< long, TransAp* > TransMap;
typedef BstMapEl< long, TransAp* > TransMapEl;

/* State class that implements actions and priorities. */
struct StateAp 
: 
	public ClosureQueueListEl,
	public AvlTreeEl< StateAp >
{
	StateAp();
	StateAp(const StateAp &other);
	~StateAp();

	/* Is the state final? */
	bool isFinState() { return stateBits & SB_ISFINAL; }

	TransAp *findTrans( long key ) 
	{
		TransMapEl *transMapEl = transMap.find( key );
		if ( transMapEl == 0 )
			return 0;
		return transMapEl->value;
	}

	/* In transition list. */
	TransInList inRange;

	ProdIdPairSet pendingCommits;

	/* When duplicating the fsm we need to map each 
	 * state to the new state representing it. */
	StateAp *stateMap;

	/* When merging states (state machine operations) this next pointer is
	 * used for the list of states that need to be filled in. */
	StateAp *alg_next;

	StateSet *stateSet;

	/* Identification for printing and stable minimization. */
	int stateNum;

	/* A pointer to a dict element that contains the set of states this state
	 * represents. This cannot go into alg, because alg.next is used during
	 * the merging process. */
	StateDictEl *stateDictEl;

	/* Bits controlling the behaviour of the state during collapsing to dfa. */
	int stateBits;

	/* State list elements. */
	StateAp *next, *prev;

	/* For dotset map. */
	DotSet &getKey() { return dotSet; }

	/* Closure management. */
	DotSet dotSet;
	DotSet dotSet2;
	bool onClosureQueue;
	bool inClosedMap;
	bool followMarked;
	bool onStateList;

	TransMap transMap;
};

/* Compare lists of epsilon transitions. Entries are name ids of targets. */
typedef CmpTable< int, CmpOrd<int> > CmpEpsilonTrans;

/* Compare sets of context values. */
typedef CmpTable< int, CmpOrd<int> > CmpContextSets;

/* Graph class that implements actions and priorities. */
struct FsmAp 
{
	/* Constructors/Destructors. */
	FsmAp();
	FsmAp( const FsmAp &graph );
	~FsmAp();

	/* The list of states. */
	StateList stateList;
	StateList misfitList;

	/* The start state. */
	StateAp *startState;

	/* The set of final states. */
	StateSet finStateSet;

	/* Closure queues and maps. */
	DotSetMap closedMap;
	StateClosureQueue stateClosureQueue;
	StateClosureQueue stateClosedList;

	TransClosureQueue transClosureQueue;
	StateAp *stateClosureHead;

	KlangEl **langElIndex;

	void setStartState( StateAp *state );
	void unsetStartState( );
	
	/*
	 * Basic attaching and detaching.
	 */

	/* Common to attaching/detaching list and default. */
	void attachToInList( StateAp *from, StateAp *to, TransAp *&head, TransAp *trans );
	void detachFromInList( StateAp *from, StateAp *to, TransAp *&head, TransAp *trans );

	/* Attach with a new transition. */
	TransAp *attachNewTrans( StateAp *from, StateAp *to, long onChar1, long onChar2 );

	/* Attach with an existing transition that already in an out list. */
	void attachTrans( StateAp *from, StateAp *to, TransAp *trans );
	
	/* Detach a transition from a target state. */
	void detachTrans( StateAp *from, StateAp *to, TransAp *trans );

	/* Detach a state from the graph. */
	void detachState( StateAp *state );

	/*
	 * Callbacks.
	 */

	/* Add in the properties of srcTrans into this. */
	void addInReduction( TransAp *dest, long prodId, long prior );
	void addInTrans( TransAp *destTrans, TransAp *srcTrans );
	void addInState( StateAp *destState, StateAp *srcState );

	/*
	 * Allocation.
	 */

	/* New up a state and add it to the graph. */
	StateAp *addState();

	/*
	 * Fsm operators.
	 */

	/* Follow to the fin state of src fsm. */
	StateAp *followFsm( StateAp *from, FsmAp *srcFsm );

	/*
	 * Final states
	 */

	/* Set and Unset a state as final. */
	void setFinState( StateAp *state );
	void unsetFinState( StateAp *state );
	void unsetAllFinStates( );

	/* Set State numbers starting at 0. */
	void setStateNumbers();

	/*
	 * Path pruning
	 */

	/* Mark all states reachable from state. */
	void markReachableFromHere( StateAp *state );

	/* Removes states that cannot be reached by any path in the fsm and are
	 * thus wasted silicon. */
	void removeUnreachableStates();

	/* Remove error actions from states on which the error transition will
	 * never be taken. */
	bool outListCovers( StateAp *state );

	/* Remove states that are on the misfit list. */
	void removeMisfits();


	/*
	 * Other
	 */

	/* Move the in trans into src into dest. */
	void inTransMove(StateAp *dest, StateAp *src);

	int fsmLength( );
};


#endif /* _FSMGRAPH_H */
