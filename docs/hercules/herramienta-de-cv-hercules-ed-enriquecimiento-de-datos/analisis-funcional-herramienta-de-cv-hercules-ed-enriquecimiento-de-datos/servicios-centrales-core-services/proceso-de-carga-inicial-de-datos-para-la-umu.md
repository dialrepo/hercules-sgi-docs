# Hércules : Proceso de carga inicial de datos para la UMU



La carga inicial de datos obtiene todos los datos disponibles de los investigadores que estén en la universidad con el fin de unificarlos y centralizarlos en el grafo. La carga tiene 3 pasos:

1. Carga de datos de los sistemas de la UMU o del SGI.
2. Carga de datos de fuentes externas de publicaciones científicas.
3. Carga de datos de CVs del PDI.

## 1\. Carga de datos \- UMU / SGI

Los datos que se cargan son los siguiente:

* Organizaciones: Datos relacionados con la organizaciones.
* Investigadores: Datos relacionados con el investigador.
* Grupos: Datos relacionados con el grupo de investigación.
* Proyectos: Datos relacionados con proyectos.

En estos datos no se aplica desambiguación ya que va a ser el primer paso y asumimos que son correctos.

De momento, estos datos se cargan desde unos archivos proporcionados en formato XMLs, si bien en un futuro llegarán desde Hércules SGI, junto con otras información del personal investigador, como puesto de trabajo, formación académica, actividad docente, etc.

