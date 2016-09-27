SOURCES=figure-01.pic figure-02.pic figure-03.pic figure-04.pic figure-05.pic

TARGETS=$(SOURCES:%.pic=%.png)

.PRECIOUS: %.ps %.png

all: $(TARGETS)

%.png: %.ps
	convert -page 450x350 $< $@

%.ps: %.pic
	pic $< | groff -Tps -P-p4.5i,6i  > $@

clean-recursive: clean
	
clean:
	-rm *.png *.ps

