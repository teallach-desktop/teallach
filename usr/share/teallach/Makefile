include ../../../Makefile.inc

# Files that teallach-welcome install in ~/.config/teallach
DESKTOP_FILES = menu-schema menu-ignore

# Files that teallach-welcome install in ~/.config/labwc
COMPOSITOR_FILES = rc.xml menu.xml

FILES = $(DESKTOP_FILES) $(COMPOSITOR_FILES)

all:
	@echo no-op

install: $(FILES)
	@mkdir -p $(DESTDIR)$(datarootdir)/teallach
	install -m644 $^ $(DESTDIR)$(datarootdir)/teallach
