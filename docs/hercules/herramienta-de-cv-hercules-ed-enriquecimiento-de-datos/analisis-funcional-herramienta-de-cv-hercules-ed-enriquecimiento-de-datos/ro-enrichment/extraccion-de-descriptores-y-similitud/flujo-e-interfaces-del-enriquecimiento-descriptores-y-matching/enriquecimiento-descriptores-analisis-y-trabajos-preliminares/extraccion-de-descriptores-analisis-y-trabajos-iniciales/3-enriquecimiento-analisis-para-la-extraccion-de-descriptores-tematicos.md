# Hércules : 3\. Enriquecimiento. Análisis para la extracción de descriptores temáticos



El proceso de reclamación (*claim*) de un RO debe pasar por un proceso de enriquecimiento que le incorpore un conjunto de descriptores. Estos descriptores serán, en primer lugar, específicos y se tratará de palabras o conjuntos de palabras reconocidos en el texto y alineados, si es posible, con entidades de ontologías existentes.

En segundo lugar, el enriquecimiento podría recuperar o asignar descriptores temáticos al RO, que no tendrían por qué encontrarse en el contenido textual del RO. Consideramos que estos descriptores tendrían un interés menor que los específicos en cuanto a definir el contenido del RO, por su mayor granularidad, pero que, sin embargo, aportarían valor en el conjunto del proyecto Hércules, particularmente en los Métodos de Análisis (MA)

Es decir, que un RO estuviera categorizado en una o más áreas de conocimiento, que podrían haber sido recuperadas desde la fuente original o asignadas mediante un clasificador supervisado, no aportaría demasiado al propio investigador en la gestión de su trayectoria investigadora; pero sí lo haría en un conjunto amplio de ROs pertenecientes al Sistema Universitario Español como el que aspira a gestionarse mediante el proyecto MA.

Esta clasificación de los ROs habilitaría o facilitaría, al menos, las explotaciones de datos previstas en MA, particularmente las que se refiriesen a las comparaciones entre entidades y al análisis de la producción científica nacional o regional; y también sería una parte relevante del proceso de recomendación en el asistente de configuración de equipos de proyecto.

Además, la clasificación temática obtenida podría alinearse con categorizaciones exigidas en procedimientos administrativos de la Universidad Española, como por ejemplo la Nomenclatura de Ciencia y Tecnología de la UNESCO, ofreciendo a los investigadores un asistente que les podría ahorrar parte del trabajo administrativo. 

Por lo tanto, una de las funcionalidades del extractor de tópicos será la identificación de descriptores temáticos relevantes a un RO determinado. Entendemos como descriptor un término que denote un área temática concreta.

De cara a la implementación de la extracción de descriptores temáticos relevantes en un RO determinado consideramos que hay dos cuestiones claves que merecen un análisis pormenorizado:

1. Selección de la taxonomía base de referencia que guiará la extracción de descriptores temáticos.
2. Método para la extracción de los descriptores temáticos.

Por un lado, de cara a garantizar un acceso coherente a los diferentes tipos de ROs es conveniente que la extracción de descriptores temáticos se haga de acuerdo con una taxonomía de descriptores unificada. Además, esta taxonomía común debe contener descriptores que sean fácilmente interpretables por el usuario y que le faciliten la tarea de acceso y navegación de los ROs. Por otro lado, la implementación del proceso de extracción de descriptores temáticos para todos los tipos de RO no resulta una tarea trivial, ya que puede requerir la combinación del uso de APIs de repositorios de ROs y clasificadores supervisados entrenados ad\-hoc.

En el capítulo 3\.1 presentamos un análisis de las diferentes taxonomías de áreas temáticas que pueden ser apropiadas para su uso en el proceso de extracción de descriptores temáticos. En el capítulo 3\.2 ponemos el foco en el problema de la implementación del proceso de extracción analizando distintas estrategias.

## 3\.1 Análisis de taxonomías

En esta sección se presentan y describen brevemente las iniciativas más relevantes identificadas durante el proceso de análisis de taxonomías existentes para la representación de áreas de conocimiento en el dominio de la investigación, haciendo mención igualmente a las posibilidades de obtener un dataset de entrenamiento ya etiquetado con la taxonomía en cuestión.

