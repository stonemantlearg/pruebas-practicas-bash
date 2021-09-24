#!/bin/bash

for comida in Milanga Fideos Asado Churrasco Guiso 
do
    echo $comida 
done

# Dado que está situado de esa forma el loop mostrará cada comida en una linea.

for entrada in "Salame Queso Bondiola Doritos"
do
    echo $entrada
done

echo; echo "Esto no parece muy saludable."

# Por estar entre "" nos muestra todo en un listado en el mismo renglón, y por el echo 'nested' en otro echo nos dirá después el mensaje.

exit 0