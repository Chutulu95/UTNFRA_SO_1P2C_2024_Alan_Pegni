#!/bin/bash

echo
echo 'Informacion de equipo'
echo

DESTINO="$HOME/repogit/UTNFRA_SO_1P2C_2024_Alan_Pegni/RTA_ARCHIVOS_Examen_20260930/"

mkdir -p $DESTINO

grep "MemTotal:" /proc/meminfo > $DESTINO/Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Manufacturer:" >> $DESTINO/Filtro_Basico.txt


