# Hércules : ETI \- Permisos \- Actores



## Catálogo de Permisos

Listado con todos los permisos del módulo ETI y la descripción de sus abreviaturas así como los criterios seguidos en el diseño para el nombrado de dichos permisos.





Ver Catálogo de permisos# Diseño de permisos

Se siguen los criterios generales descritos en [Permisos](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=Permisos&linkCreation=true&fromPageId=597852683 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=Permisos&linkCreation=true&fromPageId=597852683").





Ver detalle de criterios de diseño de permisos**Error al renderizar el macro 'excerpt\-include'**

No link could be created for 'Permisos'.





## Abreviaturas

### Entidades



| Abreviatura | Nombre |
| --- | --- |
| ETI | Ética |
| CNV | Convocatoria |
| EVC | Evaluación |
| ACT | Acta |
| EVR | Evaluadores |
| PEV | Petición de evaluación |
| INV | Investigador |
| MEM | Memoria |
| CHK | Checklist |
| CNF | Configuración |
| PER | Persona |
| EMP | Empresa |

### Acciones particularizadas



| Abreviatura | Nombre |
| --- | --- |
| ENV | Enviar |
| EVAL | Evaluar |
| FIN | Finalizar |
| DES | Descargar |
| ESCR | Enviar a secretaría |
| ERTR | Enviar retrospectiva a secretaría. |
| CEST | Cambiar de estado. |

## Catálogo de permisos



| Nombre abreviado | Descripción |
| --- | --- |
| ETI\-CNV\-V | Visualización.Acceso al listado y utilización de su filtro. |
| ETI\-CNV\-C | Creación.Habilita el botón de creación. |
| ETI\-CNV\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| ETI\-CNV\-B | Borrado.Habilita el botón de borrado (lógico). |
| ETI\-CNV\-ENV | Enviar convocatoria.Habilita el botón de envío de la convocatoria. |
| ETI\-EVC\-V | Visualización.Acceso al listado y utilización de su filtro. |
| ETI\-EVC\-EVAL | Evaluar.Habilita el botón de acceso a la evaluación. |
| ETI\-ACT\-V | Visualización.Acceso al listado y utilización de su filtro.Habilita el botón de acceso al detalle en modo consulta. |
| ETI\-ACT\-C | Creación.Habilita el botón de creación. |
| ETI\-ACT\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| ETI\-ACT\-FIN | Finalizar.Habilita el botón de finalizar el acta. |
| ETI\-ACT\-DES | Descargar.Habilita el acceso a ver el informe del acta (la descarga del documento). |
| ETI\-EVR\-V | Visualización.Acceso al listado y utilización de su filtro. |
| ETI\-EVR\-C | Creación.Habilita el botón de creación. |
| ETI\-EVR\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| ETI\-EVR\-B | Borrado.Habilita el botón de borrado (lógico). |
| ETI\-EVC\-INV\-VR | Visualización restringida (investigador).Acceso al listado y utilización de su filtro. |
| ETI\-EVC\-INV\-EVALR | Evaluar restringido (investigador).Acceso a evaluar la memoria (añadir comentarios). |
| ETI\-EVC\-VR | Visualización restringida (técnico).Acceso al listado y utilización de su filtro. |
| ETI\-EVC\-EVALR | Evaluar restringido (técnico). |
| ETI\-EVC\-V | Visualización.Acceso al listado y utilización de su filtro. |
| ETI\-EVC\-EVAL | Evaluar.Habilita el botón de acceso a la evaluación. |
| ETI\-PEV\-INV\-VR | Visualización restringidaAcceso al listado y utilización de su filtro. |
| ETI\-PEV\-INV\-C | CreaciónHabilita el botón de creación. |
| ETI\-PEV\-INV\-ER | Edición restringida.Habilita el botón de acceso al detalle en modo edición. |
| ETI\-PEV\-INV\-BR | Borrado restringido.Habilita el botón de borrado (lógico). |
| ETI\-PEV\-V | Visualización.Acceso al listado y utilización de su filtro.Habilita el botón de acceso al detalle en modo consulta. |
| ETI\-MEM\-INV\-CR | Creación restringida. |
| ETI\-MEM\-INV\-ER | Edición restringida.Habilita el botón de acceso al detalle en modo edición.Tanto el creador como el responsable de memoria puede modificar la memoria.Siempre se podrá editar, luego serán los propias pantallas las que dependiendo del estado de la memoria se puede o no hacer algo en la pantalla. |
| ETI\-MEM\-INV\-BR | Borrado restringido.Solo para el creador de la petición de evaluación. El responsable de memoria no puede eliminar memorias. |
| ETI\-MEM\-INV\-VR | Visualización restringidaAcceso al listado y utilización de su filtro. |
| ETI\-MEM\-INV\-ESCR | Enviar a secretaría.Solo para el creador de la petición de evaluación. El responsable de memoria no puede enviar a secretaría. |
| ETI\-MEM\-INV\-ERTR | Enviar retrospectiva a secretaría.Solo para el creador de la petición de evaluación. El responsable de memoria no puede enviar retrospectiva a secretaría. |
| ETI\-MEM\-V | Visualización.Habilita el botón de acceso al detalle en modo consulta.Permite ver los informes.Todos los campos estarán en modo consulta y los botones de acción deshabilitados. |
| ETI\-MEM\-CEST | Cambio de estado.Permite volver a un estado anterior dependiendo que que estado se encuentre. |
| ETI\-MEM\-EDOC | Edición documentación.Habilita el botón de acceso al detalle en modo edición de la pantalla de Documentación de la memoria. |
| ETI\-CHK\-INV\-E | Completar checklist de autoevaluación por un investigador. |
| ETI\-CNF\-E | Edición de configuración. |
| ETI\-ACT\-INV\-ER | Edición restringida (evaluador \- investigador)Habilita el botón de acceso al detalle en modo edición. |
| ETI\-ACT\-INV\-DESR | Descarga restringida (evaluador \- investigador)Habilita el acceso a ver el informe del acta (la descarga del documento). |
| ETI\-ACT\-ER | Edición restringida (evaluador \- técnico)Habilita el botón de acceso al detalle en modo edición. |
| ETI\-ACT\-DESR | Descarga restringida (evaluador \- técnico)Habilita el acceso a ver el informe del acta (la descarga del documento). |
| ESB\-PER\-V | Visualización del detalle.Habilita el botón de acceso al detalle en modo consulta.El acceso al listado y utilización de su filtro estará determinado por los permisos de acceso a la pantalla que abre la ventana emergente del buscador, esto es, el buscador y listado en sí no se restringirá por ningún permiso específico. |
| ESB\-PER\-E | Solicitud de modificación.Habilita el botón de acceso al detalle en modo solicitud de edición. |
| ESB\-PER\-C | Solicitud de creación.Habilita el botón de solicitud de creación. |
| ESB\-EMP\-V | Visualización del detalle.Habilita el botón de acceso al detalle en modo consulta.El acceso al listado y utilización de su filtro estará determinado por los permisos de acceso a la pantalla que abre la ventana emergente del buscador, esto es, el buscador y listado en sí no se restringirá por ningún permiso específico. |
| ESB\-EMP\-E | Solicitud de modificación.Habilita el botón de acceso al detalle en modo solicitud de edición. |
| ESB\-EMP\-C | Solicitud de creación.Habilita el botón de solicitud de creación. |
| CSP\-SOL\-ETI\-V | Visualización datos solicitud desde ÉticaPermite acceso a la consulta del código interno de las solicitudes desde el módulo de ética |





## Permisos de Acciones y/o Accesos por Actor



| Actor | Permisos |
| --- | --- |
| [ACT\-ETI\-006\-Responsable memoria](/confluence/display/HERCULES/ACT-ETI-006-Responsable+memoria "/confluence/display/HERCULES/ACT-ETI-006-Responsable+memoria") | ETI\-PEV\-INV\-VR, ETI\-PEV\-INV\-ERETI\-MEM\-INV\-ERESB\-PER\-VCSP\-SOL\-ETI\-V |
| [ACT\-ETI\-003\-Solicitante](/confluence/display/HERCULES/ACT-ETI-003-Solicitante "/confluence/display/HERCULES/ACT-ETI-003-Solicitante") | ETI\-PEV\-INV\-VR, ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER, ETI\-PEV\-INV\-BRETI\-MEM\-INV\-CR, ETI\-MEM\-INV\-ER, ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR, ETI\-MEM\-INV\-BRETI\-CHK\-INV\-EESB\-PER\-VETI\-ACT\-INV\-ER, ETI\-ACT\-INV\-DESRCSP\-SOL\-ETI\-V |
| [ACT\-ETI\-002\-Investigador](/confluence/display/HERCULES/ACT-ETI-002-Investigador "/confluence/display/HERCULES/ACT-ETI-002-Investigador") | ETI\-PEV\-INV\-VR, ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER, ETI\-PEV\-INV\-BR ETI\-MEM\-INV\-CR, ETI\-MEM\-INV\-ER,  ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR, ETI\-MEM\-INV\-BRETI\-CHK\-INV\-EESB\-PER\-VETI\-EVC\-INV\-VR, ETI\-EVC\-INV\-EVALRETI\-ACT\-INV\-ER, ETI\-ACT\-INV\-DESRCSP\-SOL\-ETI\-V |
| [ACT\-ETI\-001\-Gestor](/confluence/display/HERCULES/ACT-ETI-001-Gestor "/confluence/display/HERCULES/ACT-ETI-001-Gestor") | ETI\-CNV\-C, ETI\-CNV\-E, ETI\-CNV\-B, ETI\-CNV\-ENVETI\-EVC\-EVALETI\-ACT\-C, ETI\-ACT\-E, ETI\-ACT\-DES, ETI\-ACT\-FINETI\-EVR\-C, ETI\-EVR\-E, ETI\-EVR\-BETI\-PEV\-VETI\-MEM\-V, ETI\-MEM\-CEST, ETI\-MEM\-EDOCESB\-PER\-E, ESB\-PER\-CCSP\-SOL\-ETI\-V |
| [ACT\-ETI\-005\-Técnico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852690 "/confluence/pages/viewpage.action?pageId=597852690") | ETI\-EVC\-VR, ETI\-EVC\-EVALRETI\-ACT\-ER,ETI\-ACT\-DESR |
| [ACT\-ETI\-004\-Evaluador](/confluence/display/HERCULES/ACT-ETI-004-Evaluador "/confluence/display/HERCULES/ACT-ETI-004-Evaluador") | ETI\-EVC\-INV\-VR, ETI\-EVC\-INV\-EVALRETI\-ACT\-INV\-ER, ETI\-ACT\-INV\-DESR |
| [ACT\-ETI\-007\-Administrador](/confluence/display/HERCULES/ACT-ETI-007-Administrador "/confluence/display/HERCULES/ACT-ETI-007-Administrador") | ETI\-CNF\-E |

## Permisos de Acceso a Pantallas (IU)



| Título | Permisos |
| --- | --- |
| [IU\-ETI\-0020\-001 Búsqueda y listado de evaluaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853582 "/confluence/pages/viewpage.action?pageId=597853582") | ETI\-EVC\-V, ETI\-EVC\-EVAL |
| [IU\-ETI\-0060\-005 Modificación petición de evaluación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852350 "/confluence/pages/viewpage.action?pageId=597852350") | ETI\-PEV\-INV\-ER, ETI\-MEM\-INV\-CR, ETI\-MEM\-INV\-ER,  ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR, ETI\-MEM\-INV\-BR |
| [IU\-ETI\-0060\-004 \- Creación petición de evaluación \- Equipo investigador](https://confluence.um.es/confluence/pages/viewpage.action?pageId=734462031 "/confluence/pages/viewpage.action?pageId=734462031") | ETI\-PEV\-INV\-C |
| [IU\-ETI\-0060\-003 \- Creación petición de evaluación \- Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852343 "/confluence/pages/viewpage.action?pageId=597852343") | ETI\-PEV\-INV\-C |
| [IU\-ETI\-0050\-008 Evaluar memoria seguimiento\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853385 "/confluence/pages/viewpage.action?pageId=597853385") | ETI\-EVC\-INV\-EVALR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0050\-004 Evaluar memoria\- Comentarios \- Modificar](/confluence/display/HERCULES/IU-ETI-0050-004+Evaluar+memoria-+Comentarios+-+Modificar "/confluence/display/HERCULES/IU-ETI-0050-004+Evaluar+memoria-+Comentarios+-+Modificar") | ETI\-EVC\-INV\-EVALR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0050\-003 Evaluar memoria\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853824 "/confluence/pages/viewpage.action?pageId=597853824") | ETI\-EVC\-INV\-EVALR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0100\-003 Evaluar memoria seguimiento\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853354 "/confluence/pages/viewpage.action?pageId=597853354") | ETI\-EVC\-EVAL |
| [IU\-ETI\-0020\-004 Evaluar memoria\- Comentarios \- Modificar](/confluence/display/HERCULES/IU-ETI-0020-004+Evaluar+memoria-+Comentarios+-+Modificar "/confluence/display/HERCULES/IU-ETI-0020-004+Evaluar+memoria-+Comentarios+-+Modificar") | ETI\-EVC\-EVAL |
| [IU\-ETI\-0020\-003 Evaluar memoria\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853591 "/confluence/pages/viewpage.action?pageId=597853591") | ETI\-EVC\-EVAL |
| [IU\-ETI\-0050\-002 Evaluar memoria](/confluence/display/HERCULES/IU-ETI-0050-002+Evaluar+memoria "/confluence/display/HERCULES/IU-ETI-0050-002+Evaluar+memoria") | ETI\-EVC\-INV\-EVALR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0020\-002 Evaluar memoria](/confluence/display/HERCULES/IU-ETI-0020-002+Evaluar+memoria "/confluence/display/HERCULES/IU-ETI-0020-002+Evaluar+memoria") | ETI\-EVC\-EVAL |
| [IU\-ETI\-0090\-001 Búsqueda y listado de peticiones de evaluación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852506 "/confluence/pages/viewpage.action?pageId=597852506") | ETI\-PEV\-V |
| [IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852323 "/confluence/pages/viewpage.action?pageId=597852323") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-010 Memorias \- Edición formulario](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852317 "/confluence/pages/viewpage.action?pageId=597852317") | ETI\-*MEM\-INV*\-ER |
| [IU\-ETI\-0060\-009 Memorias \- Edición datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852313 "/confluence/pages/viewpage.action?pageId=597852313") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-002 Búsqueda y listado de mis peticiones de evaluación \- Responsable](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852341 "/confluence/pages/viewpage.action?pageId=597852341") | ETI\-PEV\-INV\-VR, ETI\-PEV\-INV\-ER |
| [IU\-ETI\-0060\-001 Búsqueda y listado de mis peticiones de evaluación \- Creador](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852342 "/confluence/pages/viewpage.action?pageId=597852342") | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER, ETI\-PEV\-INV\-BR |
| [IU\-ETI\-0050\-001 Búsqueda y listado de evaluaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853825 "/confluence/pages/viewpage.action?pageId=597853825") | ETI\-EVC\-INV\-VR, ETI\-EVC\-INV\-EVALR, ETI\-EVC\-VR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0030\-001 Búsqueda y listado de actas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853793 "/confluence/pages/viewpage.action?pageId=597853793") | ETI\-ACT\-V, ETI\-ACT\-C, ETI\-ACT\-E, ETI\-ACT\-DES, ETI\-ACT\-FIN, ETI\-ACT\-INV\-ER, ETI\-ACT\-ER,ETI\-ACT\-INV\-DESR,ETI\-ACT\-DESR |
| [IU\-ETI\-0010\-001 Búsqueda y listado de convocatorias reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853546 "/confluence/pages/viewpage.action?pageId=597853546") | ETI\-CNV\-V, ETI\-CNV\-C, ETI\-CNV\-E, ETI\-CNV\-B, ETI\-CNV\-ENV |
| [IU\-ETI\-0050\-006 Búsqueda y listado de seguimientos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853377 "/confluence/pages/viewpage.action?pageId=597853377") | ETI\-EVC\-INV\-VR, ETI\-EVC\-INV\-EVALR, ETI\-EVC\-VR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0100\-001 Búsqueda y listado de evaluaciones de seguimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853457 "/confluence/pages/viewpage.action?pageId=597853457") | ETI\-EVC\-V, ETI\-EVC\-EVAL |
| [IU\-ETI\-0040\-003 Modificar evaluador](/confluence/display/HERCULES/IU-ETI-0040-003+Modificar+evaluador "/confluence/display/HERCULES/IU-ETI-0040-003+Modificar+evaluador") | ETI\-ACT\-V, ETI\-ACT\-E |
| [IU\-ETI\-0040\-002 Alta evaluador](/confluence/display/HERCULES/IU-ETI-0040-002+Alta+evaluador "/confluence/display/HERCULES/IU-ETI-0040-002+Alta+evaluador") | ETI\-ACT\-C |
| [IU\-ETI\-0040\-001 Búsqueda y listado de evaluadores](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853801 "/confluence/pages/viewpage.action?pageId=597853801") | ETI\-EVR\-V, ETI\-EVR\-C, ETI\-EVR\-E, ETI\-EVR\-B |
| [IU\-ETI\-0010\-003 Modificar convocatoria reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853552 "/confluence/pages/viewpage.action?pageId=597853552") | ETI\-CNV\-E |
| [IU\-ETI\-0050\-007 Evaluar memoria seguimiento](/confluence/display/HERCULES/IU-ETI-0050-007+Evaluar+memoria+seguimiento "/confluence/display/HERCULES/IU-ETI-0050-007+Evaluar+memoria+seguimiento") | ETI\-EVC\-INV\-EVALR, ETI\-EVC\-EVALR |
| [IU\-ETI\-0130 Conflicto de interés](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852417 "/confluence/pages/viewpage.action?pageId=597852417") | ETI\-COI\-INV\-ER, ETI\-COI\-ER |
| [IU\-ETI\-0110\-001 Búsqueda y listado de memorias](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852404 "/confluence/pages/viewpage.action?pageId=597852404") | ETI\-MEM\-INV\-VR, ETI\-MEM\-INV\-ER, ETI\-MEM\-INV\-BR, ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR |
| [IU\-ETI\-0120\-001 Búsqueda y listado de memorias](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852373 "/confluence/pages/viewpage.action?pageId=597852373") | ETI\-MEM\-V, ETI\-MEM\-CEST |
| [IU\-ETI\-0090\-002 Consulta petición de evaluación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852556 "/confluence/pages/viewpage.action?pageId=597852556") | ETI\-MEM\-V, ETI\-MEM\-CEST |
| [IU\-ETI\-0080\- Configuración](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852515 "/confluence/pages/viewpage.action?pageId=597852515") | ETI\-CNF\-E |
| [IU\-ETI\-0100\-002 Evaluar memoria seguimiento](/confluence/display/HERCULES/IU-ETI-0100-002+Evaluar+memoria+seguimiento "/confluence/display/HERCULES/IU-ETI-0100-002+Evaluar+memoria+seguimiento") | ETI\-EVC\-EVAL |
| [IU\-ETI\-0070\- Formulario Checklist](/confluence/display/HERCULES/IU-ETI-0070-+Formulario+Checklist "/confluence/display/HERCULES/IU-ETI-0070-+Formulario+Checklist") | ETI\-CHK\-INV\-E |
| [IU\-ETI\-0030\-003 Modificar acta](/confluence/display/HERCULES/IU-ETI-0030-003+Modificar+acta "/confluence/display/HERCULES/IU-ETI-0030-003+Modificar+acta") | ETI\-ACT\-V, ETI\-ACT\-E, ETI\-ACT\-DES,ETI\-ACT\-INV\-ER, ETI\-ACT\-ER,ETI\-ACT\-INV\-DESR,ETI\-ACT\-DESR |
| [IU\-ETI\-0120\-002 Consulta memoria](/confluence/display/HERCULES/IU-ETI-0120-002+Consulta+memoria "/confluence/display/HERCULES/IU-ETI-0120-002+Consulta+memoria") | ETI\-MEM\-V,ETI\-MEM\-EDOC |
| [IU\-ETI\-0090\-003 Consulta memoria \- Adjuntar Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852478 "/confluence/pages/viewpage.action?pageId=597852478") | ETI\-MEM\-EDOC |
| [IU\-ETI\-0090\-004 Consultar Memoria \- Edición documentación \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852484 "/confluence/pages/viewpage.action?pageId=597852484") | ETI\-MEM\-EDOC |
| [IU\-ETI\-0060\-012 Memorias \- Edición documentación \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852423 "/confluence/pages/viewpage.action?pageId=597852423") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-011 Memorias \- Edición documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852320 "/confluence/pages/viewpage.action?pageId=597852320") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0010\-002 Alta convocatoria reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853545 "/confluence/pages/viewpage.action?pageId=597853545") | ETI\-CNV\-C |
| [IU\-ETI\-0030\-005 Modificar acta \- Comentarios \- Añadir/modificar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852518 "/confluence/pages/viewpage.action?pageId=597852518") | ETI\-ACT\-E,ETI\-ACT\-INV\-ER,ETI\-ACT\-ER |
| [IU\-ETI\-0060\-019 Memorias \- Edición retrospectiva](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853436 "/confluence/pages/viewpage.action?pageId=597853436") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0040\-004 Conflicto de intereses \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852415 "/confluence/pages/viewpage.action?pageId=597852415") | ETI\-ACT\-C, ETI\-ACT\-E |
| [IU\-ETI\-0060\-006 Equipo investigador \- Alta](/confluence/display/HERCULES/IU-ETI-0060-006+Equipo+investigador+-+Alta "/confluence/display/HERCULES/IU-ETI-0060-006+Equipo+investigador+-+Alta") | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER |
| [IU\-ETI\-0060\-007 Asignación de tareas \- Alta\-modificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852307 "/confluence/pages/viewpage.action?pageId=597852307") | ETI\-PEV\-INV\-ER |
| [IU\-ETI\-0060\-020 Memorias \- Edición retrospectiva \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853427 "/confluence/pages/viewpage.action?pageId=597853427") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-018 Memorias \- Edición seguimiento final \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853392 "/confluence/pages/viewpage.action?pageId=597853392") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-017 Memorias \- Edición seguimiento final](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853401 "/confluence/pages/viewpage.action?pageId=597853401") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-016 Memorias \- Edición seguimiento anual \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853313 "/confluence/pages/viewpage.action?pageId=597853313") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-015 Memorias \- Edición seguimiento anual](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853306 "/confluence/pages/viewpage.action?pageId=597853306") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-013 Memorias \- Edición informes](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852322 "/confluence/pages/viewpage.action?pageId=597852322") | ETI\-MEM\-INV\-ER |
| [IU\-ETI\-0060\-008 Memorias \- Alta datos generales](/confluence/display/HERCULES/IU-ETI-0060-008+Memorias+-+Alta+datos+generales "/confluence/display/HERCULES/IU-ETI-0060-008+Memorias+-+Alta+datos+generales") | ETI\-MEM\-INV\-CR |
| [IU\-ETI\-0030\-004 Editar asistencia](/confluence/display/HERCULES/IU-ETI-0030-004+Editar+asistencia "/confluence/display/HERCULES/IU-ETI-0030-004+Editar+asistencia") | ETI\-ACT\-C, ETI\-ACT\-E |
| [IU\-ETI\-0030\-002 Alta acta](/confluence/display/HERCULES/IU-ETI-0030-002+Alta+acta "/confluence/display/HERCULES/IU-ETI-0030-002+Alta+acta") | ETI\-ACT\-C |
| [IU\-ETI\-0010\-006 Asignación memorias \- Modificar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853607 "/confluence/pages/viewpage.action?pageId=597853607") | ETI\-CNV\-C, ETI\-CNV\-E |
| [IU\-ETI\-0010\-005 Asignación memorias \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853609 "/confluence/pages/viewpage.action?pageId=597853609") | ETI\-CNV\-C, ETI\-CNV\-E |

