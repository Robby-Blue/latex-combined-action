#!/bin/sh
git clone https://github.com/Robby-Blue/latex-combiner
python3 latex-combiner/src/main.py structure.dcs
cd output
pdflatex --shell-escape -interaction=nonstopmode -halt-on-error -output-directory=. main.tex # first run, generate .toc
pdflatex --shell-escape -interaction=nonstopmode -halt-on-error -output-directory=. main.tex # it inserts the toc
pdflatex --shell-escape -interaction=nonstopmode -halt-on-error -output-directory=. main.tex # it fixes the
cd .. output
cp output/main.pdf output.pdf