#!/bin/bash
maxlinea=`cat usuarios.txt | wc -l`
numerolinea=1
nada=0
read -p "Dime el mes: " m
while [ $numerolinea -le $maxlinea ];do
linea=`cat usuarios.txt | head -$numerolinea | tail -1`
usuario=`echo $linea | awk '{print $1}'`
dia=`echo $linea | awk '{print $2}'`
mes=`echo $linea | awk '{print $3}'`
if [ $m = $mes ];then
echo $dia
else
nada=$((nada+1))
fi
numerolinea=$((numerolinea+1))
done
if [ $nada = 0 ];then
echo "0"
fi

