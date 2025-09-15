include ../config.mk
include ../Makefile.inc

SCRIPTS = \
	  teallach \
	  teallach-welcome \
	  teallach-nitrogen \
	  tl-keyboard-layouts \
	  tl-tint-run \
	  tl-menu-generator \
	  tl-view-palette

all:
	@echo no-op

install: $(SCRIPTS)
	install -m 755 -d $(DESTDIR)$(bindir)
	install -m755 $^ $(DESTDIR)$(bindir)
	./gen-tl-datarootdir.sh $(datarootdir) $(DESTDIR)$(bindir)
