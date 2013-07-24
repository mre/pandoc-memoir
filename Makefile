FILE=pub
PDFTEMPLATE=templates/extended.tex
BIBLIOGRAPHY=bib/lit.bib
BIBSTYLE=bib/jos.csl
CODESTYLE=tango
OPT_PDF=--variable numbersections --toc --variable toc-depth=2 --variable documentclass=memoir --variable fontsize=12pt

pdf: $(FILE).md
	pandoc $(FILE).md -o $(FILE).pdf --template $(PDFTEMPLATE) --bibliography=$(BIBLIOGRAPHY) --csl=$(BIBSTYLE) --highlight-style $(CODESTYLE) $(OPT_PDF) 

tex: $(FILE).md 
	pandoc $(FILE).md -o $(FILE).tex --template $(PDFTEMPLATE) --bibliography=$(BIBLIOGRAPHY) --csl=$(BIBSTYLE)
