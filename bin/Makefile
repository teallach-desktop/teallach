include ../Makefile.inc

SCRIPTS = \
	  tl-view-palette

all:
	@echo no-op

install: $(SCRIPTS)
	@mkdir -p $(DESTDIR)$(bindir)
	install -m755 $^ $(DESTDIR)$(bindir)
