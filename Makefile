resume: jacob_resume.pdf

%.pdf: %.tex
	pdflatex $<

clean:
	rm *.log *.pdf
