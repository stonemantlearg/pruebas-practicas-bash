#!bin/bash

echo "Testeo de números pares | impares"
read num

if [ $((num%2)) -eq 0 ]
then echo "La variable es par"
else echo "La variable es impar"
elif [[ $num =~ $re ]] then "No reconozco letras o símbolos"
fi