all:    cv.html cv.odt

%.html: %.rst
	rst2html --stylesheet=cv.css --field-name-limit=0 $< $@

%.odt: %.rst
	rst2odt $< $@

clean:
	rm -f *~ *.html *.log *.odt
