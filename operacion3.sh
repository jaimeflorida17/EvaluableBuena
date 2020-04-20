#!/bin/bash
maxlineas=`cat usuarios.txt | wc -l`
numerolineas=1
conectados=0
read -p "Dime el dia: " dias
read -p "Dime el mes: " mes
while [ $numerolineas -le $maxlineas ]; do
linea=`cat usuarios.txt | head -$numerolineas | tail -1`
usuario=`echo $linea | awk '{print $1}'`
dia=`echo $linea | awk '{print $2}'`
meses=`echo $linea | awk '{print $3}'`
if [[ $dias = $dia ]] && [[ $mes = $meses ]];then
conectados=$((conectados+1))
echo $usuario
fi
numerolineas=$((numerolineas+1))
done
if [ $conectados = "0" ];then
echo "No hay nadie regsitrado en esa fecha"
else
echo $usuario
fi

