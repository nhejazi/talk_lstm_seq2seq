TITLE = 2017_seq2seq_sutskever

.PHONY : $(TITLE).pdf
all: $(TITLE).pdf clean

$(TITLE).pdf: $(TITLE).tex
	xelatex $(TITLE)
	bibtex $(TITLE)
	bibtex $(TITLE)
	xelatex $(TITLE)

clean:
	rm -f *.{aux,log,nav,out,snm,toc,vrb,bbl,blg,bcf,synctex.gz}

web:
	rsync --chmod=go+r $(TITLE).pdf \
	  nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf

