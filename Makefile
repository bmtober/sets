SOURCES="cardinality complement contains difference disjoint empty equal includes intersection members power product union support confidence lift"

all: $(SOURCES)
	for f in $^; \
	do \
		ln $$f $(HOME)/.local/bin/$$f; \
	done


clean:
	pushd $(HOME)/.local/bin/
	rm $(SOURCES)
