TITLE="millman_ottoboni_stark"

all:
	pdflatex $(TITLE).tex
	bibtex $(TITLE)
	pdflatex $(TITLE).tex
	pdflatex $(TITLE).tex

clean:
	rm -f $(TITLE).{pdf,aux,log,bbl,lof,lot,blg,out}
	rm -f $(TITLE).md $(TITLE)_md.pdf

markdown:
	pandoc -s $(TITLE).tex -o $(TITLE).md
	pandoc $(TITLE).md -o $(TITLE)_md.pdf
