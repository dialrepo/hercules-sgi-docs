# Hércules : Formulario extracción de convocatorias



El formulario relacionado con este subproceso de [Proceso 3 : Automatización de procesos de gestiones documentales parametrizables](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md") es el siguiente:

![](/attachments/613417041/613417043.png)

Como podemos ver, a la izquierda del formulario se sitúan opciones del proceso, que son los parámetros de entrada y a la derecha, las opciones generales del proceso relacionadas con la ejecución de éste. El proceso tiene dos tipos de extracción de convocatorias:

1. Búsqueda de convocatorias que contengan las palabras de búsqueda, por defecto, "investigación" e "i\+d" en un rango de fecha, si no se indica fecha de inicio y fin se utilizará la fecha del día actual.
2. Búsqueda por código BDNS, esta ejecución sólo requiere el código de 6 dígitos de una convocatoria y extrae toda la información dada por la página de la Base de Datos Nacional de Subvenciones, BDNS, información en texto y descarga de los archivos adjuntos de la misma.

Los parámetros de entrada relacionados con este proceso son:

* Palabras de búsqueda: por defecto, "investigación" e "i\+d". Si el usuario desea configurar palabras de búsqueda deberá introducirlas en este campo separadas por espacio. Por ejemplo: "transferencia investigación i\+d".
* Fecha inicio y fecha de fin: rango de fechas del que se desea realizar la búsqueda. Si no se especifica se utilizará la fecha del día actual.
* Código BDNS: este parámetro solo es necesario si se desea realizar la búsqueda de una convocatoria de la BDNS en concreto, este código está compuesto por 6 dígitos.
* Destinatarios: lista de emails. Las convocatorias europeas obtenidas se enviarán a esta lista de emails.

Los parámetros que tienen valores por defecto son opcionales. Si se desea realizar el primer tipo de ejecución, mencionado anteriormente, el campo "Código BDNS" deberá estar vacío.

  





