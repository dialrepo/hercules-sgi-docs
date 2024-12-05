# Hércules : Proceso seguido en la especificación de los metadatos necesarios para cada tipo de RO



Los ROs pueden entenderse como elementos básicos o resultados concretos de una investigación, pero también como agregaciones de diversos ROs. Por lo tanto, es necesario representar tanto un RO de un solo elemento como un RO compuesto por varios ROs básicos junto con las propiedades que los relacionan. Existen ROs de muy diferentes tipos. El manejo de cada tipo específico de RO en cuanto a registro, enriquecimiento (manual y automático), exportación, importación, establecimiento de relaciones automáticas, etcétera, no es del todo genérico. Existen matices propios de cada RO. Algunos tipos específicos de RO sobre los cuales HERCULES, como plataforma de Open Science, tiene interés son: código, referencias bibliográficas, anotaciones manuales y protocolos experimentales. Estos serán los llamados ROs básicos.
  

Una vez organizados los tipos de RO por módulos (código, referencias bibliográficas, anotaciones manuales, protocolos experimentales y publicaciones) debemos definir y listar los metadatos extraíbles de los repositorios externos en los que se puedan encontrar los diferentes tipos de RO, de manera que se puedan seleccionar los necesarios para cada módulo a nivel global y abordar con esta información la ampliación de la ontología ROH. De este modo, deberá quedar predeterminado qué datos se deben extraer para cada RO, según el módulo al que pertenezcan, así como qué relaciones y entidades son necesarias incluir en la ontología para representar dichos metadatos.
  

Para especificar estos metadatos, los ROs han sido separados en dos categorías: los básicos o simples, y los que están compuestos por varios ROs. A continuación, expondremos los artefactos o módulos que representan ROs simples y, posteriormente, los ROs que no tienen sentido en sí mismos sin involucrar a otros ROs y sus metadatos asociados, dando lugar a ROs compuestos.


## Metadatos de los RO simples


En esta sección se describen los ROs simples, los más relevantes, ya que son los elementos básicos resultantes de cualquier investigación. Estos tipos de RO se describirán como módulos de código, protocolos experimentales, referencias bibliográficas, anotaciones y publicaciones. De estos, las referencias bibliográficas y las anotaciones solamente tendrán sentido con relaciones a otros ROs, dando lugar a ROs compuestos como resultado de la agregación de ROs. En primer lugar, explicaremos los metadatos de cada módulo o RO simple y en la sección de "Metadatos de los RO compuestos" se describirá la naturaleza de los metadatos o propiedades que serán necesarios para representar las relaciones entre diferentes ROs simples.


### Módulo de código


Este módulo debe estar integrado en la ontología como una subclase de obo\-iao:IAO\_0000030 (Information Content Entity) que es de tipo (rdf:type) roh:ReseachObject.
  

Dentro de este módulo tenemos diversos ROs que deben poder ser modelados de una forma más o menos genérica, para lo cual necesitamos saber tanto qué objetos de investigación diferentes pueden clasificarse dentro de este módulo como los metadatos que tienen todos ellos. Con este fin hemos revisado diferentes conceptos o entidades que pueden ser parte de este módulo y que exponemos a continuación:
  



* **Repositorios de código:** Estructuras propias del almacenamiento de código fuente de software de una manera estructurada y propia del repositorio en cuestión. Es imprescindible que estos estén en la nube. De este modo, se nos permitirá almacenar repositorios de un modo general sin necesidad de que sean solamente los que vamos a mencionar a continuación y que se representarán en la ROH por tener un mayor interés en el contexto del proyecto HERCULES:
	+ **Repositorio de GitHub y Repositorio de BitBucket**: Estos dos repositorios en concreto son muy relevantes debido a su amplia adopción en numerosos campos de investigación.
* **Archivos ejecutables:** En ocasiones nuestro resultado de investigación o RO se basa en archivos ejecutables en un lenguaje de programación especifico y para una o varias plataformas que desempeñan una función especial en nuestro resultado, por lo que debemos ser capaces de definir los tipos de archivos de código que forman parte de nuestro RO y que puede estar en un repositorio.


  

