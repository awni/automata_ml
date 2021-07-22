#!/bin/bash

EXT=$1

for i in {1..10}
do
    for g in 'g1' 'g2' 'g_out'
    do
        gf=intersect_step_${i}_${g}
        dot -T${EXT} ${gf}.dot -o ${gf}.${EXT}
    done
done
