FILES = menu ignore
confdir = $(HOME)/.config/teallach

all:
	@echo no-op

install: $(FILES)
	@mkdir -p $(confdir)
	install -m644 $^ $(confdir)

diff: $(FILES)
	@diff -u $^ $(confdir)/$^
