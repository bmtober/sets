PREFIX?=/usr/local/bin
.PHONY: install uninstall docs clean 

all:

install:
	$(MAKE) -C src install

uninstall:
	$(MAKE) -C src uninstall

docs:
	$(MAKE) -C docs

clean-recursive:
	$(MAKE) -C docs clean-recursive
	$(MAKE) -C test clean-recursive
