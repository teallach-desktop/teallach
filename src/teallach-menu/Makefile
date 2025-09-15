include ../../config.mk
include ../../Makefile.inc

CFLAGS ?= -g -Wall
CFLAGS += `pkg-config --cflags glib-2.0`
LDFLAGS += `pkg-config --libs glib-2.0`
CC = gcc
QUIET_CC   = @echo '     CC    '$@;

SCRIPT = teallach-menu
PROG = tl-menu-convert

all: $(PROG)

tl-menu-convert: tl-menu-convert.c
	$(QUIET_CC)$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

install:
	install -m 755 -d $(DESTDIR)$(bindir)
	install -m 755 $(PROG) $(SCRIPT) $(DESTDIR)$(bindir)

clean:
	@$(RM) -f $(PROG)
