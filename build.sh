#!/bin/bash

#### Build notebook html files

# Copy any figures to notebook figures directory
cp figures/*.svg notebooks/figures/

# Generate svg figures:
figures/gen_figs.sh

# Execute notebooks and convert to HTML:
for nb in 'acceptors_and_transducers' 'basic_operations' #\
#          'advanced_operations' 'differentiable_automata' \
#          'extended_examples'
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
for f in 'main' 'introduction' 'acceptors_and_transducers' \
         'basic_operations' #'advanced_operations' \
         # 'differentiabl_automata' 'extended_examples'
do
    latexmk -pdf $f
done
