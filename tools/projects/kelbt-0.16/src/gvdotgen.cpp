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


#include "kelbt.h"
#include "parsedata.h"

using namespace std;


void ParseData::writeTransList( StateAp *state )
{
	for ( TransMap::Iter trans = state->transMap; trans.lte(); trans++ ) {
		/* Write out the from and to states. */
		out << "\t" << state->stateNum << " -> " << trans->value->toState->stateNum;

		/* Begin the label. */
		out << " [ label = \""; 
		long key = trans->key;  
		KlangEl *lel = langElIndex[key];
		if ( lel != 0 )
			out << lel->data;
		else
			out << (char)key;

		if ( trans->value->actions.length() > 0 ) {
			out << " / ";
			for ( ActDataList::Iter act = trans->value->actions; act.lte(); act++ ) {
				switch ( *act & 0x3 ) {
				case 1: 
					out << "S(" << trans->value->actOrds[act.pos()] << ")";
					break;
				case 2: {
					out << "R(" << prodIdIndex[(*act >> 2)]->data <<
							", " << trans->value->actOrds[act.pos()] << ")";
					break;
				}
				case 3: {
					out << "SR(" << prodIdIndex[(*act >> 2)]->data << 
							", " << trans->value->actOrds[act.pos()] << ")";
					break;
				}}
				if ( ! act.last() )
					out << ", ";
			}
		}

		out << "\" ];\n";
	}
}

void ParseData::writeDotFile( FsmAp *graph )
{
	out << 
		"digraph " << parserName << " {\n"
		"	rankdir=LR;\n"
		"	ranksep=\"0\"\n"
		"	nodesep=\"0.25\"\n"
		"\n";
	
	/* Define the psuedo states. Transitions will be done after the states
	 * have been defined as either final or not final. */
	out << 
		"	node [ shape = point ];\n"
		"	ENTRY [ label = \"\" ];\n"
		"\n"
		"	node [ shape = circle, fixedsize = true, height = 0.2 ];\n";

	/* Walk the states. */
	for ( StateList::Iter st = graph->stateList; st.lte(); st++ )
		out << "	" << st->stateNum << " [ label = \"\" ];\n";

	out << "\n";

	/* Walk the states. */
	for ( StateList::Iter st = graph->stateList; st.lte(); st++ )
		writeTransList( st );

	/* Transitions into the start state. */
	out << "	ENTRY -> " << graph->startState->stateNum << " [ label = \"\" ];\n";

	out <<
		"}\n";
}

void ParseData::writeDotFile( )
{
	writeDotFile( graph );
}

