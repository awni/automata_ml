#!/bin/bash

base="notebooks/figures"

python figures/simple_automata.py

for f in 'simple_automata' 'simple_dfa' 'simple_nfa'
do
    sed -i '' 's/a\/0/a/g' ${base}/$f.svg
    sed -i '' 's/b\/0/b/g' ${base}/$f.svg
    sed -i '' 's/c\/0/c/g' ${base}/$f.svg
done

python figures/epsilon_intersect.py

ef=epsilon_intersect_both
for f in "_1" "_2" "" "_correct"
do
    dot -Tsvg figures/${ef}${f}.dot -o ${base}/${ef}${f}.svg
done

for i in {1..10}
do
    for g in 'g1' 'g2' 'g_out'
    do
        gf=intersect_step_${i}_${g}
        dot -Tsvg figures/intersect_steps/${gf}.dot -o ${base}/${gf}.svg
    done
done

for f in 'epsilon_intersect' 'viterbi_recursion' 'viterbi_path_back' \
         'unigram' 'bigram' 'asg_bigrams'
do
    dot -Tsvg figures/${f}.dot -o ${base}/${f}.svg
done
