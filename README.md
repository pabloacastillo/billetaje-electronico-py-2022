[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/README.en.md)

# Análisis de la información de billetaje electrónico

Desde este repositorio se trabajaran de diferentes maneras de extraer información útil de los datos crudos provistos por el Viceministerio de Transporte.

## [Accede al dataset completo aquí (6.5Gb comprimido, 26.4Gb extraido)](https://drive.google.com/drive/folders/12EbE0PEEnCjUVjhzMDNa1W7M9tR4ZzwW)


## Como utilizar este repositorio

Para preparar todos los datos y ejecutar los scripts generales utilizar el siguiente bash.

```
sh init.sh
```

## Análisis iniciales

Algunos estudios preliminares buscando indagar cuales son las caracteristicas generales de los datos.


#### Generación de mapas de rutas según idrutaestacion (Itinerario por linea?) [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/notebooks/mapas-por-idrutaestacion)

Estos mapas fueron generados utilizando la información cruda GPS extraida del dataset entregado por el VMT. Para ver más detalles acerca de la generación, revisar el notebook. Si algo te llama la atención en estar rutas, twittealo con el hash #OPAMA

![PA.I ÑU - IPS: Troncal 1(010C)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-por-idrutaestacion/graphs/010c.png)


#### Mapas de todos los eventos no registrados como viajes [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/notebooks/mapas-eventos-no-viajes)

Estos mapas contienen todos los datos contenido en el dataset donde tipoevento es diferente a 4 (Viaje Normal).
En este caso, según los datos contenidos en el dataset, todos los tipoevento que no son 4 (Viaje Normal) son 8 (Devolución).

![idesam: Identificador del chip instalado en el equipo verificador.](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/idsam.png)


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

[egkike](https://github.com/egkike/billetaje)
Scrips SQL para los 8 CDs con datos del sistema de billetaje electrónico de enero de 2022 a marzo de 2023.
Este Scrip tiene como objetivo ayudar y facilitar la tarea de IMPORTAR los datos contenidos en los Archivos CSV a Tablas de una Base de Datos MariaDB o MySQL. Fecha: 14/04/2023


## Referencias

#### Pedido de información pública 52544 [local](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/52544-Datos%20de%20Billetaje%20Electr%C3%B3nico) [original](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/52544)

Datos de Billetaje Electrónico - 01/02/2022 

> En virtud de un trabajo académico de investigación, solicito me puedan compartir los datos disponibles a los siguientes reportes originados en el Centro de Monitoreo de Billetaje Electrónico (desde Enero 2021 hasta la actualidad):
> a) Total de viajes diarios con billetaje (por día, por empresa y tipo de servicio)
> b) Reporte de las transacciónes de cada empresa para un determinado período de tiempo: día, mes, año.
> c) Reporte de venta de tarjetas de las empresas prestadoras (por día: cantidad de tarjeta y volumen total en guaraníes)
> d) Reporte de recarga de tarjetas (por día, total en guaraníes)
> e) Reporte de validación de transbordos (por día)
> f) Reporte de frecuencia por itinerario, por empresa (por día)
> g) Reporte de niveles de servicio de cada empresa prestadora (por día)
> h) Reporte de incidentes detectados en el sistema (por día)


#### Respuesta a pedido de informe 123747 [link](https://github.com/pabloacastillo/billetaje-electronico-py-2022/blob/main/docs/references/RESPUESTA%20PEDIDO%20INFORME-123747.pdf)

"Que pide informes al Poder Ejecutivo - MOPC - Viceministerio de Transporte" - 17/10/22
Cantidad de pasajeros transportados en Asunción y su área metropolitana por hora, día, mes y año, diferenciando el costo del pasaje (normal, con aire acondicionado, estudiante o costo cero), empresa transportadora y empresa de billetaje que utiliza, entre otros.

#### Pedido de información pública 49217 [local](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/49217-Informe%20de%20Transporte%20Publico%20Area%20Metropolitana) [original](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/49217)

Informe de Transporte Público Área Metropolitana - 08/11/2021 

> Por la presente solicito la información de la flota de buses que opera transporte público del Área Metropolitana de Asunción, en formato CSV, con sus diferentes características:
> 1) Identificador único del Vehículo
> 2) Etiqueta del vehículo señalética
> 3) Placa o Matricula
> 4) Tipo de vehículo
> 5) Tipo de servicio que opera el vehículo
> 6) Nivel de emisión del vehículo
> 7) Marca de marca del vehículo
> 8) Mecanismo de accesibilidad para personas discapacitadas
> 9) Concesionario de operación que opera el vehículo
> 10) Modelo del vehículo
> 11) Zona a la que pertenece el vehículo
> 12) Concesión a la que pertenece el vehículo


