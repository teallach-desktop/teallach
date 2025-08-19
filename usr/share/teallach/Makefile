include ../../../Makefile.inc

# Files that teallach-welcome installs in ~/.config/teallach
DESKTOP_FILES = menu-schema

# Files that teallach-welcome installs in ~/.config/labwc
COMPOSITOR_FILES = rc.xml menu.xml autostart

FILES = \
	$(DESKTOP_FILES) \
	$(COMPOSITOR_FILES) \
	no-display-desktop-entries

all:
	@echo no-op

install: $(FILES)
	@mkdir -p $(DESTDIR)$(datarootdir)/teallach
	install -m644 $^ $(DESTDIR)$(datarootdir)/teallach
