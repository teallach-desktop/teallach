include config.mk
include Makefile.inc

all:
	@$(MAKE) -C src/teallach-menu

install:
	@$(MAKE) -C src/teallach-menu $@
	@$(MAKE) -C bin $@
	@$(MAKE) -C usr/share/teallach $@
	@$(MAKE) -C usr/share/themes/teallach $@
	@$(MAKE) -C usr/share/images/teallach/wallpapers $@
	@$(MAKE) -C usr/share/wayland-sessions $@
	@$(MAKE) -C usr/share/applications $@

uninstall:
	$(RM) -f $(DESTDIR)$(bindir)/teallach*
	$(RM) -f $(DESTDIR)$(bindir)/tl-*
	$(RM) -r $(DESTDIR)$(datarootdir)/teallach
	$(RM) -r $(DESTDIR)$(datarootdir)/themes/teallach
	$(RM) -r $(DESTDIR)$(datarootdir)/images/teallach
	$(RM) -r $(DESTDIR)$(datarootdir)/wayland-sessions/teallach-*
	$(RM) -r $(DESTDIR)$(datarootdir)/applications/teallach-*

clean:
	@$(MAKE) -C src/teallach-menu $@

