include ../config.mk

CFLAGS ?= -g -Wall
CFLAGS += `pkg-config --cflags glib-2.0`
LDFLAGS += `pkg-config --libs glib-2.0`
CC = gcc
QUIET_CC   = @echo '     CC    '$@;

SCRIPT = teallach-menu
PROG = tl-pipemenu

all: $(PROG)

tl-pipemenu: tl-pipemenu.c
	$(QUIET_CC)$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

install:
	install -m 755 -d $(bindir)
	install -m 755 $(PROG) $(SCRIPT) $(bindir)

uninstall:
	@$(RM) -f $(bindir)/teallach-*
	@$(RM) -f $(bindir)/tl-*

clean:
	@$(RM) -f $(PROG)
