#!/bin/bash
cowsay "Dime un n�mero"
read num

if [ $num -gt 10 ];then
cowsay "El numero es mayor a 10"
elif [ $num -eg 10 ];then
cowsay "El numero es 10"
elif [ $num -lt 10 ];then
cowsay "El numero es menor a 10"

else cowsay "Eso es invalido, muu"
fi