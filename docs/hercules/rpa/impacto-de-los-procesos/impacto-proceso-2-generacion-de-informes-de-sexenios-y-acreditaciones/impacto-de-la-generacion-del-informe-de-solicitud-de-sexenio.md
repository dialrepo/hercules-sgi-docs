# Hércules : Impacto de la generación del informe de solicitud de sexenio



### Acciones qué realiza el proceso

Este proceso, [Informe enfocado a la solicitud de un sexenio](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-2-sexenios-y-acreditaciones/generacion-de-informe-de-autoevaluacion/informe-enfocado-a-la-solicitud-de-un-sexenio/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-2-sexenios-y-acreditaciones/generacion-de-informe-de-autoevaluacion/informe-enfocado-a-la-solicitud-de-un-sexenio/index.md"), es el encargado de la generación del informe que un investigador debe de entregar para realizar la solicitud de un sexenio a la ANECA. El investigador debe presentar un informe con todos los logros que solicite el comité evaluador en los requisitos correspondientes a su área temática. Estos elementos deben ir ordenados según los criterios de la ANECA, teniendo en cuenta, por ejemplo, el cuartil al que pertenece el elemento en JCR, Journal Citation Reports, base de datos utilizada para determinar la importancia relativa de revistas dentro de sus categorías temáticas.

Para ello, el proceso obtiene la siguiente información, consultando solo la información publicada en el rango de años indicado en el período, de presentación del sexenio, por el investigador:



| Artículos científicos publicados en revistas | Hércules\-EDMA |
| --- | --- |
| Libros | Hércules\-EDMA |
| Capítulos de libros | Hércules\-EDMA |
| Trabajos presentados en congresos | Hércules\-EDMA |
| Patentes | Hércules\-SGI |

Esta información se ordena dada las especificaciones del comité evaluador, por ejemplo, por el cuartil al que pertenece la publicación o su número de autores, si esto es relevante para evaluar la solicitud. Una vez obtenidos todos los elementos, se realiza una baremación para obtener, según los criterios establecidos por el comité evaluador, una puntuación orientativa de los requisitos mínimos obtenidos anteriormente. Al investigador se le puede conceder un sexenio si iguala, como mínimo, la puntuación mínima que se establece en los requisitos del comité. Con toda esta información, el proceso genera el informe para ayudar al investigador a la presentación de la solicitud del sexenio.

### Análisis del impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el investigador en realizar el informe de presentación de la solicitud de un sexenio y el tiempo que tarda la automatización. Como se ha visto en el apartado anterior, este proceso se puede dividir en las siguientes partes:

1. Obtención de información.
2. Ordenar la información en base a los requisitos del comité evaluador.
3. Crear el informe de solicitud.

Para la obtención de la información el investigador deberá de consultar los subsistemas Hércules\-EDMA y Hércules\-SGI, realizando un filtro con el período de años que abarca la solicitud del sexenio:

* En Hércules\-EDMA, el investigador deberá acceder a sus datos y consultar los artículos, libros, capítulos de libros y los trabajos presentados en congresos. Por cada uno de ellos, deberá de obtener el cuartil al que pertenecen y si necesita el decil o el tercil calcularlo en base a la información del artículo y la revista en la que se publicó, además, también deberá consultar el número de autores, relevancia de autoría, entre otras cosas si fuera relevante para la valoración de la comisión.
* En Hércules\-SGI, el investigador deberá de consultar sus patentes y obtener la información que debe presentar de éstas consultando los campos y secciones correspondientes.

Por lo que, a modo resumen, el investigador debe consultar dos páginas webs, de las cuales, en una de ellas deberá consultar cuatro secciones y en otra una. Por cada elemento obtenido deberá consultar las propiedades relevantes en los criterios de valoración del comité y ordenar la lista producción científica en base a esto. Una vez realizado este orden, tendrá que rellenar la solicitud de sexenio con la información obtenida. Destacar, que el investigador una vez realizada la solicitud deberá calcular la puntuación obtenida en base a su producción científica principal y los requisitos extras presentados, la automatización proporcionará esto como resultado del proceso, por lo que el investigador podrá tener una puntuación orientativa de su producción científica antes de rellenar la solicitud.

Si el investigador utilizara la automatización de Hércules\-RPA debería proporcionar:

* ORCID, email o identificador personaRef.
* Comité evaluador.
* Parámetros relacionados con el comité, si fuera necesario.
* Período: años que abarca la presentación del sexenio.

Una vez proporcionado esto, el proceso obtendría toda la información ordenada según los criterios configurados y le proporcionaría un informe con las siguientes partes:

* Información personal del investigador.
* Evaluación estimada de su producción científica en base a los criterios configurados, dando como resultado una puntuación orientativa que puede obtener.
* Producción científica principal: este apartado está compuesto por los artículos de mayor relevancia siguiendo los criterios de la comisión evaluadora.
* Producción sustitutoria: este apartado incluye artículos para realizar sustituciones si el investigador lo ve oportuno.
* Libros.
* Capítulos de libros.
* Trabajos presentados en congresos, si fuera necesario incluirlos para la valoración.
* Patentes, si fuera necesario incluirlas para la valoración.

La automatización tardaría, si el volumen de datos es alto, de 2 a 4 minutos en realizar todo el proceso. El investigador consumiría este tiempo revisando, por ejemplo, la cantidad de elementos que tiene de cada tipo en la vista general proporcionada por el subsistema Hércules\-EDMA.




