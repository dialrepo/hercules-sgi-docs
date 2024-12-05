# Hércules : Proceso seguido en la especificación de los metadatos necesarios para cada tipo de RO – versión 2



Existen ROs de muy diferentes tipos y el manejo de cada tipo específico de RO en cuanto a registro, enriquecimiento (manual y automático), exportación, importación, establecimiento de relaciones automáticas, etc. no es del todo genérico. Existen matices propios de cada RO. Algunos tipos específicos de RO sobre los cuales HERCULES, vista como plataforma de Open Science, tiene interés son: **software, publicaciones académicas y protocolos experimentales,** r**eferencias bibliográficas, las anotaciones y los repositorios.**
  

Dentro de todos estos campos en los que se está interesado, existen algunos que son objectos de investigación y otros que nos permiten ampliar el contexto o las relaciones entre ellos. El software, las publicaciones académicas y los protocolos experimentales son resultados de investigación propios. Por otro lado, un repositorio permite almacenarlos, pero no es un resultado del proceso de investigar. Del mismo modo ocurre con las anotaciones y las citas que permiten ampliar las relaciones entre resultados, pero no son directamente resultados de investigación. Sin embargo, esto no contradice que todos estos campos nombrados puedan exportarse o puedan ser reclamados por un autor, es decir, todos estos elementos podrán tener asociado, por ejemplo, un archivo JSON exportado siguiendo el esquema propuesto por la iniciativa RO\-Crate [{\+}](https://www.researchobject.org/ro-crate/ "https://www.researchobject.org/ro-crate/")[https://www.researchobject.org/ro\-crate/\+![](/assets/images/icons/linkext7.gif)](https://www.researchobject.org/ro-crate/+ "https://www.researchobject.org/ro-crate/+") para la compartición de ROs con la comunidad científica. 
  

En la siguiente imagen se expone la jerarquía o taxonomía de las entidades que son necesarias para la descripción de estos conceptos, teniendo en cuenta que todas las fechas son relaciones de subclase. Algunas de estas entidades han sido creadas en esta nueva versión de ROH con el fin de poder describir los diversos resultados de investigación, otras, por el contrario, han sido modificadas respecto a la versión anterior. Todas estas entidades están descritas detalladamente en la [sección de entidades añadidas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.pkwqa1 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.pkwqa1"). Las propiedades que nos permiten relacionar estas propiedades están detalladas en [la sección de propiedades añadidas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.upglbi "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.upglbi"). 
  

![](/attachments/598147259/598147750.png)  

*Ilustración 1: Estructura necesaria para el almacenamiento de ROs.*
  

A continuación, se aclara el significado que se ha dado al concepto de Research Result en HERCULES. Posteriormente se verán los conjuntos de entidades que permitirán definir los diferentes ROs básicos (Software, Documentos, Protocolos experimentales) y en la última sección veremos aquellos ROs que se relacionan con los anteriores (citas, anotaciones y repositorios) dando lugar a ROs compuestos.


## Research Result and Research Object


Esta propuesta de modelado tiene como propósito principal permitir representar los resultados de una investigación como una agregación de ROs. De este modo, en HERCULES el resultado de investigación se definirá mediante la entidad [Research Result](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.40ew0vw "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.40ew0vw")[.](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.40ew0vw "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.40ew0vw") Este resultado puede está compuesto por diversos recursos o ROs básicos, entre los que suele encontrarse una publicación científica: normalmente un artículo aprobado por la comunidad científica en el que se explica y demuestra dicha aportación. Sin embargo, son varios los recursos o ROs básicos que pueden formar parte de un resultado de investigación y que permiten la replicación de este por parte de otros usuarios de la comunidad. Estos recursos o componentes serán modelizados mediante la entidad [Research Object](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2fk6b3p "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2fk6b3p"). Estos componentes también son resultados de investigación, lo cual explica porque esta entidad es una subentidad de la entidad Research Result. Además de los componentes que forman parte de un resultado de investigación, también lo producido en un proyecto será modelizado mediante la entidad [Research Object](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2fk6b3p "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2fk6b3p"). 
  

Los ROs u objectos de investigación que se modelizan como software, publicaciones científicas o protocolos experimentales pueden formar parte de un resultado de investigación mediante la propiedad [partOfResearchResult](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1tuee74 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1tuee74") o su inversa, [researchResultHasPart](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1tuee74 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1tuee74") (esta relación se ilustra en la siguiente imagen). 
  

![](/attachments/598147259/598147737.png)
  

*Ilustración 2: Propiedad que permite definir los recursos que forman parte de un resultado de investigación.*
  

Todo resultado de investigación podrá tener asociado un archivo de tipo JSON que permita la exportación de dicho resultado de una forma estandarizada según los requisitos de la iniciativa RO\-Crate de ResearchObject.org. 
   

Por lo tanto, se propone que los investigadores tengan un listado de sus resultados de investigación de modo que cada uno de ellos contenga los diversos componentes que lo forman. Asimismo, los objetos de investigación que no pertenecen a un investigador de la universidad en la que está desarrollado el grafo de conocimiento no tendrán asociado un archivo JSON para su exportación. Dicho resultado habrá sido introducido en el grafo debido a una cita o mención. Al no ser el resultado de un investigador de dicha universidad, no tiene sentido que se cree un fichero que permita la exportación de este resultado, ya que el autor al no ser miembro de la universidad pertinente no tiene los derechos para realizar la reclamación de dicho RO. 
  

Esta afirmación no contradice el hecho de que un investigador pueda preguntar o reclamar, por ejemplo, un repositorio a pesar de que esta entidad no puede formar parte de un resultado u objecto de investigación. Si el autor es de la universidad, sí podrá reclamar todos los objetos de investigación que haya almacenado en un repositorio concreto, aunque este repositorio no sea considerado como resultado de investigación en sí mismo. Lo mismo ocurre con las anotaciones y las citas que un investigador quiera reclamar. Siempre que el investigador pertenezca a la universidad a la que corresponde el grafo de conocimiento esta información podrá ser reclamada en un archivo JSON que siga las indicaciones de la iniciativa RO\-Crate. 


## Conjunto de entidades que pueden formar parte de un resultado de investigación


Aquí se modelizan los ROs de tipo código, documento (o publicación académica) y protocolo experimental. 


### **RO de tipo software**


Este tipo de RO está definido en ROH mediante las entidades [Software](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1opuj5n "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1opuj5n"), y [ReservableSoftware](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.48pi1tg "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.48pi1tg"), explicadas en la sección de [Entidades](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.pkwqa1 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.pkwqa1"). El motivo de la utilización de dos entidades para describir este RO es debido a la necesidad de diferenciar entre un software resultado de una investigación del que es reservable para llevar a cabo una actividad de investigación u otro tipo de actividad. Como se puede ver en la [ilustración 1\.](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv") La entidad ReservableSoftware es una subclase de Reservable y de Software, permitiendo modelizar el software reservable. 
  

Por otro lado, estos tipos de recursos suelen tener asociados un documento, denominado comúnmente, README en el que se describe la funcionalidad y el uso de dicho software. Por este motivo, como subclase de la entidad bibo:Document, se ha creado la entidad [README](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3mzq4wv "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3mzq4wv"). Estas dos entidades, software y README, se relacionarán mediante la propiedad [readmeOf](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.36ei31r "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.36ei31r") o [hasReadme](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.meukdy "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.meukdy"). Como la entidad ReservableSoftware es subclase de Software, también pueden estar relacionadas con un README mediante las mismas propiedades. Véase la [ilustración 4](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1baon6m "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1baon6m")[.](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1baon6m "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1baon6m")
  

Debe tenerse en cuenta que se han separado los conceptos de software y repositorio. Más adelante, en la descripción del concepto [repositorio](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2w5ecyt "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2w5ecyt") se exponen los motivos que han impulsado esta decisión. 


### **RO de procedimientos experimentales**


Los protocolos experimentales describen el flujo de trabajo a llevar a cabo cuando se realiza un experimento. Estos flujos son de muy diversos tipos; siendo los más conocidos aquellos relativos a life sciences, denominados experimental protocols. Dependiendo del ámbito académico en el que nos encontremos los protocolos experimentales pueden ser muy diferentes, a la vez que pueden expresarse de un modo muy distinto. 
  

Este RO será modelizado mediante dos entidades, [Experimental Protocol](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2nusc19 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2nusc19") y [Experimetal Protocol Result.](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1302m92 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1302m92") La primera entidad modeliza el proceso a seguir, es decir, es el proceso general que se debe seguir en dicho experimento. Al ser un proceso se entiende que esta entidad sea una subclase de process, véase [ilustración 1\.](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv")  La segunda entidad Experimental Protocol Result, nos permite definir la ejecución de un protocolo experimental concreto junto con sus resultados. Es un documento el cual deberá contener los resultados obtenidos en la ejecución. 
  

Dado que la entidad Experimetal Protocol define un proceso y que la entidad Experital Protocol Result debe ser un documento, se entiende la jerarquía que estas dos entidades en ROH, la cual puede verse en la [ilustración 1\.](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv")
  

Un Experimental Protocol Result puede existir sin que en el grafo de conocimiento esté descrito el Experimental Protocol en el que se basa. Sin embargo, estas dos entidades pueden relacionarse mediante la propiedad produces, permitiendo definir que un Experimetal Protocol produce un Experital Protocol Result. Esta relación se ilustra en la siguiente imagen. 
  

![](/attachments/598147259/598147751.png)  

*Ilustración 3: Relación entre Experimetal Protocol y Experimental Protocol Result*
  

En la primera versión se especificó la necesidad de definir cuáles eran los inputs, los outputs y los materiales utilizados en los procesos experimentales. Sin embargo, en esta versión no se definirán. Si pensamos en un experimento que se está realizando con bacterias, por ejemplo, no tiene sentido que se tengan que declarar como input o material, ya que esto obligaría a la declaración de dicha bacteria en el grafo de conocimiento, cuando las universidades ya tienen sistemas de almacenamiento propios con esa información. Por tanto, la declaración de los inputs, outputs y materiales es excesiva para una ontología cuyo principal fin es la modelización la administración universitaria. A pesar de esto, los diversos materiales, inputs y outputs, en el caso de estar declarados en el grafo de conocimiento, se pueden referenciar, ya sea mediante citas o anotaciones en el caso en el que se quiera especificar la funcionalidad de dichos recursos en la realización de los experimentos. En las secciones de [referencias bibliográficas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.4h042r0 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.4h042r0") y [anotaciones](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3vac5uf "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3vac5uf") se explicará en detalle cómo realizar las citas o anotaciones.


### **RO de tipo publicación o documento**


En este caso HERCULES ya está preparada para soportar estos ROs. Hay una gran gama de documentos diferentes, desde facturas hasta artículos de publicación. Actualmente un objeto de investigación perteneciente a este módulo es una instancia de bibo:Document o de cualquiera de sus subclases. 
  

Como se comentó en las secciones de [RO de tipo Software](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1opuj5n "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1opuj5n"), y [RO de tipo procedimientos experimentales,](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.41mghml "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.41mghml") y se comentará en la sección de [RO de tipo repositorio,](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2w5ecyt "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2w5ecyt") ha sido necesario añadir dos nuevas subentidades a bibo:Document: [Readme](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3mzq4wv "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3mzq4wv") y [ExperimentalProtocolResult.](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1302m92 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1302m92") Estas dos entidades permiten, respectivamente, definir la estructura y funcionalidad de un código o software y describir el proceso específico con resultados concretos de la realización de un protocolo experimental. 


## Descripción de diversos conjuntos de entidades que permitirán una mayor cohesión entre ROs.


En esta sección se describen la modelización que se ha adoptado para poder describir los repositorios, las anotaciones y las citas. Como ya se ha comentado estos recursos no serán resultados ni objectos de investigación, pero permiten una descripción más eficiente de los ROs y de las relaciones entre ellos. 


### **Referencias bibliográficas o citas**


Conceptualmente no sería como tal un resultado de una investigación, pero es necesario que exista en el modelo para permitir la relación de diversos ROs y permitir igualmente que un investigador pueda reclamar la lista de citas que tiene su investigación. Esta relación se modeliza mediante la propiedad cites o citedBy, de la ontología ***CiTO*** [https://sparontologies.github.io/cito/current/cito.html![](/assets/images/icons/linkext7.gif)](https://sparontologies.github.io/cito/current/cito.html "https://sparontologies.github.io/cito/current/cito.html"). Esta propiedad nos permite decir que un recurso cita a otro recurso, o es citado por otro recurso. Los recursos citados no tienen por qué ser ROs. 
  

Es importante diferenciar la relación que hay entre dos recursos producida por una cita y por una anotación. Con la cita únicamente se podrá decir que un recurso cita a otro, mientras que las anotaciones permiten dar contexto a dicha relación entre los recursos, incluso si la principal motivación de dicha relación es la de citar. Si se quiere realizar cualquier especificación en una cita, deberá realizarse con anotaciones. También hay que tener en cuenta que las anotaciones permiten realizar relaciones entre recursos con muchos más motivos que el de citar. Véase la modelización de las [anotaciones](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3vac5uf "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3vac5uf") para más información. 


### **Repositorio**


Para modelizar este concepto ha sido necesario la introducción de la entidad [Repository,](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2250f4o "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2250f4o") la cual, como se puede ver en la [ilustración 1,](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv") es una subclase de obo\-iao:IAO\_0000030 (Information Content Entity), esto es debido a que un repositorio es un contenedor donde almacenar información. 
  

Dada la importancia de algunos tipos de repositorios, debido a su gran utilización en la comunidad científica, se han especificado tres tipos de repositorios, que se representarán mediante tres entidades distintas, que serán subclases de Repository (véase [ilustración 1\)](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv"). Estas entidades definen los siguientes repositorios concretos. 


* **Repositorio de GitHub (**[**GitHubRepository**](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.319y80a "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.319y80a")**) y Repositorio de BitBucket (**[**BitBucketRepository**](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.haapch "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.haapch")**)**: Estos dos repositorios son muy relevantes debido a su amplia adopción en numerosos campos de investigación.
* **Repositorio de Zenodo (**[**ZenodoRepositoy**](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1gf8i83 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.1gf8i83")**)**: Es un repositorio muy usado por la comunidad científica.


  

Mediante la estructura de subclases que se observa en la [ilustración 1](#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv "#ProcesoseguidoenlaespecificacióndelosmetadatosnecesariosparacadatipodeRO–versión2-bookmark=id.1ksv4uv") podemos modelizar con la entidad Repository aquellos repositorios que no sean GitHub, BitBucket o Zenodo. 
  

Al igual que ocurría en los RO de tipo código, los repositorios también suelen tener un documento de tipo [README,](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3mzq4wv "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.3mzq4wv") en el que se describe el contenido y funcionamiento de dicho repositorio. Dos instancias de estas dos entidades, Repositorio y README, están relacionadas mediante la propiedad [readmeOf](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.36ei31r "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.36ei31r") o [hasReadme](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.meukdy "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.meukdy"). Del mismo modo que ocurría con ReservableSoftware, las tres subentidades de Repository se relacionan con el README mediante las mismas funciones. En la Ilustración que veremos a continuación podemos ver como las entidades de Repositorio y Software están relacionadas con el README. A pesar de que en la imagen solo se vea la relación en las superclases, es necesario tener presente que las subclases heredan las propiedades de su superclase, es decir, se relacionan con el documento de tipo README mediante el uso de la misma propiedad. 
  

![](/attachments/598147259/598147753.png)  

*Ilustración 4: Relación de la entidad README con las entidades Software y Repository, así como con sus subclases.*
  

Como puede observarse se ha separado el concepto de repositorio del de software. Es verdad, que hay ciertos repositorios, como es el caso de GitHub y BitBucket, que comúnmente se usan para desarrollar software. Sin embargo, estos repositorios permiten el almacenamiento no solo de software sino también de muchos otros recursos. Un artículo científico puede encontrarse en un repositorio, así como un dataset, o un protocolo experimental. Zenodo es un gran ejemplo, ya que permite el almacenamiento de muchos archivos multimedia pero no está diseñado con la intención de desarrollar software. Esto lleva al inconveniente de que necesariamente si se ha utilizado el repositorio de GitHub o de BitBucket para desarrollar software se declare el repositorio y el software por separado. 
  

Esta entidad **no es un resultado de investigación**, pero sí permitirá declarar que un Research Object, es decir, un componente de un resultado científico está almacenado en dicho repositorio. Para modelizar que un documento, protocolo experimental o un software está contenido en un repositorio se deberá usar la propiedad [repositoryHasPart](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.4du1wux "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.4du1wux") o [partOfRepository](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2szc72q "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.2szc72q"), como se refleja en la siguiente ilustración. En la lectura de cualquiera de estas propiedades se explicará más en profundidad sus dominios, sus rangos, su funcionalidad y cómo deben realizarse estas relaciones en tripletas, en esta sección no se entrará en ese detalle, consúltese sección [Entidades](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.pkwqa1 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=_heading%3Dh.pkwqa1"). 
  

![](/attachments/598147259/598147752.png) *Ilustración 5: Relación que permite definir que ROs forman están contenidos en un repositorio.*


### **Anotaciones**


Las anotaciones se modelizan en ROH mediante diversas entidades y propiedades importadas de la ontología *oa* [https://www.w3\.org/TR/annotation\-model/![](/assets/images/icons/linkext7.gif)](https://www.w3.org/TR/annotation-model/ "https://www.w3.org/TR/annotation-model/"). Estas entidades son oa:Annotation, oa:Motivation y las propiedades oa:hasTarget y oa:hasBody. Para más información sobre el uso de estas entidades y propiedades se aconseja leer las indicaciones de los autores de la ontología. 
  

Las anotaciones tienen un target que es sobre lo que se quiere realizar la anotación y un body que es la anotación es sí misma. Además para poder aportar más información sobre la anotación esta deberá tener un autor, una fecha y una motivación la cual podemos definir mediante la propiedad 'oa:motivateBy' y la entidad oa:Motivation. 
  

De este modo si un autor quiere realizar una anotación sobre un artículo que cita a otro añadiendo un comentario deberá crear una anotación cuyo target sea el artículo en cuestión. Se declararán diversos metadatos como el autor de la anotación y la fecha y la motivación que en este caso será la de citar. Por último, el body en este caso deberán ser dos, el primero sea la URI del artículo citado del que quiera hablar y el segundo body de la anotación será el comentario, en este caso un string, que dicho autor quiere realizar sobre la cita.
   





