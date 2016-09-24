.PRECIOUS: %.ps %.png

%.png: %.ps
	convert $< $@

%.ps: %.pic
	pic $< | groff > $@

