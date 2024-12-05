# Hércules : Impacto de extracción de concesiones



### Acciones qué realiza el proceso

Este proceso, [Extracción e identificación de concesiones](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/extraccion-e-identificacion-de-concesiones.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/extraccion-e-identificacion-de-concesiones.md"), es el encargado de recopilar el resultado de concesiones publicadas en la Base de Datos de Subvenciones, BDNS. Para ello, realiza dos acciones principales:

* Obtener las solicitudes que se han realizado para una convocatoria utilizando Hércules\-SGI. Solo se tendrán en cuenta las solicitudes cuyo estado sea:
* + Borrador.
	+ Desistida.
	+ Excluida.
	+ Concedida.
	+ Denegada.
* Obtener los documentos de concesión de las convocatorias relacionadas con esas solicitudes. Para ello, primero se comprueba si la convocatoria está resuelta, ya que solo en este caso la automatización encontrará el documento de concesión.

Si se ha encontrado el documento de concesión, se establecerán las relaciones entre las solicitudes obtenidas y los datos obtenidos a partir del documento, esto se realiza a través del número de referencia del proyecto. Una vez revisadas todas las concesiones, se enviará la información obtenida, incluyendo importe total, costes directos, costes indirectos concedidos y el desglose de presupuesto por anualidades, por correo electrónico a la unidad de gestión de la universidad. Un ejemplo de resultado sería el siguiente:

![Captura de pantalla de 2022-07-29 09-31-00.png](download/attachments/592674924/53116705573154910887)

### Impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el personal encargado de la consulta de concesiones en recabar la información y notificarla, y el tiempo que tarda la automatización creada en Hércules\-RPA.

Este proceso tiene tres partes diferenciadas:

1. Revisión de las solicitudes pendientes de concesión.
2. Revisión de convocatorias resueltas.
3. Búsqueda de concesiones y sus datos correspondientes.

El personal encargado de realizar esta tarea deberá consultar las siguientes páginas:

* Consultar por cada convocatoria pendiente en Hércules\-SGI de resolución si ha sido resuelta.
* Consultar por cada convocatoria sus solicitudes para obtener el número de referencia al proyecto y la información relacionada con el investigador.
* Consultar en el documento de concesión la referencia del proyecto y el identificador de los investigadores que han presentado solicitudes en esa convocatoria.

Una vez obtenida la información anterior, deberá modificar las solicitudes en Hércules\-SGI con la información obtenida del documento de resolución.

Con la automatización de Hércules\-RPA el personal encargado de esta tarea solo debería consultar el correo electrónico que le enviaría la automatización con los datos obtenidos y modificar las solicitudes en Hércules\-SGI. Por lo que se ahorraría la consulta de toda la información.

Como ejemplo para hacer el análisis de impacto, supongamos que tenemos 3 convocatorias pendientes en Hércules\-SGI con 5 solicitudes cada una, por lo que tenemos 15 solicitudes que consultar. La persona encargada de esto, deberá consultar en la BDNS por cada convocatoria el documento de resolución donde aparecerán las concesiones, si esta convocatoria ha sido resuelta, y buscar los identificadores de cada uno de los investigadores. Por lo que tiene que buscar en 3 documentos distintos, 1 referencia de proyecto y 5 identificadores de investigadores y obtener la información de tres tablas diferentes, ya que la información en estos documentos no está unificada en una sola tabla.

Como podemos ver gracias al ejemplo anterior el tiempo que consumiría el personal de gestión de investigación en consultar comparando con el tiempo que consume la automatización, que rondaría de 6 a 8 minutos en obtener toda la información y relacionarla, es mucho mayor.




