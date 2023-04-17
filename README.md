[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/README.en.md)

# Análisis de la información de billetaje electrónico

Desde este repositorio se trabajaran de diferentes maneras de extraer información útil de los datos crudos provistos por el Viceministerio de Transporte.

## [Accede al dataset completo aquí (6.5Gb comprimido, 26.4Gb extraido)](https://drive.google.com/drive/folders/12EbE0PEEnCjUVjhzMDNa1W7M9tR4ZzwW)

## Referencias

#### Pedido de información pública 52544 [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/52544-Datos%20de%20Billetaje%20Electr%C3%B3nico) [link](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/52544)

#### Respuesta a pedido de informe 123747 [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/docs/references/RESPUESTA%20PEDIDO%20INFORME-123747.pdf)

## Como utilizar este repositorio

Para preparar todos los datos y ejecutar los scripts generales utilizar el siguiente bash.

```
sh init.sh
```

## Análisis iniciales

Algunos estudios preliminares buscando indagar cuales son las caracteristicas generales de los datos.


#### Generación de mapas de rutas según idrutaestacion (Itinerario por linea?) [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/notebooks/mapas-por-idrutaestacion)

![PA.I ÑU - IPS: Troncal 1(010C)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-por-idrutaestacion/graphs/010c.png)



### Otros análisis realizados por otras personas

Si ves que falta alguien, por favor avisar o comparti tu repositorio aquí (o en twitter usando #OPAMA)

[Lucho](https://github.com/luchobenitez/monda-guasu)
Repositorio con toda la información general y contexto de la situación. Datasets, diccionario, contexto y más.

[Karl](https://github.com/Karlheinzniebuhr/billetaje_electronico)
Este repositorio contiene código para un análisis de datos abiertos del billetaje electrónico en Paraguay.
Este análisis incluye la exploración de los datos y la visualización de varias métricas, como la cantidad de transacciones por día de la semana.

[Mateo](https://github.com/torresmateo/opama)
Análisis de datos de transporte del área metropolitana de Asunción
Con estadísticas simples se ven algunos casos que resultan poco razonables si uno piensa en un pasajero convencional. Por ejemplo, usar un servicio de bus 662 veces en el mismo día (particularmente un Domingo).


### Pines

Porque todo el mundo necesita pines
https://www.instagram.com/p/CkZNOkoLcGb/

![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines1.jpg)
![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines2.jpg)
![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines3.jpg)
![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines4.jpg)
![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines5.jpg)
![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines6.jpg)
![Pines](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/docs/media/pines/pines7.jpg)


Este repositorio fue creado en base a https://github.com/dslp/dslp-repo-template