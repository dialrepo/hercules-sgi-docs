# Hércules : Carga inicial de datos



## Características generales del proceso de carga de datos

El proceso contará con un interfaz sencillo de ejecución de los pasos con información de su estado, accesible desde las herramientas de administración (pendiente de diseño).

Los pasos 1 y 2 del proceso de carga se intentarán organizar de modo que se puedan agrupar los investigadores de un mismo grupo en un hilo de ejecución, comenzando por el investigador con más resultados de investigación. De este modo se podrían paralelizar al menos 2 hilos de carga, para que el proceso global termine antes.

El proceso de carga inicial cuenta con 3 pasos:

## Paso 1 \- Carga de datos de sistemas de la UMU

Cargamos los siguientes datos:

* Proyectos, Patentes, Grupos, etc. (completar la lista). Hay que decidir si se cargan o no las publicaciones desde los XMLs disponibles actualmente o se comienza con lo que devuelvan las fuentes externas en el paso 2\.
	+ Hasta que esté disponible el SGI, Ficheros XML exportados de los sistemas actuales de la UMU.
* Otros (concretar):
	+ No van a estar disponibles en SGI, Ficheros XML exportados de los sistemas actuales de la UMU.

## Paso 2 \- Fuentes externas de resultados de investigación

Antes de recuperar los datos desde los CVs de los investigadores, recuperamos los resultados de investigación (papers, conference papers, ROs, etc.) desde las fuentes externas establecidas en EDMA: WoS, Scopus, OpenAire y otras fuentes para publicaciones (ver en [Fuentes externas de publicaciones científicas](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/fuentes-externas-de-publicaciones-cientificas.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/fuentes-externas-de-publicaciones-cientificas.md")); otras fuentes para ROs (ver en [Gestión de FAIR RO](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Gesti%C3%B3n+FAIR+RO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Gesti%C3%B3n+FAIR+RO")).

El proceso de carga de estos datos tiene 2 pasos:

* Recuperación de los resultados de investigación y [deduplicación de datos](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/de-duplicacion-de-datos-de-fuentes-externas.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/de-duplicacion-de-datos-de-fuentes-externas.md") de investigadores y resultados de investigación, desde las fuentes primarias de información: WoS, Scopus y OpenAire (pendiente de confirmar que es posible usarla).
* En un proceso batch posterior, recuperación de referencias y citas de cada resultado devuelto en el paso anterior, desde las fuentes secundarias (no es posible usar el API de WoS para esto, cada documento devuelto consume una petición de la cuota anual disponible).

Consideramos que los datos obtenidos desde estas fuentes son más fiables que los provenientes de los XMLs de partida (si es que se usan), por lo que los sustituirían; y también que los que llegasen desde los CVs de los usuarios, por lo que no serían sobrescritos por lo que viniese del paso 3\.

Está pendiente de actualizar el proceso descrito en [Fuentes externas de publicaciones científicas](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/fuentes-externas-de-publicaciones-cientificas.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/fuentes-de-publicaciones-cientificas/fuentes-externas-de-publicaciones-cientificas.md"), a falta de recibir información de WoS que nos permita cerrar completamente el proceso.

## Paso 3 \- Ficheros CVN de los investigadores

El sistema accederá a un repositorio que contendrá los CVs de los investigadores, en formato PDF/CVN.

La carga de ítems tendrá unos márgenes de tolerancia para comparar sus contenidos y entidades relacionadas (sobre todo otros investigadores) con los obtenidos de los 2 pasos anteriores. En la carga de ítems habrá 3 opciones:

* Coincide con un ítem ya existente con un grado de fiabilidad suficiente. En este caso se usa el ítem para completar la información obtenida desde la fuente externa con campos adicionales existentes en el CVN.
* El grado de coincidencia no permite asegurar que el ítem sea distinto a un ítem cargado. El ítem se incorpora a los datos del usuario en Hércules, marcado como dudoso y no visible, y se le informa al usuario para que lo gestione.
* El ítem es nuevo. El ítem se carga como visible.

En general, la información proveniente de fuentes externas es más fiable que la del CVN. Sin embargo, en el caso del tipo de publicación se hará caso a lo que haya indicado el usuario en su CVN.

En esta carga también se realizará la deduplicación de ítems y entidades relacionadas (fundamentalmente investigadores).




