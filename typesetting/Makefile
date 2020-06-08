PANDOC = pandoc
IFORMAT = markdown
TEMPLATE = resources/page.tmpl
LTEMPLATE = resources/page.latex
ETEMPLATE = resources/page.epubt
FLAGS = --standalone \
	    --toc \
	    --toc-depth=2 \
	    --highlight-style pygments \
	    -c css/style.css \
	    -c css/layout.css

in=mnna.md

HTML = mnna.html
PDF = mnna.pdf
EPUB = mnna.epub

all: $(HTML) $(PDF) $(EPUB)

%.html: %.md
	$(PANDOC) --template $(TEMPLATE) -s -f $(IFORMAT) -t html $(FLAGS) $(in) \
	| sed '/<extensions>/r extensions.html' > $@

%.epub: %.md
	(cat $(in); < $<) \
	| $(PANDOC) -f $(IFORMAT) -t epub $(FLAGS) -o $@

%.pdf: %.md
	$(PANDOC) -c -s -f $(IFORMAT) \
		--template $(LTEMPLATE) \
		--pdf-engine=xelatex $(FLAGS) \
		-o $@ \
		$(in)

clean:
	-rm $(CHAPTERS) $(HTML) $(PDF) $(EPUB)

# pandoc executable 'includes' is rather large
clean-all:
	rm -rf $(CHAPTERS) $(HTML) includes

# NIX BUILD
# Enter nix shell with 'make run-shell' first (then 'make all')

.PHONY : run-shell
run-shell : shell.nix
ifndef NIX_GHC
	nix-shell
else
	$(error Already in GHC shell!)
endif

shell.nix : wiwinwlh.cabal
	cabal2nix --shell  . > shell.nix

.PHONY : deploy
deploy:
	./deploy

xed:
	vim +"Voom pandoc" ../mnna.md
