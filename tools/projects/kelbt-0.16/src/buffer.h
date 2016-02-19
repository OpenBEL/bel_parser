/*
 *  Copyright 2003, 2005 Adrian Thurston <thurston@complang.org>
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

#ifndef _BUFFER_H
#define _BUFFER_H

/* An automatically grown buffer for collecting tokens. Always reuses space;
 * never down resizes. */
struct Buffer
{
	Buffer();
	~Buffer();

	void append( char c ) {
		if ( length+1 > allocated )
			upAllocate( (length+1)*2 );
		data[length++] = c;
	}

	void append( char *p, int l ) {
		if ( length+l > allocated )
			upAllocate( (length+l)*2 );
		memcpy( data+length, p, l );
		length += l;
	}
		
	void clear() { length = 0; }
	char *data;
	int length;

private:
	int allocated;
	void upAllocate( int len );
	void empty();
};

#endif /* _BUFFER_H */
