xed: in=mnna.md
xed:
	vim $(in) +"Voom pandoc"
ship:
	mv mnna.epub mnna.html mnna.pdf diehl/
	cd diehl
	./deploy
