# Hércules : Análisis para la extracción de descriptores temáticos



**Documento integrado en "[Enriquecimiento. Extracción de tópicos y similitud v2](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Enriquecimiento.+Extracci%C3%B3n+de+t%C3%B3picos+y+similitud+v2 "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Enriquecimiento.+Extracci%C3%B3n+de+t%C3%B3picos+y+similitud+v2")****".**

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

En este documento queremos abordar, precisamente, esas dos cuestiones claves mencionadas anteriormente. En el [capítulo 1](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/analisis-de-taxonomias.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/analisis-de-taxonomias.md") presentamos un análisis de las diferentes taxonomías de áreas temáticas que pueden ser apropiadas para su uso en el proceso de extracción de descriptores temáticos. En el [capítulo 2](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/enriquecimiento-descriptores-analisis-y-trabajos-preliminares/enfoques-para-extraccion-de-descriptores-tematicos-de-ros.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/enriquecimiento-descriptores-analisis-y-trabajos-preliminares/enfoques-para-extraccion-de-descriptores-tematicos-de-ros.md") ponemos el foco en el problema de la implementación del proceso de extracción analizando distintas estrategias.




