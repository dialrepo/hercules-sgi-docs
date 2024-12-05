# Hércules : De\-duplicación de datos de fuentes externas



En esta nota se describirá los posibles tratamientos de de\-duplicación de datos relacionados con la incorporación de datos desde fuentes externas.

En el proceso de carga de fuentes externas se realizan los siguientes procesos de deduplicación:

* En primer lugar, se deduplican los documentos/personas que obtenemos de las fuentes externas. Ver [Hercules.ED.Publication](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources/Hercules.ED.Publication "Hercules.ED.Publication") en [HerculesED/src/Hercules.ED.ExternalSources at main · HerculesCRUE/HerculesED (github.com)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.ExternalSources").
	+ Consideramos que para las publicaciones, el DOI es único, y para las personas el ORCID también. Es decir, si dos sujetos coinciden en alguno de los IDs mencionados, serán los mismos.
	+ Por cada documento obtenido, miramos los autores que nos trae las diversas fuentes externas. Aplicamos el proceso de desambiguación de datos y en aquellos autores que son iguales, fusionamos la información.
	+ La preferencia de las fuentes es: WoS, Scopus y OpenAire.
	+ En el programa de carga de datos de fuente externa, es dónde se va a aplicar el proceso de desambiguación entre publicaciones/personas de distintas publicaciones.  
	
		- Consideramos publicaciones válidas aquellas que tengan título y en el que en la lista de autores esté la persona preguntada.
		- Se obtienen publicaciones de las diversas fuentes. Únicamente consideramos que dos publicaciones son la misma si tienen el mismo DOI.
		- En el caso de que obtengamos dos publicaciones con el mismo DOI y con distinta información, se prioriza WoS \> Scopus \> OpenAire.
		- En el caso de que obtengamos dos publicaciones con el mismo DOI y en WoS no venga un dato y en otra fuente si, se le asigna el dato de la otra fuente a la publicación final.
		- Para unir personas de dos publicaciones que consideramos que son iguales:
			* Si tienen el mismo ORCID, es la misma. Aplicamos lo mismo que hacemos en el apartado de publicaciones (prioridad y fusión).
			* Si una tiene ORCID y la otra no, comparamos el nombre completo de la persona con un sistema de scores. Si supera un cierto umbral designado, consideramos que es la misma y hacemos el proceso de fusión explicado anteriormente.
* En segundo lugar, aplicamos la deduplicación contra el grafo de datos cargados, según lo comentado en el apartado [Deduplicación descrito en de la carga inicial](https://confluence.um.es/confluence/display/HERCULES/Proceso+de+carga+inicial+de+datos+para+la+UMU#ProcesodecargainicialdedatosparalaUMU-Deduplicaci%C3%B3n "https://confluence.um.es/confluence/display/HERCULES/Proceso+de+carga+inicial+de+datos+para+la+UMU#ProcesodecargainicialdedatosparalaUMU-Deduplicaci%C3%B3n").

  


  