Además, se hará una breve comparación de las diferentes taxonomías analizadas de manera que se pueda determinar cómo se podrían reutilizar en la tarea de extracción de descriptores temáticos de los diferentes Research Objects (ROs) para estandarizar el espacio de salida de estos y poder integrarlos posteriormente dentro de la ontología unificada del proyecto HERCULES.

### 3\.1\.1 Publicaciones o artículos científicos

A continuación, se describen las taxonomías encontradas para Research Objects (ROs) de tipo publicación o artículo científico.

#### ASJC de Scopus

La base de datos bibliográfica Scopus utiliza ASJC (All Science Journal Classification) como taxonomía para clasificar sus registros.

Dispone de una taxonomía basada en 5 áreas temáticas (Physical Sciences, Health Sciences, Social Sciences, Life Sciences y Multidisciplinary) con una clasificación de primer nivel de 27 entradas**1** y un segundo nivel de 307 entradas**2**.

##### Dataset de entrenamiento

Ya disponemos de un dataset basado en esta taxonomía porque es el que se ha utilizadó en el *challenge* en la tarea de extracción de descriptores temáticos. Se podría utilizar ya para realizar una categorización automática de ROs, siempre que se tuviera acceso a su contenido.

#### LCC de DOAJ

La iniciativa Directory of Open Access Journals (DOAJ) utiliza tanto palabras clave de texto libre como términos de clasificaciones formales para representar las áreas de conocimiento sobre cualquier registro de su base de datos.

La clasificación LCC tiene 21 categorías de primer nivel**3** y 228 de segundo nivel**4**. Cada categoría LLC tiene categorías muy generales hasta el nivel 2\. Por ejemplo, a segundo nivel tenemos 1 clase referente a Mathematics (QA Mathematics), pero en Scopus\-ASJC hay 5: Computational Theory and Mathematics, Applied Mathematics, Computational Mathematics, Discrete Mathematics and Combinatorics, Mathematical Physics.

La fuente de datos de DOAJ devuelve etiquetas \<dc:subject\> (del vocabulario Dublin Core) cuyo contenido tiene como prefijo el esquema formal utilizado para clasificar la publicación en cuestión, excepto en el caso de la Clasificación de la Biblioteca del Congreso o LCC, en la que se indica dicha clasificación mediante un atributo adicional en la etiqueta:

\<dc:subject\>SOME\_NONLCC\_FORMAL\_CLASSIFICATION:term\</dc:subject\>

\<dc:subject xsi:type\="dcterms:LCC"\>Term\</dc:subject\>

##### Dataset de entrenamiento

DOAJ permite descargar un dataset de registros con metadatos sobre las publicaciones que tiene en su base de datos, pero no el texto completo de la publicación. Para descargar el texto de cada artículo habría que implementar un crawler o herramienta de web scraping.

#### Clasificación de la plataforma de datos de la BNE

Las clasificaciones temáticas de la BNE (Biblioteca Nacional Española) son genéricas y planas, ya que por ejemplo hay:

* 676 categorías en “materia\_simple” y 30\.480 de ellas no tienen una categoría madre,
* 040 categorías en “subencabezado general” y 4\.023 categorías están sin categoría madre,
* 368 categorías en “subencabezamientos” con 353 categorías sin categoría madre.

##### Dataset de entrenamiento

No disponible, aunque se puede descargar un dataset de registros con metadatos sobre las publicaciones que tiene en su base de datos, pero no el texto completo de la publicación. Para descargar el texto de cada artículo habría que implementar un crawler o herramienta de web scrapping.

#### Nomenclatura de Ciencia y Tecnología de la UNESCO

Existen dos clasificaciones: la Nomenclatura de Ciencia y Tecnología de la UNESCO**5** y el Tesauro de la UNESCO**6**, ambas con 3 niveles.

La primera clasificación es la que se suele utilizar en la universidad española y contiene 2\.505 categorías (24 de ellas a primer nivel y 248 a segundo):

1. CAMPOS (24\). Se refieren a las áreas más generales y están identificados por los 2 primeros dígitos del código. Cada campo comprende varias disciplinas.
2. DISCIPLINAS (248\). Suponen una descripción general de grupos de especialidades en Ciencia y Tecnología. Se identifican con los 4 primeros dígitos del código (coincidiendo los dos primeros con los del campo al que pertenecen).
3. SUBDISCIPLINAS (2505\). Son las entradas más específicas de la nomenclatura y representan las actividades que se realizan dentro de una disciplina. Están codificadas con 6 dígitos (coincidiendo los cuatro primeros con la disciplina a la que pertenecen).

