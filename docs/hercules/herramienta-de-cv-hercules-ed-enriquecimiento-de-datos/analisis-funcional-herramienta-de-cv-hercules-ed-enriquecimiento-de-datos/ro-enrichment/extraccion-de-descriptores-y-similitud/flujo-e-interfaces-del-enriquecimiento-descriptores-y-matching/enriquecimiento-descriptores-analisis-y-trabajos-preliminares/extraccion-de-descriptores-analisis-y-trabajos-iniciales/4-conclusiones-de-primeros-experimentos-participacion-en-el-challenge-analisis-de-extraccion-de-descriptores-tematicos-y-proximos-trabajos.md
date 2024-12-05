# Hércules : 4\. Conclusiones de primeros experimentos, participación en el Challenge, análisis de extracción de descriptores temáticos, y próximos trabajos



De los resultados obtenidos en los primeros experimentos y en el *Challenge* podemos concluir que la diferenciación de dos tipos de tópicos (descriptores temáticos y específicos) es viable y eficaz a la hora de ofrecer caracterizaciones de los ROs más fácilmente interpretables por el usuario.

Hemos comprobado que las estrategias basadas en aprendizaje automático supervisado son viables, y que ofrecen buenos resultados para los dominios de publicaciones científicas y protocolos experimentales. El trabajo realizado también supone un punto de partida sólido para extender la estrategia supervisada al dominio de proyectos GitHub.

De todas formas, de acuerdo con los primeros resultados, es esperable que no se va a alcanzar una precisión del 100% en la detección de descriptores, por lo que se vislumbra que este proceso deberá ser asistido manualmente y combinado con enfoques basados en recuperar los descriptores directamente de los repositorios. Las correcciones realizadas por los usuarios se recogerán para enriquecer los datasets de entrenamiento, y así poder reentrenar clasificadores de mayor precisión y cobertura.

Se vislumbra que la estrategia adecuada para abordar la tarea de extracción debería ser una estrategia híbrida que combine los distintos tipos de enfoque descritos en el punto 3\.3\. Se dará prioridad al enfoque basado en API, por ser el más robusto y el que ofrece los resultados más precisos. El enfoque basado en scraping también ofrece resultados precisos, pero resulta sensible a cambios en la maquetación HTML del repositorio de donde se recuperan los descriptores. Por esa razón, será el segundo enfoque prioritario. En tercer lugar, se hará uso del enfoque basado en clasificadores automáticos. Las distintas combinaciones de los enfoques vendrán determinadas por el tipo de RO a tratar, ya que la viabilidad, o necesidad, de cada uno de ellos viene condicionada por el tipo de RO. Mostramos, a continuación, un resumen de la estrategia propuesta para extraer descriptores temáticos de todos los tipos de ROs:

* **Papers**: Se tomarán los descriptores temáticos (IPRA) de WoS en caso de que el paper esté alojado en WoS. En caso contrario, se optará por procesar el paper con el clasificador supervisado.
* **Protocolos**: Se tomarán los descriptores temáticos de los repositorios bio\-protocol o protocol\-exchange mediante el enfoque basado en scraping, en caso de que el protocolo esté disponible en uno de estos repositorios. En caso contrario, se hará uso del clasificador supervisado.
* **Referencias**. Se tomarán los descriptores temáticos del RO referenciado.
* **Anotaciones**. Se tomarán los descriptores temáticos del RO anotado.
* **Proyectos de código**: Se tomarán los descriptores temáticos del clasificador supervisado.

Listamos y describimos, a continuación, los aspectos que, tras los primeros experimentos y análisis, todavía permanecen abiertos y que se pretenden abordar durante el proyecto:

## Evaluación de modelos de lenguaje

En los experimentos realizados en el marco del *Challenge* se entrenó y evaluó un clasificador de descriptores temáticos basado en BERT. Por limitaciones de tiempo el clasificador se entrenó sobre un dataset que únicamente abarcaba un repertorio limitado de categorías temáticas. Los resultados obtenidos superaban a los de los clasificadores basados en el paradigma de bolsa\-de\-palabras.

