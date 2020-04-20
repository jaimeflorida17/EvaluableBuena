#!/bin/bash
maxlineas=`cat usuarios.txt | wc -l`
numerolinea=1
conectados=0
read -p "Nombre de usuario: " usuario
while [ $numerolinea -le $maxlineas ];do
linea=`cat usuarios.txt  | head -$numerolinea | tail -1`
user=`echo $linea | awk '{print $1}'`
dias=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`
if [ $usuario = $user ]; then
conectados=$((conectados+1))
fi
numerolinea=$((numerolinea+1))
done
if [ $conectados = "0" ]; then

echo "No hay nadie registrado con este nombre "

else

echo "$conectados"

fi

