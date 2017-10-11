.PHONY: all clean

all: pcars2tracks.pdf

pcars2tracks.tex:  logos-fp.tex all-tracks.tex all-toc.tex

pcars2tracks.pdf: pcars2tracks.tex logos-fp.tex all-tracks.tex all-toc.tex
	pdflatex $<
	pdflatex $<


logos-fp.tex: mkpages.pl
	./mkpages.pl

clean:
	latexmk -CA

