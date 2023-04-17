import pandas as pd
import numpy as np

import os

import geopandas as gpd
import contextily as cx

import matplotlib.pyplot as plt


datos_tarjeta = pd.read_csv("../../data/processed/eb0485368e95a196961879fe3c96500a.csv", sep = ';')

print(datos_tarjeta.sample(10))

imgpath = './eb0485368e95a196961879fe3c96500a.png'

datos_tarjeta['latitude']=datos_tarjeta['latitude'].astype('float')
datos_tarjeta['longitude']=datos_tarjeta['longitude'].astype('float')

datos_linea = datos_tarjeta
latlon_por_linea= gpd.GeoDataFrame(datos_linea, geometry=gpd.points_from_xy(datos_linea.longitude,datos_linea.latitude),crs="EPSG:4326")

# linea_mapa_plot = latlon_por_linea.plot(figsize=(9, 9),legend=True,marker='.',markersize=0.2,color='red',alpha=.1)
linea_mapa_plot = latlon_por_linea.plot(figsize=(9, 9),legend=True,marker='X',markersize=8,color='blue') # MODO ALTA VISIBILIDAD
linea_mapa_plot.set(title='Datos para serialtarjeta eb0485368e95a196961879fe3c96500a')
cx.add_basemap(linea_mapa_plot, crs="EPSG:4326")
# cx.add_basemap(linea_mapa_plot, crs="EPSG:4326",source=cx.providers.CartoDB.Voyager)

plt.savefig(imgpath,dpi=300)
plt.close()