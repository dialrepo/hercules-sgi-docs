# Hércules : Impacto de la generación del informe de acreditaciones



### Acciones qué realiza el proceso

Este proceso, [Informe enfocado a la solicitud de una acreditación de la ANECA](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-2-sexenios-y-acreditaciones/generacion-de-informe-de-autoevaluacion/informe-enfocado-a-la-solicitud-de-una-acreditacion-de-la-aneca/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-2-sexenios-y-acreditaciones/generacion-de-informe-de-autoevaluacion/informe-enfocado-a-la-solicitud-de-una-acreditacion-de-la-aneca/index.md"), es el encargado de la generación del informe que un investigador debe de entregar para realizar la solicitud de una acreditación a la ANECA, en concreto, se centra en las acreditaciones del programa ACADEMIA, es decir, titularidad y cátedra. El investigador debe presentar un informe con todos los logros que solicite la comisión evaluadora en los requisitos correspondientes a la acreditación que desee obtener, estos elementos deben ir ordenados según los criterios de la ANECA, teniendo en cuenta, por ejemplo, el cuartil al que pertenece el elemento en JCR, Journal Citation Reports, base de datos utilizada para determinar la importancia relativa de revistas dentro de sus categorías temáticas.

Para ello, el proceso obtiene la siguiente información:



| Información | Fuente |
| --- | --- |
| Artículos científicos publicados en revistas | Hércules\-EDMA |
| Libros | Hércules\-EDMA |
| Capítulos de libros | Hércules\-EDMA |
| Trabajos presentados en congresos | Hércules\-EDMA |
| Patentes | Hércules\-SGI |

Esta información se ordena dada las especificaciones de la comisión evaluadora, por ejemplo, por el cuartil al que pertenece la publicación o su número de autores, si esto es relevante para evaluar la solicitud. Una vez obtenidos todos los elementos, se realiza una valoración para obtener, según los criterios establecidos por la comisión evaluadora, un tipo de acreditación. Al investigador se le puede conceder una acreditación, por ejemplo, la cátedra, pero está puede ser de tipo A, B, C, etc., según los requisitos que cumple o las valoraciones que realicen los miembros de la comisión. Para terminar, el proceso genera un informe donde muestra la valoración que podría tener el investigador y los elementos que debe presentar para obtenerla.

### Análisis del impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el investigador en realizar el informe de presentación de la solicitud de una acreditación y el tiempo que tarda la automatización. Como se ha visto en el apartado anterior, este proceso se puede dividir en las siguientes partes:

1. Obtención de información.
2. Ordenar la información en base a los requisitos de la comisión evaluadora.
3. Crear el informe de solicitud.

Para la obtención de la información el investigador deberá de consultar los subsistemas Hércules\-EDMA y Hércules\-SGI.

* En Hércules\-EDMA, el investigador deberá acceder a sus datos y consultar los artículos, libros, capítulos de libros y los trabajos presentados en congresos. Por cada uno de ellos, deberá de obtener el cuartil al que pertenecen y si necesita el decil o el tercil calcularlo en base a la información del artículo y la revista en la que se publicó, además, también deberá consultar el número de autores, relevancia de autoría, entre otras cosas si fuera relevante para la valoración de la comisión.
* En Hércules\-SGI, el investigador deberá de consultar sus patentes y obtener la información que debe presentar de éstas consultando los campos y secciones correspondientes.

Por lo que, a modo resumen, el investigador debe consultar dos páginas webs, de las cuales, en una de ellas deberá consultar cuatro secciones y en otra una. Por cada elemento obtenido deberá consultar las propiedades relevantes en los criterios de valoración de la comisión y ordenar la lista producción científica en base a esto. Una vez realizado este orden, tendrá que rellenar la solicitud de acreditación con la información obtenida.

Si el investigador utilizara la automatización de Hércules\-RPA debería proporcionar:

* ORCID, email o identificador personaRef.
* Comisión evaluadora.
* Parámetros relacionados con la comisión o la acreditación si fuera necesario.

Una vez proporcionado esto, el proceso obtendría toda la información ordenada según los criterios configurados y le proporcionaría un informe con las siguientes partes:

* Información personal del investigador.
* Valoración estimada de su producción científica en base a los criterios configurados.
* Producción científica principal: este apartado está compuesto por los artículos de mayor relevancia siguiendo los criterios de la comisión evaluadora.
* Producción sustitutoria: este apartado incluye artículos para realizar sustituciones si el investigador lo ve oportuno.
* Libros.
* Capítulos de libros.
* Trabajos presentados en congresos, si fuera necesario incluirlos para la valoración.
* Patentes, si fuera necesario incluirlas para la valoración.

La automatización tardaría, si el volumen de datos es alto, de 2 a 4 minutos en realizar todo el proceso. El investigador consumiría este tiempo revisando, por ejemplo, la cantidad de elementos que tiene de cada tipo en la vista general proporcionada por el subsistema Hércules\-EDMA.

  





