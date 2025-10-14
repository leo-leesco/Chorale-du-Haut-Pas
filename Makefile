STATUTS = statuts.pdf
all: pdf

pdf: README.md
	pandoc -o $(STATUTS) $<

clean:
	rm -f $(STATUTS)
