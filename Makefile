#
# (C) Copyright 2016, TP-Link Inc, konstantin.mauch@tp-link.com
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307 USA
#


CC := gcc



#CFLAGS = -c -g -I/usr/include/libxml2 -L/usr/local/lib     -I./include  -L./shared
CFLAGS = -c -g -I/usr/include/libxml2      -I./include  
#CFLAGS = -c -g -I/usr/include/libxml2 -L/usr/lib/i386-linux           -lcurl   -lssh  -lxml2

#-L./shared 
#LIBS   = 

	

EXEC := ./convinject
PWD=$(shell pwd)



CFLAGS 	+= -Dname=process_ssh_target -Dname1=process_http_target   -mpreferred-stack-boundary=4 -mstackrealign


VERSION := 4.4.0
LIBS 	+= ./shared/libssh.so.$(VERSION)
LIBS 	+= ./shared/libcurl.so.$(VERSION)
LIBS 	+= ./shared/libxml2.so.2.9.1

all: $(EXEC)

OBJS		= main.o xmparser.o structs.o 
SSH_OBJS	= cmds.o authentication.o connect_ssh.o knownhosts.o ssh_main.o
HTTP_OBJS	= auxiliary.o   funcs.o  http_main.o  lists.o  xmls.o  voc.obj 



.o: .c
	$(CC) -o $@ -c $< $(CFLAGS) $(LDFLAGS)  




$(EXEC): $(SSH_OBJS)  $(HTTP_OBJS)  $(OBJS)        $(LIBS)		
	$(CC)  -o $@   $(SSH_OBJS) $(HTTP_OBJS) $(OBJS)   $(LIBS)      \
 -Wl,--rpath-link $(PWD)/shared  -Wl,--rpath $(PWD)/shared 

#$(EXEC): $(SSH_OBJS)  $(HTTP_OBJS)  $(OBJS)        		
#	$(CC)  -o $@   $(SSH_OBJS) $(HTTP_OBJS) $(OBJS)      -lcurl   -lssh  -lxml2  -mpreferred-stack-boundary=4 -mstackrealign \


#    -Wl,--rpath-link $(PWD)/shared  -Wl,--rpath $(PWD)/shared 




clean:
	$(RM) -fv $(EXEC) *.o *.so* *~ core  *.c~

