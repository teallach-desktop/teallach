include ../../../../Makefile.inc

ICONS = $(patsubst ./%,%,$(shell find ./labwc -maxdepth 1 -name '*.xbm' -print))
FILES = $(ICONS) labwc/themerc labwc/palette.txt

all:
	@echo no-op

install: $(FILES)
	install -d $(DESTDIR)$(datarootdir)/themes/teallach/labwc
	install -m644 $^ $(DESTDIR)$(datarootdir)/themes/teallach/labwc
