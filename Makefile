PROJNAME=main

.PHONY: all clean cleanall

all: $(PROJNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk -xelatex -bibtex -interaction=nonstopmode -use-make $<

clean:
	latexmk -c
	rm -f *.synctex.gz

cleanall:
	latexmk -C
	rm -f *.bbl *.synctex.gz $(PROJNAME).pdf
