#!/bin/sh
# Rebuild main.pdf from main.tex and refs.bib.
set -eu
cd "$(dirname "$0")"
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
echo "Wrote $(pwd)/main.pdf"
