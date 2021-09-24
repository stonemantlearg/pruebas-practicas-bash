#!/bin/bash

tu_id=${USER}-en-${HOSTNAME} # Lee los parámetros de USER y HOSTNAME, convirtiendolos en valores.
echo "tu_id"  # Responde a los parámetros con el formato "usuario en hostname"


# echo ${username-`whoami`} -> trae el username del comando whoami en caso de que no esté setteado por defecto.