#!/bin/bash

for outerloop in 1 2 3 4 5 
# Define número de 'grupos, más adelante declarados'.
do
    echo -n "Grupo $outerloop:  "
#----------I N N E R L O O P -------------
for innerloop in 1 2 3 4 5 # Declara componentes del loop interno
    do
    echo -n "$innerloop "
    if [ "$innerloop" -eq 3 ] # 'Si el innerloop llega equivale a 3' termina.
    then
     break
    fi
    done
#----------I N N E R L O O P -------------
    echo
done
echo