#### Pedido de información pública 52544 [local](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/52544-Datos%20de%20Billetaje%20Electr%C3%B3nico) [original](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/52544)

Datos de Billetaje Electrónico - 01/02/2022 

> En virtud de un trabajo académico de investigación, solicito me puedan compartir los datos disponibles a los siguientes reportes originados en el Centro de Monitoreo de Billetaje Electrónico (desde Enero 2021 hasta la actualidad):
> a) Total de viajes diarios con billetaje (por día, por empresa y tipo de servicio)
> b) Reporte de las transacciónes de cada empresa para un determinado período de tiempo: día, mes, año.
> c) Reporte de venta de tarjetas de las empresas prestadoras (por día: cantidad de tarjeta y volumen total en guaraníes)
> d) Reporte de recarga de tarjetas (por día, total en guaraníes)
> e) Reporte de validación de transbordos (por día)
> f) Reporte de frecuencia por itinerario, por empresa (por día)
> g) Reporte de niveles de servicio de cada empresa prestadora (por día)
> h) Reporte de incidentes detectados en el sistema (por día)


#### Pedido de información pública 59024 [local](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/59024) [original](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/59024)

Reconsideración Exp N° 57.902 - 02/08/2022 

> a) EN FORMATO CSV
> La flota de buses que opera transporte público del Área Metropolitana de Asunción con sus diferentes características al cierre del 2021 y al cierre del 2022:
> b) EN FORMATO CSV
Monto del pago de subsidios en 2021 y 2022 a cada empresa de transporte del área metropolitana, incluyendo.
> c) Copia de la reglamentación del subsidio por servicio nocturno. 

#### Pedido de información pública 57902 [local](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/57902-Solicitud%20de%20informe%20actualizado) [original](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/57902)

Solicitud de informe actualizado - 26/06/2022 

> Por el presente escrito invocando el derecho constitucional de libre acceso a las fuentes públicas de información garantizado en el Artículo 28 de la Constitución Nacional (1992), en concordancia con la Ley Nº 5.282/14 “DE LIBRE ACCESO CIUDADANO A LA INFORMACIÓN PÚBLICA Y TRANSPARENCIA GUBERNAMENTAL' solicito:
> 1) Pago de subsidios 2021 a concesionarias del transporte público. Discriminado por empresa, por mes y el total del año. Formato .DOC
> 2) Reporte de cada concesionaria registrada en el Viceministerio de Transporte (VMT) con los siguientes datos:
> a) Razón social / Línea
> b) Representante legal
> c) RUC
> d) Fecha de inscripción ante VMT
> e) Situación judicial (si tiene medida judicial para seguir operando, activo o algún otro tramite)
> f) Dirección de la empresa
> g) Contacto telefónico y celular
> h) El informe debe contener de las antiguas y nuevas concesionarias/autoridades, en caso de que de se haya registrado cambios. Especificar cuáles son y fechas de las modificaciones concretadas.
> i) Este informe se solicita en Formato .DOC
> 3) Reporte de flota y cantidad de buses operativos por empresas. Discriminar buses convencionales y diferenciales. Especificar cantidad de buses conforme a cada tipo de servicio por los cuales se pagó subsidio por cada compañía en total del 2021 y 2022. Informe en Formato .DOC
> 4) Pago de subsidios 2022 a concesionarias del transporte público. Discriminado por empresa, por mes y el total del año. Formato .DOC
> 5) Especificar fuente de financiamiento para el pago de subsidios 2021 y 2022. Copia de resoluciones respaldatorias.
> 6) Explicación por el cual no se encuentra operativo en 100% el Centro de Control y Monitoreo (CCM) del Billetaje Electrónico. Especificar los aspectos que quedan pendientes y los motivos por los cuales sigue así. Indicar el impacto de la ausencia de estos componentes.
> 7) Copia de las comunicaciones de la proveedora del CCM y respuestas dadas a las mismas con los cuales se justifica la demora para cumplir con la totalidad de las obligaciones del contrato.
> 8) Copias de las licitaciones de itinerarios convocados en 2021 y en lo que va del 2022, incluyendo los documentos del proceso, adjudicación y contrato.
> 9) Reporte de todas las concesionarias sancionadas en 2021 y 2022. Especificar la infracción, fecha de la detección y en qué circunstancia (denuncia ciudadana, fiscalización u otro), y en qué consistió la acción por la cual se consideró que violó la normativa, sanción aplicada, precisar si pagó la multa (si corresponde) y fecha del pago del mismo. Formato .DOC
> 10) Informe descriptivo de las acciones hechas por reclamos de trabajadores de transporte que recurrieron a VMT. Indicar fecha, relato del inconveniente planteado, acciones hechas y situación en que se encuentran los casos. Formato .DOC
> 11) Informe de las acciones hechas por el VMT referente al aumento de precios de las tarjetas del billetaje electrónico. Reporte del histórico de valor de las tarjetas desde la vigencia del sistema de pago electrónico a la fecha. Cabe recordar que la tarjea es indispensable para el uso del transporte público regulado por VMT y que actualmente el pago en efectivo, que no implica un costo adicional para el usuario, está prohibido.
> En caso de que no se haya hecho una intervención en cuanto a los precios de las tarjetas, solicito un dictamen jurídico que avale tal inacción de VMT.


