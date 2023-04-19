# Mapas de todos los eventos no registrados como viajes

Estos mapas contienen todos los datos contenido en el dataset donde tipoevento es diferente a 4 (Viaje Normal).

En este caso, según los datos contenidos en el dataset, todos los tipoevento que no son 4 (Viaje Normal) son 8 (Devolución).



## Mapas según serialtarjeta para tipoevento diferente a 4 (Viaje Normal)

serialtarjeta: Identificador de la tarjeta. Puede ser nominal o no, por lo que se puede llegar a la identidad del pasajero. Para nuestro análisis asumimos que es un pasajero.

![Mapas según serialtarjeta para tipoevento diferente a 4 (Viaje Normal)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/serialtarjeta.png)


## Mapas según idsam para tipoevento diferente a 4 (Viaje Normal)

idesam: Identificador del chip instalado en el equipo verificador. No necesariamente permanece con el mismo equipo verificador. Puede cambiar de bus, inclusive de línea o de EOT. Asumimos que identifica al bus.

![Mapas según idsam para tipoevento diferente a 4 (Viaje Normal)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/idsam.png)


## Mapas según tipotransporte para tipoevento diferente a 4 (Viaje Normal)

tipotransporte: Tipo de transporte donde - 0. Bus municipal interno - 1. Normal - 3. Diferencial

![Mapas según tipotransporte para tipoevento diferente a 4 (Viaje Normal)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/tipotransporte.png)


## Mapas según idrutaestacion para tipoevento diferente a 4 (Viaje Normal)

idrutaestacion: Identificador de ruta asociado a una EOT. [Ver tabla adicional](https://github.com/luchobenitez/monda-guasu/blob/main/base/rutaestacion.csv)

![Mapas según idrutaestacion para tipoevento diferente a 4 (Viaje Normal)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/idrutaestacion.png)


## Mapas según identidad para tipoevento diferente a 4 (Viaje Normal)

identidad: Se refiere al propietario del validador donde: - 1. VMT - 2. MAS - 3. JAHA

![Mapas según identidad para tipoevento diferente a 4 (Viaje Normal)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/identidad.png)


## Mapas según producto para tipoevento diferente a 4 (Viaje Normal)

producto: Tipo de producto donde: - CR. Crédito o saldo negativo de la tarjeta - ES. Uso Especial (Estudiante o discapacitado) - MO. Monedero o uso normal.

![Mapas según producto para tipoevento diferente a 4 (Viaje Normal)](https://raw.githubusercontent.com/pabloacastillo/billetaje-electronico-py-2022/main/notebooks/mapas-eventos-no-viajes/graphs/producto.png)



