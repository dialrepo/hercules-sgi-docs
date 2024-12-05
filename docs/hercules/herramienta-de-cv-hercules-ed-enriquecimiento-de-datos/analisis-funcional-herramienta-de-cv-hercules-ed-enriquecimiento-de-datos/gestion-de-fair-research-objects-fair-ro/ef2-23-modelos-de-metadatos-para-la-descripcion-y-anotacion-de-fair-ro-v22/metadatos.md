# Hércules : Metadatos



Una vez explicada la estructura y los conceptos modelados en la ontología, con el fin de permitir la modelización en HERCULES de los resultados de investigación se van a exponer las tablas de los metadatos de los módulos descritos en la sección anterior. Las citas no tienen metadatos asociados, ya que como se ha detallado anteriormente es una propiedad entre recursos. 
  





| **Experimental Protocol** |  |  |
| --- | --- | --- |
| **Entidades** | **Metadatos** | **Axioma** |
| **Experimental Protocol** | Título o nombre | roh:title (some \+ only) xsd:string |
|  | Lista de autores | seqOfAuthors max 1 owl:Thing  SeqOfAuthors only rdf:Seq |
|  | Abstract | bibo:abstract only xsd:string |
|  | Keyword | vivo: freeTextKeyword only xsd:string |
|  | Descripción | vivo:descripcion only xsd:string |
|  | Autor de correspondencia | roh:correspondingAuthor only foaf:Person |
|  | Si está basado en otro protocolo experimental | hasPredecessor only ExperimentalProtocol |
|  | Página web | Foaf:homepage (only) bibo:Webpage |
|  | Experimental Protocol Result que produce | Produces only ExperimentalProtocolResult |
| \<ac:structured\-macro ac:name\="unmigrated\-wiki\-markup" ac:schema\-version\="1" ac:macro\-id\="36393646\-764e\-4247\-a5ff\-fd519370203a"\>\<ac:plain\-text\-body\>\<!\[CDATA\[ |  | Área de conocimiento | hasKnowledgeArea (only) \[skos:Concept and (skos:inScheme some 'Knowledge Area')] | ]]\>\</ac:plain\-text\-body\>\</ac:structured\-macro\> |
|  | Resultado de investigación la que pertenece | roh:partOfResearchResult only roh:ResearchResult |
|  | Recursos que cita | cito:cites only owl:thing |
|  | Fecha | 'vivo:date/time value' only 'vivo:Date/Time Value' |
|  | Idioma | roh:language only rdfs:Literal |
| **Experimental Protocol Result** | Metadatos de bibo:Document |  |
|  | Experimental Protocol que define el proceso seguido. | roh:producedBy only roh:ExperimentalProtocol |


![](/attachments/598147253/598147736.png) 




| **Repositorio** |  |  |  |
| --- | --- | --- | --- |
| **Entidades** | **Metadatos** | **Axioma** |
| **Repositorio** | estado del repositorio | roh:repositoryStatus only  (roh:Closed or roh:Open) |
|  | autores | roh:seqOfAuthors only rdf:Seq |
|  | fecha | vivo:dateTimeValue only  vivo:DateTimeValue |
|  | título | roh:title only xsd:string |
|  | área de conocimiento | roh:hasKnowledgeArea only (skos:Concept and(skos:inScheme some roh:KnowledgeArea)) |
|  | página web | foaf:homePage only vivo:Webpage |
|  | autor de correspondencia | roh:correspondingAuthor only foaf:Person |
|  | abstract | bibo:abstract only xsd:string |
|  | citas | cito:cites only owl:thing |
|  | resultado de investigación la que pertenece | roh:partOfResearchResult only roh:ResearchResult |
|  | readme | roh:hasReadme only roh:README |
|  | lenguaje | roh:language only xsd:string |
|  | predecesor | roh:hasPredecessor only roh:Repository |
|  | keyword | vivo:freeTextKeyword only xsd:string |
|  | componentes del repositorio | roh:repositoryHasPart  only (ExperimentalProtocol or bibo:Document or ero: ERO\_0000071\) |
|  | licencia | roh:hasLicense only vivo:License |
|  | descripción | vivo:description only xsd:string |
| **GitHub Repository** | metadatos de repositorio |  |
|  | predecesor | roh:hasPredecessor only roh:GitHubRepository |
| **BitBucket Repository** | metadatos de repositorio |  |
|  | predecesor | roh:hasPredecessor only roh:BitBucketRepository |
| **Zenodo Repository** | metadatos de repositorio |  |
|  | identificador | vivo:identifier only xsd:integer |
|  | DOI | bibo:doi only xsd:integer |


  

