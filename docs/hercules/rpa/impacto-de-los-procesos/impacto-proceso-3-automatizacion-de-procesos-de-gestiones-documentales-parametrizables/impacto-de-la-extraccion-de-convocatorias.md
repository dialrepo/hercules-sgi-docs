# Hércules : Impacto de la extracción de convocatorias



### Acciones qué realiza el proceso

Este proceso, [Extracción de convocatorias](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/extraccion-de-convocatorias.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/extraccion-de-convocatorias.md"), es el encargado de extracción de convocatorias de las siguientes fuentes:

* Convocatorias publicadas en la Base de Datos Nacional de Subvenciones, BDNS, [https://www.pap.hacienda.gob.es/bdnstrans/GE/es/convocatorias](https://www.pap.hacienda.gob.es/bdnstrans/GE/es/convocatorias "https://www.pap.hacienda.gob.es/bdnstrans/GE/es/convocatorias").
* Convocatorias europeas publicadas en Comisión Europea (Funding \& tenders), [https://ec.europa.eu/info/funding\-tenders/](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-search;callCode=null;freeTextSearchKeyword=;matchWholeText=true;typeCodes=1,0;statusCodes=31094501,31094502,31094503;programmePeriod=null;programCcm2Id=null;programDivisionCode=null;focusAreaCode=null;destination=null;mission=null;geographicalZonesCode=null;programmeDivisionProspect=null;startDateLte=null;startDateGte=null;crossCuttingPriorityCode=null;cpvCode=null;performanceOfDelivery=null;sortQuery=sortStatus;orderBy=asc;onlyTenders=false;topicListKey=topicSearchTablePageState "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-search;callCode=null;freeTextSearchKeyword=;matchWholeText=true;typeCodes=1,0;statusCodes=31094501,31094502,31094503;programmePeriod=null;programCcm2Id=null;programDivisionCode=null;focusAreaCode=null;destination=null;mission=null;geographicalZonesCode=null;programmeDivisionProspect=null;startDateLte=null;startDateGte=null;crossCuttingPriorityCode=null;cpvCode=null;performanceOfDelivery=null;sortQuery=sortStatus;orderBy=asc;onlyTenders=false;topicListKey=topicSearchTablePageState")

Dependiendo de la fuente donde se obtenga la información, el proceso realiza las siguientes acciones:

* Para convocatorias obtenidas utilizando la BDNS, el proceso obtendrá la información de la convocatoria y la añadirá al subsistema Hércules\-SGI.
* Para convocatorias europeas, el proceso obtendrá la información de la convocatoria y enviará un correo con los elementos obtenidos. Un ejemplo de cuerpo del mensaje sería el siguiente:



| Ejemplo de notificación de obtención de una convocatoria europea |
| --- |
| ``` Convocatoria con nombre: AMIF-2022-AG-CALL-THB 	     URL: [https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-details/amif-2022-ag-call-thb "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-details/amif-2022-ag-call-thb")..  	     Fecha de publicación: 10/02/2022.  	     Fecha Fin: 19/05/2022 ``` |

Este proceso está preparado para realizar las acciones correspondientes en convocatorias obtenidas en ejecuciones anteriores y que no han podido ser procesadas por algún error.

### Impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el personal encargado de consulta de convocatorias publicadas, en recabar la información y notificar vía email de nuevas convocatorias o insertarlas en el subsistema Hércules\-SGI, y el tiempo que tarda la automatización creada en Hércules\-RPA.

Este proceso tiene dos partes diferenciadas:

1. Obtención de información.
2. Procesamiento de la información.

Para obtener la información, el personal encargado de esta tarea debería visitar las siguientes páginas webs:

* Para convocatorias obtenidas de la BDNS deberá acceder a la siguiente página web: [https://www.pap.hacienda.gob.es/bdnstrans/GE/es/convocatorias](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-search;callCode=null;freeTextSearchKeyword=;matchWholeText=true;typeCodes=1,0;statusCodes=31094501,31094502,31094503;programmePeriod=null;programCcm2Id=null;programDivisionCode=null;focusAreaCode=null;destination=null;mission=null;geographicalZonesCode=null;programmeDivisionProspect=null;startDateLte=null;startDateGte=null;crossCuttingPriorityCode=null;cpvCode=null;performanceOfDelivery=null;sortQuery=sortStatus;orderBy=asc;onlyTenders=false;topicListKey=topicSearchTablePageState "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-search;callCode=null;freeTextSearchKeyword=;matchWholeText=true;typeCodes=1,0;statusCodes=31094501,31094502,31094503;programmePeriod=null;programCcm2Id=null;programDivisionCode=null;focusAreaCode=null;destination=null;mission=null;geographicalZonesCode=null;programmeDivisionProspect=null;startDateLte=null;startDateGte=null;crossCuttingPriorityCode=null;cpvCode=null;performanceOfDelivery=null;sortQuery=sortStatus;orderBy=asc;onlyTenders=false;topicListKey=topicSearchTablePageState"). Una vez ahí, debe introducir el filtro de rango de fechas, introducir el texto con los patrones de búsqueda y seleccionar la región de impacto.
* Para convocatorias Europeas deberá acceder a la siguiente página web: [https://ec.europa.eu/info/funding\-tenders/](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-search;callCode=null;freeTextSearchKeyword=;matchWholeText=true;typeCodes=1,0;statusCodes=31094501,31094502,31094503;programmePeriod=null;programCcm2Id=null;programDivisionCode=null;focusAreaCode=null;destination=null;mission=null;geographicalZonesCode=null;programmeDivisionProspect=null;startDateLte=null;startDateGte=null;crossCuttingPriorityCode=null;cpvCode=null;performanceOfDelivery=null;sortQuery=sortStatus;orderBy=asc;onlyTenders=false;topicListKey=topicSearchTablePageState "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-search;callCode=null;freeTextSearchKeyword=;matchWholeText=true;typeCodes=1,0;statusCodes=31094501,31094502,31094503;programmePeriod=null;programCcm2Id=null;programDivisionCode=null;focusAreaCode=null;destination=null;mission=null;geographicalZonesCode=null;programmeDivisionProspect=null;startDateLte=null;startDateGte=null;crossCuttingPriorityCode=null;cpvCode=null;performanceOfDelivery=null;sortQuery=sortStatus;orderBy=asc;onlyTenders=false;topicListKey=topicSearchTablePageState"). Una vez ahí deberá introducir los filtros de búsqueda.

Para el procesamiento de la información:

* Para convocatorias de BDNS debe acceder a cada uno de los resultados e insertar, como mínimo, la información obligada por Hércules\-SGI para insertar la convocatoria en dicho sistema. Por cada convocatoria debe acceder a la página que proporciona la información, acceder a la sección de creación de nueva convocatoria en Hércules\-SGI, añadir los datos y guardar la convocatoria. Es decir, debe hacer como mínimo 4 acciones diferentes, sin contar los campos que debe rellenar en Hércules\-SGI, que como mínimo son 3 por cada convocatoria.
* Para convocatorias europeas debe acceder a cada uno de los resultados y filtrar las convocatorias que son de su interés, una vez hecho esto, redactará un correo con la información para enviarlo al personal de investigación interesado en esas convocatorias o insertará la información en Hércules\-SGI. Por lo que, como mínimo, debe consultar una página web por cada elemento encontrado y consultar de 3 a 4 campos de cada uno de ellos.

El personal encargado de esta tarea deberá realizar dos accesos a las dos fuentes y por cada resultado obtenido realizar de 2 a 4 accesos mínimos a páginas webs o secciones diferentes.

El tiempo en recuperar las convocatorias y realizar el procesamiento de sus datos junto con la acción final sería de 3 minutos. Este tiempo sería el que tardaría el personal en realizar una búsqueda y una lectura de la información de una convocatoria en la BDNS.

  


  





