# Hércules : Impacto de extracción de Bases Reguladoras



### Acciones qué realiza el proceso

Este proceso, [Extracción de bases reguladoras](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/extraccion-de-bases-reguladoras.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/extraccion-de-bases-reguladoras.md"), es el encargado de la extracción de las bases reguladoras publicadas en el Boletín Oficial del Estado, BOE, y de su envío por correo electrónico a las entidades UGI y OTRI. Este proceso está pensado para que cada día, realice la extracción de bases reguladoras en el BOE del día anterior. Obtiene las bases reguladoras relacionadas con:

* Investigación o I\+D, enviadas a la UGI.
* Transferencia, enviadas a la OTRI.

Para realizar la extracción de la información, el proceso descargará el fichero XML del BOE correspondiente y recorrerá sus nodos para obtener, por cada base reguladora, la siguiente información:

* Título.
* Identificador de la base reguladora en el BOE.
* Sección en la que se ha publicado.
* Departamento al que pertenece.
* Enlace de descarga del PDF asociado a esa base reguladora.

Una vez obtenida la información, se clasificará para el envío a las entidades UGI y OTRI, y se redactará un correo electrónico como el siguiente:



|  |
| --- |

Además, este proceso está preparado para que si ocurre un error en la notificación de las bases reguladoras, en la próxima ejecución del proceso se recuperarán las bases reguladoras que no se han enviado y se enviarán con los nuevos resultados obtenidos.

### Impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el personal encargado de la consulta y envío de bases reguladoras, en recabar la información y notificarla, y el tiempo que tarda la automatización creada en Hércules\-RPA.

Este proceso tiene tres partes diferenciadas:

1. Obtención de información.
2. Clasificación de la información.
3. Creación y envío del email.

Para realizar la obtención de la información el personal encargado de esta tarea deberá acceder al buscador del BOE, [https://www.boe.es/buscar/boe.php](https://www.boe.es/buscar/boe.php "https://www.boe.es/buscar/boe.php"), en él deberá establecer el rango de fechas y deberá realizar tres búsquedas con los siguientes patrones:

1. Investigación.
2. I\+D.
3. Transferencia.

Por cada uno de los elementos obtenidos, supongamos que obtiene 6 elementos en total, deberá consultar 6 enlaces diferentes, es decir, un enlace por resultado obtenido, para obtener la información necesaria y, además, deberá descargarse el fichero PDF con el texto de la base reguladora. Por lo que el personal deberá realizar para este ejemplo:

* La página del buscador del BOE.
* Realizar tres búsquedas, una por cada patrón.
* Consultar los enlaces a los resultados de búsqueda, en este ejemplo, se han obtenido 6 elementos, por lo que consulta 6 páginas diferentes.
* Deberá descargarse 6 PDFs diferentes si es necesario.

Por lo que en total realiza un total de 12 acciones. Una vez obtenida la información notificará las bases reguladoras a la entidad que corresponde.

Si comparamos las acciones que debe realizar el personal y el tiempo que tarda en consultar dicha información cada día con el tiempo que tardaría en leer el correo electrónico que obtendría como resultado de la ejecución programada de la automatización de extracción de bases reguladoras, disminuye considerablemente, ya que en menos de un minuto tendría los elementos obtenidos y clasificados, y además, los recibiría en su correo electrónico, por lo que es más sencillo para el personal realizar el reenvío de la información a quien crea oportuno.

  





