all:    cv.html cv.odt cv.pdf

%.html: %.rst %.css
	rst2html --stylesheet=cv.css --field-name-limit=0 $< $@

%.pdf: %.rst %.pdf.style
	rst2pdf -s cv.pdf.style $< -o $@

%.odt: %.rst
	rst2odt $< $@

clean:
	rm -f *~ *.html *.log *.odt *.pdf
