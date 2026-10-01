#!/bin/bash

MI_CLAVE='$y$j9T$wjMWLiu2kMWAGhwUBUKf74L9$gebXD54MunXYvcL41Z944wQTA8k3SjAoLf8XJdgkNG7'

echo
echo 'Creacion de Grupos'
echo

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo
echo 'Grupos creados'
echo

echo
echo 'Asignacion de usuarios'
echo

sudo useradd -m -s /bin/bash -g p1c2_2024_gAlumno -p "$MI_CLAVE" p1c2_2024_A1
sudo useradd -m -s /bin/bash -g p1c2_2024_gAlumno -p "$MI_CLAVE" p1c2_2024_A2
sudo useradd -m -s /bin/bash -g p1c2_2024_gAlumno -p "$MI_CLAVE" p1c2_2024_A3
sudo useradd -m -s /bin/bash -g p1c2_2024_gProfesores -p "$MI_CLAVE" p1c2_2024_P1

echo
echo 'Usuarios, grupos y contraseñas asignados'
echo

echo
echo 'Owners y permisos'
echo

sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chmod -R 775 /Examenes-UTN/profesores

echo
echo 'Asignado'
echo

echo
echo 'Validar'
echo

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1

echo
echo 'Finalizado'
echo


