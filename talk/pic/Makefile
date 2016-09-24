.PRECIOUS: %.ps %.png

all:

%.png: %.ps
	convert -geometry 6x4.5 $< $@

%.ps: %.pic
	pic $< | groff -Tps -P-p4.5i,6i  > $@

clean:
	rm *.png *.ps

