# Hércules : Enfoques para extracción de descriptores temáticos de ROs



La tarea de extracción de descriptores temáticos propuesta consiste en, dada una taxonomía de áreas temáticas y un RO, identificar las categorías temáticas que son relevantes al RO. Para abordar esta tarea proponemos tres enfoques:

* Enfoque basado en API de repositorio: Los descriptores temáticos se obtienen directamente del API del repositorio donde está alojado el RO.
* Enfoque basado en scraping: Los descriptores temáticos se obtienen del HTML del repositorio correspondiente al RO.
* Enfoque basado en clasificadores supervisados: Los descriptores temáticos se obtienen mediante un clasificador supervisado previamente entrenado con ejemplos.

Describimos en los siguientes capítulos los tres enfoques propuestos, y la propuesta final para abordar la extracción de descriptores temáticas para todos los tipos de ROs.

## 2\.1 Extracción de descriptores temáticos a partir de APIs

A continuación, se describe someramente el enfoque que se utilizaría para la extracción de descriptores temáticos al reclamar una publicación que estuviera almacenada en este tipo de fuentes de datos.

Dado que en la sección 1\.5 del presente documento se ha concluido que la clasificación WoS\-IPRA es la más apropiada y sería la que se integraría en la ROH (Red de Ontologías de HERCULES), la fuente principal para la reclamación de ROs será la API de la Web of Science.

### 2\.1\.1 APIs de la Web of Science

Hemos realizado consultas a la Web of Science API Expanded y se pueden obtener metadatos sobre las publicaciones, entre los que se encuentran las áreas de conocimiento, pero no está claro a qué esquema pertenecen los resultados que devuelve:

\<category\_info\>

\<headings count\="1"\>

  \<heading\>Science \&amp;amp; Technology\</heading\>

\</headings\>

\<subheadings count\="2"\>

  \<subheading\>Physical Sciences\</subheading\>

  \<subheading\>Technology\</subheading\>

\</subheadings\>

\<subjects count\="6"\>

 \<subject ascatype\="traditional" code\="EA"\>Chemistry, Analytical\</subject\>

 \<subject ascatype\="traditional" code\="IQ"\>Engineering, Electrical \&amp;amp; Electronic\</subject\>

 \<subject ascatype\="traditional" code\="OA"\>Instruments \&amp;amp; Instrumentation\</subject\>

 \<subject ascatype\="extended"\>Chemistry\</subject\>

 \<subject ascatype\="extended"\>Engineering\</subject\>

 \<subject ascatype\="extended"\>Instruments \&amp;amp; Instrumentation\</subject\>

\</subjects\>

\</category\_info\>

  


Aunque no hemos encontrado confirmación en la documentación oficial de las APIs de WoS, parece que los “subject” con “ascatype\=traditional” se refieren al esquema WoS\-IPRA y los que tienen “ascatype\=extended” usan indistintamente los esquemas WoS\-ESI y WoS\-RA.

