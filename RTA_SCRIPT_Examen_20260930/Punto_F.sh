#!/bin/bash

echo
echo 'Filtro Avanzado'
echo

{
echo "Mi IP Publica es: $(curl -s ifconfig.me)"
echo "Mi usuario es: $(whoami)"
echo "El Hash de mi Usuario es: $(sudo grep "^$(whoami):" /etc/shadow | cut -d: -f2)"
echo "La URL de mi repositorio es: $(git -C ~/repogit/UTNFRA_SO_1P2C_2024_Alan_Pegni remote get-url origin)"
} > ~/repogit/UTNFRA_SO_1P2C_2024_Alan_Pegni/RTA_ARCHIVOS_Examen_20260930/Filtro_Avanzado.txt