#### Pedido de información pública 54731 [local](https://github.com/pabloacastillo/billetaje-electronico-py-2022/tree/main/docs/references/54731-Reporte%20de%20cantidad%20de%20empleados) [original](https://informacionpublica.paraguay.gov.py/portal/#!/ciudadano/solicitud/54731)

Reporte de cantidad de empleados - 07/04/2022 

> Por el presente escrito invocando el derecho constitucional de libre acceso a las fuentes públicas de información garantizado en el Artículo 28 de la Constitución Nacional (1992), en concordancia con la Ley Nº 5.282/14 “DE LIBRE ACCESO CIUDADANO A LA INFORMACIÓN PÚBLICA Y TRANSPARENCIA GUBERNAMENTAL', se solicita el reporte de cantidad de empleados, y si es posible especificar cantidad de choferes de cada empresa, y especificar fecha de inscripción en MTSS, de la siguiente lista de empresas.
> 1) RUC 80038117-3 MAGNO S.A.
> 2) RUC 80019777-1 Automotores Guarani S.R.L.
> 3) RUC 80093605-1 Grupo BENE S.A.
> 4) RUC 80002220-3 San Isidro S.R.L.
> 5) RUC 80004429-0 Mariscal Lopez S.R.L.
> 6) RUC 80009943-5 Transporte y Turismo Lambare S.A.
> 7) RUC 80005259-5 Lince S.R.L.
> 8) RUC 80016581-0 La San Lorenzana S.A.
> 9) RUC 80070476-2 Ximex S.A.
> 10) RUC 80000679-8 La Limpeña
> 11) RUC 80003082-6 Ñanduti S.R.L.
> 12) RUC 80011235-0 Vanguardia S.A.C.I.
> 13) RUC 80077936-3 Aldana S.A.
> 14) RUC 80001755-2 San Lorenzo C.I.S.A
> 15) RUC 8006677-4 Ciudad de Limpio S.R.L.
> 16) RUC 80018001-1 Capiata S.R.L.
> 17) RUC 80078061-2 3 de Febrero S.R.L.
> 18) RUC 80056912-1 Ciudad de Villeta S.A.
> 19) RUC 80001679-3 La Chaqueña S.A. T.C.
> 20) RUC 80019021-1 GMT y T S.R.L. - 54 (2)
> 21) RUC 80017156-0 Ciudad de Luque S.R.L.
> 22) RUC 80054820-5 Campo Limpio S.A.
> 23) RUC 80007768-7 San Fernando S.A.
> 24) RUC 80007526-9 1° de Diciembre S.R.L.
> 25) RUC 80005193-9 Gral. Aquino S.R.L.
> 26) RUC 80020214-7 Cerro Koi S.A.
> 27) RUC 80079318-8 16 de Noviembre S.R.L.
> 28) RUC 80005407-5 Transportista Guarani S.R.L.
> 29) RUC 80026128-3 Inter S.A.
> 30) RUC 80057648-9 SMTC SRL
> 31) RUC 80021329-7 Natividad de la Virgen Maria S.R.L.
> 32) RUC 80019386-5 Ytororo S.A.
> 33) RUC 80092359-6 San Jose Obrero S.A.
> 34) RUC 80078852-4 1° de Mayo S.R.L.
> 35) RUC 80081691-9 Ypacarai Transporte S.A.
> 36) RUC 80081692-7 La Aregueña S.A.
> 37) RUC 80083146-2 Gonzalez Quiñonez S.R.L.
> 38) RUC 80003212-8 Automotores Guarani SACI
> 39) RUC 80000984-3 Cotrisa
> 40) RUC 80023062-0 Lago Azul de Ypacarai S.A.
> 41) RUC 80000580-5 Villa Hayes S.R.L.
> 42) RUC 80088797-2 Choferes del Chaco
> 43) RUC 80013439-7 Panchito López
> 44) RUC 80023751-0 Coop. Puerto Elseño
> 45) RUC 80077347-0 Puerto Falcon SACI 

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