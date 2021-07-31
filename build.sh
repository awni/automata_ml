#!/bin/bash

for f in 'main' 'introduction' 'acceptors_and_transducers' 'basic_operations' 'advanced_operations'
do
    latexmk -pdf $f
done
