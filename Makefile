TITLE = 2017_seq2seq_sutskever

.PHONY : $(TITLE).pdf
all: $(TITLE).pdf clean

$(TITLE).pdf: $(TITLE).tex
	xelatex $(TITLE)
	bibtex $(TITLE)
	bibtex $(TITLE)
	xelatex $(TITLE)

clean:
	rm -f *.{aux,log,nav,out,snm,toc,vrb,bbl,blg}