Con objeto de verificar si los clasificadores basados en BERT (o modelos de lenguaje similares como roBERTa) ofrecen los mejores resultados sobre datasets más amplios y de distintos tipos de RO, se van a realizar una serie de experimentos. También se cuantificarán los consumos de CPU/GPU y memoria, para sopesarlos con los resultados de las evaluaciones.

## Evaluación de arquitecturas seq2seq para extracción de descriptores específicos

En los experimentos previos se entrenó y evaluó un extractor de descriptores específicos basado en una arquitectura neuronal seq2seq para artículos científicos. Los resultados obtenidos no eran mejores que los ofrecidos por los sistemas alternativos evaluados, al menos para el dominio de los artículos científicos.

Se realizarán experimentos adicionales sobre otros tipos de RO, para ver si en esos dominios este enfoque puede ser una alternativa robusta. Al igual que en el caso de modelos basados en BERT, se cuantificarán los consumos de CPU/GPU y memoria, para sopesarlos con los resultados de las evaluaciones.

## Generación de datasets para otros tipos de ROs e idiomas

En el *Challenge* se puso el foco en tres tipos de ROs (artículos científicos, protocolos experimentales, y proyectos GitHub) y se experimentaron enfoques supervisados para dos tipos de RO (artículos científicos y protocolos experimentales) para los cuales se crearon datasets de entrenamiento (tanto para extracción de palabras temáticas como específicas).

Se analizará en qué medida se pueden reutilizar los datasets (o incluso los mismos clasificadores) creados para entrenar clasificadores orientados a tres tipos adicionales de ROs: proyectos GitHub, referencias bibliográficas, y anotaciones. En caso de ser necesario, se generarán nuevos datasets para esos tres tipos de ROs. Para ello se analizarán diferentes repositorios, y estrategias, tanto automáticas como semiautomáticas que requieran supervisión manual.

Por otro lado, se estudiarán estrategias para poder entrenar clasificadores bilingües, de forma que además de textos en inglés, también sean capaces de procesar textos en castellano. Para abordar esa tarea se han identificado dos estrategias:

* Traducción de los datasets en inglés: Mediante esta estrategia los textos del dataset en inglés se traducen al castellano mediante un sistema de traducción automática. Para ello se utilizará una variante, adaptada al dominio abierto, del sistema presentado por Elhuyar en la competición Biomedical Translation Task del WMT20 donde consiguió la segunda mejor puntuación.
* Uso de modelos multilingües de lenguaje: Los modelos de lenguaje multilingües pre\-entrenados permiten entrenar un clasificador a partir de un dataset en un idioma que luego puede aplicarse sobre otros idiomas (incluidos en el modelo multilingüe pre\-entrenado).

## Ontologías o taxonomías de referencia para la extracción y enlazado de descriptores

Los clasificadores supervisados entrenados en el contexto del *Challenge* aprenden los descriptores presentes en los datasets. En el caso de los datasets generados para los ROs de artículos científicos y protocolos experimentales las palabras temáticas seguían las taxonomías ASJC y la propia de Bio\-protocol, respectivamente. Los descriptores específicos, en cambio, no se correspondían con ninguna taxonomía.

