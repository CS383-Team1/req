LATEXCC=pdflatex
PDFS=srs.pdf srs-alt.pdf

.PHONY : all clean rebuild

all : pdf

pdf : $(PDFS)

main : srs.pdf

alt : srs-alt.pdf

%.pdf : %.tex %.toc
	$(LATEXCC) $^

%.toc : %.tex
	$(LATEXCC) $^

clean : 
	\rm -f $(PDFS) *.toc *.log *.aux

rebuild : 
	make clean
	make all
