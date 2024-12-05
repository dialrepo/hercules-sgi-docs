# Hércules : Propiedades



En esta sección se describirán las propiedades incorporadas, de algunas ya se ha hablado en la sección anterior pero aquí se definirán sus dominios, su funcionalidad y su uso en la creación de ROs en HERCULES.


## **Research result has part**


* URI                             [{\+}](http://purl.org/roh_edma#researchResultHasParth "http://purl.org/roh_edma#researchResultHasParth")[http://w3id.org/roh\#researchResultHasParth\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#researchResultHasParth+ "http://w3id.org/roh#researchResultHasParth+")
* Label                        research result has part
* In Data                        : researchResultHasPart
* **Dominio:**    Research Result
* **Rango:** Unión{bibo:Document, ExperimentalProtocol, Software}
* **Inversa:**   :partOfResearchResult
* **Tipo de propiedad:**   Object Property


Esta propiedad nos permite, dado un resultado de investigación, identificar los componentes que lo componen, los cuales deben ser instancias del rango de esta propiedad.  De este modo, si el Software, y, es un componente del [Research](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.42ddq1a "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.42ddq1a") Result x, entonces la tripleta del grafo de conocimiento x :researchObjectHasPart y, permite saber que es un componente de dicho resultado de investigación. Lo mismo en el caso de que la instancia y pertenezca a cualquier otra entidad que del rango de esta propiedad.


## **Part of research result**


* URI                                [{\+}](http://purl.org/roh_edma#partOfResearchResult "http://purl.org/roh_edma#partOfResearchResult")[http://w3id.org/roh\#partOfResearchResult\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#partOfResearchResult+ "http://w3id.org/roh#partOfResearchResult+")
* Label                        part of research result
* In Data                         : partOfResearchResult
* **Dominio**: Unión{ bibo:Document, Experimental Protocol, Software}
* **Rango:** ResearchResult
* **Inversa**: :researchResultHasPart
* **Tipo de propiedad:** Object Property


Esta propiedad nos permite, dado un componente de un objeto de investigación (los cuales deben ser instancias del dominio de esta propiedad), identificar el resultado de la investigación al que pertenece. De este modo, si el Software, y, es un componente de la aportación científica o resultado de investigación x, entonces la tripleta: y :partOfResearchObject x, permite saber que es un componente de la aportación x. Lo mismo cuando y sea una instancia de cualquier otra entidad del dominio de esta función.   

La [ilustración 2](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1pxezwc "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1pxezwc") ilustra esta propiedad. 


## **Repository has part**


* URI                                [{\+}](http://purl.org/roh_edma#repositoryHasPart "http://purl.org/roh_edma#repositoryHasPart")[http://w3id.org/roh\#repositoryHasPart\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#repositoryHasPart+ "http://w3id.org/roh#repositoryHasPart+")
* Label                    repository has part
* In Data                         : repositoryHasPart
* **Dominio**: Repository
* **Rango**: Unión{bibo:Document, ExperimentalProtocol, Software}
* **Inversa**: :partOfRepository
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite, dado un repositorio, identificar sus componentes, los cuales deben ser instancias del rango de esta propiedad.  De este modo, si el Software y está contenido en el repositorio x, entonces la tripleta del grafo de conocimiento x :repositoryHasPart y, permite saber que dicho software está almacenado en el repositorio x.  De este modo se pueden saber todos los componentes que componen un repositorio realizando una consulta en la que se obtengan todas las instancias objeto de la tripleta anterior. 


## **Part of repository**


* URI                                [{\+}](http://purl.org/roh_edma#partOfRepository "http://purl.org/roh_edma#partOfRepository")[http://w3id.org/roh\#partOfRepository\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#partOfRepository+ "http://w3id.org/roh#partOfRepository+")
* Label                    part of repository
* In Data                         : partOfRepository
* **Dominio**: Unión{bibo:Document, ExperimentalProtocol, Software}
* **Rango**: Repository
* **Inversa**: :repositoryHasPart
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite, dada una instancia contenida en un repositorio (los cuales deben ser instancias del rango de esta propiedad), identificar el repositorio en el que está almacenado.  De este modo, si el Software, y, está contenido en el repositorio x, entonces la tripleta del grafo de conocimiento y :partOfRepository x, permite saber que dicho software está almacenado en el repositorio x.  


## **Seq of Authors**


* URI                                [{\+}](http://purl.org/roh_edma#seqOfAuthors "http://purl.org/roh_edma#seqOfAuthors")[http://w3id.org/roh\#seqOfAuthors\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#seqOfAuthors+ "http://w3id.org/roh#seqOfAuthors+")
* Label                    seq of authors
* In Data                         : seqOfAuthors
* **Dominio**: owl:thing
* **Rango**: rdf:Seq
* **Inversa**: —
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite, dada una instancia poder relacionarla con un conjunto que debe contener las URIS de los autores de dicha instancia. De este modo, si un Software y ha sido creado por las personas que componen el conjunto x, la tripleta y :seqOfAuthor x nos permite relacionar dicho conjunto con la instancia en cuestión.   

**Nota aclaratoria:** la lista de autores se puede obtener mediante la object porperty roh:seqOfAuthors (en caso de que sea un documento se puede obtener también mediante la propiedad bibo:authorList).  

Ejemplo de uso:  

\<[http://w3id.org/roh/data\#investigador\-3\-phd\-thesis![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/data#investigador-3-phd-thesis "http://w3id.org/roh/data#investigador-3-phd-thesis")\>   

        a :PhDThesis ;  

        dc:title "My fabulous PhD Thesis" ;  

        :correspondingAuthor \<[http://w3id.org/roh/data\#investigador\-3![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/data#investigador-3 "http://w3id.org/roh/data#investigador-3")\> ;  

        :seqOfAuthors \[ a     rdf:Seq ;  

                          rdf:\_1        \<[http://w3id.org/roh/data\#investigador\-3![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/data#investigador-3 "http://w3id.org/roh/data#investigador-3")\> ;  

                          rdf:\_2        \<[http://w3id.org/roh/data\#investigador\-1![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/data#investigador-1 "http://w3id.org/roh/data#investigador-1")\> ] .
  



## **Software Status**


* URI                                [{\+}](http://purl.org/roh_edma#softwareStatus "http://purl.org/roh_edma#softwareStatus")[http://w3id.org/roh\#softwareStatus\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#softwareStatus+ "http://w3id.org/roh#softwareStatus+")
* Label                    software status
* In Data                         : softwareStatus
* **Dominio**: ero:Software
* **Rango**: Unión{Final, Provisional}
* **Inversa**: \-
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite declarar si un Software está en desarrollo (es decir es Provisional) o está finalizado. Dado un software x, que cuyo estado es y, dónde y puede ser una instancia de Final o Provisional, la tripleta x :softwareStatus y,  nos permite saber el estado de software x. 


## **Repository Status**


* URI                                [{\+}](http://purl.org/roh_edma#repositoryStatus "http://purl.org/roh_edma#repositoryStatus")[http://w3id.org/roh\#repositoryStatus\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#repositoryStatus+ "http://w3id.org/roh#repositoryStatus+")
* Label                    repository status
* In Data                         : repositoryStatus
* **Dominio**: :Repository
* **Rango**: Unión{Closed, Open}
* **Inversa**: –
* **Tipo de propiedad**: Object Property


Esta Object Property nos permite saber si un repositorio es público (Open) o no (Closed). Dado un repositorio, x, cuyo estado es y, dónde y, puede ser una instancia de Open o Closed, la tripleta x :repositoryStatus y,  nos permite saber el estado del repositorio x. 


## **Has Readme**


* URI                                [{\+}](http://purl.org/roh_edma#hasReadme "http://purl.org/roh_edma#hasReadme")[http://w3id.org/roh\#hasReadme\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#hasReadme+ "http://w3id.org/roh#hasReadme+")
* Label                    has readme
* In Data                         : hasReadme
* **Dominio**: Unión{Software, Repository}
* **Rango**: :README
* **Inversa**: :readmeOf
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite, dado un software o repositorio, identificar el documento README que suelen tener asociados.  De este modo, si el Software, y, tiene asociado el README x, entonces la tripleta  y :hasReadme x, permite saber cuál es el Readme de dicho Software. Lo mismo en el caso en el que tengamos un Repositorio.   

**Axioma de existencia del README**: Toda instancia de la entidad README debe estar asociada, mediante la propiedad readmeOf a una instancia de Repository o Software para existir. Véase [ilustración 4](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.41mghml "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.41mghml"). 


## **Readme of**


* URI                                [{\+}](http://purl.org/roh_edma#readmeOf "http://purl.org/roh_edma#readmeOf")[http://w3id.org/roh\#readmeOf\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#readmeOf+ "http://w3id.org/roh#readmeOf+")
* Label                    readme of
* In Data                         : readmeOf
* **Dominio**: :README
* **Rango**: Unión{Software, Repository}
* **Inversa**: :hasReadme
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite, dado un documento del tipo README, identificar el software o repositorio que describe este documento. De este modo, si el Software, y, tiene asociado el README x, entonces la tripleta:  x :readmeOf y, permite saber cuál es el Readme de dicho Software. Lo mismo en el caso en el que tengamos un Repositorio.   

**Axioma de existencia del README**: Toda instancia de la entidad README debe estar asociada, mediante la propiedad readmeOf a una instancia de Repository o Software para existir. Véase [ilustración 4](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.41mghml "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/ef2-23-modelos-de-metadatos-para-la-descripcion-y-anotacion-de-fair-ro-v22/proceso-seguido-en-la-especificacion-de-los-metadatos-necesarios-para-cada-tipo-de-ro-version-2.md#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.41mghml"). 


## **Has Sucessor**


* URI                                [{\+}](http://purl.org/roh_edma#hasSucessor "http://purl.org/roh_edma#hasSucessor")[http://w3id.org/roh\#hasSucessor\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#hasSucessor+ "http://w3id.org/roh#hasSucessor+")
* Label                    has sucessor
* In Data                         : hasSucessor
* **Dominio**: –
* **Rango**: –
* **Inversa**: :hasPredecessor
* **Tipo de propiedad**: Object Property


La información que nos permite definir es la siguiente: x es sucesora de y, o en tripletas x :hasSucessor y, donde x e y pueden ser instancias de cualquier entidad de nuestra ontología. Como subfunción de esta propiedad está la propiedad 'vivo:successor organization' ([{\+}](http://purl.org/roh_edma/mirror/vivo#hasSuccessorOrganization "http://purl.org/roh_edma/mirror/vivo#hasSuccessorOrganization")[http://w3id.org/roh/mirror/vivo\#hasSuccessorOrganization\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/mirror/vivo#hasSuccessorOrganization+ "http://w3id.org/roh/mirror/vivo#hasSuccessorOrganization+"))  que sirve para definir la organización sucesora de otra organización.  

**Axiom**a: Todas las instancias de Software, bibo:Document, Repository, Experimental Protocol y Research Object sólo puede tener como sucesora una instancia perteneciente a la misma entidad.  


## **Has Predecessor**


* URI                                [{\+}](http://purl.org/roh_edma#hasPredecessor "http://purl.org/roh_edma#hasPredecessor")[http://w3id.org/roh\#hasPredecessor\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#hasPredecessor+ "http://w3id.org/roh#hasPredecessor+")
* Label                    has predecessor
* In Data                         : hasPredecessor
* **Dominio** –
* **Rengo** –
* **Inversa**: :hasSucessor
* **Tipo de propiedad**: Object Property


La información que nos permite definir es la siguiente: x es predecesora de y, o en tripletas x :hasPredecessor y, donde x e y pueden ser instancias de cualquier entidad de nuestra ontología. Como subfunción de esta propiedad está la propiedad 'vivo:predecessor organization' ([{\+}](http://purl.org/roh_edma/mirror/vivo#hasPredecessorOrganization "http://purl.org/roh_edma/mirror/vivo#hasPredecessorOrganization")[http://w3id.org/roh/mirror/vivo\#hasPredecessorOrganization\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh/mirror/vivo#hasPredecessorOrganization+ "http://w3id.org/roh/mirror/vivo#hasPredecessorOrganization+"))  que sirve para definir la organización predecesora de otra organización.  

**Axiom**a: Todas las instancias de Software, bibo:Document, Repository, Experimental Protocol y Research Result sólo puede tener como sucesora una instancia perteneciente a la misma entidad.  


## **Has Licence**


* URI                                [{\+}](http://purl.org/roh_edma#hasLicense "http://purl.org/roh_edma#hasLicense")[http://w3id.org/roh\#hasLicense\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#hasLicense+ "http://w3id.org/roh#hasLicense+")
* Label                    has license
* In Data                         : hasLicense
* Dominio: –
* **Rango**: vivo:License
* **Inversa**: —
* **Tipo de propiedad**: Object Property


Esta propiedad nos permite modelizar cuando una instancia tiene licencia. De este modo, si el Software, y, tiene una licencia x, entonces la tripleta  y :hasLicense x, permite saber cuál es la licencia de dicho Software. Lo mismo en el caso en el que tengamos instancias de otra entidad. 


## **Document Status**


* URI                                [{\+}](http://purl.org/roh_edma#documentStatus "http://purl.org/roh_edma#documentStatus")[http://w3id.org/roh\#documentStatus\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#documentStatus+ "http://w3id.org/roh#documentStatus+")
* Label                    document status
* In Data                         : documentStatus
* **Dominio**: Bibo:Document
* **Rango**: Union{ Accepted, Rejected}
* **Inversa**: –
* **Tipo de propiedad**: Object Property


Se modificaron los labels de esta entidad con el propósito de poder definir el estado de otras entidades como por ejemplo de Repository o Software. 


## **Language of the certificate**


* URI                            [{\+}](http://purl.org/roh_edma#languageOfTheCertificate "http://purl.org/roh_edma#languageOfTheCertificate")[http://w3id.org/roh\#languageOfTheCertificate\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#languageOfTheCertificate+ "http://w3id.org/roh#languageOfTheCertificate+")
* Label                    language of the certificate
* In Data                         : languageOfTheCertificate
* **Dominio**: :LanguageCertificate
* **Rango**: xsd:string
* **Inversa**: –
* **Tipo de propiedad**: Data Property


Se modificaron los label y la URI de esta propiedad para permitir añadir otras que permitieran definir el lenguaje de una instancia. Por tanto, se concretó tanto la URI como los labels de dicha propiedad.  Esta propiedad es subclase de 'language skills'.


## **Language**


* URI                                [{\+}](http://purl.org/roh_edma#language "http://purl.org/roh_edma#language")[http://w3id.org/roh\#language\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#language+ "http://w3id.org/roh#language+")
* Label                    language
* In Data                         : language
* **Dominio**: –
* **Rango**: xsd:string
* **Inversa**: –
* **Tipo de propiedad**: Data Property


Lo que nos permite modelizar esta propiedad es lo siguiente: x tiene idioma y, ó en tripletas x :language y, donde x es una instancia de cualquiera de las entidades de nuestra ontología,  e y es un String en él que se especifica el idioma.


## **Programming Language**


* URI                                [{\+}](http://purl.org/roh_edma#programmingLanguage "http://purl.org/roh_edma#programmingLanguage")[http://w3id.org/roh\#programmingLanguage\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#programmingLanguage+ "http://w3id.org/roh#programmingLanguage+")
* Label                    programming language
* In Data                         :programmingLanguage
* **Dominio**: ero:Software
* **Rango**: xsd:string
* **Inversa**: –
* **Tipo de propiedad**: Data Property


Esta data property nos permite definir el lenguaje de programación usado en un Software. (C, C\+\+, java, Python…). De este modo, si el Software, y, tiene un lenguaje de programación declarado en el string x, entonces la tripleta  y :programmingLanguage x, permite saber cuál es el lenguaje de dicho Software. 


## **correspondingOrganization**


●URI [{\+}](http://w3id.org/roh#correspondingOrganization "http://w3id.org/roh#correspondingOrganization")[http://w3id.org/roh\#correspondingOrganization\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#correspondingOrganization+ "http://w3id.org/roh#correspondingOrganization+")   

●Label corresponding organizacion  

●In Data :correspondingOrganization  

●Dominio: –  

●Rango: –  

●Inversa: roh:correspondingOrganizationOf  

●Tipo de propiedad: Object Property
  

Esta object property nos permite definir la organización responsable de un ResearchObject. De modo que ahora no tienes que ir al autor y buscar su posición e trabajo en el momento de la publicación para poder saber a qué organización corresponde. 


## **correspondingOrganizationOf**


●URI [{\+}](http://w3id.org/roh#correspondingOrganizationOf "http://w3id.org/roh#correspondingOrganizationOf")[http://w3id.org/roh\#correspondingOrganizationOf\+![](/assets/images/icons/linkext7.gif)](http://w3id.org/roh#correspondingOrganizationOf+ "http://w3id.org/roh#correspondingOrganizationOf+")   

●Label corresponding organización of  

●In Data :correspondingOrganizationOf  

●Dominio: –  

●Rango: –  

●Inversa: roh:correspondingOrganization  

●Tipo de propiedad: Object Property
  

  

Esta object property nos permite saber los ResearchObject de los que es responsable una cierta organización. 
  