![](/attachments/598147253/598147735.png)
  





| **RO de tipo software** |  |  |  |
| --- | --- | --- | --- |
| **Entidades** | **Metadatos** | **Axioma** |
| **software** | estado del repositorio | roh:softwareStatus only  (roh:Provisional or roh:Final) |
|  | autores | roh:seqOfAuthors only rdf:Seq |
|  | fecha | vivo:dateTimeValue only  vivo:DateTimeValue |
|  | título | roh:title only xsd:string |
|  | plataforma | roh:platform only xsd:string |
|  | lenguaje de programación | roh:programmingLanguage only xsd:string |
|  | área de conocimiento | roh:hasKnowledgeArea only (skos:Concept and(skos:inScheme some roh:KnowledgeArea)) |
|  | página web | foaf:homePage only vivo:Webpage |
|  | autor de correspondencia | roh:correspondingAuthor only foaf:Person |
|  | abstract | bibo:abstract only xsd:string |
|  | citas | cito:cites only owl:thing |
|  | forma parte de un repositorio | roh:partOfRepository only roh:Repository |
|  | resultado de investigación la que pertenece | roh:partOfResearchResult only roh:ResearchResult |
|  | readme | roh:hasReadme only roh:README |
|  | lenguaje | roh:language only xsd:string |
|  | predecesor | roh:hasPredecessor only roh:Software |
|  | keyword | vivo:freeTextKeyword only xsd:string |
|  | licencia | roh:hasLicense only vivo:License |
|  | descripción | vivo:description only xsd:string |
| **Reservable**  **Software** | metadatos de software |  |


  

![](/attachments/598147253/598147734.png)
  





| **Research Result** |  |  |  |
| --- | --- | --- | --- |
| **Entidades** | **Metadatos** | **Axioma** |
| **Research Result** | autores | roh:seqOfAuthors only rdf:Seq |
|  | fecha | vivo:dateTimeValue only  vivo:DateTimeValue |
|  | título | roh:title only xsd:string |
|  | área de conocimiento | roh:hasKnowledgeArea only (skos:Concept and(skos:inScheme some roh:KnowledgeArea)) |
|  | página web | foaf:homePage only vivo:Webpage |
|  | autor de correspondencia | roh:correspondingAuthor only foaf:Person |
|  | abstract | bibo:abstract only xsd:string |
|  | citas | cito:cites only owl:thing |
|  | RO que componen el resultado | roh:ResearchResultHasPart only roh:ResearchResult |
|  | lenguaje | roh:language only xsd:string |
|  | predecesor | roh:hasPredecessor only roh:ResearchObject |
|  |  | roh:spends only roh:ResearchObjectExpense |
|  | keyword | vivo:freeTextKeyword only xsd:string |
|  | licencia | roh:hasLicense only vivo:License |
|  | descripción | vivo:description only xsd:string |
| **Research Object** | metadatos de Research Result |  |


  





| **Anotaciones** |  |  |  |
| --- | --- | --- | --- |
| **Entidades** | **Metadatos** | **Axioma** |
| **Annotation** | fecha | vivo:dateTimeValue only  vivo:DateTimeValue |
|  | autor de correspondencia | roh:correspondingAuthor only foaf:Person |
|  | motivación | oa:motivatedBy only oa:Motivation |


  

Respecto a los metadatos de las publicaciones, al no haberse alterado el contenido de esta entidad respecto a los que ya estaban representados en la ROH unificada, sus metadatos son los mismos que están descritos en su documentación oficial y que se incluyen en el Anexo del presente entregable. Únicamente se han incorporado las entidades README y Experimetal Protocol Result para complementar su representación. Los metadatos del segundo ya han sido expuestos y los del primero son los de bibo:Document. 
  

  





