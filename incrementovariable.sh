#!/bin/bash
# declaracion de variable
VAR=1
while [ $VAR -le 9 ]
do cowsay "La variable esta llegando al mejor n�mero, $VAR"
# Incrementa la variable para que suba
(( VAR++ ))
done