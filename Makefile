#
#

DOC=LDM-582
tex=	LDM-582.tex body.tex
SRCS=$(wildcard LDM-*.tex)

OBJS=$(SRCS:.tex=.pdf)

all: $(tex)
	latexmk -bibtex -xelatex -f $(DOC).tex

clean :
	latexmk -c
	rm *.pdf



acronyms.tex :$(tex) myacronyms.tex
	acronyms.csh  $(tex)
