# Análisis de la información de billetaje electrónico

Desde este repositorio se trabajaran de diferentes maneras de extraer información útil de los datos crudos provistos por el Viceministerio de Transporte.

## Referencias

#### Pedido de información pública 52544
https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/52544-Datos%20de%20Billetaje%20Electr%C3%B3nico

#### Respuesta a pedido de informe 123747
https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/docs/references/RESPUESTA%20PEDIDO%20INFORME-123747.pdf

## Como utilizar este repositorio

Para preparar todos los datos y ejecutar los scripts generales utilizar el siguiente bash.

```
sh init.sh
```

## Análisis iniciales

Algunos estudios preliminares buscando indagar cuales son las caracteristicas generales de los datos.


#### Generación de mapas de rutas según idrutaestacion (Itinerario por linea?)
https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/notebooks/mapas-por-idrutaestacion/mapas-por-idrutaestacion.ipynb

Este repositorio fue creado en base a https://github.com/dslp/dslp-repo-template