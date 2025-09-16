include ../../../config.mk
include ../../../Makefile.inc

FILES = teallach.desktop

all:
	@echo no-op

install: $(FILES)
	install -m 755 -d $(DESTDIR)$(datarootdir)/wayland-sessions
	install -m644 $^ $(DESTDIR)$(datarootdir)/wayland-sessions
