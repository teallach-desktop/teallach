DIRS = menu etc
MAKEFLAGS += --no-print-directory

include config.mk

all: $(DIRS)
	@$(MAKE) -C menu

install:
	@$(MAKE) -C menu $@
	@$(MAKE) -C etc $@

uninstall:
	@$(MAKE) -C menu $@

clean:
	@$(MAKE) -C menu $@

diff:
	@$(MAKE) -C etc $@
