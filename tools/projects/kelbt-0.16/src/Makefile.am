#
#   Copyright 2001-2015 Adrian Thurston <thurston@complang.org>
#

#   This file is part of Kelbt
#
#   Kelbt is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   Kelbt is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with Kelbt; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

RAGEL = @RAGEL@
KELBT = @KELBT@

bin_PROGRAMS = kelbt


kelbt_SOURCES = \
	pcheck.cpp main.cpp parsedata.cpp \
	closure.cpp fsmbase.cpp fsmattach.cpp \
	fsmgraph.cpp codegen.cpp gvdotgen.cpp \
	klscan.cpp klparse.cpp \
	buffer.h fsmgraph.h klparse.h pcheck.h \
	kelbt.h parsedata.h version.h

kelbt_CPPFLAGS = -I$(top_srcdir)/aapl

BUILT_SOURCES = \
	version.h klparse.cpp klparse.h klscan.cpp

EXTRA_DIST = klscan.rl klparse.kh klparse.kl

# GEN_BEGIN

if BUILD_PARSERS

klscan.cpp: klscan.rl klparse.h
	$(RAGEL) -G2 -o $@ $<

klparse.h: klparse.kh
	$(KELBT) -o $@ $<

klparse.cpp: klparse.kl klparse.kh
	$(KELBT) -o $@ $<

endif

version.h: Makefile
	echo '#define VERSION "$(VERSION)"' > version.h
	echo '#define PUBDATE "$(PUBDATE)"' >> version.h

# GEN_END
