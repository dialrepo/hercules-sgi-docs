# Hércules : Análisis de taxonomías



En esta sección se presentan y describen brevemente las iniciativas más relevantes identificadas durante el proceso de análisis de taxonomías existentes para la representación de áreas de conocimiento en el dominio de la investigación, haciendo mención igualmente a las posibilidades de obtener un dataset de entrenamiento ya etiquetado con la taxonomía en cuestión.

Además, se hará una breve comparación de las diferentes taxonomías analizadas de manera que se pueda determinar cómo se podrían reutilizar en la tarea de extracción de descriptores temáticos de los diferentes Research Objects (ROs) para estandarizar el espacio de salida de estos y poder integrarlos posteriormente dentro de la ontología unificada del proyecto HERCULES.

## 1\.1 Publicaciones o artículos científicos

A continuación, se describen las taxonomías encontradas para Research Objects (ROs) de tipo publicación o artículo científico.

### 1\.1\.1 ASJC de Scopus

La base de datos bibliográfica Scopus utiliza ASJC (All Science Journal Classification) como taxonomía para clasificar sus registros.

Dispone de una taxonomía basada en 5 áreas temáticas (Physical Sciences, Health Sciences, Social Sciences, Life Sciences y Multidisciplinary) con una clasificación de primer nivel de 27 entradas[\[1]](#_ftn1 "#_ftn1") y un segundo nivel de 307 entradas[\[2]](#_ftn2 "#_ftn2").

#### Dataset de entrenamiento

Ya disponemos de un dataset basado en esta taxonomía porque es el que se ha utilizadó en el *challenge* en la tarea de extracción de descriptores temáticos. Se podría utilizar ya para realizar una categorización automática de ROs, siempre que se tuviera acceso a su contenido.

### 1\.1\.2 LCC de DOAJ

La iniciativa Directory of Open Access Journals (DOAJ) utiliza tanto palabras clave de texto libre como términos de clasificaciones formales para representar las áreas de conocimiento sobre cualquier registro de su base de datos.

La clasificación LCC tiene 21 categorías de primer nivel[\[3]](#_ftn3 "#_ftn3") y 228 de segundo nivel[\[4]](#_ftn4 "#_ftn4"). Cada categoría LLC tiene categorías muy generales hasta el nivel 2\. Por ejemplo, a segundo nivel tenemos 1 clase referente a Mathematics (QA Mathematics), pero en Scopus\-ASJC hay 5: Computational Theory and Mathematics, Applied Mathematics, Computational Mathematics, Discrete Mathematics and Combinatorics, Mathematical Physics.

La fuente de datos de DOAJ devuelve etiquetas \<dc:subject\> (del vocabulario Dublin Core) cuyo contenido tiene como prefijo el esquema formal utilizado para clasificar la publicación en cuestión, excepto en el caso de la Clasificación de la Biblioteca del Congreso o LCC, en la que se indica dicha clasificación mediante un atributo adicional en la etiqueta:

\<dc:subject\>SOME\_NONLCC\_FORMAL\_CLASSIFICATION:term\</dc:subject\>

\<dc:subject xsi:type\="dcterms:LCC"\>Term\</dc:subject\>

#### Dataset de entrenamiento

DOAJ permite descargar un dataset de registros con metadatos sobre las publicaciones que tiene en su base de datos, pero no el texto completo de la publicación. Para descargar el texto de cada artículo habría que implementar un crawler o herramienta de web scraping.

### 1\.1\.3 Clasificación de la plataforma de datos de la BNE

Las clasificaciones temáticas de la BNE (Biblioteca Nacional Española) son genéricas y planas, ya que por ejemplo hay:

* 676 categorías en “materia\_simple” y 30\.480 de ellas no tienen una categoría madre,
* 040 categorías en “subencabezado general” y 4\.023 categorías están sin categoría madre,
* 368 categorías en “subencabezamientos” con 353 categorías sin categoría madre.

#### Dataset de entrenamiento

No disponible, aunque se puede descargar un dataset de registros con metadatos sobre las publicaciones que tiene en su base de datos, pero no el texto completo de la publicación. Para descargar el texto de cada artículo habría que implementar un crawler o herramienta de web scrapping.

### 1\.1\.4 Nomenclatura de Ciencia y Tecnología de la UNESCO

Existen dos clasificaciones: la Nomenclatura de Ciencia y Tecnología de la UNESCO[\[5]](#_ftn5 "#_ftn5") y el Tesauro de la UNESCO[\[6]](#_ftn6 "#_ftn6"), ambas con 3 niveles.

La primera clasificación es la que se suele utilizar en la universidad española y contiene 2\.505 categorías (24 de ellas a primer nivel y 248 a segundo):

1. CAMPOS (24\). Se refieren a las áreas más generales y están identificados por los 2 primeros dígitos del código. Cada campo comprende varias disciplinas.
2. DISCIPLINAS (248\). Suponen una descripción general de grupos de especialidades en Ciencia y Tecnología. Se identifican con los 4 primeros dígitos del código (coincidiendo los dos primeros con los del campo al que pertenecen).
3. SUBDISCIPLINAS (2505\). Son las entradas más específicas de la nomenclatura y representan las actividades que se realizan dentro de una disciplina. Están codificadas con 6 dígitos (coincidiendo los cuatro primeros con la disciplina a la que pertenecen).

Parece ser que hay muchas categorías que están obsoletas, ya que la comunidad científica suele tener dificultad para encuadrar sus áreas de investigación actuales en las disciplinas de segundo nivel y las subdisciplinas de tercer nivel.

#### Dataset de entrenamiento

Tal vez podríamos conseguir un dataset anotado de algún repositorio de la universidad española, pero sería difícil que llegase con una cantidad suficiente de ejemplos para todas las categorías de nivel 3\.

### 1\.1\.5 Clasificaciones de la Web of Science

Web of Science (WoS) es una plataforma on\-line de Clarivate Analytics que contiene bases de datos de información bibliográfica[\[7]](#_ftn7 "#_ftn7") y recursos de análisis de la información que permiten evaluar y analizar el rendimiento de la investigación. Su finalidad no es proporcionar el texto completo de los documentos, sino proporcionar herramientas de análisis que permitan valorar su calidad científica.

Dispone de 16 esquemas de clasificación[\[8]](#_ftn8 "#_ftn8") en áreas de investigación, de los cuales 12 se basan en la asignación de datos a sistemas externos de clasificación. Los esquemas externos se desarrollan en asociación con los organismos de evaluación de la investigación en una determinada región y suelen basarse en clasificaciones de revistas o en el mapeo de categorías ya existentes en WoS. Además, existen otros 4 esquemas de clasificación exclusivos de WoS:

* Citation Topics[\[9]](#_ftn9 "#_ftn9") (WoS\-CT). Posee 3 niveles (macro, meso y micro) con diferente número de categorías: 10 (macro), 326 (meso) y 2\.444 (micro). Con WoS\-CT los documentos se etiquetan manualmente en categorías macro y meso según su contenido. Los micro se asignan algorítmicamente con el descriptor más significativo para el documento obtenido con un algoritmo (desarrollado por CWTS Leiden[\[10]](#_ftn10 "#_ftn10")) que se basa en procesar las citas de los documentos y no su contenido.
* WoS Research Areas[\[11]](#_ftn11 "#_ftn11") (WoS\-RA). Contiene un primer nivel de 252 áreas temáticas para ciencias, ciencias sociales y artes y humanidades. Áreas muy amplias como física y ciencia de los materiales están representadas por subáreas más pequeñas de segundo nivel, pero no hemos encontrado cuántas categorías hay en dicho nivel. WoS\-RA se utiliza en Science Citation Index Expanded Journals, Social Sciences Citation Index Journals y Arts \& Humanities Citation Index Journals.
* Essential Science Indicators[\[12]](#_ftn12 "#_ftn12") (WoS\-ESI). Contiene un primer nivel de 22 áreas temáticas. Se utiliza para clasificar 11\.728 revistas de Web of Science Core Collection (solamente Science Citation Index Expanded y Social Sciences Citation Index). Con WoS\-ESI cada revista solamente se puede asignar a una de las 22 áreas de investigación. Revistas como Science y Nature se clasifican excepcionalmente como multidisciplinares, ya que publican investigaciones en muchos campos diferentes. Los artículos publicados en estas revistas multidisciplinares se asignan a un área temática u otra en función de la representación de las revistas citadas.
* Institutional Profiles Research Areas[\[13]](#_ftn13 "#_ftn13") (WoS\-IPRA). Contiene un primer nivel de 6 áreas temáticas y un segundo nivel con 267 subáreas. WoS\-IPRA es utilizada por Clarivate Analytics para elaborar perfiles institucionales de las principales universidades e instituciones de investigación del mundo.

#### Dataset de entrenamiento

Hemos comprobado que en el contexto del proyecto HERCULES tenemos acceso a alguna de las APIs de Web of Science[\[14]](#_ftn14 "#_ftn14"). Haciendo llamadas a la API se podría generar un dataset de registros con metadatos sobre las publicaciones, pero no el texto completo de la publicación. Sin embargo, se podría utilizar el abstract para la extracción de descriptores temáticos. 

## 1\.2 Taxonomías para protocolos

Dos de los repositorios de protocolos experimentales más utilizados por la comunidad científica y que son mencionados en el pliego de HERCULES son [Bio\-protocol.org](http://Bio-protocol.org "http://Bio-protocol.org") y Protocol\-exchange.

[Bio\-protocol.org](http://Bio-protocol.org "http://Bio-protocol.org")[\[15]](#_ftn15 "#_ftn15") usa descriptores específicos de texto libre y dispone de una categorización de hasta 3 niveles.

Por su parte, Protocol\-exchange[\[16]](#_ftn16 "#_ftn16") sí dispone de una categorización de un único nivel con unos 107 términos[\[17]](#_ftn17 "#_ftn17"). Cada protocolo está asignado al menos a uno de sus “subject terms”. Si algún autor no encuentra una categoría adecuada a su protocolo en el formulario de registro correspondiente, puede ponerse en contacto con [protocol.exchange@nature.com](mailto:protocol.exchange@nature.com "mailto:protocol.exchange@nature.com") para estudiar la posibilidad de ampliar la lista existente.

Existen otras iniciativas como [Protocols.io](http://Protocols.io "http://Protocols.io")[\[18]](#_ftn18 "#_ftn18") que ofrece una API[\[19]](#_ftn19 "#_ftn19") para consultar su repositorio de protocolos, pero aparentemente no dispone de ninguna clasificación para los mismos ni almacena ningún metadato sobre áreas de conocimiento.

### Dataset de entrenamiento

Se podría implementar un crawler o herramienta de web scraping para generar un dataset a partir de la web de Protocol\-exchange (con algo más de variedad temática) o desde la web de Bio\-protocols (bio\-ciencias).

## 1\.3 Taxonomías para proyectos de código

Dos de los repositorios de código más utilizados por la comunidad científica y que son mencionados en el pliego de HERCULES son GitHub[\[20]](#_ftn20 "#_ftn20") y Bitbucket[\[21]](#_ftn21 "#_ftn21").

GitHub solamente usa descriptores específicos de texto libre que denomina “topics”[\[22]](#_ftn22 "#_ftn22") para clasificar y realizar búsquedas de repositorios de código. Este metadato y otros pueden ser recuperados a través de su API[\[23]](#_ftn23 "#_ftn23").

Bitbucket parece que no utiliza ninguna clasificación. En la descripción de su API[\[24]](#_ftn24 "#_ftn24") tampoco aparece ningún metadato sobre un repositorio que se pueda interpretar como elemento de clasificación.

Sin embargo, en SourceForge[\[25]](#_ftn25 "#_ftn25") sí parece que se utiliza una clasificación de varios niveles para el catálogo de aplicaciones que ofrece, dado que en su directorio permite realizar búsquedas por categorías[\[26]](#_ftn26 "#_ftn26"). No hemos encontrado documentación sobre el número de niveles ni sobre el número de categorías en cada nivel.

### Dataset de entrenamiento

Se podría implementar un crawler o herramienta de web scraping para generar un dataset basado en el catálogo de SourceForge.

## 1\.4 Comparación de taxonomías

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

## 1\.5 Conclusiones sobre la comparación de taxonomías

De todas las taxonomías analizadas y comparadas, las más apropiadas serían las que tienen una buena cobertura, es decir, un número significativo no muy elevado de categorías en al menos dos niveles, para todas las áreas de investigación y para todos los tipos de ROs descritos en el proyecto HERCULES.

Tal y como se plantea en el proyecto, lo habitual es que los distintos tipos de RO estén relacionados entre sí formando un RO compuesto, por lo que también sería apropiado que se utilizara una misma taxonomía para todos ellos.

Por número no muy elevado entendemos aquél que ronde los 200\-300 términos, de manera que sea abordable su utilización con un clasificador supervisado, uno de los enfoques que se plantean en el proceso de extracción de descriptores temáticos de ROs.

Y por significativo entendemos aquél que cubra con cierta concreción un número suficiente de categorías de segundo nivel para cada una de las áreas de investigación de primer nivel.

Dicho lo anterior, las candidatas más apropiadas serían la ASJC de Scopus, la LCC de DOAJ, la Nomenclatura de Ciencia y Tecnología de la UNESCO y la clasificación IPRA de WoS.

La ASJC de Scopus tiene la ventaja de que ha sido utilizada en el Challenge del proyecto HERCULES y ya disponemos, por tanto, de un dataset anotado para su utilización. Sin embargo, se generaron dudas respecto a su cobertura para todas las áreas de investigación, dando lugar al análisis que se presenta en este documento.

La Nomenclatura de Ciencia y Tecnología de la UNESCO parece que genera problemas respecto a la actualidad de sus términos, dado que la comunidad científica así lo ha expresado de manera informal en diferentes foros.

Por último, si además tenemos en cuenta el volumen de ROs existentes en las fuentes de datos y la cantidad de bases de datos de diferentes dominios científicos, la fuente de datos de WoS es mayor que el de DOAJ.

Todo ello permite concluir que la clasificación IPRA de WoS podría ser la opción más interesante para estandarizar el espacio de salida de descriptores temáticos de las áreas de conocimiento de los ROs y sería la que se integraría en la ROH (Red de Ontologías de HERCULES).

## 1\.6 Actualización de las conclusiones sobre la comparación de taxonomías

Dada la imposibilidad de obtener un *dataset* de entrenamiento ya etiquetado con las clasificaciones más interesante identificadas, así como el resto de problemas legales y restricciones en el uso de varias fuentes de datos relacionadas con dichas taxonomías, finalmente se propone desarrollar una taxonomía unificada para el proyecto Hércules a partir de las **fuentes de datos** que sí están **disponibles** y que han permitido elaborar los *datasets* etiquetados necesarios para implementar la propuesta o estrategia híbrida descrita en la sección de [Enfoques para extracción de descriptores temáticos de ROs](https://confluence.um.es/confluence/pages/viewpage.action?pageId=222822824 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=222822824"):

* Dataset interno creado en el marco de un proyecto del Plan de Impulso de la Lengua y utilizado en el *Challenge.*
* Dataset [arXiv](https://arxiv.org/ "https://arxiv.org/") con pre\-publicaciones de artículos científicos en el campo de las matemáticas, física, ciencias de la computación y biología cuantitativa. En muchos campos de las matemáticas y la física, casi todos los artículos científicos se colocan en arXiv.
* Dataset [PubMed](https://pubmed.ncbi.nlm.nih.gov/ "https://pubmed.ncbi.nlm.nih.gov/") de publicaciones de investigación biomédica almacenadas en la base de datos MEDLINE. También posee entradas sobre publicaciones de revistas científicas de similar calidad, pero que no son parte de MEDLINE.
* Dataset [SourceForge](https://sourceforge.net/ "https://sourceforge.net/") de repositorios de código clasificados por temas.
* Dataset [Bio\-Protocol](https://bio-protocol.org/ "https://bio-protocol.org/") de protocolos experimentales en el área de ciencias de la vida (*Life Sciences*).

  


[\[1]](#_ftnref1 "#_ftnref1") [https://service.elsevier.com/app/answers/detail/a\_id/12007/supporthub/scopus/related/1/](https://service.elsevier.com/app/answers/detail/a_id/12007/supporthub/scopus/related/1/ "https://service.elsevier.com/app/answers/detail/a_id/12007/supporthub/scopus/related/1/")

[\[2]](#_ftnref2 "#_ftnref2") [https://service.elsevier.com/app/answers/detail/a\_id/15181/supporthub/scopus/](https://service.elsevier.com/app/answers/detail/a_id/15181/supporthub/scopus/ "https://service.elsevier.com/app/answers/detail/a_id/15181/supporthub/scopus/")

[\[3]](#_ftnref3 "#_ftnref3") [https://www.loc.gov/catdir/cpso/lcc.html](https://www.loc.gov/catdir/cpso/lcc.html "https://www.loc.gov/catdir/cpso/lcc.html")

[\[4]](#_ftnref4 "#_ftnref4") [https://en.wikipedia.org/wiki/Library\_of\_Congress\_Classification](https://en.wikipedia.org/wiki/Library_of_Congress_Classification "https://en.wikipedia.org/wiki/Library_of_Congress_Classification")

[\[5]](#_ftnref5 "#_ftnref5") [https://skos.um.es/unesco6/view.php?fmt\=1](https://skos.um.es/unesco6/view.php?fmt=1 "https://skos.um.es/unesco6/view.php?fmt=1")

[\[6]](#_ftnref6 "#_ftnref6") [https://skos.um.es/unescothes/view.php?fmt\=1](https://skos.um.es/unescothes/view.php?fmt=1 "https://skos.um.es/unescothes/view.php?fmt=1")

[\[7]](#_ftnref7 "#_ftnref7") [https://biblioguias.biblioteca.deusto.es/c.php?g\=149255\&p\=4751722](https://biblioguias.biblioteca.deusto.es/c.php?g=149255&p=4751722 "https://biblioguias.biblioteca.deusto.es/c.php?g=149255&p=4751722")

[\[8]](#_ftnref8 "#_ftnref8") [https://incites.help.clarivate.com/Content/Research\-Areas/research\-areas.htm](https://incites.help.clarivate.com/Content/Research-Areas/research-areas.htm "https://incites.help.clarivate.com/Content/Research-Areas/research-areas.htm")

[\[9]](#_ftnref9 "#_ftnref9") [https://incites.help.clarivate.com/Content/Research\-Areas/citation\-topics.htm](https://incites.help.clarivate.com/Content/Research-Areas/citation-topics.htm "https://incites.help.clarivate.com/Content/Research-Areas/citation-topics.htm")

[\[10]](#_ftnref10 "#_ftnref10") [https://www.leidenranking.com/](https://www.leidenranking.com/ "https://www.leidenranking.com/")

[\[11]](#_ftnref11 "#_ftnref11") [https://incites.help.clarivate.com/Content/Research\-Areas/wos\-research\-areas.htm](https://incites.help.clarivate.com/Content/Research-Areas/wos-research-areas.htm "https://incites.help.clarivate.com/Content/Research-Areas/wos-research-areas.htm")

[\[12]](#_ftnref12 "#_ftnref12") [https://incites.help.clarivate.com/Content/Research\-Areas/essential\-science\-indicators.htm](https://incites.help.clarivate.com/Content/Research-Areas/essential-science-indicators.htm "https://incites.help.clarivate.com/Content/Research-Areas/essential-science-indicators.htm")

[\[13]](#_ftnref13 "#_ftnref13") [https://incites.help.clarivate.com/Content/Research\-Areas/ip\-research\-areas.htm](https://incites.help.clarivate.com/Content/Research-Areas/ip-research-areas.htm "https://incites.help.clarivate.com/Content/Research-Areas/ip-research-areas.htm")

[\[14]](#_ftnref14 "#_ftnref14") [https://clarivate.com/webofsciencegroup/solutions/xml\-and\-apis/](https://clarivate.com/webofsciencegroup/solutions/xml-and-apis/ "https://clarivate.com/webofsciencegroup/solutions/xml-and-apis/")

[\[15]](#_ftnref15 "#_ftnref15") [https://bio\-protocol.org](https://bio-protocol.org "https://bio-protocol.org")

[\[16]](#_ftnref16 "#_ftnref16") [https://protocolexchange.researchsquare.com/](https://protocolexchange.researchsquare.com/ "https://protocolexchange.researchsquare.com/")

[\[17]](#_ftnref17 "#_ftnref17") [https://protocolexchange.researchsquare.com/browse](https://protocolexchange.researchsquare.com/browse "https://protocolexchange.researchsquare.com/browse")

[\[18]](#_ftnref18 "#_ftnref18") [https://www.protocols.io/](https://www.protocols.io/ "https://www.protocols.io/")

[\[19]](#_ftnref19 "#_ftnref19") [https://apidoc.protocols.io/\#protocol\-object](https://apidoc.protocols.io/#protocol-object "https://apidoc.protocols.io/#protocol-object")

[\[20]](#_ftnref20 "#_ftnref20") [https://github.com/](https://github.com/ "https://github.com/")

[\[21]](#_ftnref21 "#_ftnref21") [https://bitbucket.org/](https://bitbucket.org/ "https://bitbucket.org/")

[\[22]](#_ftnref22 "#_ftnref22") [https://docs.github.com/en/github/administering\-a\-repository/classifying\-your\-repository\-with\-topics](https://docs.github.com/en/github/administering-a-repository/classifying-your-repository-with-topics "https://docs.github.com/en/github/administering-a-repository/classifying-your-repository-with-topics")

[\[23]](#_ftnref23 "#_ftnref23") [https://docs.github.com/en/rest/reference/repos\#get\-all\-repository\-topics](https://docs.github.com/en/rest/reference/repos#get-all-repository-topics "https://docs.github.com/en/rest/reference/repos#get-all-repository-topics")

[\[24]](#_ftnref24 "#_ftnref24") [https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories](https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories "https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories")

[\[25]](#_ftnref25 "#_ftnref25") [https://sourceforge.net/](https://sourceforge.net/ "https://sourceforge.net/")

[\[26]](#_ftnref26 "#_ftnref26") [https://sourceforge.net/directory/?clear](https://sourceforge.net/directory/?clear "https://sourceforge.net/directory/?clear")




