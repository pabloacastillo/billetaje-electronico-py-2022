#!/bin/bash

# ESTE SCRIPT BUSCA Y EJECUTA TODOS LOS DEMAS 
# SCRIPTS DE RECOPILACION Y GENERACION DE 
# DATASETS CRUDOS E INTERMEDIOS
# ADVERTENCIA: 
# Depende de tu disco y equipo, pero esto puede
# tomar horas y ocupar casi 100GB de datos.


echo "GENERANDO ARCHIVO UNIFICADO DE TODOS LOS CSV"
echo "serialtarjeta;idsam;fechahoraevento;producto;montoevento;consecutivoevento;identidad;tipoevento;latitude;longitude;idrutaestacion;tipotransporte" > processed/consolidado-full.csv  
cat raw/vmt-originales/*.csv | grep -v "latitude" >> processed/consolidado-full.csv

echo "GENERANDO ARCHIVO SOLO DE VIAJES, O TODOS LOS TIPOEVENTO 4"
echo "serialtarjeta;idsam;fechahoraevento;producto;montoevento;consecutivoevento;identidad;tipoevento;latitude;longitude;idrutaestacion;tipotransporte" > processed/consolidado-full-solo-viajes.csv
awk -F "\"*;\"*" '$8 == "4" { print $0 } ' processed/consolidado-full.csv >> processed/consolidado-full-solo-viajes.csv

echo "GENERANDO ARCHIVO SIN VIAJES, O SEA TODOS LOS TIPOEVENTO QUE NO SON 4"
echo "serialtarjeta;idsam;fechahoraevento;producto;montoevento;consecutivoevento;identidad;tipoevento;latitude;longitude;idrutaestacion;tipotransporte" > processed/consolidado-full-sin-viajes.csv
awk -F "\"*;\"*" '$8 !~ "4" { print $0 } ' processed/consolidado-full.csv >> processed/consolidado-full-sin-viajes.csv


echo "GENERANDO DATOS DE LATLON POR idrutaestacion"
echo "Datos crudos generados en data/interim/latlon-por-linea-full.csv"
echo "latitude;longitude;idrutaestacion;fechahoraevento" > interim/latlon-por-linea-full.csv
awk -F "\"*;\"*" '$8 == "4" { print $0 } ' processed/consolidado-full.csv | awk -F "\"*;\"*" '$9 !~ "latitude" { print $9 ";" $10 ";" $11 ";" $3 } ' >> interim/latlon-por-linea-full.csv
echo "LIMPIANDO DATOS DE LATLON POR idrutaestacion"
echo "latitude;longitude;idrutaestacion;fechahoraevento" > processed/latlon-por-linea-clean.csv
cat interim/latlon-por-linea-full.csv | sort | uniq >> processed/latlon-por-linea-clean.csv                 
# sed '$d' processed/latlon-por-linea-clean.csv
echo "Datos limpios generados en data/processed/latlon-por-linea-clean.csv"


echo "GENERANDO DATOS DE LATLON POR serialtarjeta"
echo "Datos crudos generados en data/interim/latlon-por-serialtarjeta-full.csv"
echo "serialtarjeta;fechahoraevento;identidad;tipoevento;latitude;longitude;idrutaestacion" > interim/latlon-por-serialtarjeta-full.csv
awk -F "\"*;\"*" '$9 !~ "latitude" { print $1 ";" $3 ";" $7 ";" $8 ";" $9 ";" $10 ";" $11 } ' >> interim/latlon-por-serialtarjeta-full.csv


