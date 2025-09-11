include ../../../Makefile.inc

FILES = \
	menu-schema \
	rc.xml \
	menu.xml \
	autostart \
	environment

all:
	@echo no-op

install: $(FILES)
	@mkdir -p $(DESTDIR)$(datarootdir)/teallach
	install -m644 $^ $(DESTDIR)$(datarootdir)/teallach