Los metadatos de estos ROs se exponen en la tabla que veremos más adelante. 


### Módulo de publicaciones


En este caso la ontología ya está preparada para soportar estos resultados de investigación o ROs. Tenemos muchos tipos de documentos diferentes, desde facturas hasta artículos de publicación que están dentro de esta categoría. Actualmente un resultado de investigación es de este módulo y va a ser una instancia de cualquiera de las entidades que hay en la entidad obo\-iao:IAO\_0000030 (Information Content Entity). 
  

En este caso, para listar los metadatos se van a agrupar las entidades que tengan los mismos metadatos y se expondrá una lista de los metadatos de estas entidades. Los metadatos de estos ROs se exponen en la tabla que veremos más adelante. 


### Módulo de referencias bibliográficas


Este módulo realiza únicamente una conexión entre una instancia de la entidad obo\-iao:IAO\_0000030 (Information Content Entity) y un listado de elementos de esta misma entidad o de la entidad Wfdesc:Workflow (después hablaremos de ella) que serán aquellos que se han referenciado. Hay que tener en cuenta que en esta entidad junto con la entidad Wfdesc:Workflow estarán todas las instancias que se pueden considerar ROs. Por tanto, no es un RO sino una propiedad intrínseca, de cualquier RO. Esta propiedad llevara a una lista (rdf:List) en la que cada ítem será el identificador de cada uno de los ROs que se han referenciando, pero únicamente se incorporarán los identificadores no sus metadatos. En caso de que un usuario quiera saber más sobre los metadatos de dichos ROs referenciados únicamente tendrá que preguntar al grafo de conocimiento por ellos. 
  

Este módulo, por tanto, efectúa una conexión entre ROs ya sean de código o de cualquier otro módulo. Sin embargo, es importante tenerlo en cuenta ya que en una referencia bibliográfica aparecen unos datos concretos que deben ser extraídos para la correcta representación de dicho RO referenciado en nuestro grafo de conocimiento. Lógicamente estos datos extraídos serán un subconjunto de los metadatos correspondientes al RO que está siendo referenciado, debido a que al extraer información de la referencia puede que no se pueda obtener todos los metadatos que definen el RO. 
  

