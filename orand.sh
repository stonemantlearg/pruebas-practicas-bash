#!/bin/bash

((0 && 1 ))  #AND Lógico
echo "$? es el resultado" #Resulta en 1
let "num = (( 0 && 1 ))" #Resulta en 0
echo "$num es el resultado"

let "num3 = (( 5 || 10 ))" # OR lógico
echo $num3

let "num4 = (( 1 | 0 ))" #OR bitwise
echo $num4

echo ---------------

let "num1 = 20 + 50"
echo $num1

echo ---------------

let "num2 = $num * $num1"
echo $num2