#limpieza-log
#!/bin/bash
#limpieza de /log/ mejorada
#ejecutar como root

LOG_DIR=/var/log
#variables > locaciones hardcodeadas
cd $LOG_DIR
cat /dev/null > messages
cat /dev/null > wtmp
echo "var/log/ limpia3"

exit
#metodo apropiado de salida de un script