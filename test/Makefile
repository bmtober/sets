SOURCES=cardinality complement confidence contains difference \
	disjoint empty equal includes intersection lift members power \
	product support union

TESTS=$(SOURCES:%=test_%)

check: $(TESTS)
	for t in $^; do ./$$t;done