Parece ser que hay muchas categorías que están obsoletas, ya que la comunidad científica suele tener dificultad para encuadrar sus áreas de investigación actuales en las disciplinas de segundo nivel y las subdisciplinas de tercer nivel.

##### Dataset de entrenamiento

Tal vez podríamos conseguir un dataset anotado de algún repositorio de la universidad española, pero sería difícil que llegase con una cantidad suficiente de ejemplos para todas las categorías de nivel 3\.

#### Clasificaciones de la Web of Science

Web of Science (WoS) es una plataforma on\-line de Clarivate Analytics que contiene bases de datos de información bibliográfica**7** y recursos de análisis de la información que permiten evaluar y analizar el rendimiento de la investigación. Su finalidad no es proporcionar el texto completo de los documentos, sino proporcionar herramientas de análisis que permitan valorar su calidad científica.

Dispone de 16 esquemas de clasificación**8** en áreas de investigación, de los cuales 12 se basan en la asignación de datos a sistemas externos de clasificación. Los esquemas externos se desarrollan en asociación con los organismos de evaluación de la investigación en una determinada región y suelen basarse en clasificaciones de revistas o en el mapeo de categorías ya existentes en WoS. Además, existen otros 4 esquemas de clasificación exclusivos de WoS:

* Citation Topics**9** (WoS\-CT). Posee 3 niveles (macro, meso y micro) con diferente número de categorías: 10 (macro), 326 (meso) y 2\.444 (micro). Con WoS\-CT los documentos se etiquetan manualmente en categorías macro y meso según su contenido. Los micro se asignan algorítmicamente con el descriptor más significativo para el documento obtenido con un algoritmo (desarrollado por CWTS Leiden**10**) que se basa en procesar las citas de los documentos y no su contenido.
* WoS Research Areas**11** (WoS\-RA). Contiene un primer nivel de 252 áreas temáticas para ciencias, ciencias sociales y artes y humanidades. Áreas muy amplias como física y ciencia de los materiales están representadas por subáreas más pequeñas de segundo nivel, pero no hemos encontrado cuántas categorías hay en dicho nivel. WoS\-RA se utiliza en Science Citation Index Expanded Journals, Social Sciences Citation Index Journals y Arts \& Humanities Citation Index Journals.
* Essential Science Indicators**12** (WoS\-ESI). Contiene un primer nivel de 22 áreas temáticas. Se utiliza para clasificar 11\.728 revistas de Web of Science Core Collection (solamente Science Citation Index Expanded y Social Sciences Citation Index). Con WoS\-ESI cada revista solamente se puede asignar a una de las 22 áreas de investigación. Revistas como Science y Nature se clasifican excepcionalmente como multidisciplinares, ya que publican investigaciones en muchos campos diferentes. Los artículos publicados en estas revistas multidisciplinares se asignan a un área temática u otra en función de la representación de las revistas citadas.
* Institutional Profiles Research Areas**13** (WoS\-IPRA). Contiene un primer nivel de 6 áreas temáticas y un segundo nivel con 267 subáreas. WoS\-IPRA es utilizada por Clarivate Analytics para elaborar perfiles institucionales de las principales universidades e instituciones de investigación del mundo.

##### Dataset de entrenamiento

Hemos comprobado que en el contexto del proyecto HERCULES tenemos acceso a alguna de las APIs de Web of Science**14**. Haciendo llamadas a la API se podría generar un dataset de registros con metadatos sobre las publicaciones, pero no el texto completo de la publicación. Sin embargo, se podría utilizar el abstract para la extracción de descriptores temáticos.

### 3\.1\.2 Taxonomías para protocolos