## Agrupación Pantallas (IU) \- Actores \- Permisos de acciones



| Título | ACT\-ETI\-001\-Gestor | ACT\-ETI\-002\-Investigador | ACT\-ETI\-003\-Solicitante | ACT\-ETI\-004\-Evaluador | ACT\-ETI\-005\-Técnico | ACT\-ETI\-006\-Responsable memoria | ACT\-ETI\-007\-Administrador |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [IU\-ETI\-0020\-001 Búsqueda y listado de evaluaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853582 "/confluence/pages/viewpage.action?pageId=597853582") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0060\-005 Modificación petición de evaluación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852350 "/confluence/pages/viewpage.action?pageId=597852350") |  | ETI\-PEV\-INV\-ER, ETI\-MEM\-INV\-CR, ETI\-MEM\-INV\-ER,  ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR, ETI\-MEM\-INV\-BR, CSP\-SOL\-ETI\-V | ETI\-PEV\-INV\-ER, ETI\-MEM\-INV\-CR, ETI\-MEM\-INV\-ER, ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR, ETI\-MEM\-INV\-BR, CCSP\-SOL\-ETI\-V |  |  | ETI\-PEV\-INV\-ER, ETI\-MEM\-INV\-ER, CSP\-SOL\-ETI\-V |  |
| [IU\-ETI\-0060\-004 \- Creación petición de evaluación \- Equipo investigador](https://confluence.um.es/confluence/pages/viewpage.action?pageId=734462031 "/confluence/pages/viewpage.action?pageId=734462031") |  | ETI\-PEV\-INV\-C | ETI\-PEV\-INV\-C |  |  |  |  |
| [IU\-ETI\-0060\-003 \- Creación petición de evaluación \- Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852343 "/confluence/pages/viewpage.action?pageId=597852343") |  | ETI\-PEV\-INV\-C | ETI\-PEV\-INV\-C |  |  |  |  |
| [IU\-ETI\-0050\-008 Evaluar memoria seguimiento\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853385 "/confluence/pages/viewpage.action?pageId=597853385") |  |  |  | ETI\-EVC\-INV\-EVALR | ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0050\-004 Evaluar memoria\- Comentarios \- Modificar](/confluence/display/HERCULES/IU-ETI-0050-004+Evaluar+memoria-+Comentarios+-+Modificar "/confluence/display/HERCULES/IU-ETI-0050-004+Evaluar+memoria-+Comentarios+-+Modificar") |  |  |  | ETI\-EVC\-INV\-EVALR | ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0050\-003 Evaluar memoria\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853824 "/confluence/pages/viewpage.action?pageId=597853824") |  |  |  | ETI\-EVC\-INV\-EVALR | ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0100\-003 Evaluar memoria seguimiento\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853354 "/confluence/pages/viewpage.action?pageId=597853354") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0020\-004 Evaluar memoria\- Comentarios \- Modificar](/confluence/display/HERCULES/IU-ETI-0020-004+Evaluar+memoria-+Comentarios+-+Modificar "/confluence/display/HERCULES/IU-ETI-0020-004+Evaluar+memoria-+Comentarios+-+Modificar") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0020\-003 Evaluar memoria\- Comentarios \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853591 "/confluence/pages/viewpage.action?pageId=597853591") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0050\-002 Evaluar memoria](/confluence/display/HERCULES/IU-ETI-0050-002+Evaluar+memoria "/confluence/display/HERCULES/IU-ETI-0050-002+Evaluar+memoria") |  |  |  | ETI\-EVC\-INV\-EVALR | ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0020\-002 Evaluar memoria](/confluence/display/HERCULES/IU-ETI-0020-002+Evaluar+memoria "/confluence/display/HERCULES/IU-ETI-0020-002+Evaluar+memoria") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0090\-001 Búsqueda y listado de peticiones de evaluación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852506 "/confluence/pages/viewpage.action?pageId=597852506") | ETI\-PEV\-V |  |  |  |  |  |  |
| [IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852323 "/confluence/pages/viewpage.action?pageId=597852323") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-010 Memorias \- Edición formulario](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852317 "/confluence/pages/viewpage.action?pageId=597852317") |  | ETI\-*MEM\-INV*\-ER | ETI\-*MEM\-INV*\-ER |  |  | ETI\-*MEM\-INV*\-ER |  |
| [IU\-ETI\-0060\-009 Memorias \- Edición datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852313 "/confluence/pages/viewpage.action?pageId=597852313") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-002 Búsqueda y listado de mis peticiones de evaluación \- Responsable](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852341 "/confluence/pages/viewpage.action?pageId=597852341") |  |  |  |  |  | ETI\-PEV\-INV\-VR, ETI\-PEV\-INV\-ER |  |
| [IU\-ETI\-0060\-001 Búsqueda y listado de mis peticiones de evaluación \- Creador](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852342 "/confluence/pages/viewpage.action?pageId=597852342") |  | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER, ETI\-PEV\-INV\-BR | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER, ETI\-PEV\-INV\-BR |  |  |  |  |
| [IU\-ETI\-0050\-001 Búsqueda y listado de evaluaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853825 "/confluence/pages/viewpage.action?pageId=597853825") |  |  |  | ETI\-EVC\-INV\-VR, ETI\-EVC\-INV\-EVALR | ETI\-EVC\-VR, ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0030\-001 Búsqueda y listado de actas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853793 "/confluence/pages/viewpage.action?pageId=597853793") | ETI\-ACT\-C, ETI\-ACT\-E, ETI\-ACT\-DES, ETI\-ACT\-FIN |  |  | ETI\-ACT\-INV\-ER,ETI\-ACT\-INV\-DESR | ETI\-ACT\-ER,ETI\-ACT\-DESR |  |  |
| [IU\-ETI\-0010\-001 Búsqueda y listado de convocatorias reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853546 "/confluence/pages/viewpage.action?pageId=597853546") | ETI\-CNV\-C, ETI\-CNV\-E, ETI\-CNV\-B, ETI\-CNV\-ENV |  |  |  |  |  |  |
| [IU\-ETI\-0050\-006 Búsqueda y listado de seguimientos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853377 "/confluence/pages/viewpage.action?pageId=597853377") |  |  |  | ETI\-EVC\-INV\-VR, ETI\-EVC\-INV\-EVALR | ETI\-EVC\-VR, ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0100\-001 Búsqueda y listado de evaluaciones de seguimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853457 "/confluence/pages/viewpage.action?pageId=597853457") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0040\-003 Modificar evaluador](/confluence/display/HERCULES/IU-ETI-0040-003+Modificar+evaluador "/confluence/display/HERCULES/IU-ETI-0040-003+Modificar+evaluador") | ETI\-ACT\-E |  |  |  |  |  |  |
| [IU\-ETI\-0040\-002 Alta evaluador](/confluence/display/HERCULES/IU-ETI-0040-002+Alta+evaluador "/confluence/display/HERCULES/IU-ETI-0040-002+Alta+evaluador") | ETI\-ACT\-C |  |  |  |  |  |  |
| [IU\-ETI\-0040\-001 Búsqueda y listado de evaluadores](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853801 "/confluence/pages/viewpage.action?pageId=597853801") | ETI\-EVR\-C, ETI\-EVR\-E, ETI\-EVR\-B |  |  |  |  |  |  |
| [IU\-ETI\-0010\-003 Modificar convocatoria reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853552 "/confluence/pages/viewpage.action?pageId=597853552") | ETI\-CNV\-E |  |  |  |  |  |  |
| [IU\-ETI\-0050\-007 Evaluar memoria seguimiento](/confluence/display/HERCULES/IU-ETI-0050-007+Evaluar+memoria+seguimiento "/confluence/display/HERCULES/IU-ETI-0050-007+Evaluar+memoria+seguimiento") |  |  |  | ETI\-EVC\-INV\-EVALR | ETI\-EVC\-EVALR |  |  |
| [IU\-ETI\-0130 Conflicto de interés](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852417 "/confluence/pages/viewpage.action?pageId=597852417") | ETI\-COI\-ER |  |  | ETI\-COI\-INV\-ER | ETI\-COI\-ER |  |  |
| [IU\-ETI\-0110\-001 Búsqueda y listado de memorias](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852404 "/confluence/pages/viewpage.action?pageId=597852404") |  | ETI\-MEM\-INV\-ER, ETI\-MEM\-INV\-BR, ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR | ETI\-MEM\-INV\-ER, ETI\-MEM\-INV\-BR, ETI\-MEM\-INV\-ESCR, ETI\-MEM\-INV\-ERTR |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0120\-001 Búsqueda y listado de memorias](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852373 "/confluence/pages/viewpage.action?pageId=597852373") | ETI\-MEM\-V, ETI\-MEM\-CEST |  |  |  |  |  |  |
| [IU\-ETI\-0090\-002 Consulta petición de evaluación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852556 "/confluence/pages/viewpage.action?pageId=597852556") | ETI\-MEM\-V, ETI\-MEM\-CEST, CSP\-SOL\-ETI\-V |  |  |  |  |  |  |
| [IU\-ETI\-0080\- Configuración](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852515 "/confluence/pages/viewpage.action?pageId=597852515") |  |  |  |  |  |  | ETI\-CNF\-E |
| [IU\-ETI\-0100\-002 Evaluar memoria seguimiento](/confluence/display/HERCULES/IU-ETI-0100-002+Evaluar+memoria+seguimiento "/confluence/display/HERCULES/IU-ETI-0100-002+Evaluar+memoria+seguimiento") | ETI\-EVC\-EVAL |  |  |  |  |  |  |
| [IU\-ETI\-0070\- Formulario Checklist](/confluence/display/HERCULES/IU-ETI-0070-+Formulario+Checklist "/confluence/display/HERCULES/IU-ETI-0070-+Formulario+Checklist") |  | ETI\-CHK\-INV\-E | ETI\-CHK\-INV\-E |  |  |  |  |
| [IU\-ETI\-0030\-003 Modificar acta](/confluence/display/HERCULES/IU-ETI-0030-003+Modificar+acta "/confluence/display/HERCULES/IU-ETI-0030-003+Modificar+acta") | ETI\-ACT\-E, ETI\-ACT\-DES |  |  | ETI\-ACT\-INV\-ER,ETI\-ACT\-INV\-DESR | ETI\-ACT\-ER,ETI\-ACT\-DESR |  |  |
| [IU\-ETI\-0120\-002 Consulta memoria](/confluence/display/HERCULES/IU-ETI-0120-002+Consulta+memoria "/confluence/display/HERCULES/IU-ETI-0120-002+Consulta+memoria") | ETI\-MEM\-V,ETI\-MEM\-EDOC |  |  |  |  |  |  |
| [IU\-ETI\-0090\-003 Consulta memoria \- Adjuntar Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852478 "/confluence/pages/viewpage.action?pageId=597852478") | ETI\-MEM\-EDOC |  |  |  |  |  |  |
| [IU\-ETI\-0090\-004 Consultar Memoria \- Edición documentación \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852484 "/confluence/pages/viewpage.action?pageId=597852484") | ETI\-MEM\-EDOC |  |  |  |  |  |  |
| [IU\-ETI\-0060\-012 Memorias \- Edición documentación \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852423 "/confluence/pages/viewpage.action?pageId=597852423") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-011 Memorias \- Edición documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852320 "/confluence/pages/viewpage.action?pageId=597852320") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0010\-002 Alta convocatoria reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853545 "/confluence/pages/viewpage.action?pageId=597853545") | ETI\-CNV\-C |  |  |  |  |  |  |
| [IU\-ETI\-0030\-005 Modificar acta \- Comentarios \- Añadir/modificar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852518 "/confluence/pages/viewpage.action?pageId=597852518") | ETI\-ACT\-E |  |  | ETI\-ACT\-INV\-ER | ETI\-ACT\-ER |  |  |
| [IU\-ETI\-0060\-019 Memorias \- Edición retrospectiva](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853436 "/confluence/pages/viewpage.action?pageId=597853436") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0040\-004 Conflicto de intereses \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852415 "/confluence/pages/viewpage.action?pageId=597852415") | ETI\-ACT\-C, ETI\-ACT\-E |  |  |  |  |  |  |
| [IU\-ETI\-0060\-006 Equipo investigador \- Alta](/confluence/display/HERCULES/IU-ETI-0060-006+Equipo+investigador+-+Alta "/confluence/display/HERCULES/IU-ETI-0060-006+Equipo+investigador+-+Alta") |  | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER |  |  | ETI\-PEV\-INV\-C, ETI\-PEV\-INV\-ER |  |
| [IU\-ETI\-0060\-007 Asignación de tareas \- Alta\-modificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852307 "/confluence/pages/viewpage.action?pageId=597852307") |  | ETI\-PEV\-INV\-ER | ETI\-PEV\-INV\-ER |  |  | ETI\-PEV\-INV\-ER |  |
| [IU\-ETI\-0060\-020 Memorias \- Edición retrospectiva \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853427 "/confluence/pages/viewpage.action?pageId=597853427") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-018 Memorias \- Edición seguimiento final \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853392 "/confluence/pages/viewpage.action?pageId=597853392") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-017 Memorias \- Edición seguimiento final](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853401 "/confluence/pages/viewpage.action?pageId=597853401") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-016 Memorias \- Edición seguimiento anual \- Aportar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853313 "/confluence/pages/viewpage.action?pageId=597853313") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-015 Memorias \- Edición seguimiento anual](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853306 "/confluence/pages/viewpage.action?pageId=597853306") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-013 Memorias \- Edición informes](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852322 "/confluence/pages/viewpage.action?pageId=597852322") |  | ETI\-MEM\-INV\-ER | ETI\-MEM\-INV\-ER |  |  | ETI\-MEM\-INV\-ER |  |
| [IU\-ETI\-0060\-008 Memorias \- Alta datos generales](/confluence/display/HERCULES/IU-ETI-0060-008+Memorias+-+Alta+datos+generales "/confluence/display/HERCULES/IU-ETI-0060-008+Memorias+-+Alta+datos+generales") |  | ETI\-MEM\-INV\-CR | ETI\-MEM\-INV\-CR |  |  |  |  |
| [IU\-ETI\-0030\-004 Editar asistencia](/confluence/display/HERCULES/IU-ETI-0030-004+Editar+asistencia "/confluence/display/HERCULES/IU-ETI-0030-004+Editar+asistencia") | ETI\-ACT\-C, ETI\-ACT\-E |  |  |  |  |  |  |
| [IU\-ETI\-0030\-002 Alta acta](/confluence/display/HERCULES/IU-ETI-0030-002+Alta+acta "/confluence/display/HERCULES/IU-ETI-0030-002+Alta+acta") | ETI\-ACT\-C |  |  |  |  |  |  |
| [IU\-ETI\-0010\-006 Asignación memorias \- Modificar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853607 "/confluence/pages/viewpage.action?pageId=597853607") | ETI\-CNV\-C, ETI\-CNV\-E |  |  |  |  |  |  |
| [IU\-ETI\-0010\-005 Asignación memorias \- Añadir](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853609 "/confluence/pages/viewpage.action?pageId=597853609") | ETI\-CNV\-C, ETI\-CNV\-E |  |  |  |  |  |  |

  





