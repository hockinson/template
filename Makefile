# Okay, have a Makefile for a publication is actually pretty funny.
default: help

build: clean # Builds the document into a PDF file.
	mkdir ./build/
	tectonic ./template.tex -o ./build/

clean: # Cleans the build directory.
	rm -vfr ./build/

help:
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done
