[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/README.md)

# Analysis of bus e-ticketing information

This repository will contain different ways in which to extract useful information from the raw data provided by the [Vice Ministry of Transportation](https://www.mopc.gov.py/index.php/noticias/topic/11/viceministerio-de-transporte).

## [Access the full dataset here (6.5Gb compressed, 26.4Gb extracted)](https://drive.google.com/drive/folders/12EbE0PEEnCjUVjhzMDNa1W7M9tR4ZzwW)

## References

#### Request for public information 52544 [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/52544-Datos%20de%20Billetaje%20Electr%C3%B3nico) [link](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/52544)

#### Response to information request 123747 [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/docs/references/RESPUESTA%20PEDIDO%20INFORME-123747.pdf)

## How to use this repository

Put the whole extracted raw dataset on the folder /data/raw from this repository and run the init bash script from the command line.
You can check this script comments to get an holistic view of the project.

```
sh init.sh
```

## Analysis from the dataset

Some preliminary studies seeking to make visible what are the general characteristics of the data.


#### Generation of route maps according to idrutastation (Itinerary per bus line?) [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/notebooks/mapas-por-idrutaestacion)

![PA.I ÑU - IPS: Troncal 1(010C)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-por-idrutaestacion/graphs/010c.png)



### Other analyzes carried out by smarter people

If you see someone is missing, please let us know or share your repository here (or on twitter using #OPAMA)


[Lucho](https://github.com/luchobenitez/monda-guasu)
(Spanish) Repository with all the general information and context of the situation. Datasets, dictionary, context and more.

[Karl](https://github.com/Karlheinzniebuhr/billetaje_electronico)
(Spanish) This repository contains code for an open data analysis of electronic ticketing in Paraguay.
This analysis includes exploring the data and visualizing various metrics, such as the number of transactions per day of the week.

[Mateo](https://github.com/torresmateo/opama)
(Spanish) Analysis of transport data for the Asunción metropolitan area.
With simple statistics there are some cases that are unreasonable if one thinks of a conventional user. 
For example, using a bus service 662 times in the same day (particularly on a Sunday).



This repository was created based on https://github.com/dslp/dslp-repo-template