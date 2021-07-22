#!/bin/bash

python simple_automata.py

for f in 'simple_automata' 'simple_dfa' 'simple_nfa'
do
    sed -i '' 's/a\/0/a/g' $f.svg
    sed -i '' 's/b\/0/b/g' $f.svg
    sed -i '' 's/c\/0/c/g' $f.svg
done
