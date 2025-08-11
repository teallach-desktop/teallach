include config.mk
include Makefile.inc

all:
	@$(MAKE) -C src/teallach-menu

install:
	@$(MAKE) -C src/teallach-menu $@
	@$(MAKE) -C usr/share/teallach $@
	@$(MAKE) -C usr/share/themes/teallach $@
	@$(MAKE) -C bin $@

uninstall:
	$(RM) -r $(DESTDIR)$(datarootdir)/teallach
	$(RM) -r $(DESTDIR)$(datarootdir)/themes/teallach
	$(RM) -f $(DESTDIR)$(bindir)/teallach-*
	$(RM) -f $(DESTDIR)$(bindir)/tl-*

clean:
	@$(MAKE) -C src/teallach-menu $@

