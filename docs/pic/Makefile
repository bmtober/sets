SOURCES=figure-01.pic figure-02.pic figure-03.pic figure-04.pic figure-05.pic figure-06.pic figure-07.pic figure-08.pic figure-09.pic figure-10.pic figure-11.pic

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

