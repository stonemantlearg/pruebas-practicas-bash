#!/bin/bash

for comida in "Milanga 50" "Fideos 100" "Asado 300" "Churrasco 70" "Guiso 15"
# Se asignan dos valores a cada paso del loop para vincularlos.
do
    set -- $comida # Esto parsea la comida para que no haya errores violentos.
    echo "$1        $2 pesos argentinos papá"
done

exit 0