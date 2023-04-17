#!/bin/bash

# ESTE SCRIPT BUSCA Y EJECUTA TODOS LOS DEMAS 
# SCRIPTS DE RECOPILACION Y GENERACION DE 
# DATASETS CRUDOS E INTERMEDIOS
# ADVERTENCIA: 
# Depende de tu disco y equipo, pero esto puede
# tomar horas y ocupar casi 100GB de datos.
# El script generara varios archivos intermedios
# y ciertos procesos pueden estar duplicados, esto
# es intencional para poder acelerar la generación
# de datos base para las planillas a medida que 
# avanza el proceso



echo "GENERANDO ARCHIVO UNIFICADO DE TODOS LOS CSV"

# CREAMOS UNA COPIA DEL ARCHIVO CONSOLIDADO SOBRE LA CUAL TRABAJAR
cp ./../../../data/processed/consolidado-full-solo-viajes.csv ./../../../data/processed/cp-consolidado-full-solo-viajes.csv

# CREAMOS EL COMANDO CON EL CUAL EXTRAER LA INFORMACION DE CUALES SON LAS LINEAS DENTRO DEL ARCHIVO
lineas=$(awk -F "\"*;\"*" '{ print $11 } ' ./../../../data/processed/cp-consolidado-full-solo-viajes.csv | sort | uniq)

# CREAMOS LA CARPETA PARA ALMACENAMIENTO DE DATOS TEMPORALES INTERMEDIOS ANTES DE GENERAR LAS PLANILLAS
mkdir ./../../../data/interim/datosporlinea/

for linea in $lineas
do

	echo "GENERANDO CSV INTERMEDIO PARA idrutaestacion $linea"
	archivo_intermedio="./../../../data/interim/datosporlinea/linea-$linea.csv"
	if [ ! -f "$archivo_intermedio" ]
	then
		# CREAMOS EL ARCHIVO CON SU CABECERA
		echo "serialtarjeta;idsam;fechahoraevento;producto;montoevento;consecutivoevento;identidad;tipoevento;latitude;longitude;idrutaestacion;tipotransporte" > "${archivo_intermedio}"
		# EXTRAEMOS TODOS LOS DATOS QUE COINCIDAN CON LA idrutaestacion SELECCIONADA
		awk -v var="$linea" -F "\"*;\"*" '$11 == var { print $0 }' ./../../../data/processed/cp-consolidado-full-solo-viajes.csv >> "${archivo_intermedio}"
	fi
	# TOMAMOS TODOS LOS DATOS DEL ARCHIVO INTERMEDIO QUE NO SEAN DE LA LINEA SELECCIONADA Y GENERAMOS UN ARCHIVO INTERMEDIO
	awk -v var="$linea" -F "\"*;\"*" '$11 !~ var { print $0 }' ./../../../data/processed/cp-consolidado-full-solo-viajes.csv > ./../../../data/processed/xconsolidado-full-solo-viajes.csv
	# EL ARCHIVO INTERMEDIO SIN LA INFORMACION EXTRAIDA ES NUESTRO NUEVO MAESTRO
	mv ./../../../data/processed/xconsolidado-full-solo-viajes.csv ./../../../data/processed/cp-consolidado-full-solo-viajes.csv

done


rm ./../../../data/processed/cp-consolidado-full-solo-viajes.csv
rm ./../../../data/processed/xconsolidado-full-solo-viajes.csv