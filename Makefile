DIRS = src etc
MAKEFLAGS += --no-print-directory

include config.mk

all: $(DIRS)
	@$(MAKE) -C src/teallach-menu

install:
	@$(MAKE) -C src/teallach-menu $@
	@$(MAKE) -C etc $@

uninstall:
	@$(MAKE) -C src/teallach-menu $@

clean:
	@$(MAKE) -C src/teallach-menu $@

diff:
	@$(MAKE) -C etc $@
