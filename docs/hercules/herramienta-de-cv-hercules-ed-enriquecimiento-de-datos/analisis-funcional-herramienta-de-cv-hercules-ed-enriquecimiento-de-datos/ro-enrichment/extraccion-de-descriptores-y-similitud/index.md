# Hércules : Extracción de descriptores y similitud



* [Flujo e interfaces del enriquecimiento. Descriptores y Matching](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/index.md").
* [Similitud](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/similitud/enriquecimiento-identificacion-de-ros-similares/enriquecimiento-identificacion-de-ros-similares-planteamiento-inicial.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/similitud/enriquecimiento-identificacion-de-ros-similares/enriquecimiento-identificacion-de-ros-similares-planteamiento-inicial.md")

El módulo de enriquecimiento tiene dos funcionalidades principales:

1. Extracción de descriptores (referidos también como *topics*) para caracterizar Research Objects (RO) mediante descriptores, tanto temáticos como específicos.
2. Detección de ROs similares mediante su modelado semántico.

El uso principal de los descriptores será facilitar a los usuarios la navegación sobre los ROs. La lista de descriptores facilitará al usuario una comprensión rápida del contenido del ROs y una navegación facetada sobre los ROs. Por otro lado, la detección de ROs similares permitirá al usuario acceder de forma directa a ROs similares semánticamente a partir de un RO determinado o su propio perfil temático de usuario. El sistema mostrará al usuario los descriptores implicados en la relación de similitud.

Además, los descriptores se enlazarán de forma unívoca con conceptos existentes en ontologías que serán previamente fijadas. Como veremos más adelante, uno de los tipos de descriptores reconocidos, de grano fino, podrá ser reconocido como una entidad y enlazado (matching), pero esto no se puede garantizar en todos los casos porque dependerá de la existencia del descriptor como entidad enlazable. Por ejemplo, DBpedia tardó un tiempo en incluir entidades para COVID\-19, por lo que este descriptor se habría reconocido, pero no enlazado, en los primeros ROs con el tópico que se hubiesen incorporado al sistema.

Los desarrollos relacionados con la Extracción de descriptores y Similitud se encuentran en el repositorio GitHub del proyecto:

[HerculesED/src/Hercules.ED.Enrichment at main · HerculesCRUE/HerculesED (github.com)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Enrichment")

  





