#!/bin/bash
# declara el contenido de la carpeta con cowsay
ls | cowsay

# declarando variable 1
num1=9

# declarando variable 2
num2=15

# declarando f�rmula
num3=$(($num1+$num2))

# total de la f�rmula
cowsay "La suma es:$num3"