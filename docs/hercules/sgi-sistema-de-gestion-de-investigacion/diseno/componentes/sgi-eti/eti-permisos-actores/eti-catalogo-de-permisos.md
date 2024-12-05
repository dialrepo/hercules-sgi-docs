# Hércules : ETI \- Catálogo de permisos



## Diseño de permisos

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




