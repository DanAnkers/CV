all:    cv.html cv.odt cv.pdf

%.html: %.rst
	rst2html --stylesheet=cv.css --field-name-limit=0 $< $@

%.pdf: %.rst
	rst2pdf $< -o $@

%.odt: %.rst
	rst2odt $< $@

clean:
	rm -f *~ *.html *.log *.odt *.pdf
