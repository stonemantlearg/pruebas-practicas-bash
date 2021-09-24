#!/bin/bash
# Cleanup Ultima Version

LOG_DIR=/var/log
ROOT_UID=0      # Sólo usuarios con acceso 0 tienen privilegios de root
LINES=50        # El número de lineas guardadas por default
E_XCD=86        # Evita cambiar el directorio
E_NOTROOT=87    # Error de no ser root

# Ejecutar como root, siempre.
if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "Este script debe ejecutarse como root"
    exit $E_NOTROOT
fi


cd $LOG_DIR
if [ "$PWD" != "$LOG_DIR" ]
then
echo "No se pudo acceder a $LOG_DIR"
exit $E_XCD
fi # Chequea dos veces por el directorio

tail -n $LINES messages > mesg.temp     # Guarda la última sección del log file
mv mesg.temp messages                   # Renombra como un system log file

cat /dev/null > wtmp # ": > wtmp" y "> wtmp" tienen el mismo efecto
echo "Se limpiaron los logs"
# Existen otros archivos en /var/log que no son afectados por este script

exit 0
# Un 0 al final del script indica éxito

