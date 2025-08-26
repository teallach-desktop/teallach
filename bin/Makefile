include ../Makefile.inc

SCRIPTS = \
	  teallach-welcome \
	  teallach-nitrogen \
	  tl-keyboard-layouts \
	  tl-view-palette

all:
	@echo no-op

install: $(SCRIPTS)
	@mkdir -p $(DESTDIR)$(bindir)
	install -m755 $^ $(DESTDIR)$(bindir)
