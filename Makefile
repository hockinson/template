# Okay, have a Makefile for a publication is actually pretty funny.
default: help

build: # Builds the document into a PDF file.
	pdflatex ./template.tex -o ./build/template.pdf

buildish: build cleanish # Builds the document, and removes pdflatex output (other than the PDF file).

clean: cleanish # Cleans the directory of the pdflatex output. 
	rm -vfr template.pdf

cleanish: # Cleans the directory of the pdflatex output, but keeps the output PDF file.
	rm -vfr template.log
	rm -vfr template.aux
	rm -vfr template.toc

help:
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done