Para los descriptores temáticos necesitaremos datasets de entrenamiento que cuente con un volumen suficiente de ROs anotados manualmente contra una taxonomía reconocida, tal y como se ha explicado en el [capítulo 3\.3](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/enriquecimiento-descriptores-analisis-y-trabajos-preliminares/extraccion-de-descriptores-analisis-y-trabajos-iniciales/3-enriquecimiento-analisis-para-la-extraccion-de-descriptores-tematicos.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/enriquecimiento-descriptores-analisis-y-trabajos-preliminares/extraccion-de-descriptores-analisis-y-trabajos-iniciales/3-enriquecimiento-analisis-para-la-extraccion-de-descriptores-tematicos.md"). Esta taxonomía se publicará como datos enlazados (Linked Data) en formato SKOS como uno de los resultados del proyecto Hércules. 

En cuanto a los descriptores específicos, una vez extraídos las enlazaremos con espacios de datos enlazados genéricos y temáticos, como:

* DBpedia, por ejemplo [Word processor](http://dbpedia.org/resource/Word_processor "http://dbpedia.org/resource/Word_processor").
* [MESH Medical Subject Heading](https://www.nlm.nih.gov/mesh/meshhome.html "https://www.nlm.nih.gov/mesh/meshhome.html"). TopicalDescriptor, Term y Concept. Por ejemplo, [Anti\-Bacterial Agents](http://id.nlm.nih.gov/mesh/D000900 "http://id.nlm.nih.gov/mesh/D000900") o [Antibiotics](https://id.nlm.nih.gov/mesh/M0001344.html "https://id.nlm.nih.gov/mesh/M0001344.html").
* [CSO Computer Science Ontology](https://cso.kmi.open.ac.uk/about "https://cso.kmi.open.ac.uk/about"), por ejemplo, [word processing](https://cso.kmi.open.ac.uk/topics/word_processing "https://cso.kmi.open.ac.uk/topics/word_processing").

Estableceremos una relación, que el administrador del sistema podrá modificar más adelante, entre los ítems de la taxonomía (los descriptores temáticos que se identificarán en cada RO) y los espacios de datos temáticos. Consideramos que, en principio, los descriptores específicos de todos los tipos de ROs serán enlazables a DBpedia, por su carácter general, pero el enlazado con espacios temáticos más concreto se decidirá en función de los descriptores temáticos identificados. Así, si el RO se clasifica en categorías como “Drug Discovery”, “Pharmacology” o “General Medicine”, podemos establecer que sus descriptores específicos se enlazarán con MESH.

Por el contrario, si se clasifica en “Computer Science Applications”, “Human\-Computer Interaction” y “Artificial Intelligence”, podemos decidir que se enlacen con CSO.

El proceso de enlazado no será sólo mediante string\-matching, sino que desambiguará el descriptor específico comparando los contextos del RO (el resto de descriptores) con el del término a enlazar, usando:

* Términos relacionados.
	+ CSO: superTopicOf, contributesTo, relatedEquivalent, sameAs.
	+ MESH: concept, preferredConceot, allowableQualifier, preferredTerm, broaderDescriptor.
* Términos y contenido.
	+ DBPedia: description (presencia de descriptores específicos), subject, sameAs (en dominios ajenos a las versiones de idiomas de DBpedia), isPrimaryTopicOf, wikiPageRedirects, wikiPageWikiLink, genre, primaryTopic.

Además, el proceso de enlazado tendrá en cuenta las acciones que otros usuarios hayan podido hacer en relación con la aceptación o no de propuestas anteriores.

Del mismo modo que en el caso de la propuesta de descriptores, también para este caso de uso se convierte el interfaz en un componente muy importante, ya que debe permitir al usuario comprobar y verificar con rapidez y sencillez si el enlazado propuesto es o no correcto.

## Combinación de enfoques para la extracción de descriptores

La estrategia que se propone para abordar la tarea de extracción de descriptores será una estrategia híbrida que combinará los distintos tipos de enfoques. Se dará prioridad al enfoque basado en API, por ser el más robusto y el que ofrece los resultados más precisos. El enfoque basado en scraping también ofrece resultados precisos, pero resulta sensible a cambios en la maquetación HTML del repositorio de donde se recuperan los descriptores. Por esa razón, será el segundo enfoque prioritario. En tercer lugar, se hará uso del enfoque basado en clasificadores automáticos.

Se deberán implementar los diferentes enfoques, así como su combinación. Las distintas combinaciones de estos enfoques vendrán determinadas por el tipo de RO a tratar, ya que la viabilidad, o necesidad, de cada uno de ellos viene condicionada por el tipo de RO. Mostramos, a continuación, un resumen de la estrategia propuesta para extraer descriptores temáticos de todos los tipos de ROs:

* **Papers**: Se tomarán los descriptores temáticos (IPRA) de WoS en caso de que el paper esté alojado en WoS. En caso contrario, se optará por procesar el paper con el clasificador supervisado.
* **Protocolos**: Se tomarán los descriptores temáticos de los repositorios bio\-protocol o protocol\-exchange mediante el enfoque basado en scraping, en caso de que el protocolo esté disponible en uno de estos repositorios. En caso contrario, se hará uso del clasificador supervisado.
* **Referencias**. Se tomarán los descriptores temáticos del RO referenciado.
* **Anotaciones**. Se tomarán los descriptores temáticos del RO anotado.
* **Proyectos de código**: Se tomarán los descriptores temáticos del clasificador supervisado.

  





