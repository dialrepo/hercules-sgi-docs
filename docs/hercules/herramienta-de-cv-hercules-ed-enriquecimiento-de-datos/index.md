# Hércules : Herramienta de CV. Hércules ED \- Enriquecimiento de Datos



Hércules ED \- Enriquecimiento de Datos proporciona su funcionalidad en torno a [un conjunto de aplicaciones entre las que destaca la herramienta de edición y gestión de CV](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/index.md"), en la que se cargan datos obtenidos desde fuentes externas confiables de información de producción científica y datos provenientes de otros sistemas de la Universidad, particularmente Hércules SGI.

La arquitectura de la herramienta de CV y su relación con otros componentes del proyecto Hércules se puede consultar en [Arquitectura de la Herramienta de CV. Hércules ED \- Enriquecimiento de Datos](/hercules/arquitectura-de-los-proyectos-hercules/arquitectura-de-la-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos.md "/hercules/arquitectura-de-los-proyectos-hercules/arquitectura-de-la-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos.md").

El código correspondiente a los sistemas desarrollados para la herramienta de CV está en el repositorio [GitHub \- HerculesCRUE/HerculesED: Herramienta de gestión de CV. Hércules ED \- Enriquecimiento de Datos](https://github.com/HerculesCRUE/HerculesED "https://github.com/HerculesCRUE/HerculesED").

El repositorio [GitHub \- HerculesCRUE/Commons\-ED\-MA](https://github.com/HerculesCRUE/Commons-ED-MA "https://github.com/HerculesCRUE/Commons-ED-MA") contiene componentes o diseños compartidos en el proyecto de herramienta de CV y en el del [Portal Nacional Avanzado de Investigación. Hércules MA \- Métodos de Análisis](/hercules/portal-nacional-avanzado-de-investigacion-hercules-ma-metodos-de-analisis/index.md "/hercules/portal-nacional-avanzado-de-investigacion-hercules-ma-metodos-de-analisis/index.md").

Los módulos de la herramienta de CV son:

**[Servicios centrales (HERCULES Core Services)](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/servicios-centrales-core-services/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/servicios-centrales-core-services/index.md")**  
Este módulo provee de servicios de **Single Sign\-On (SSO)**, para facilitar el acceso a múltiples aplicaciones con credenciales comunes; y **Single Login Entry Point (SLEP)**, que permite el acceso a fuentes externas de información de resultados de investigación.

**[Módulo de Gestión de FAIR Research Objects (FAIR RO)](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/gestion-de-fair-research-objects-fair-ro/index.md")**

HERCULES permite al investigador declarar y catalogar sus RO independientemente de su formato (publicaciones, código, datasets, etc.) y de la aplicación en la que se encuentren.

**[Procesamiento y análisis de Research Objects (HERCULES RO Enrichment)](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/index.md")**

Proporciona métodos y algoritmos de Machine Learning que, aplicados sobre los Research Objects recuperados desde fuentes o introducidos por el usuario, proponen descriptores temáticos y específicos que ayudan en la clasificación de los ROs y potencian las posteriores utilidades de búsqueda, tanto para el usuario como en el [Portal Nacional de Investigación](/hercules/portal-nacional-avanzado-de-investigacion-hercules-ma-metodos-de-analisis/index.md "/hercules/portal-nacional-avanzado-de-investigacion-hercules-ma-metodos-de-analisis/index.md"). 

Además, otros procesos potenciados por Machine Learning ofrecen al investigador ROs similares (similitud semántica), lo que permite recomendaciones de interés de otros resultados de investigación.

**[Perfil del investigador (HERCULES Researcher Dashboard)](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/editor-de-cv-perfil-del-investigador-researcher-dashboard/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/editor-de-cv-perfil-del-investigador-researcher-dashboard/index.md")**

Es el núcleo de Hércules ED y proporciona al usuario una herramienta de gestión del CV, compatible con la norma CVN de FECYT, conectada a fuentes externas de información de resultados de investigación y también a sistemas de la universidad.

  





