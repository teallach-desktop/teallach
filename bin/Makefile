include ../config.mk
include ../Makefile.inc

SCRIPTS = \
	  teallach \
	  teallach-welcome \
	  teallach-nitrogen \
		teallach-menu \
	  tl-keyboard-layouts \
	  tl-tint-run \
	  tl-open-desktop-entry \
	  tl-web-browser \
		tl-menu-help \
		tl-output-power-management \
	  tl-file-manager \
	  tl-view-palette

all:
	@echo no-op

install: $(SCRIPTS)
	install -m 755 -d $(DESTDIR)$(bindir)
	install -m755 $^ $(DESTDIR)$(bindir)
	./gen-tl-datarootdir.sh $(datarootdir) $(DESTDIR)$(bindir)