Dos de los repositorios de protocolos experimentales más utilizados por la comunidad científica y que son mencionados en el pliego de HERCULES son [Bio\-protocol.org](http://Bio-protocol.org "http://Bio-protocol.org") y Protocol\-exchange.

[Bio\-protocol.org](http://Bio-protocol.org "http://Bio-protocol.org")**15** usa descriptores específicos de texto libre y dispone de una categorización de hasta 3 niveles.

Por su parte, Protocol\-exchange**16** sí dispone de una categorización de un único nivel con unos 107 términos**17**. Cada protocolo está asignado al menos a uno de sus “subject terms”. Si algún autor no encuentra una categoría adecuada a su protocolo en el formulario de registro correspondiente, puede ponerse en contacto con [protocol.exchange@nature.com](mailto:protocol.exchange@nature.com "mailto:protocol.exchange@nature.com") para estudiar la posibilidad de ampliar la lista existente.

Existen otras iniciativas como [Protocols.io](http://Protocols.io "http://Protocols.io")**18** que ofrece una API**19** para consultar su repositorio de protocolos, pero aparentemente no dispone de ninguna clasificación para los mismos ni almacena ningún metadato sobre áreas de conocimiento.

#### Dataset de entrenamiento

Se podría implementar un crawler o herramienta de web scraping para generar un dataset a partir de la web de Protocol\-exchange (con algo más de variedad temática) o desde la web de bio\-protocols (bio\-ciencias).

### 3\.1\.3 Taxonomías para proyectos de código

Dos de los repositorios de código más utilizados por la comunidad científica y que son mencionados en el pliego de HERCULES son GitHub**20** y Bitbucket**21**.

GitHub solamente usa descriptores específicos de texto libre que denomina “topics”**22** para clasificar y realizar búsquedas de repositorios de código. Este metadato y otros pueden ser recuperados a través de su API**23**.

Bitbucket parece que no utiliza ninguna clasificación. En la descripción de su API**24** tampoco aparece ningún metadato sobre un repositorio que se pueda interpretar como elemento de clasificación.

Sin embargo, en SourceForge**25** sí parece que se utiliza una clasificación de varios niveles para el catálogo de aplicaciones que ofrece, dado que en su directorio permite realizar búsquedas por categorías**26**. No hemos encontrado documentación sobre el número de niveles ni sobre el número de categorías en cada nivel.

#### Dataset de entrenamiento

Se podría implementar un crawler o herramienta de web scraping para generar un dataset basado en el catálogo de SourceForge.

### 3\.1\.4 Comparación de taxonomías

En la siguiente tabla se comparan las diferentes taxonomías analizadas teniendo en cuenta sus características principales en cuanto a la calidad de sus términos y la posibilidad de obtener un dataset de entrenamiento, el número de niveles que posee, el número de categorías por cada nivel, fechas asociadas (tiempo de vida) y uso que se está haciendo de las mismas. 



| **Taxonomía** | **Características** | **\# Niveles** | **\# Categorías** | **Fechas** | **Uso en apps** |
| --- | --- | --- | --- | --- | --- |
| ASJC \- Scopus | ·      Clasificación significativa de categorías.·      Dataset disponible para publicaciones y protocolos. | 2 | Nivel 1: 27Nivel 2: 307 | 2020 | Scopus y otras aplicaciones de Elsevier |
| LCC \- DOAJ | ·      Categorías muy generales hasta el nivel 2\.·      Dataset de publicaciones a elaborar mediante web scrapping. | 5 | Nivel 1: 21Nivel 2: 228 | 2021 | DOAJ |
| Clasificación de la plataforma de datos de la BNE | ·      Categorías muy genéricas y planas.·      Dataset de publicaciones a elaborar y quizá de baja calidad. | ¿3? | Difícil de saber en concreto. | ¿? | [datos.bne.es](http://datos.bne.es "http://datos.bne.es") |
| Nomenclatura de Ciencia y Tecnología de la UNESCO | ·      Categorías obsoletas.·      Tradición en la universidad española.·      Dataset de publicaciones anotado quizá de algún repositorio de la universidad española. | 3 | Nivel 1: 24Nivel 2: 248 | 1973\-1988\-2021 | CVN\-FECYT |
| WoS\-CT | ·      Categorización completa y actualizada.·      Dataset de publicaciones con abstract y metadatos de categorías si se solicita acceso a InCites API. | 3 | Nivel 1: 10Nivel 2: 326 | 2019\-2021 | WoS y otras de Clarivate Analytics |
| WoS\-RA | ·      Categorización completa y actualizada de un nivel.·      Dataset de publicaciones con abstract y metadatos de categorías. | 1 | Nivel 1: 252 | ?\-2021 | WoS y otras de Clarivate Analytics |
| WoS\-ESI | ·      Categorización actualizada, pero con pocos términos.·      Dataset de publicaciones con abstract y metadatos de categorías. | 1 | Nivel 1: 22 | 2010\-2021 | WoS y otras de Clarivate Analytics |
| WoS\-IPRA | ·      Categorización completa y actualizada.·      Dataset de publicaciones con abstract y metadatos de categorías. | 2 | Nivel 1: 6Nivel 2: 267 | 2009\-2021 | WoS y otras de Clarivate Analytics |
| Clasificación Protocol\-exchange | ·      Categorización abierta de un nivel, muy centrada en ciertos dominios científicos.·      Dataset de protocolos a elaborar mediante web scraping. | 1 | Nivel 1: 107 | 2019\-2021 | Protocol Exchange (repositorio abierto de Nature) |
| Clasificación SourceForge | ·      Categorización muy extensa de la que se desconoce su estructura.·      Dataset de protocolos a elaborar mediante web scraping. | ? | ? | 1999\-2021 | SourceForge |

### 3\.1\.5 Conclusiones sobre la comparación de taxonomías

De todas las taxonomías analizadas y comparadas, las más apropiadas serían las que tienen una buena cobertura, es decir, un número significativo no muy elevado de categorías en al menos dos niveles, para todas las áreas de investigación y para todos los tipos de ROs descritos en el proyecto HERCULES.

Tal y como se plantea en el proyecto, lo habitual es que los distintos tipos de RO estén relacionados entre sí formando un RO compuesto, por lo que también sería apropiado que se utilizara una misma taxonomía para todos ellos.

Por número no muy elevado entendemos aquél que ronde los 200\-300 términos, de manera que sea abordable su utilización con un clasificador supervisado, uno de los enfoques que se plantean en el proceso de extracción de descriptores temáticos de ROs.

Y por significativo entendemos aquél que cubra con cierta concreción un número suficiente de categorías de segundo nivel para cada una de las áreas de investigación de primer nivel.

Dicho lo anterior, las candidatas más apropiadas serían la ASJC de Scopus, la LCC de DOAJ, la Nomenclatura de Ciencia y Tecnología de la UNESCO y la clasificación IPRA de WoS.

La ASJC de Scopus tiene la ventaja de que ha sido utilizada en el Challenge del proyecto HERCULES y ya disponemos, por tanto, de un dataset anotado para su utilización. Sin embargo, se generaron dudas respecto a su cobertura para todas las áreas de investigación, dando lugar al análisis que se presenta en este documento.

La Nomenclatura de Ciencia y Tecnología de la UNESCO parece que genera problemas respecto a la actualidad de sus términos, dado que la comunidad científica así lo ha expresado de manera informal en diferentes foros.

Por último, si además tenemos en cuenta el volumen de ROs existentes en las fuentes de datos y la cantidad de bases de datos de diferentes dominios científicos, la fuente de datos de WoS es mayor que el de DOAJ.

Todo ello permite concluir que la clasificación IPRA de WoS podría ser la opción más interesante para estandarizar el espacio de salida de descriptores temáticos de las áreas de conocimiento de los ROs y sería la que se integraría en la ROH (Red de Ontologías de HERCULES).

## 3\.2 Enfoques para extracción de descriptores temáticos de ROs

La tarea de extracción de descriptores temáticos propuesta consiste en, dada una taxonomía de áreas temáticas y un RO, identificar las categorías temáticas que son relevantes al RO. Para abordar esta tarea proponemos tres enfoques:

* Enfoque basado en API de repositorio: Los descriptores temáticos se obtienen directamente del API del repositorio donde está alojado el RO.
* Enfoque basado en scraping: Los descriptores temáticos se obtienen del HTML del repositorio correspondiente al RO.
* Enfoque basado en clasificadores supervisados: Los descriptores temáticos se obtienen mediante un clasificador supervisado previamente entrenado con ejemplos.

Describimos en los siguientes capítulos los tres enfoques propuestos, y la propuesta final para abordar la extracción de descriptores temáticas para todos los tipos de ROs.

### 3\.2\.1 Extracción de descriptores temáticos a partir de APIs

A continuación, se describe someramente el enfoque que se utilizaría para la extracción de descriptores temáticos al reclamar una publicación que estuviera almacenada en este tipo de fuentes de datos.

Dado que en la sección 1\.5 del presente documento se ha concluido que la clasificación WoS\-IPRA es la más apropiada y sería la que se integraría en la ROH (Red de Ontologías de HERCULES), la fuente principal para la reclamación de ROs será la API de la Web of Science.

#### APIs de la Web of Science

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

Tras realizar una búsqueda en la web y encontrar lo que parece ser una versión más reciente de WoS\-RA**27** en la que aparecen los valores contenidos en los “subject” con “ascatype\=traditional”, pero con 2 categorías más (254\), y otra clasificación en áreas de investigación parecidas a las de IPRA**28**, parece que los valores de los elementos “subheading” se corresponden con las 5 “research areas” de la columna derecha de la siguiente tabla:



| **IPRA** | **Research Areas (Categories / Classification)** |
| --- | --- |
| Arts \& Humanities (28\) | Arts \& Humanities (14 sub) |
| Clinical, Pre\-Clinical \& Health (47\) | Life Sciences \& Biomedicine (76 sub) |
| Engineering \& Technology (51\) | Physical Sciences (17 sub) |
| Life Sciences (53\) | Social Sciences (25 sub) |
| Physical Sciences (38\) | Technology (21 sub) |
| Social Sciences (49\) |  |

  


En cualquier caso, para evitar tener que realizar una alineación de las diferentes clasificaciones y dado que se ha concluido en la sección 1\.5 del presente documento que la clasificación WoS\-IPRA es la más adecuada, se utilizaría el contenido de los elementos “subject” con “ascatype\=traditional” como descriptores temáticos del RO, pudiendo así representar como URIs del grafo de conocimiento de HERCULES basado en la ROH.

#### Otras fuentes de datos vía API

Si se reclama un RO almacenado en otra fuente de datos, se utilizarán los metadatos que ofrezca dicha fuente de datos para RO en la fuente de datos principal de WoS y se utilizarían los descriptores temáticos extraídos de ella.

De esta manera, se utilizará un único espacio de salida estandarizado de áreas de conocimiento y se podrían representar sus descriptores temáticos como una URI del grafo de conocimiento de HERCULES basado en la ROH.

Si el RO no se encuentra en la WoS, se aplicará la propuesta descrita en el apartado 2\.4 del presente documento. Se descarta reutilizar los metadatos relativos a descriptores temáticos ofrecidos por otra fuente de datos diferente a WoS para no incurrir en el sobrecoste innecesario de realizar una alineación de cada descriptor de dicha fuente (texto libre o cualquier otra clasificación) con un término de la clasificación WoS\-IPRA.

### 3\.2\.2 Extracción de descriptores temáticos vía web scraping

Dos de las fuentes identificadas para protocolos, [Protocol Exchange](https://protocolexchange.researchsquare.com/ "https://protocolexchange.researchsquare.com/") y [bio\-protocol](https://bio-protocol.org/default.aspx "https://bio-protocol.org/default.aspx"), carecen de un API del que recuperar la información del RO reclamado por el usuario. De partida, esto obliga a realizar un proceso de scraping para obtener la información del RO en estas fuentes, lo que se aprovechará para obtener los descriptores temáticos de las dos fuentes indicadas, siempre que mantengan las condiciones y permisos de reutilización actuales. En Protocol Exchange las condiciones dependen de cada protocolo, mientras que todo [el contenido de bio\-protocols es Open Access](https://bio-protocol.org/Copyright_Permissions.aspx "https://bio-protocol.org/Copyright_Permissions.aspx").

En el desarrollo se implementará un API que permitirá definir y mantener el scraping de estos (y potencialmente otros) sitios web, asociando los elementos HTML con los metadatos a recuperar del RO, por ejemplo: abstract, background, keywords, procedure, categories, etc.

En particular, las categorías recuperadas estarían alineadas con la taxonomía propuesta para los descriptores temáticos, bien porque ya tenían una correspondencia (por ejemplo, “[Analytical chemistry](https://protocolexchange.researchsquare.com/browse?subjectArea=Analytical%20chemistry "https://protocolexchange.researchsquare.com/browse?subjectArea=Analytical%20chemistry")” de Protocol Exchange se alinearía con “CHEMISTRY, ANALYTICAL” de IPRA) o bien porque se ha extendido la taxonomía para alojar categorías propias de los protocolos (por ejemplo, “[Systems Biology](https://bio-protocol.org/Category.aspx?c=1&fl1=13 "https://bio-protocol.org/Category.aspx?c=1&fl1=13")” de bio\-protocols, que no se alinearía con ninguna categoría de IPRA).

### 3\.2\.3 Extracción de descriptores temáticos mediante un clasificador supervisado

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




