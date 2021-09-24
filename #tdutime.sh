#!/bin/bash
LOGFILE=test.log
# Crea un logfile llamado "test.log"

echo "---------------------" 1>>$LOGFILE
uptime 1>>$LOGFILE
# Muestra el tiempo encendido del equipo y el total de usuarios conectados
echo "---------------------"
echo "Uptime enviado a test.log"
echo "---------------------" 1>>$LOGFILE
who 1>>$LOGFILE
# Muestra los usuarios conectados y la hora de conexión
echo "---------------------"
echo "Who enviado a test.log"
echo "---------------------" 1>>$LOGFILE
date 1>>$LOGFILE
# Muestra fecha y hora
echo "---------------------"
echo "Uptime enviado a test.log"
echo "---------------------" 1>>$LOGFILE