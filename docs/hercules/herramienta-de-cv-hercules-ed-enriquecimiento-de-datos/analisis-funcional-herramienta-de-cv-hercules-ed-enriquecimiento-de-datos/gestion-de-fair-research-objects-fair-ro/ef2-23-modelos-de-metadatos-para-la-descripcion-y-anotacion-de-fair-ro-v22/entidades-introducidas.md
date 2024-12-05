# Hércules : Entidades introducidas



En este apartado describimos cada una de las entidades introducidas en esta nueva versión en detalle. Durante el transcurso de esta sección también se hablará de diversas propiedades que se pueden usar para relacionarlas, todas ellas se verán en detalle en la [sección de propiedades.](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.upglbi "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.upglbi")


## **Process – Proceso**


* URI                            [{\+}](http://purl.org/roh_edma/mirror/obo/bfo#BFO_0000015 "http://purl.org/roh_edma/mirror/obo/bfo#BFO_0000015")[http://w3id.org/roh/mirror/obo/bfo\#BFO\_0000015\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/mirror/obo/bfo#BFO_0000015+ "http://w3id.org/roh/mirror/obo/bfo#BFO_0000015+")
* Label                        process
* In data                      bfo:BFO\_0000015


Esta entidad estaba en versiones anteriores. La única modificación realizada fue la corrección de la importación.  


## **Software**


* URI                            [{\+}](http://purl.org/roh_edma/mirror/obo/ero#ERO_0000071 "http://purl.org/roh_edma/mirror/obo/ero#ERO_0000071")[http://w3id.org/roh/mirror/obo/ero\#ERO\_0000071\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/mirror/obo/ero#ERO_0000071+ "http://w3id.org/roh/mirror/obo/ero#ERO_0000071+")
* Label                        Software
* In data                         ero:ERO\_0000071


Software, ya sean librerías, scripts, o archivos de código. Esta entidad ya existía en la versión anterior, era una subclase de Reservable ([{\+}](http://purl.org/roh_edma#Reservable "http://purl.org/roh_edma#Reservable")[http://w3id.org/roh\#Reservable\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#Reservable+ "http://w3id.org/roh#Reservable+")). Sin embargo, un Software puede ser reservable o no. Para permitir esta diferenciación esta entidad se hizo superclase y se incorporó una subclase de ella que permitirá modelizar software reservable, denotada Reservable Software. De esta subentidad se hablará más adelante con mayor detalle.   

**Condición Software\-Research Result**: Para definir un Software es un componente de un resultado de investigación, debemos usar la relación partOfResearchResult del siguiente modo: Dado un resultado de investigación, x, que tiene como uno de sus componentes el Software y, esta relación se modeliza en mediante la propiedad partOfResearchReslt o su inversa, researchResultHasPart, del siguiente modo: x :researchResuletHasPart y ó y :partOfResearchResult x.    

**Condición Software\-Repository:** En la modelización se ha separado el concepto de Repositorio y Software, por lo que estas entidades son disjuntas.  Para referenciar un repositorio, denotémoslo x, en el esta almacenar un software, denotémoslo y, se deberá usar la propiedad partOfRepository o su inversa repositoryHasPart del siguiente modo: y partOfRepository x, o con la propiedad inversa, x :repositoryHasPart y.


## **Reservable Software**


* URI                                [{\+}](http://purl.org/roh_edma#ReservableSoftware "http://purl.org/roh_edma#ReservableSoftware")[http://w3id.org/roh\#ReservableSoftware\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#ReservableSoftware+ "http://w3id.org/roh#ReservableSoftware+")
* Label                        Reservable Software
* In data                         :ReservableSoftware


Esta Entidad denota aquel software que es reservable. Es una DefinedClass, de modo que las instancias que corresponden a esta entidad son aquellas que son de tipo Software y además de tipo Reservable. 


## **Experimental Protocol**


* URI                            [{\+}](http://purl.org/roh_edma#ExperimentalProtocol "http://purl.org/roh_edma#ExperimentalProtocol")[http://w3id.org/roh\#ExperimentalProtocol\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#ExperimentalProtocol+ "http://w3id.org/roh#ExperimentalProtocol+")
* Label                        Experimental Protocol
* In Data                         :ExperimentalProtocol


Esta entidad define los procesos que son una secuenciación de acciones a realizar en un experimento. Es un proceso, por lo que es subclase de la entidad Process. La intención de esta entidad es que se puedan definir el proceso sin los resultados. Si se expone el proceso junto a los resultados del mismo, no es una instancia de Exprimental Protocol sino de ExperimentalProtocolResult, la cual se explicará más adelante. Es importante que se tenga clara esta diferenciación.   

**Diferenciación entre Experimental Protocol y Experimental Protocol Result**: Dada una instancia de Experimental Protocol esta no debe contender resultados de la realización de dicho proceso, en caso de contenerlos no es un Experimental Protocol sino un Experimental Protocol Result. La entidad Experimental Protocol permite definir el proceso general de realización, como una plantilla.   

**Condición Experimental Protocol\-Research Object:** Para definir que el protocolo experimental es uno de los componentes de un resultado de investigación, debemos usar la relación partOfResearchResult del siguiente modo: Dado un objeto de investigación, x, que tiene como uno de sus componentes el Experimental Protocol y, esta relación se modeliza en HERCULES mediante la propiedad partOfResearchREsult o su inversa, researchResultHasPart, del siguiente modo: x :researchResultHasPart y ó y :partOfResearchResult x.  


## **Experimental Protocol Result**


* URI                            [{\+}](http://purl.org/roh_edma#ExperimentalProtocolResult "http://purl.org/roh_edma#ExperimentalProtocolResult")[http://w3id.org/roh\#ExperimentalProtocolResult\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#ExperimentalProtocolResult+ "http://w3id.org/roh#ExperimentalProtocolResult+")
* Label                         Experimental Protocol Result
* In Data                         :ExperimentalProtocolResult


Documento que describe el resultado o la ejecución o ambas, de un protocolo experimental. La existencia de una instancia de esta entidad no tiene que depender de la existencia, en el grafo de conocimiento, de un Experimental Protocol. En caso de que exista un Experimental Protocol, x, cuyos resultados se encuentran en una instancia de la entidad Experimental Protocol Result, y, entonces ambas instancias deben estar relacionadas con la propiedad 'produces' del siguiente modo: x :produces y. Esta condición se ve ilustrada en la [ilustración 3](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.3o7alnk "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.3o7alnk").  

**Diferenciación entre Experimental Protocol y Experimental Protocol Result**: Dada una instancia de Experimental Protocol esta no debe contender resultados de la realización de dicho proceso, en caso de contenerlos no es un Experimental Protocol sino un Experimental Protocol Result. 


## **Readme**


* URI                                [{\+}](http://purl.org/roh_edma#README "http://purl.org/roh_edma#README")[http://w3id.org/roh\#README\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#README+ "http://w3id.org/roh#README+")
* Label                        README
* In Data                         :README


Documento denominado README que describe el contenido de un Repositorio o Software. Es una subclase de bibo:Document, ya que es un documento.  

**Axioma de existencia del README:** Toda instancia de la entidad README debe estar asociada, mediante la propiedad readmeOf a una instancia de Repository o Software para existir. Véase la [ilustración 4\.](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.41mghml "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.41mghml")


## **Repository**


* URI                                [{\+}](http://purl.org/roh_edma#Repository "http://purl.org/roh_edma#Repository")[http://w3id.org/roh\#Repository\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#Repository+ "http://w3id.org/roh#Repository+")
* Label                         Repository
* In Data                     :Repository


Esta entidad denota repositorios de información, es decir, repositorios donde se almacenan diversos resultados de investigación.  Los axiomas indicados en Repositorio son válidos para sus subclases, que son [ZenodoRepository](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3oy7u29 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3oy7u29"), [BitBucketRepository](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.243i4a2 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.243i4a2"), [GitHubRepository](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.j8sehv "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.j8sehv").  

**Condición Repositorio:** Se puede definir una instancia de 'Experimental Protocol' o bibo:Document o Software  está contenida en un Repositorio mediante la propiedad partOfRepository.  Por ejemplo, dada una instancia, x, de 'Experimental Protocol' o bibo:Document o Software se puede definir que dicha instancia está contenida en el Repositorio y del siguiente modo: x :partOfRepository y. Véase [ilustración 5\.](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.2grqrue "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.2grqrue")


### BitBucket Repository


* URI                                [{\+}](http://purl.org/roh_edma#BitBucketRepository "http://purl.org/roh_edma#BitBucketRepository")[http://w3id.org/roh\#BitBucketRepository\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#BitBucketRepository+ "http://w3id.org/roh#BitBucketRepository+")
* Label                        BitBucket Repository
* In Data                         : BitBucketRepository


Esta entidad define un tipo específico de repositorio. Es una subclase de Repository. El tipo de repositorio que se quiere modelizar aquí son aquellos que se encuentran en\[ \|https://bitbucket.org/][{\+}](https://bitbucket.org/ "https://bitbucket.org/")[https://bitbucket.org/\+![](/assets/images/icons/linkext7.gif)](https://bitbucket.org/+ "https://bitbucket.org/+").


### GitHub Repository


* URI                                [{\+}](http://purl.org/roh_edma#GitHubRepository "http://purl.org/roh_edma#GitHubRepository")[http://w3id.org/roh\#GitHubRepository\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#GitHubRepository+ "http://w3id.org/roh#GitHubRepository+")
* Label                        GitHub Repository
* In Data                         : GitHubRepository


Esta entidad define un tipo específico de repositorio. Es una subclase de la entidad Repository. El tipo de repositorio que se quiere modelizar aquellos que se encuentran en\[ \|https://github.com/][{\+}](https://github.com/ "https://github.com/")[https://github.com/\+![](/assets/images/icons/linkext7.gif)](https://github.com/+ "https://github.com/+") .


### Zenodo Repository


* URI                                [{\+}](http://purl.org/roh_edma#ZenodoRepository "http://purl.org/roh_edma#ZenodoRepository")[http://w3id.org/roh\#ZenodoRepository\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#ZenodoRepository+ "http://w3id.org/roh#ZenodoRepository+")
* Label                        Zenodo Repository
* In Data                         : ZenodoRepository


Esta entidad define un tipo específico de repositorio. Es una subclase de la entidad Repository. El tipo de repositorio que se quiere modelizar son aquellos que se encuentran en\[ \|https://zenodo.org/][{\+}](https://zenodo.org/ "https://zenodo.org/")[https://zenodo.org/\+![](/assets/images/icons/linkext7.gif)](https://zenodo.org/+ "https://zenodo.org/+") .


## **Bfo:Role**


●URI [{\+}](http://w3id.org/roh/mirror/obo/bfo#BFO_0000023 "http://w3id.org/roh/mirror/obo/bfo#BFO_0000023")[http://w3id.org/roh/mirror/obo/bfo\#BFO\_0000023\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/mirror/obo/bfo#BFO_0000023+ "http://w3id.org/roh/mirror/obo/bfo#BFO_0000023+")   

●Label Role  

●In Data bfo:BFO\_0000023  

Dentro de las restricciones de la entidad bfo:Role y de sus subclases se ha modificado el axioma ro:inheresIn (some/only) foaf:Person por roh:roleOf (some/only) foaf:Person. (Este cambio se ha realizado para ser fieles a la documentación).


## **Research Result**


* URI                                [{\+}](http://purl.org/roh_edma#ResearchResult "http://purl.org/roh_edma#ResearchResult")[http://w3id.org/roh\#ResearchResult\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#ResearchResult+ "http://w3id.org/roh#ResearchResult+")
* Label                        Research Result
* In Data                         : ResearchResult


Esta entidad modeliza los resultados de investigación que puede realizar cualquier investigación, normalmente compuestas como mínimo de un artículo explicativo en el que se explica dicha aportación, y la cual consta de un reconocimiento por parte de la comunidad científica. Sin embargo, este documento solo es una pieza, en la cual se expone y explica dicho resultado. Un resultado de investigación está compuesto por todos aquellos recursos que permiten su replicación.  

Por ejemplo, si un investigador ha desarrollado un algoritmo de inteligencia artificial novedoso en el estado de arte, la aportación es dicho descubrimiento, pero los componentes de dicha aportación son el artículo explicativo, el software utilizado, los datos, entre otros. Los recursos que componen el resultado de investigación se relacionan con el resultado mediante las propiedades researchResultHasPart y partOfResearchResult. Véase la [ilustración 2](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1pxezwc "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1pxezwc") para ver la propiedad. Los componentes serán modelizados por la entidad Research Object, los cuales también serán Research Results porque son un resultado en sí mismos. Esta entidad se explicará a continuación.   

Todo objeto de investigación o resultado de investigación, así como cada uno de los recursos que pueden formar parte de él, tendrán asociado un archivo de tipo JSON que nos permitirá definir de una forma estandarizada todos los resultados de investigación. Los recursos que componen un resultado de investigación serán modelizados por la entidad Research Object. 


## **Research Object**


* URI                                [{\+}](http://purl.org/roh_edma#ResearchObject "http://purl.org/roh_edma#ResearchObject")[http://w3id.org/roh\#ResearchObject\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#ResearchObject+ "http://w3id.org/roh#ResearchObject+")
* Label                        Research Object
* In Data                         : ResearchObject


Esta entidad nos permite modelizar los componentes de un resultado de investigación, los cuales son resuletados también, por lo que explica que esta entidad sea subclase de Research Result como se puede ver en la [Ilustración 1](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.qsh70q "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.qsh70q"). Esta entidad es una defined class por lo que sus elementos están completamente definidos y serán los siguientes: todo aquello que haya sido producido en un proyecto, así como todo aquel recurso que forme parte de un resultado de investigación (Research Result).   

Como se verá más adelante, todo aquello que puede formar parte de un Research Object, debe modelarse mediante la propiedad [researchResultHasPart](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.338fx5o "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.338fx5o") o [partOfResearchResult](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1idq7dh "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1idq7dh"). Esta propiedad nos permite que no cualquier instancia pueda ser parte de un resultado de investigación, sino únicamente las instancias de las entidad: Protocol Experiment, Software, bibo:Document.   

La definición de esta defined class es la siguiente:   

(  

('produced by' some vivo:Project) and   

('produced by' only vivo:Project)  

)  

or   

('part of research result' some ResearchObject)
  

**Nota aclaratoria 2:** Para que una instancia (recuerdo que debe ser una instancia de bibo:Document, roh:ExperimentalProtocol, ero:Software) sea un RO, debe declararse como parte de un roh:ResearchResult. En caso contrario no será declarado como un RO. La única excepción a esta norma son los resultados de un proyecto, que se declaran con la propiedad roh:produces. Estos resultados de un proyecto son directamente ROs.


## **JournalMetric \& PublicationMetric**


* URI                                [{\+}](http://w3id.org/roh#JournalMetric "http://w3id.org/roh#JournalMetric")[http://w3id.org/roh\#JournalMetric\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#JournalMetric+ "http://w3id.org/roh#JournalMetric+")
* Label                        Journal Metric
* Data                         : JournalMetric


Se ha creado una nueva entidad denominada JournalArticle, la cual tiene como data properties roh:impactFactor, roh:impactFactorName, ranking, quartile. Algunas de estas anteriormente se encontraban en la entidad PublicationMetric y se han movido. Esta entidad está relacionada con un cierto Journal mediante la propiedad roh:metricOf.  A su vez se han modificado las data property de la entidad roh:PublicacionMetric, de modo que actualmente son roh:metricName y roh:citationCount. El motivo de esta modificación fue facilitar la actualización de las métricas debido a la separación entre las métricas de la revista y de la publicación. De este modo, dada una métrica de una publicación la actualización no generaría una nueva instancia de esa métrica, sino que actualizaría los valores. Por el contrario, cuando se actualicen los factores de impacto de una revista se deberá crear una nueva métrica.   

**Nota aclarativa:** Journal Metric. Esta entidad es la métrica de una revista. Cada cierto tiempo se actualiza la métrica de cada revista por lo que esa revista debe crear una nueva JournalMetric con el mismo impactFactorName pero en la cual los valores de fecha impactFactor, ranking y quartile esten actualizados.  

**Nota aclarativa:** Publication Metric. Un artículo es citado roh:citationCount veces en la red the roh:metricName. Ejemplo: si un artículo ha sido citado 5 veces en la Web of Science, entonces los atributos roh:metricName debe ser Web Of Science y roh:citationCount 5\. De este modo, una roh:metricName puede ser roh y el valor de roh:citationCount el número de veces que dicho artículo ha sido citado en el grafo de conocimiento de esta ontología.


## **Modificación del módulo vertical de unesco\-individuals**


Dentro del módulo vertical de unesco individual, que se puede encontrar en [{\+}](https://github.com/HerculesCRUE/ROH/blob/main/roh/modules/knowledge-area/unesco-knowledge-area.rdf "https://github.com/HerculesCRUE/ROH/blob/main/roh/modules/knowledge-area/unesco-knowledge-area.rdf")[https://github.com/HerculesCRUE/ROH/blob/main/roh/modules/knowledge\-area/unesco\-knowledge\-area.rdf\+![](/assets/images/icons/linkext7.gif)](https://github.com/HerculesCRUE/ROH/blob/main/roh/modules/knowledge-area/unesco-knowledge-area.rdf+ "https://github.com/HerculesCRUE/ROH/blob/main/roh/modules/knowledge-area/unesco-knowledge-area.rdf+"), se cambiaron por purl de las URIs de esta ontologia por w3id, con el fin de poder contestar a ciertas preguntas de validacion de este proyecto que necesitaban acceder a dicho modulo para obtener la respuesta. en concreto la pregunta de validación que se quería contestar era la 15\. El resultado de esta consulta se puede consultar en [{\+}](https://htmlpreview.github.io/?https://github.com/HerculesCRUE/ROH/blob/gh-pages/html/Q15.html "https://htmlpreview.github.io/?https://github.com/HerculesCRUE/ROH/blob/gh-pages/html/Q15.html")[https://htmlpreview.github.io/?https://github.com/HerculesCRUE/ROH/blob/gh\-pages/html/Q15\.html\+![](/assets/images/icons/linkext7.gif)](https://htmlpreview.github.io/?https://github.com/HerculesCRUE/ROH/blob/gh-pages/html/Q15.html+ "https://htmlpreview.github.io/?https://github.com/HerculesCRUE/ROH/blob/gh-pages/html/Q15.html+"). 
  





