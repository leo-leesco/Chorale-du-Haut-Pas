MD_SOURCES = $(filter-out README.md, $(wildcard *.md))
PDF_TARGETS = $(patsubst %.md, %.pdf, $(MD_SOURCES))

all: statuts.pdf $(PDF_TARGETS)

statuts.pdf: README.md
	pandoc -o $@ $<

%.pdf: %.md
	pandoc -o $@ $<

clean:
	rm -f *.pdf
