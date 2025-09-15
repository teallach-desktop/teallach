include ../../../config.mk
include ../../../Makefile.inc

FILES = \
	menu-schema \
	no-display-desktop-entries \
	tintrc \
	rc.xml \
	menu.xml \
	autostart \
	environment

all:
	@echo no-op

install: $(FILES)
	install -m 755 -d $(DESTDIR)$(datarootdir)/teallach
	install -m644 $^ $(DESTDIR)$(datarootdir)/teallach
