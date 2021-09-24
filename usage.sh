#!/bin/bash

: ${1?"Usage: $0 ARGUMENT"} 
# Se le otorga un argument tras correr el script. Se asigna a $1 el argument

echo "Esto sólo se escribirá si el argumento es válido"
# Se escriben estos dos mensajes sólo si se realiza de la forma correcta, de otra forma, no se ejecutarán.
echo "Argument ingresado = \"$1\""

exit 0