include ../../../config.mk
include ../../../Makefile.inc

FILES = \
	teallach-nitrogen.desktop

all:
	@echo no-op

install: $(FILES)
	install -m 755 -d $(DESTDIR)$(datarootdir)/applications
	install -m644 $^ $(DESTDIR)$(datarootdir)/applications
