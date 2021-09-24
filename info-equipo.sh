#!/bin/bash

: ${HOSTNAME?} ${USER?} ${HOME?}
# Toma los valores del hostname, user y home base de linux

echo "El equipo se llama $HOSTNAME."
# Devuelve el nombre del equipo con el mensaje indicado
echo "Tú eres $USER."
# Devuelve el nombre del usuario
echo "Tú directorio home es $HOME."
# Devuelve el directorio home para el usuario.