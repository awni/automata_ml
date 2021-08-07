#!/bin/bash

latexmk -pdf main

for f in 'introduction' 'acceptors_and_transducers' \
         'basic_operations' 'advanced_operations' #\
         # 'differentiabl_automata' 'extended_examples'
do
    latexmk -pdf main -jobname=m_${f} -pretex="\includeonly{${f}}" -usepretex
    mv m_${f}.pdf ${f}.pdf
done
rm m_*
