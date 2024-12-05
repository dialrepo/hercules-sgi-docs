# Hércules : Impacto proceso 1\. Segmentación y generación automática de boletines informativos



### Acciones qué realiza el proceso

Este proceso, [Proceso 1 : Segmentación y generación automática de boletines informativos](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-1-segmentacion-y-generacion-automatica-de-boletines-informativos/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-1-segmentacion-y-generacion-automatica-de-boletines-informativos/index.md"), es el encargado de generar un resumen con los datos que se incluyen en el Boletín de Transferencia realizados por el Vicerrectorado de Transferencia, Comunicación y Divulgación Científica. El envío de estos boletines a la comunidad universitaria se realiza cada 15 días, por lo que el proceso será programado para que se ejecute cada 15 días y obtenga la nueva información publicada o añadida a los subsistemas Hércules en ese rango de tiempo.

El proceso obtiene los siguientes elementos de las siguientes fuentes:



| Elemento | Fuente |
| --- | --- |
| Convocatorias | Hércules\-SGI |
| Proyectos | Hércules\-SGI |
| Contratos | Hércules\-SGI |
| Tesis | Hércules\-SGI |
| Oferta tecnológica | Hércules\-EDMA |
| Artículos científicos | Hércules\-EDMA |
| Propiedad intelectual | Hércules\-SGI |
| Propiedad industrial | Hércules\-SGI |
| Noticias | Notas de prensa UM ( [https://www.um.es/en/web/sala\-prensa/notas\-de\-prensa](https://www.um.es/en/web/sala-prensa/notas-de-prensa "https://www.um.es/en/web/sala-prensa/notas-de-prensa"))UCC ([https://www.um.es/web/ucc/](https://www.um.es/web/ucc/ "https://www.um.es/web/ucc/")) |

Para obtener los elementos almacenados en los subsistemas, Hércules realiza consultas por rango de fechas y obtiene, entre otras cosas, los siguientes elementos:

* Título.
* Fecha de creación o publicación.
* URL: enlace a la página donde se ha obtenido la información para completar la información enviada si fuera necesario.
* Autores, si los hubiera.
* Entidades convocantes, si las hubiera.
* Períodos de ejecución.

En el caso de las noticias, se obtiene la siguiente información:

* Título.
* Fecha de creación.
* Responsable de redacción.

Una vez obtenida toda la información se redactará un correo electrónico y se enviará a los destinatarios configurados, siendo posible configurar una lista de correo como destinatario final.

### Análisis del impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el personal encargado de la creación de un boletín informativo, en recabar la información y crear el boletín, y el tiempo que tarda la automatización creada en Hércules\-RPA.

Este proceso tiene dos partes diferenciadas:

1. Obtención de información.
2. Creación del boletín y envío del email.

Para realizar la obtención de información, el personal encargado de la redacción del boletín debería consultar una a una las siguientes páginas o secciones de los subsistemas Hércules:

* Sección de convocatorias de Hércules\-SGI donde debería de filtrar por rango de fechas y ejecutar la búsqueda.
* Sección de contratos de Hércules\-SGI donde debería de filtrar por rango de fechas y ejecutar la búsqueda.
* Sección de proyectos de Hércules\-SGI donde debería de filtrar por rango de fechas y ejecutar la búsqueda.
* Sección de tesis doctorales de Hércules\-SGI donde debería de filtrar por rango de fechas y ejecutar la búsqueda.
* Sección de artículos de Hércules\-EDMA donde debería de filtrar por rango de fechas y ejecutar la búsqueda.
* Sección de oferta tecnológica de Hércules\-EDMA donde debería de filtrar por rango de fechas y ejecutar la búsqueda.
* La página de Notas de Prensa de Salas de Prensa de la Universidad de Murcia,  [https://www.um.es/en/web/sala\-prensa/notas\-de\-prensa](https://www.um.es/en/web/sala-prensa/notas-de-prensa "https://www.um.es/en/web/sala-prensa/notas-de-prensa"), y la página de UCC , Unidad de Cultura Científica, [https://www.um.es/web/ucc/](https://www.um.es/web/ucc/ "https://www.um.es/web/ucc/"),  para la obtención de noticias, donde deberá de consultar uno a uno todos los enlaces que llevan a cada noticia en cuestión.

Esto hace un total de cuatro secciones de Hércules\-SGI, dos secciones de Hércules\-EDMA y dos páginas webs, de cada una de estas deberá consultar los elementos obtenidos y almacenar dicha información consultando las secciones y campos de cada elemento y/o página.

Si se plantea un ejemplo, donde por cada elemento del boletín se obtienen 20 resultados:

1. El personal deberá consultar 8 páginas diferentes realizando la búsqueda e incluyendo los filtros necesarios para obtener la información correcta.
2. Obtendrá 20 elementos por cada búsqueda, lo que hace un total de 160 elementos.
3. Por cada uno de estos 160 elementos, deberá consultar el título, fecha, entidades convocantes, autores, investigadores relacionados, etc., e ir redactando esta información, además de almacenar el enlace a cada uno de los elementos, por lo que de media, consultará 5 o 6 datos de cada uno de ellos. Esto da como resultado unos 800 campos consultados aproximadamente.

Una vez consultados los 800 campos, deberá redactar el correo y enviar la información.

El proceso de Hércules\-RPA realiza la consulta y el procesamiento de la información en dos minutos, mientras que el personal consumiría esos dos minutos accediendo a la página de noticias de sala de presa de la Universidad de Murcia y consultando la primera noticia, como podemos comprobar el tiempo que se ahorraría en esta tarea es bastante significativo.




