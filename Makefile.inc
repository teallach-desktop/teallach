RM ?= rm -f
prefix ?= $(HOME)
bindir ?= $(prefix)/bin

ifeq ($(prefix),$(HOME))
datarootdir = $(prefix)/.local/share
else
datarootdir = $(prefix)/share
endif

MAKEFLAGS += --no-print-directory