Hay que tener en cuenta que dentro del concepto de referencia bibliográfica también pueden entrar las citas, cuya diferencia fundamental es que será una relación uno a uno y no de uno a una lista. Sin embargo, a pesar de que exista esta diferenciación, el razonamiento es el mismo: lo único que cambia es el significado de la propiedad que une los ROs. Dependiendo del grado de precisión que se quiera tener en el tipo de cita, se tendrán que incorporar a la ontología una o varias propiedades de dichas citas, para lo que se utilizará la ontología ***CiTO*** [https://sparontologies.github.io/cito/current/cito.html![](/assets/images/icons/linkext7.gif)](https://sparontologies.github.io/cito/current/cito.html "https://sparontologies.github.io/cito/current/cito.html"). 
  

Por lo tanto, cabe destacar también que hay un tipo de cita especial que no está dentro de esta categoría, pero que no deja de ser una cita. Estas citas estarán caracterizadas por la incorporación de más información del contexto en el que se ha realizado la cita, como por ejemplo el autor o un texto (anotación) añadido a la cita. Sin embargo, esta información de contexto se representará como un RO del módulo de anotaciones en el que se incluirá la motivación y demás contexto de la cita. 


### Módulo de anotaciones


Este módulo debe permitir a un usuario comentar un RO, ponerle una etiqueta (texto libre o de un vocabulario semántico) así como refutar y responder a otras anotaciones. Las anotaciones tienen sentido siempre que se indique la URI del *target* o RO sobre el que el usuario ha decidido realizar la anotación. 
  

La ontología o vocabulario sobre la que vamos a basar la representación de las anotaciones es ***Web Annotation Data Model*** [https://www.w3\.org/TR/annotation\-model![](/assets/images/icons/linkext7.gif)](https://www.w3.org/TR/annotation-model "https://www.w3.org/TR/annotation-model"). Hay que tener en cuenta que se intentarán representar las anotaciones del modo más sencillo posible. 
  

Toda anotación tiene un *body* y un *target*. Hay tres tipos esenciales de anotaciones: Las anotaciones realizadas sobre un RO, las anotaciones realizadas sobre una cita y las anotaciones sobre una anotación. En la primera, el *target* siempre será la URI que define dicho RO; y en la segunda, el target es la tripleta en la que se define que un tipo de RO cita/referencia a otro RO. En el primer caso, el target pertenece a la entidad obo\-iao:IAO\_0000030 (Information Content Entity); y en el segundo, pertenece a la entidad cito:Citation. Lógicamente, el tipo de *target* sobre el que queremos realizar la anotación será un metadato necesario de la misma. El último tipo de anotación es aquel que crea hilos en las anotaciones, en cuyo caso, el *target* será la URI de la anotación a la que se contesta. Para diferenciar estos tipos de anotaciones se utilizará el metadato "motivación", que nos proporcionará una idea de cuáles han sido los motivos que han llevado al usuario a realizar tal anotación. El primer caso tendrá la motivación que se elija; en el segundo caso, la motivación será citar; y en el último, responder o comentar, dependiendo de lo que elija el usuario, teniendo en cuenta las instancias de la clase oa:Motivation existentes y que se deseen poner a disposición del usuario, como por ejemplo *commenting*, *describing*, *editing*, *tagging* y muchas otras. Un caso especial se produce cuando la motivación es etiquetar (*tagging)*, asignada a anotaciones que pueden ser semánticas (cuyo *body* pertenezca a oa:SemantigTag) o anotaciones tipo *keywords* (cuyo *body* debe ser del tipo oa:Tag). 
  

Los metadatos de estos ROs se exponen en la tabla que veremos más adelante. 


### Módulo de procedimientos experimentales


Los protocolos experimentales describen el flujo de trabajo a llevar a cabo cuando se realiza un experimento. Estos flujos son de muy diversos tipos, siendo los más conocidos aquellos relativos a life sciences y denominados experimental protocols. Dependiendo del ámbito académico en el que nos encontremos, los protocolos experimentales pueden ser muy diferentes a la vez que pueden expresarse de un modo distinto. 
  

Respecto al grafo de conocimiento hay que tener en cuenta que no se puede almacenar todos los flujos de trabajo particulares realizados en cada experimento que se quiere almacenar, ya que estos experimentos pueden ser muy largos y tener muchos datos involucrados, lo cual conllevaría realizar un almacenamiento excesivo. Lo que sí se puede almacenar es el esquema de dicho procedimiento o *workflow* seguido. Además, almacenar solo la estructura básica de los procesos experimentales nos permitirá obtener los elementos básicos que todos los protocolos, sean del área que sean, tienen en común. Esto es un factor clave en este proyecto ya que hay que tener en cuenta que los protocolos experimentales de cada área del conocimiento pueden presentarse en formas muy distintas y deben ser almacenadas únicamente las características básicas comunes de todos ellos. 
  

Para la modelización de las estructuras básicas se va a usar la ontología ***Workflow* definition (wfdesc)** [https://wf4ever.github.io/ro/2016\-01\-28/wfdesc/](https://wf4ever.github.io/ro/2016-01-28/wfdesc/ "https://wf4ever.github.io/ro/2016-01-28/wfdesc/") que nos permitirá almacenar los procesos básicos de los que se componen los procesos experimentales, los cuales serán definidos como **procesos**. Estos procesos pueden ser ejecutables, cálculos, etcétera. 
  

Por tanto, dado un *workflow* vamos a almacenar los procesos que componen dicho protocolo junto con los input, outputs y materiales que necesitan dichos procesos para ser efectuados. Antes de exponer los metadatos vamos a comentar algunas características respecto al modelado y metadatos de las diversas entidades que se necesitan: 
  



* **Proceso**: Cualquier instancia de obo\-iao:IAO\_0000030 (Information Content Entity) puede ser un proceso. Esta entidad debe ser una subclase de la entidad wfdes:Workflow. Los metadatos que definen el proceso deben ser los necesarios para que quede claro que es lo que se está realizando. Sin embargo, si este proceso es un RO en sí mismo no se deberá incluir todos sus metadatos para definir este proceso. Los metadatos deben ser los mínimos para saber qué se está realizando con los inputs y los materiales para obtener los outputs. Sin embargo, muchas veces los procesos, sobre todo en ramas médicas, involucran no solo input y output sino unos materiales necesarios en dicho proceso. Por tanto, un proceso puede ir asociado con un input, con un output y con unos materiales, aunque puede no tener alguno de estos elementos. A continuación, vamos a hablar más de estos tres elementos:
	+ **Input/Oputput:** Debe ser un elemento de obo\-iao:IAO\_0000030 (Information Content Entity). Lo más normal es que sea un Dataset (vivo:Dataset), es decir un conjunto de datos. Aunque estos elementos sean ROs en sí, sus metadatos no irán incluidos en los metadatos de este RO de proceso experimental.
	+ **Materiales**: Esto será un string en él que se especificarán los materiales que se necesitan, ya sean agentes biológicos, materiales químicos, probetas, etc. También pueden ser reservables, sobre todo si dentro de esta entidad se crea una clase que defina materiales tipo a los que se están mencionando aquí (se necesita estudiar esta posibilidad para que tenga coherencia con ROH). Sus metadatos no irán tampoco con los metadatos del RO del *workflow*.


Tal y como hemos mencionado no es muy viable almacenar cada proceso realizado con unos datos concretos (el flujo de los datos), por tanto, hay que generar una entidad que permita almacenar o representar el documento que almacena esta información y asociarlo al esquema de flujo de trabajo que se podrá guardar en nuestro grafo de conocimiento. De este modo tendremos una URI enlazada al documento donde se exponen los procedimientos seguidos y que en nuestro grafo de conocimiento estará enlazado al esquema general de flujo de trabajo que se ha seguido. 
  

Los metadatos de estos ROs se exponen en la tabla que veremos a continuación.
   





| **MODULO DE CODIGO** |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Entidades** | **Metadatos** Las entidades que falta por modelar se pueden ver en la segunda columna resaltadas en negrita. |  | **Explicación relacionada con la modelización.** |  | **Actualmente en ROH** |  |
| **Repositorio** | **Listado de lenguajes humanos del repo.**  **Listado del lenguaje máquina del repo.**  **Listado de lenguaje maquina mayoritario del repo.**  Listado de autores.   Fecha de última actualización  Nombre del repositorio   Enlace al repositorio  **Licencia**  Status del repositorio (privado o no)  **La estructura del repositorio**.  Área de conocimiento   Keywords  Autor principal.  Abstract |  | Esta entidad debe ser una subclase de obo\-iao:IAO\_0000030 (Information Content Entity) que es de tipo roh:ResearchObject. |  | No está presente la entidad, pero las relaciones que sí existen en ROH nos permiten definir los siguientes metadatos:   Listado de autores.   Fecha de última actualización  Nombre del repositorio  Enlace al repositorio  Status del repositorio (privado o no)  Área de conocimiento   Keywords  Autor principal.  Abstract. |  |
| **Repositorio GitHub y**  **Repositorio BitBucket** | **Listado de lenguajes utilizados en el repositorio.**  **Listado de lenguaje maquina mayoritario del repo.**  Listado de autores.  **Tipo de participación de cada usuario.**  **Número de *commits* de cada usuario.**  **Número de *additions* de cada usuario.**  **Número de *deletions* de cada usuario.**  Fecha de última actualización  Nombre del repositorio   Enlace al repositorio  **Ramas activas.**  ***Releases*.**  **Fecha de la última release.**  **Issues / issues abiertos.**  **Licencia**  Status del repositorio (privado o no)  **README**  **Información del repositorio del que este es un *fork* en caso de haberlo.**  **Cantidad de *forks* del repositorio.**  **Obtención de diferencias si es un fork.**  **La estructura del repositorio.**  **Componentes de la rama master del proyecto de código.**  Área de conocimiento  Keywords  Autor principal.  Producto del código.  **Lenguaje del README.** |  | Esta entidad debe ser una subclase de la entidad de repositorio. |  | No está presente la entidad, pero las relaciones que sí existen en ROH nos permiten definir los siguientes metadatos:   Listado de autores.  Fecha de última actualización  Nombre del repositorio   Enlace al repositorio  Licencia   Status del repositorio (privado o no)  Área de conocimiento  Keywords  Autor principal.  Producto del código. |  |
| **Archivos ejecutables** | **Lenguaje de programación y plataforma para la que ha sido desarrollado.**  Listado de autores.   Fecha de ultimo modificación.  Nombre del archivo.  Status del código (local o en un repo)  **Link al repositorio donde este almacenado dicho programa.**  Área de conocimiento   Keywords  Autor principal |  | Se debe modelar la entidad en la ontología. |  | No está presente la entidad, pero las relaciones que sí existen en ROH nos permiten definir los siguientes metadatos:  Listado de autores.   Fecha de última actualización.  Nombre del repositorio  Área de conocimiento   Keywords  Autor principal |  |
| **Tipo de RO de protocolo experimental** |  |  |  |  |  |  |  |
| **Entidades** | **Metadatos** Las propiedades o entidades que falta por modelar se pueden ver en negrita en esta columna. |  | **Explicación relacionada con la modelización.** |  | **Actualmente en ROH** |  |
| **Procesos experimentales**  (wfdesc:Workflow) | Título o nombre  Lista de autores,  Abstract – Objetivo.  Keyword  **Lista con los procesos que componen este workflow.**  Autor u organización de contacto.  **Si está basado en otros workflow existentes, que son en realidad procesos de este mismo estos deberán estar listados como procesos (sus metadatos no irán incluidos en los metadatos de este RO).**  **Página web.**  **Documento de descripción del modelo paso a paso.**  Área de conocimiento. |  | Cada *workflow* este compuesto de procesos y relaciones entre los procesos (flujo de los datos). En esta entidad se define únicamente lo rangos o propiedades generales de todo el flujo de trabajo, visto como conjunto. Y con otra entidad se definirán los procesos que contiene. |  | No está presente la entidad, pero las relaciones que sí existen en ROH que están asociados a esta entidad son los siguientes:   Título,  Lista de autores,  Abstract  Keyword  Autor u organización de contacto.  Área de conocimiento. |  |
| **Procesos**  (Wfdesc:Proceso) | **Lista con los Inputs (URI que lo define)**  **Lista con los Outputs (URI que lo define)**  **Materiales necesarios.**  **El propio proceso (URI)**  Descripción/Abstract.  Tiempo de ejecución de ese proceso.  Tiempo de inicio.  **Outputs que serán utilizados como input de otro proceso.** |  | Cualquier instancia de obo\-iao:IAO\_0000030 (Information Content Entity) puede ser un proceso. |  | Esta entidad no está modelada en nuestra ontología, como se ha comentado es una subclase de Workflow. Las propiedades que salen de esta entidad y que sí que están modeladas en ROH son las siguientes:  Descripción/Abstract.  Tiempo de ejecución de ese proceso.  Tiempo de inicio. |  |
| **Documento de flujo de trabajo** | Título o nombre  Lista de autores,  Abstract – Objetivo.  Keyword  Autor u organización de contacto.  Página web.  **Workflow que ha dado como resultado dicho procedimiento.** |  | Va siempre asociado un workflow y tendrá la información donde se describe cómo se van ido ejecutando los diferentes procesos del flujo de trabajo paso a paso con los inputs que nos interesan. |  | Esto es una entidad en sí y no está integrada en ROH. Sería una subclase de bibo:Document.  En nuestra ontología sí que tenemos algunas propiedades modeladas que estarán asociadas a esta entidad como son:  Título o nombre  Página web.  Lista de autores,  Abstract – Objetivo.  Keyword  Autor u organización de contacto. |  |
| **Módulo de anotaciones** |  |  |  |  |  |  |  |
|  |  | **Metadatos** Las propiedades o entidades que falta por modelar se pueden ver en negrita en esta columna. |  | **Explicación relacionada con la modelización.** |  | **Actualmente en ROH** |  |  |
| **Metadatos asociados a la anotación.** (oa:Annotation) |  | **Motivación de la anotación.**  Fecha de realización  Autor  **Referencia al Taget (URI que lo identifica)**  **Metadatos asociados a su body o bodys** |  | Una anotación debe tener una propiedad que sea hasbody y otra hastarget. |  | No presenta presente la entidad que nos permite realizar anotaciones, pero las propiedades que necesita esta entidad que sí están modeladas en nuestra otología son:  Fecha de realización  Autor |  |  |
| **Metadatos asociados al body string** |  | **Tipo de formato.**  **lenguaje,**  **contenido**  **Idioma**  Fecha de realización.  Agente que lo realiza. |  | Debe ser un nodo en blando de tipo (dctypes:Text) el cual tenga diferentes propiedades saliendo de él, entre ellas el contenido que será un string, el idioma y todas las nombradas en la segunda columna. |  | Nos falta introducir la ontología dctype  [https://www.dublincore.org/specifications/dublin\-core/dcmi\-type\-vocabulary/](https://www.dublincore.org/specifications/dublin-core/dcmi-type-vocabulary/ "https://www.dublincore.org/specifications/dublin-core/dcmi-type-vocabulary/")  de modo que podamos decir que ese nodo en blanco es del tipo Texto.  Hay ciertas propiedades que salen de este nodo en blanco que sí tenemos modelizadas y son:  Fecha de realización.  Agente que lo realiza. |  |  |
| **Metadatos asociados al body de tipo tagging** |  | Fecha de realización.  Agente que lo realiza.  String con las palabras claves. |  | En caso de ser un string estamos poniendo palabras claves que definan aquello que designa el target. En este caso la Motivación debe ser tagging (que es una instancia de la oa:Motivacion). En este caso el body debe ser una instancia especial de la entidad como oa:Tag. |  | Nos falta la presencia de la entidad oa:Tag con su subclase oa:SemanticTag que nos permite realizar esta motivación especifica. |  |  |
|  |  | URI |  | En caso de que sea una URI, estamos haciendo un etiquetado semántico. Por lo tanto estamos realizando una anotación con motivación oa:SemanticTag, lo cual es una subclase de oa:Tag. |  |  |  |  |
| **Módulo de publicaciones** |  |  |  |  |  |  |  |
|  |  | **Metadatos** Las propiedades o entidades que falta por modelar se pueden ver en negrita en esta columna. |  | **Explicación relacionada con la modelización.** |  | **Actualmente en ROH** |  |  |
| **Obo\-iao:iao\_000027 (DataItem), obo\-iao:IAO\_0000109 (Measurement Datum),**  **Obo\-iao:IAO\_0000582 (Time Stamped Mesurement Datum)** |  | Organización correspondiente. |  |  |  |  |  |  |
| **bibo:Collection** |  | Organización correspondiente  oclcnum |  |  |  |  |  |  |
| **bibo:Periodical, bibo:Magazine** |  | Metadatos de bibo:Collection  Eiss  Issn  Organización que lo publica |  |  |  |  |  |  |
| **bibo:Journal** |  | Metadatos de bibo:Periodical  Abreviación |  |  |  |  |  |  |
| **roh:Dossier** |  | Metadatos de bibo:Collection  Fecha  Titulo  Descrpcion  Identificador  El (roh:FundingPrgram o roh:ProjectContract o bibo:Report o vivo:Project) con el que está relacionado. |  |  |  |  |  |  |
| **bibo:Document, vivo:Abstract, bibo:AudioVisualDocument, roh:CaseStudy, roh:Catalog, vivo:ConferencePoster, roh:EditedPublication, foaf:Imagen, roh:Invoice, bibo:Manual, roh:ProformaInvoice, bibo:Webpage** |  | Lista de autores  Página inicio  Página fin  Autor de referencia  Organización a la que corresponde  Fecha  Referencia al bibo:Book o bibo:Collection en la que se ha publicado  Abstract  Doi  Estatus (aceptado o denegado)  Titulo  Keyword |  |  |  |  |  |  |
| **bibo:Article, vivo:EditorialArticle, roh:BlogPost, roh:PressArticle, roh:PeerReviewedArticle** |  | Metadatos de bibo:Document  Página de inicio  Página fin  doi |  |  |  |  |  |  |
| **bibo:AcademicArticle, roh:PeerReviewdArticle,** |  | Metadatos de bibo:Article  Eanucc13  bibo:Journal en la que ha sido publicado. |  |  |  |  |  |  |
| **obo\-iao:IAO\_0000013 (JournalArticle)** |  | Metadatos de bibo:AcademicArticle  La métrica de publicación que tuene  Fecha de publicación. |  |  |  |  |  |  |
| **vivo:ConferencePaper, roh:WorkshopPaper** |  | Metadatos de bibo:Article.  Conferencia en la que se ha presentado. |  |  |  |  |  |  |
| **bibo:Book, bibo:Preoceedings** |  | Metadatos de bibo:Document  Lugar de publicación  Editorial iccn  Isbn  foaf:Organización que lo publica. |  |  |  |  |  |  |
| **vivo:Dataset** |  | El bibo:Document que lo ha citado como dataset usado.  Metadatos de bibo:Document. |  |  |  |  |  |  |
| **bibo:DocumentPart** |  | Organización que lo publica  Metadatos de bibo:Document  **Lugar de publicación** |  |  |  |  |  |  |
| **bibo:BookSection, bibo:Chapter** |  | Metadatos de bibo:DocumentPart.  Página final  Página inicial  Editorial |  |  |  |  |  |  |
| **bibo:Patent** |  | Metadatos de bibo:Document  Modalidad  Identificador  Organización que lo publica.  Fecha de expedición  KnowledgeArea  Organización propietaria  Localización  Fecha de publicación |  |  |  |  |  |  |
| **bibo:Report, roh:EthicalReport, roh:EthicalAudit, roh:TecnicalReport** |  | Metadatos de bibo:Document  Organización que distribuye.  Organización que publica.  Tiempo/Hora |  |  |  |  |  |  |
| **roh:EthicalValidation.** |  | Metadatos de roh:EthicalReport  Estatus. |  |  |  |  |  |  |
| **roh:EvaluationSummary** |  | Metadatos de bibo:Report.  Estado de la evaluación. |  |  |  |  |  |  |
| **roh:Justification** |  | Metadatos de bibo:Report.  Project con el que está relacionado. |  |  |  |  |  |  |
| **vivo:ResearchProposal** |  | Metadatos de bibo:Report**.**  El (roh:Justification o roh:ProjectContract vivo:Project o vivo:ResearchProposal) con la que está relacionado. |  |  |  |  |  |  |
| **bibo:Thesis, roh:DegreeThesis, roh:MastersThesis, roh:PhDThesis** |  | Metadatos bibo:Document  Lugar en el que se publicó.  Abreviación  **Nota** |  |  |  |  |  |  |
| **bibo:CollectedDocument, roh:Database, bibo:EditedBook,** |  | Metadatos de bibo:Document  Relación con el bibo:Document del que es parte (mínimo 1\) |  |  |  |  |  |  |
| **bibo:Issue** |  | Metadatos de bibo:collectedDocument.  Relación con el bibo:Article del que es parte. (mínimo 1\) |  |  |  |  |  |  |
| **roh:CurriculumVitae** |  | Tiene los mismos metadatos de vivo:Document.  Resumen |  |  |  |  |  |  |


## Metadatos de los RO compuestos


Este módulo designa resultados de investigación o ROs enlazados ya sea porque son del mismo proyecto o porque uno se basa en otro. Estas dos relaciones nos permitirán obtener tanto todos los ROs en los que se basa o inspira un RO como los ROs que componen el resultado de una investigación concreta. Son dos relaciones distintas y en la ontología deben ser dos relaciones distintas que se deben definir por separado. Los metadatos de estos ROs están compuestos por la unión de los metadatos de ambos ROs y por la relación que los une. 
  

  





