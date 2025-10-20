all: statuts.pdf reglement_interieur.pdf AG_constitutive.pdf

statuts.pdf: README.md
	pandoc -o $@ $<

%.pdf: %.md
	pandoc -o $@ $<

clean:
	rm -f *.pdf
