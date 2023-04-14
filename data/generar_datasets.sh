#!/bin/bash

# ESTE SCRIPT BUSCA Y EJECUTA TODOS LOS DEMAS 
# SCRIPTS DE RECOPILACION Y GENERACION DE 
# DATASETS CRUDOS E INTERMEDIOS


echo "GENERANDO ARCHIVO UNIFICADO DE TODOS LOS CSV"
echo "serialtarjeta;idsam;fechahoraevento;producto;montoevento;consecutivoevento;identidad;tipoevento;latitude;longitude;idrutaestacion;tipotransporte" > processed/consolidado-full-clean.csv  
cat raw/*.csv | grep -v "latitude" >> processed/consolidado-full-clean.csv

echo "GENERANDO ARCHIVO SOLO DE VIAJES"
echo "serialtarjeta;idsam;fechahoraevento;producto;montoevento;consecutivoevento;identidad;tipoevento;latitude;longitude;idrutaestacion;tipotransporte" > processed/consolidado-full-solo-viajes.csv
awk -F "\"*;\"*" '$8 == "4" { print $0 } ' processed/consolidado-full-clean.csv >> processed/consolidado-full-solo-viajes.csv


echo "GENERANDO DATOS DE LATLON POR idrutaestacion"
echo "Datos crudos generados en data/interim/latlon-por-linea-full.csv"
echo "latitude;longitude;idrutaestacion" > interim/latlon-por-linea-full.csv
awk -F "\"*;\"*" '$8 == "4" { print $0 } ' processed/consolidado-full-clean.csv | awk -F "\"*;\"*" '$9 !~ "latitude" { print $9 ";" $10 ";" $11 } ' >> interim/latlon-por-linea-full.csv
echo "LIMPIANDO DATOS DE LATLON POR idrutaestacion"
echo "latitude;longitude;idrutaestacion" > processed/latlon-por-linea-clean.csv
cat interim/latlon-por-linea-full.csv | sort | uniq >> processed/latlon-por-linea-clean.csv                 
# sed '$d' processed/latlon-por-linea-clean.csv
echo "Datos limpios generados en data/processed/latlon-por-linea-clean.csv"


