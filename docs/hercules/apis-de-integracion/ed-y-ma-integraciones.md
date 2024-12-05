# Hércules : ED y MA. Integraciones.



Esta página contiene el inventario de servicios de integración utilizados por Hércules ED y Hércules MA para incorporar información. En el proyecto Hércules el origen de datos será Hércules SGI, pero en otras implantaciones las fuentes de datos serían los sistemas propios de cada universidad.

## Arquitectura de integración con Hércules ED y MA

Hércules ED y Hércules MA ejecutan procesos de  *harvesting* utilizando el protocolo [OAI\-PMH (Open Archive Initiative \- Protocol for Metadata Harvesting)](http://openarchives.org/pmh/ "http://openarchives.org/pmh/") contra un *data provider* que obtiene la información de los servicios que enumeramos en los siguientes apartados.

El siguiente esquema responde a los flujos de integración de Hércules ED y MA con Hércules SGI, en el caso de la UMU; y con sistemas de otra universidad que no contase con Hércules SGI:

![](/attachments/598147559/598148989.png)

Hay 3 aspectos a destacar:

1. Existe un *data provider* OAI\-PMH que es invocado por un [proceso de recolección (harvester)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Harvester "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Harvester") desde ED y MA para recuperar la información nueva o actualizada. El *data provider* se conecta con los servicios de integración de datos de la universidad. En el caso de Hércules, SGI y otros sistemas propios de la universidad.
2. Hércules ED se conecta al API del SGI para el envío de información hacia los procesos de validación, en 2 casos: producción científica y proyectos externos.
3. En el caso deldespliegue de Hércules ED o MA en una universidad sin Hércules SGI, habría que desarrollar en el proceso de implantación la conexión del *data provider* OAI\-PMH con los servicios de datos descritos en los siguientes apartados.

**Repositorio de código**

Se puede consultar una información técnica del *data provider* OAI\-PMH en el repositorio GitHub del proyecto: [HerculesED/src/Hercules.ED.OAI\_PMH](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.OAI_PMH "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.OAI_PMH")

## ED \- Enriquecimiento de datos. Servicios de integración y carga de datos.

Los servicios a los que consulta el *data provider* para obtener la información que Hércules ED necesita son:

### [Personal investigador (Sistema de Gestión de Personas)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md")

Devuelve la información del personal investigador nuevo o modificado a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*personas/modificadas\-ids*

*datos\-academicos/persona/{id\_persona}*

*personas/{id\_persona}*

*persona/{id\_persona}/fotografia*

*sexenios/persona/{id\_persona}*

*datos\-personales/persona/{id\_persona}*

*datos\-contacto/persona/{id\_persona}*

*vinculaciones/persona/{id\_persona}*

### [Proyectos (Gestión de Proyectos)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

Devuelve la información de los proyectos nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*proyectos/modificados\-ids*

*proyectos/{id\_proyecto}*

*proyecto/{id\_proyecto}/contexto*

*proyecto/{id\_proyecto}/equipos*

*proyecto/{id\_proyecto}/entidadgestores*

*proyecto/{id\_proyecto}/entidadconvocantes*

*proyecto/{id\_proyecto}/entidadfinanciadoras*

*proyecto/{id\_proyecto}/proyectoclasificaciones*

*proyectos/{id\_proyecto}/presupuesto\-totales*

*proyectos/{id\_proyecto}/areasconocimento*

*proyectos/{id\_proyecto}/palabrasclave*

### [Grupos (Grupos de Investigación)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/sgi-grupos-de-investigacion.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/sgi-grupos-de-investigacion.md")

Devuelve la información de los grupos de investigación nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*grupos/modificados\-ids*

*grupos/{id\_grupo}*

*grupos/{id\_grupo}/miembrosequipo*

*grupos/{id\_grupo}/palabrasclave*

### [Patentes (Protección Industrial e Intelectual)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/proteccion-industrial-e-intelectual-patentes.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/proteccion-industrial-e-intelectual-patentes.md")

Devuelve la información de los grupos de los resultados de protección industrial e intelectual nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*invenciones/modificados\-ids*

*invenciones/{id\_invencion}*

*invenciones/{id\_invencion}/sectoresaplicacion*

*invenciones/{id\_invencion}/invenciondocumentos*

*invenciones/{id\_invencion}/gastos*

*invenciones/{id\_invencion}/palabrasclave*

*invencion\-inventores/{id\_invencion}/inventores*

### [Sistema de Gestión de Empresas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003313 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003313")

Devuelve la información de las empresas y organizaciones relacionadas con resultados de investigación, nuevas o modificadas a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*empresas/modificadas\-ids*

*empresas/{id}*

*datos\-contacto/empresa/{id}*

### [Formación Académica](https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003309 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003309")

Devuelve la información de la formación académica del personal investigador, con datos nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*formacion/modificados\-ids?q\=fechaModificacion\=ge\="{fecha}";tipoFormacion\="{id\_cvn}"*

*formacion/{id\_formacion}?tipoFormacion\="{id\_cvn}"*

Los valores de id\_cvn pueden ser los siguientes, según el tipo de formación:

* Ciclos: 020\.010\.010\.000
* Doctorado: 020\.010\.020\.000
* Posgrado: 020\.010\.030\.000
* Formación especializada: 020\.020\.000\.000

### [Actividad Docente](https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003309 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003309")

Devuelve la información de la actividad docente del personal investigador, con datos nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con ED son los siguientes:

*actividad\-docente/modificados\-ids?q\=fechaModificacion\=ge\="{fecha}";tipoActividad\="{id\_cvn}"*

*actividad\-docente/{id\_formacion}?tipoActividad\="{id\_cvn}"*

Los valores de id\_cvn pueden ser los siguientes, según el tipo de actividad docente:

* Formación académica impartida: 030\.010\.000\.000
* Tesis: 030\.040\.000\.000
* Cursos y seminarios: 030\.060\.000\.000

## ED \- Enriquecimiento de datos. Servicios de flujos de validación de información.

El personal investigador genera información desde la edición de su CV en Hércules ED. En el caso de Hércules, dos de esas informaciones necesitan un proceso de validación en Hércules SGI. Se trata de la producción científica y los proyectos externos a la universidad. 

Los servicios a implementar para la gestión de los flujos de aprobación son los siguientes:

*producciones\-cientificas*

*notificacionesproyectosexternoscvn*

*producciones\-cientificas/estado?q\=fechaEstado\=ge\="{fecha}"*

*autorizaciones/modificadas\-ids?q\=fechaModificacion\=ge\="{fecha}"*

*autorizaciones/{id\_autorización}*

## MA \- Métodos de Análisis. Servicios de integración y carga de datos.

Los servicios a los que consulta el *data provider* para obtener la información que Hércules MA necesita son:

### [Personal investigador (Sistema de Gestión de Personas)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md")

Devuelve la información del personal investigador nuevo o modificado a una fecha dada. Los métodos del servicio necesarios para la integración con MA son los siguientes:

*personas/modificadas\-ids*

*personas/{id\_persona}*

*persona/{id\_persona}/fotografia*

*sexenios/persona/{id\_persona}*

*datos\-personales/persona/{id\_persona}*

*datos\-contacto/persona/{id\_persona}*

*vinculaciones/persona/{id\_persona}*

### [Proyectos (Gestión de Proyectos)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

Devuelve la información de los proyectos nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con MA son los siguientes:

*proyectos/modificados\-ids*

*proyectos/{id\_proyecto}*

*proyecto/{id\_proyecto}/contexto*

*proyecto/{id\_proyecto}/equipos*

*proyecto/{id\_proyecto}/entidadgestores*

*proyecto/{id\_proyecto}/entidadconvocantes*

*proyecto/{id\_proyecto}/entidadfinanciadoras*

*proyecto/{id\_proyecto}/proyectoclasificaciones*

*proyectos/{id\_proyecto}/areasconocimento*

*proyectos/{id\_proyecto}/palabrasclave*

### [Grupos (Grupos de Investigación)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/sgi-grupos-de-investigacion.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/sgi-grupos-de-investigacion.md")

Devuelve la información de los grupos de investigación nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con MA son los siguientes:

*grupos/modificados\-ids*

*grupos/{id\_grupo}*

*grupos/{id\_grupo}/miembrosequipo*

*grupos/{id\_grupo}/palabrasclave*

### [Patentes (Protección Industrial e Intelectual)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/proteccion-industrial-e-intelectual-patentes.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/proteccion-industrial-e-intelectual-patentes.md")

Devuelve la información de los grupos de los resultados de protección industrial e intelectual nuevos o modificados a una fecha dada. Los métodos del servicio necesarios para la integración con MA son los siguientes:

*invenciones/modificados\-ids*

*invenciones/{id\_invencion}*

*invenciones/{id\_invencion}/sectoresaplicacion*

*invenciones/{id\_invencion}/invenciondocumentos*

*invenciones/{id\_invencion}/palabrasclave*

*invencion\-inventores/{id\_invencion}/inventores*

### [Sistema de Gestión de Empresas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003313 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=421003313")

Devuelve la información de las empresas y organizaciones relacionadas con resultados de investigación, nuevas o modificadas a una fecha dada. Los métodos del servicio necesarios para la integración con MA son los siguientes:

*empresas/modificadas\-ids*

*empresas/{id}*

*datos\-contacto/empresa/{id}*

  





