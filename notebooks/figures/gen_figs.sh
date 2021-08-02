#!/bin/bash

EXT=svg

python simple_automata.py

for f in 'simple_automata' 'simple_dfa' 'simple_nfa'
do
    sed -i '' 's/a\/0/a/g' nb/$f.svg
    sed -i '' 's/b\/0/b/g' nb/$f.svg
    sed -i '' 's/c\/0/c/g' nb/$f.svg
done

python epsilon_intersect.py

ef=epsilon_intersect_both
dot -Tsvg ${ef}_1.dot -o nb/${ef}_1.svg
dot -Tsvg ${ef}_2.dot -o nb/${ef}_2.svg
dot -Tsvg ${ef}.dot -o nb/${ef}.svg
dot -Tsvg ${ef}_correct.dot -o nb/${ef}_correct.svg

for i in {1..10}
do
    for g in 'g1' 'g2' 'g_out'
    do
        gf=intersect_step_${i}_${g}
        dot -T${EXT} intersect_steps/${gf}.dot -o nb/${gf}.${EXT}
    done
done

for f in 'viterbi_recursion' 'viterbi_path_back' 'unigram' 'bigram' 'asg_bigrams'
do
    dot -T${EXT} ${f}.dot -o nb/${f}.${EXT}
done
