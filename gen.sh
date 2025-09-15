#!/bin/sh

# Depends on pandoc, texlive-latex-recommended, texlive-latex-base being installed

FILENAMES="DANIEL_SILVA_DOS_SANTOS_EN_US.md DANIEL_SILVA_DOS_SANTOS_PT_BR.md"

for filename in $FILENAMES; do
    BASE="${filename%.*}"
    OUTPUT="${BASE}.pdf"
    
    # pandoc $filename -o $OUTPUT --pdf-engine=pdflatex -V geometry:margin=1in -s
    
    pandoc $filename -o $OUTPUT -f markdown+yaml_metadata_block \
        --template resume-pandoc/templates/jb2resume.latex
done
