#!/usr/bin/env python3  
# -*- coding: utf-8 -*- 
#----------------------------------------------------------------------------
# Created By  : Pablo A. Castillo
# Created Date: 2023-04-15 10:38
# version ='1.0'
# ---------------------------------------------------------------------------
"""
	GENERAR EXCELS POR LINEA PARA FACILITAR ANALISIS PUBLICO  
	El objetivo de este script es generar en base a los CSVs limpios
	generados una serie de archivos excel que puedan ser revisados por
	público que este más familiarizado con herramientas de usuario final
	y no por coders tecnicos. 
"""
# ---------------------------------------------------------------------------


import os
# import pandas as pd
import polars as pl
import time

source_file = os.path.realpath(os.getcwd() + "/../../../data/processed/consolidado-full-solo-viajes.csv")
tamanio = os.path.getsize(source_file)

print("SE ESTA REALIZANDO LA LECTURA DE UN ARCHIVO DE %.2f GB. ESTO VA A TOMAR SU TIEMPO" % ( tamanio/1024/1024/1024 ))
print(time.time())

# lecturas= pd.read_csv(source_file)
# print(lecturas.sample(10))
# print(time.time())

# lineas = datos_lineas['idrutaestacion'].unique()
# print(lineas.sample(10))
# print(time.time())


qlineas = (
    pl.scan_csv(source_file)
    .groupby("idrutaestacion")
)

lineas = qlineas.collect()
print(time.time())