Tras realizar una búsqueda en la web y encontrar lo que parece ser una versión más reciente de WoS\-RA[\[1]](#_ftn1 "#_ftn1") en la que aparecen los valores contenidos en los “subject” con “ascatype\=traditional”, pero con 2 categorías más (254\), y otra clasificación en áreas de investigación parecidas a las de IPRA[\[2]](#_ftn2 "#_ftn2"), parece que los valores de los elementos “subheading” se corresponden con las 5 “research areas” de la columna derecha de la siguiente tabla:



| **IPRA** | **Research Areas (Categories / Classification)** |
| --- | --- |
| Arts \& Humanities (28\) | Arts \& Humanities (14 sub) |
| Clinical, Pre\-Clinical \& Health (47\) | Life Sciences \& Biomedicine (76 sub) |
| Engineering \& Technology (51\) | Physical Sciences (17 sub) |
| Life Sciences (53\) | Social Sciences (25 sub) |
| Physical Sciences (38\) | Technology (21 sub) |
| Social Sciences (49\) |  |

En cualquier caso, para evitar tener que realizar una alineación de las diferentes clasificaciones y dado que se ha concluido en la sección 1\.5 del presente documento que la clasificación WoS\-IPRA es la más adecuada, se utilizaría el contenido de los elementos “subject” con “ascatype\=traditional” como descriptores temáticos del RO, pudiendo así representar como URIs del grafo de conocimiento de HERCULES basado en la ROH.

### 2\.1\.2 Otras fuentes de datos vía API

Si se reclama un RO almacenado en otra fuente de datos, se utilizarán los metadatos que ofrezca dicha fuente de datos para RO en la fuente de datos principal de WoS y se utilizarían los descriptores temáticos extraídos de ella.

De esta manera, se utilizará un único espacio de salida estandarizado de áreas de conocimiento y se podrían representar sus descriptores temáticos como una URI del grafo de conocimiento de HERCULES basado en la ROH.

Si el RO no se encuentra en la WoS, se aplicará la propuesta descrita en el apartado 2\.4 del presente documento. Se descarta reutilizar los metadatos relativos a descriptores temáticos ofrecidos por otra fuente de datos diferente a WoS para no incurrir en el sobrecoste innecesario de realizar una alineación de cada descriptor de dicha fuente (texto libre o cualquier otra clasificación) con un término de la clasificación WoS\-IPRA.

## 2\.2 Extracción de descriptores temáticos vía web scraping

Dos de las fuentes identificadas para protocolos, [Protocol Exchange](https://protocolexchange.researchsquare.com/ "https://protocolexchange.researchsquare.com/") y [bio\-protocol](https://bio-protocol.org/default.aspx "https://bio-protocol.org/default.aspx"), carecen de un API del que recuperar la información del RO reclamado por el usuario. De partida, esto obliga a realizar un proceso de scraping para obtener la información del RO en estas fuentes, lo que se aprovechará para obtener los descriptores temáticos de las dos fuentes indicadas, siempre que mantengan las condiciones y permisos de reutilización actuales. En Protocol Exchange las condiciones dependen de cada protocolo, mientras que todo [el contenido de bio\-protocols es Open Access](https://bio-protocol.org/Copyright_Permissions.aspx "https://bio-protocol.org/Copyright_Permissions.aspx").

En el desarrollo se implementará un API que permitirá definir y mantener el scraping de estos (y potencialmente otros) sitios web, asociando los elementos HTML con los metadatos a recuperar del RO, por ejemplo: abstract, background, keywords, procedure, categories, etc.

En particular, las categorías recuperadas estarían alineadas con la taxonomía propuesta para los descriptores temáticos, bien porque ya tenían una correspondencia (por ejemplo, “[Analytical chemistry](https://protocolexchange.researchsquare.com/browse?subjectArea=Analytical%20chemistry "https://protocolexchange.researchsquare.com/browse?subjectArea=Analytical%20chemistry")” de Protocol Exchange se alinearía con “CHEMISTRY, ANALYTICAL” de IPRA) o bien porque se ha extendido la taxonomía para alojar categorías propias de los protocolos (por ejemplo, “[Systems Biology](https://bio-protocol.org/Category.aspx?c=1&fl1=13 "https://bio-protocol.org/Category.aspx?c=1&fl1=13")” de bio\-protocols, que no se alinearía con ninguna categoría de IPRA).

## 2\.3 Extracción de descriptores temáticos mediante un clasificador supervisado

La identificación de descriptores temáticos relevantes a un RO puede abordarse mediante un enfoque basado en clasificadores supervisados. Los clasificadores serían de tipo multi\-etiqueta y se entrenarían a partir de datasets de entrenamiento que incluirían ejemplos de ROs anotados con los correspondientes descriptores temáticos. La representación vectorial de cada ROs requerida por el algoritmo de aprendizaje se hará de acuerdo a un determinado paradigma de representación textual. El clasificador entrenado de esa forma sería capaz de identificar los descriptores temáticos de ROs no presentes en el entrenamiento, siempre y cuando su estructura textual no variase significativamente respecto a la de los ejemplos utilizados en el entrenamiento.

Uno de los aspectos clave a la hora de valorar la viabilidad de un enfoque supervisado es la disponibilidad de datasets de entrenamiento. En este caso necesitaríamos conjuntos de ROs con sus correspondientes descriptores temáticos, y disponer de un número suficiente de ejemplos de ROs por cada descriptor temático.

Según el análisis presentado el capítulo 1, podríamos generar datasets para los siguientes tipos de ROs y taxonomías:

* Posibles datasets para **Papers** (uno de los siguientes):
	+ Scopus\-ASJC.
	+ DOAJ\-LCC.
	+ WoS\-RA.
	+ WoS\-IPRA.
* Posibles datasets para **Protocolos** (uno de los siguientes):
	+ Protocol\-exchange.
	+ Bio\-protocol.
* **Proyectos código**:
	+ SourceForge

Para generar clasificadores que siguieran una única taxonomía tendríamos que, de alguna manera, armonizar las taxonomías asociadas a los diferentes datasets en una única taxonomía unificada. Por otro lado, también habría que analizar – mediante experimentación – qué estrategia proporciona los mejores resultados; entrenar un clasificador por cada tipo de RO, o entrenar un clasificador único a partir de la unión de los datasets de los diferentes tipos de RO. Desde un punto de vista de ingeniería del software sería más apropiado un único clasificador, pero debido a las diferencias entre las características de los textos de los distintos tipos de RO, esta estrategia podría no ser la que mejores resultados diera.

Otro aspecto que será determinado mediante distintos experimentos será la granularidad de categorías que los clasificadores supervisados puedan ofrecer. Cuantas más categorías se establecen en el entrenamiento más difícil resulta el proceso de aprendizaje, por lo que habrá que buscar un compromiso entre este número y la tasa de acierto deseable.

En principio, el enfoque basado en clasificadores supervisados se utilizará de manera complementaria a los enfoques basados en API y scraping. Computacionalmente es el más costoso y también el más limitado en cuanto a tasa de acierto.

## 2\.4 Propuesta

La estrategia que se propone para abordar la tarea de extracción será una estrategia híbrida que combinará los distintos tipos de enfoque descritos en los puntos anteriores. Se dará prioridad al enfoque basado en API, por ser el más robusto y el que ofrece los resultados más precisos. El enfoque basado en scraping también ofrece resultados precisos, pero resulta sensible a cambios en la maquetación HTML del repositorio de donde se recuperan los descriptores. Por esa razón, será el segundo enfoque prioritario. En tercer lugar, se hará uso del enfoque basado en clasificadores automáticos.

Las distintas combinaciones de los enfoques vendrán determinadas por el tipo de RO a tratar, ya que la viabilidad, o necesidad, de cada uno de ellos viene condicionada por el tipo de RO. Mostramos, a continuación, un resumen de la estrategia propuesta para extraer descriptores temáticos de todos los tipos de ROs:

* **Papers**: Se tomarán los descriptores temáticos (IPRA) de WoS en caso de que el paper esté alojado en WoS. En caso contrario, se optará por procesar el paper con el clasificador supervisado.
* **Protocolos**: Se tomarán los descriptores temáticos de los repositorios bio\-protocol o protocol\-exchange mediante el enfoque basado en scraping, en caso de que el protocolo esté disponible en uno de estos repositorios. En caso contrario, se hará uso del clasificador supervisado.
* **Referencias**. Se tomarán los descriptores temáticos del RO referenciado.
* **Anotaciones**. Se tomarán los descriptores temáticos del RO anotado.
* **Proyectos de código**: Se tomarán los descriptores temáticos del clasificador supervisado.

  


[\[1]](#_ftnref1 "#_ftnref1") [https://images.webofknowledge.com/WOKRS56B5/help/WOS/hp\_subject\_category\_terms\_tasca.html](https://images.webofknowledge.com/WOKRS56B5/help/WOS/hp_subject_category_terms_tasca.html "https://images.webofknowledge.com/WOKRS56B5/help/WOS/hp_subject_category_terms_tasca.html")

[\[2]](#_ftnref2 "#_ftnref2") [https://images.webofknowledge.com/images/help/WOS/hp\_research\_areas\_easca.html](https://images.webofknowledge.com/images/help/WOS/hp_research_areas_easca.html "https://images.webofknowledge.com/images/help/WOS/hp_research_areas_easca.html")




