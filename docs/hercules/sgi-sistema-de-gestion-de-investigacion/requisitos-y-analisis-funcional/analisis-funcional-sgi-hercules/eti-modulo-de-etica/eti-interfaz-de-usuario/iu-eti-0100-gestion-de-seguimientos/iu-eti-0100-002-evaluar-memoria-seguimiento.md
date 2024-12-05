# Hércules : IU\-ETI\-0100\-002 Evaluar memoria seguimiento



## Formulario de Evaluar memoria seguimiento

Pantalla compuesta por tres pestañas:

* Evaluación: muestra el formulario para evaluar el seguimiento, que consiste en asignarle un dictamen y dependiendo del tipo del dictamen seleccionado será obligatorio añadir comentarios para generar el informe de evaluación en la pestaña de Comentarios.
* Comentarios:  muestra el listado de comentarios creados asociados a una memoria. Se puede crear, editar y borrar comentarios.
* Documentación:  muestra enlaces a la documentación relativa la informe de seguimiento a evaluar.

### Evaluación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Comité | abreviatura | Comité de la memoria. Modo consulta. |
| Fecha evaluación | fecha | Fecha dictamen si es una evaluación de no revisión mínima o se pondrá la fecha actual si es de revisión mínima. Modo consulta. |
| Referencia memoria | referencias | Referencia de la memoria. Modo consulta |
| Solicitante | Texto corto | Nombre y apellidos del solicitante de la petición de evaluación de proyecto. Modo consulta, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Versión | Numérico entero genérico | Versión de la evaluación. Modo consulta. |
| Dictamen | DesplegableTexto cortoObligatorio | Listado con los siguientes valores si es un informe de Seguimiento anual:* Favorable * Solicitud de modificaciones  Listado con los siguientes valores si es un informe de Seguimiento final:* Favorable * Solicitud de aclaraciones |
| Ver informe | Enlace a fichero autogenerado | Se genera automáticamente un informe pdf dependiendo del valor del dictamen:* Si el dictamen es "Solicitud de modificaciones" o "Solicitud de aclaraciones".  Se genera a partir de una plantilla donde irá los datos de la memoria y los comentarios añadidos en la pestaña de "Comentarios" * Si el dictamen es "Favorable" No se genera informe. |
| Listado de evaluaciones anteriores de la memoria | | |
| Referencia memoria | referencias | Referencia de la memoria. |
| Versión | Numérico entero genérico | Versión de la memoria. |
| Fecha evaluación | fecha | Fecha de dictamen. |
| Dictamen | Texto corto | Dictamen de la memoria. |
| Nº de comentarios | Numérico entero genérico | Número de comentarios de la pestaña de "Comentarios" |
| PDF evaluación | Enlace a fichero autogenerado | Enlace al informe evaluación (dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones"). |

### Comentarios

Pantalla que muestra el listado de comentarios creados asociados al seguimiento

Se irá mostrando una lista con los comentarios dados de alta. Se podrá crear, eliminar y modificar los comentarios.

Hasta pulsar el botón de Guardar no se harán efectivos los cambios.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de comentarios | | |
| Bloque | Texto corto | Bloque del formulario |
| Apartado | Texto corto | Apartado del formulario |
| Subapartado | Texto corto | Subapartado del formulario |
| Comentario | Texto | Texto del comentario |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Muestra la pantalla de Nuevo comentario | [CU\-ETI\-0090\-004 \- Evaluar memoria seguimiento \- Comentarios \- Añadir](http://CU-ETI-0090-004 - Evaluar memoria seguimiento - Comentarios - Añadir "http://CU-ETI-0090-004 - Evaluar memoria seguimiento - Comentarios - Añadir") | ETI\-EVC\-EVAL |
| Editar | Muestra la pantalla de Modificación comentario |  | ETI\-EVC\-EVAL |
| Eliminar | Elimina el comentario del listado |  | ETI\-EVC\-EVAL |

### Documentación

Listado con toda la documentación relativa al seguimiento:

* Informe en .pdf del formulario entregado por el investigador
* Documentación entregada por el investigador adjuntada al formulario
* Ficha evaluador



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de comentarios | | |
| Documento | Texto corto | Nombre del documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe | Se descarga el documento para su visualización.[REP\-ETI\- 0080\-Informe formulario seguimiento anual](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0080-informe-formulario-seguimiento-anual.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0080-informe-formulario-seguimiento-anual.md")[REP\-ETI\- 0090\-Informe formulario seguimiento final](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0090-informe-formulario-seguimiento-final.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0090-informe-formulario-seguimiento-final.md")[REP\-ETI\- 0060\-Informe ficha evaluador](https://confluence.um.es/confluence/display/HERCULES/REP-ETI-+0060-Informe+ficha+evaluador "https://confluence.um.es/confluence/display/HERCULES/REP-ETI-+0060-Informe+ficha+evaluador") | [CU\-ETI\-0090\-006 \- Evaluar memoria seguimiento \- Documentación](http://CU-ETI-0090-006 - Evaluar memoria seguimiento - Documentación "http://CU-ETI-0090-006 - Evaluar memoria seguimiento - Documentación") | ETI\-EVC\-EVAL |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Se rellena el campo dictamen a la evaluación.En caso de tener comentarios se dan de alta.Si es una evaluación de revisión mínima (cuando viene de un seguimiento final cuyo dictamen fue solicitud de aclaraciones) se guarda la fecha de dictamen con la fecha actual y se cambia el estado de la memoria asociada al correspondiente dependiendo del dictamen. Si el dictamen es Favorable y en caso de ser una memoria de una petición de evaluación realizada por un solicitante externo a la universidad se debe de  notificar los datos de factura a emitir al SGE. | [CU\-ETI\-0090\-002 \- Evaluar memoria seguimiento \- Guardar sin comentarios](http://CU-ETI-0090-002 - Evaluar memoria seguimiento - Guardar sin comentarios "http://CU-ETI-0090-002 - Evaluar memoria seguimiento - Guardar sin comentarios")[CU\-ETI\-0090\-003 \- Evaluar memoria seguimiento \- Guardar con comentarios](http://CU-ETI-0090-003 - Evaluar memoria seguimiento - Guardar con comentarios "http://CU-ETI-0090-003 - Evaluar memoria seguimiento - Guardar con comentarios") | ETI\-EVC\-EVAL |
| Cancelar | Retorna al listado de Evaluaciones |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




