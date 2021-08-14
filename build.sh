#!/bin/bash

#### Build notebook html files

# Copy any figures to notebook figures directory
cp figures/*.svg notebooks/figures/

# Generate svg figures:
figures/gen_figs.sh

if [ -z $1 ]
then
    files='acceptors_and_transducers basic_operations
           advanced_operations differentiation_with_automata
           extended_examples'
else
    files=$1
fi

# Execute notebooks and convert to HTML:
for nb in $files
do
    jupyter nbconvert --to html \
        --output-dir=notebooks \
        --execute notebooks/${nb}.ipynb
done

#### Build latex PDFs

# Convert all svgs to pdfs and store in latex/figures/
inkscape="/Applications/Inkscape.app/Contents/MacOS/inkscape"
$inkscape notebooks/figures/*.svg --export-type="pdf"
mv notebooks/figures/*.pdf latex/figures/.

# Build latex pdf files
cd latex
make $1
