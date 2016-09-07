# convinject.MAKE_OFF

>>>>>>>.. to be merged with convinject-1 <<<<<<<<<<<<<<<<

1. To reach this dependency tree
##############################################################################
root@mkn-Lenovo-G50-70:/home/mkn/convinject-3# ldd ./convinject 
	linux-gate.so.1 =>  (0xb777c000)
	libssh.so.4 => /home/mkn/convinject-3/shared/libssh.so.4 (0xb7582000)
	libcurl.so.4 => /home/mkn/convinject-3/shared/libcurl.so.4 (0xb752d000)
	libxml2.so.2 => /home/mkn/convinject-3/shared/libxml2.so.2 (0xb73d2000)
	libc.so.6 => /lib/i386-linux-gnu/libc.so.6 (0xb720a000)
	librt.so.1 => /lib/i386-linux-gnu/librt.so.1 (0xb7201000)
	libz.so.1 => /lib/i386-linux-gnu/libz.so.1 (0xb71e7000)
	/lib/ld-linux.so.2 (0xb777e000)
	libdl.so.2 => /lib/i386-linux-gnu/libdl.so.2 (0xb71e2000)
	liblzma.so.5 => /lib/i386-linux-gnu/liblzma.so.5 (0xb71bb000)
	libm.so.6 => /lib/i386-linux-gnu/libm.so.6 (0xb7175000)
	libpthread.so.0 => /lib/i386-linux-gnu/libpthread.so.0 (0xb7159000)
##############################################################################

2. you must prepare <<<<<<<<<<<<<<<libcurl >>>>>>>>>>>>
a) download source from GitHUB
b) configure --without-libssh2 --without-ssl

c) place into ./shared

3. place the rest into shared (see Makefile contents , below)

4. And deploy the following Makefile
##############################################################################
CC := gcc

CFLAGS = -c -g -I/usr/include/libxml2      -I./include  	

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

clean:
	$(RM) -fv $(EXEC) *.o *.so* *~ core  *.c~

##############################################################################

5. Afterwards you don' get the SigFAULT from <strcmp_ssse3()>
