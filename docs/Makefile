
TARGETS=talk.html
SOURCES=header.txt talk.txt
.PRECIOUS: %.adoc

.PHONY: all 

all: $(TARGETS)


%.html: %.adoc
	asciidoc $<

%.adoc: $(SOURCES) Makefile 
	$(MAKE) -C pic
	cat $+ > $@

clean:
	$(MAKE) -C pic clean
	-rm *.adoc *.html