Este código provisional está en [HerculesMA/src/Hercules.MA.Load at main · HerculesCRUE/HerculesMA (github.com)](https://github.com/HerculesCRUE/HerculesMA/tree/main/src/Hercules.MA.Load "https://github.com/HerculesCRUE/HerculesMA/tree/main/src/Hercules.MA.Load")

## 2\. Carga de datos \- Fuentes externas

La incorporación de publicaciones de fuentes externas tiene 2 pasos:

* Obtención de los datos de fuentes externas de publicaciones científicas.
* Carga de datos de fuentes externas.

### Obtención de los datos de fuentes externas de publicaciones científicas

Se obtienen los datos de tres fuentes principales: WoS, Scopus y OpenAire; en ese orden de prioridad. Según el  [análisis de fuentes externas](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/fuentes-externas-de-publicaciones-cientificas.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/fuentes-externas-de-publicaciones-cientificas.md") realizado para el proyecto, WoS es una fuente más completa y con un API más usable que Scopus. OpenAire es un catálogo libre que puede tener otros tipos de publicaciones y, en ocasiones, información adicional de cada publicación. 

Se han desarrollado un [conjunto de microservicios para cada una de las fuentes externas](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources"). Estos servicios van a hacer las peticiones al endpoint correspondiente mediante el código ORCID del usuario para traer toda la información disponible. En el caso de que falten publicaciones o algún dato, el investigador tendría que ir a la fuente y modificarlo allí. Para una información más detallada, visitar el repositorio de GitHub: [https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources")

Si una misma publicación llega de diversas fuentes, se unifica la información de los autores y la de las publicaciones. Es decir, si se encuentra dos o más publicaciones con el mismo identificador, se rellenarán los datos faltantes. En el caso que haya datos distintos en un mismo campo, se dará prioridad al orden establecido indicado anteriormente (WoS, Scopus, OpenAire). 

Para la obtención de la bibliografía utilizada en una publicación se hace uso del API ofrecida por SemanticScholar (como fuente secundaria). Se pregunta por el DOI de la publicación, y si tiene información, nos la devuelve de la siguiente forma: 

"doi": "10\.1023/A:1012801612483", 

"url": "[https://www.semanticscholar.org/paper/8df4c5bceac65b2dae684551ff6c747c04ebbcef](https://www.semanticscholar.org/paper/8df4c5bceac65b2dae684551ff6c747c04ebbcef "https://www.semanticscholar.org/paper/8df4c5bceac65b2dae684551ff6c747c04ebbcef")", 

"anyoPublicacion": 2001, 

"titulo": "On Clustering Validation Techniques", 

"revista": "Journal of Intelligent Information Systems", 

"autores": {  "M. Halkidi": "2949720",  "Yannis Batistakis": "2042553",  "M. Vazirgiannis": "1690383" }

A su vez, se comprueba en Zenodo (mediante DOI) si hay algún recurso de tipo pdf. En el caso de encontrar alguno, traerá el enlace de descarga. 

Posteriormente, se [enriquecen los descriptores temáticos y específicos de la publicación](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/index.md") en cuestión, con la finalidad de ofrecer más información al usuario. 

Una vez obtenida toda la información, se guarda en formato JSON y se envía al programa de carga.

### Carga de datos de fuentes externas

Para los datos de fuentes externas se diferencia entre publicaciones, research objects (ro) y personas. El proceso de carga leerá los datos de los JSON recibidos y tratará los datos incluidos en el mismo.  El código de este programa de carga está en [HerculesED/src/Hercules.ED.ResearcherObjectLoad at main · HerculesCRUE/HerculesED (github.com)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ResearcherObjectLoad "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ResearcherObjectLoad")

Para que algún recurso cargado se pueda llegar a considerar igual a otro, y por ello modificar el almacenado, se siguen diversos criterios para diferenciarlos. En el caso de que se consideren iguales en la desambiguación se cargarán los datos del último, los datos recibidos en el JSON, cambiando los almacenados en base de datos (ver más abajo el proceso de desambiguación de los objetos, en el apartado de [Deduplicación](#ProcesodecargainicialdedatosparalaUMU-CargaInicial_Deduplicacion "#ProcesodecargainicialdedatosparalaUMU-CargaInicial_Deduplicacion")).

Se diferencian los valores comprobados entre cada recurso: 



| Publicación |  |  |  |
| --- | --- | --- | --- |
| Propiedad | Tipo desambiguación | Score positivo | Score negativo |
| Título | Title | 0\.8 |  |
| DOI | Identifier |  |  |
| Autores | ItemList | 0\.5 |  |



| Research Object |  |  |  |
| --- | --- | --- | --- |
| Propiedad | Tipo desambiguación | Score positivo | Score negativo |
| Título | Title | 0\.8 |  |
| DOI | Identifier |  |  |
| Identificador FigShare | Identifier |  |  |
| Identificador GitHub | Identifier |  |  |
| Identificador Zenodo | Identifier |  |  |
| Autores | ItemList | 0\.5 |  |



| Personas |  |  |  |
| --- | --- | --- | --- |
| Propiedad | Tipo desambiguación | Score positivo | Score negativo |
| Nombre Completo | Nombres | 1 |  |
| ORCID | Identifier |  |  |
| Identificador FigShare | Identifier |  |  |
| Identificador GitHub | Identifier |  |  |
| Identificador Zenodo | Identifier |  |  |
| Coautores | ItemList | 0\.5 |  |
| Documentos | ItemList | 0\.5 |  |
| Organizacion | ItemList | 0\.5 |  |
| Departamento | ItemList | 0\.5 |  |
| Grupos | ItemList | 0\.5 |  |
| Proyectos | ItemList | 0\.5 |  |

## 3\. Carga de datos \- CV

El resto de datos de los investigadores provendrán de un conjunto de CVs en el formato PDF\-CVN definido por la [norma CVN de FECYT](https://cvn.fecyt.es/ "https://cvn.fecyt.es/").

A partir de cada PDF\-CVN se obtiene  un XML con los datos del personal investigador, también expresado en el formato [CVN de FECYT](https://cvn.fecyt.es/ "https://cvn.fecyt.es/").

De cada fichero XML obtenido se extraen los datos de los ítems del CV de la persona y se almacenan en el grafo. Si los datos del XML coincidieran con los existentes en el sistema tras los 2 pasos anteriores, se actuaría del siguiente modo, según estén o no validados los datos previos:

* No validados: Se actualizaría el ítem con los datos recibidos del XML,
* Validados: Se priorizarían los datos previos.

Para la desambiguación de los datos, se compararán diferentes atributos en cada ítem, para comprobar si presentan la suficiente semejanza como para considerar que los recibidos en el XML y los almacenados previamente en BBDD son iguales.

## Deduplicación

El proceso de deduplicación de datos actúa sobre los datos recuperados de los documentos y los existentes en BBDD, comparando las similitudes entre ellos para posteriormente actualizarlos o descartarlos y limitar la inserción de datos duplicados. 

El código correspondiente a este proceso está en [HerculesED/src/Hercules.ED.DisambiguationEngine at main · HerculesCRUE/HerculesED (github.com)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.DisambiguationEngine "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.DisambiguationEngine")

Este apartado describe la versión actual de la deduplicación automática para la carga inicial.

Para ello se asigna una valoración mínima a superar (“score”), usualmente 0\.8 sobre 1, entre los datos almacenados y los nuevos sobre los que trabajamos. Determinados atributos de los objetos tendrán un “score” positivo para que, si son el mismo, sumen “score”; mientras que otros pueden tener un “score” negativo, que restará después de sumar todos los “score” positivos el peso marcado. 

Los objetos tienen un atributo principal (Title normalmente) que si difiere nos indicará que son dos objetos distintos, sin necesidad de revisar el resto de atributos secundarios. Los tipos de datos pueden ser: 

* Identificador
* Title
* Item
* ItemList
* Nombres

Por ejemplo, los datos de desambiguación del apartado de “Cargos y actividades desempeñados con anterioridad” serían los representados en la tabla. 



| Propiedad | Tipo desambiguación | Score positivo | Score negativo |
| --- | --- | --- | --- |
| Entidad empleadora | Title | 0\.8 |  |
| Categoría profesional | Item | 0\.5 | 0\.5 |
| Fecha de início | Item | 0\.5 | 0\.5 |

  


Por lo tanto, en caso de que el nombre de la entidad empleadora no fuese el mismo, se tratarían como dos objetos distintos. 

En el caso de que se indiquen atributos secundarios como desambiguadores, como sería el caso de la “categoría profesional” y “Fecha de inicio”, primero siempre se sumarán todos y después se restará. Pueden darse diferentes casos: 

* Categoría profesional igual y fecha de inicio vacía en ambos:
* Score \= 0\.8 \+ (1\-0\.8 \* 0\.5\) \= 0\.9
* Categoría profesional distinta y fecha de inicio vacía en ambos:
* Score \= 0\.8 \- (0\.8 \* 0\.5\) \= 0\.4
* Categoría profesional y fecha de inicio igual:
* Aplicamos la suma de categoría profesional
* Score \= 0\.8 \+ (1\-0\.8 \* 0\.5\) \= 0\.9
* Aplicamos la suma de fecha de inicio
* Score \= 0\.9 \+ (1\-0\.9\*0\.5\) \= 0\.95
* Categoría profesional distinta y fecha de inicio igual:
* Aplicamos la suma de fecha de inicio
* Score \= 0\.8 \+ (1\-0\.8\*0\.5\) \= 0\.9
* Aplicamos la resta de la categoría profesional
* Score 0\.9 \- (0\.9 \* 0\.5\) \= 0\.45

Algunos atributos que comprenden listados, como grupos de autores u otros conjuntos, se tratarán como un bloque común, en el sentido de que si no son todos iguales se considerará el conjunto entero como distinto. 

  





