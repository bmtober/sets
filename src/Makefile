SOURCES=cardinality complement contains conviction difference disjoint empty equal includes intersection members power product union support confidence lift
PREFIX?=/usr/local/bin

all:

install:
	echo $(SOURCES) | tr ' ' '\n' | xargs -I '{}' cp {} $(PREFIX)/{}

uninstall:
	echo $(SOURCES) | tr ' ' '\n' | xargs -I '{}' rm $(PREFIX)/{}

