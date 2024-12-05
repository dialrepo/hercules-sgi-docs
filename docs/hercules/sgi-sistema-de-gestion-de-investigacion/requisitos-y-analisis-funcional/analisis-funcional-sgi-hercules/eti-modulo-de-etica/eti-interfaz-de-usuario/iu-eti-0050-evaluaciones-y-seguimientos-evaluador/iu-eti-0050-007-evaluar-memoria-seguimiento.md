# Hércules : IU\-ETI\-0050\-007 Evaluar memoria seguimiento



## Formulario de Evaluar memoria

Pantalla compuesta por tres formularios:

* Datos seguimiento: muestra datos en modo consulta sobre la memoria.
* Documentación:  muestra enlaces a la documentación relativa a la memoria a evaluar.
* Comentarios:  muestra el listado de comentarios creados asociados a una memoria. Se puede crear, editar y borrar comentarios.

### Datos seguimiento



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Comité | abreviatura | Comité de la memoria. Modo consulta. |
| Fecha evaluación | fecha | Fecha de evaluación. Modo consulta. |
| Referencia memoria | referencias | Referencia de la memoria. Modo consulta. |
| Solicitante | Texto corto | Nombre y apellidos del solicitante de la petición de evaluación de proyecto. Modo consulta, recuperado por medio de  [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Versión | Numérico decimal genérico | Versión de la memoria. Modo consulta. |
| Listado de evaluaciones anteriores | | |
| Referencia memoria | referencias | Referencia de la memoria. |
| Versión | Numérico decimal genérico | Versión de la memoria. |
| Fecha evaluación | fecha | Fecha de evaluación. |
| Dictamen | Texto corto | Dictamen de la memoria. |
| Nº de comentarios | Numérico decimal genérico | Número de comentarios de la pestaña de "Comentarios" |
| PDF evaluación | Enlace a fichero autogenerado | Informe evaluación (dictamen "Solicitud de modificaciones" o "Solicitud de aclaraciones"). |

### Documentación

Listado con toda la documentación relativa a la memoria:

* Informe en .pdf del formulario entregado por el investigador
* Documentación entregada por el investigador adjunta al formulario

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de comentarios | | |
| Documento | Texto corto | Nombre del documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe | Se descarga el documento para su visualización.[REP\-ETI\- 0080\-Informe formulario seguimiento anual](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0080-informe-formulario-seguimiento-anual.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0080-informe-formulario-seguimiento-anual.md")[REP\-ETI\- 0090\-Informe formulario seguimiento final](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0090-informe-formulario-seguimiento-final.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0090-informe-formulario-seguimiento-final.md") |  | ETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |

### Comentarios

Pantalla que muestra el listado de comentarios creados asociados a una memoria.

Se irá mostrando una lista con los comentarios dados de alta. Se podrá crear, eliminar y modificar los comentarios.

Hasta pulsar el botón de Guardar no se harán efectivos los cambios.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de comentarios | | |
| Evaluador | Texto | Nombre y apellidos del evaluador que ha creado o modificado el comentario, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")En caso de que no exista usuario de modificacion, se saca el usuario de creación (created\_by), en caso de que el comentario se haya modificado se saca el usuario de modificación (last\_modified\_by) |
| Bloque | Texto corto | Bloque del formulario |
| Apartado | Texto corto | Apartado del formulario |
| Subapartado | Texto corto | Subapartado del formulario |
| Comentario | Texto corto | Texto del comentario |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Muestra la pantalla de Nuevo comentario[IU\-ETI\-0050\-008 Evaluar memoria seguimiento\- Comentarios \- Añadir](http://IU-ETI-0050-008 Evaluar memoria seguimiento- Comentarios - Añadir "http://IU-ETI-0050-008 Evaluar memoria seguimiento- Comentarios - Añadir") |  | ETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |
| Editar | Muestra la pantalla de Modificación comentario |  | ETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |
| Eliminar | Elimina el comentario del listado |  | ETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Se guardan los comentarios del evaluador.Al realizar esta acción, será necesario tener en cuenta los comunicados que se deben generar según se describe en el apartado [Comunicados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633248#IUETI0020001Búsquedaylistadodeevaluaciones-comunicados "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633248#IUETI0020001Búsquedaylistadodeevaluaciones-comunicados"). | [CU\-ETI\-0050\-004 \- Evaluar memoria seguimiento \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0050-evaluaciones-y-seguimientos-evaluador/cu-eti-0050-004-evaluar-memoria-seguimiento-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0050-evaluaciones-y-seguimientos-evaluador/cu-eti-0050-004-evaluar-memoria-seguimiento-guardar.md") | ETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |
| Cancelar | Retorna al listado de Evaluaciones |  |  |

### Comunicados

#### Comunicado de dictamen disponible

Al realizar la acción de "Guardar" una evaluación de revisión mínima, lo que supone que ya se tiene un dictamen para ella, y solo para las evaluaciones que SÍ son de revisión mínima, se creará la entrada correspondiente en el módulo de comunicados para avisar a los investigadores de que ya tienen disponible el informe favorable o de evaluación.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Dictamen de evaluación de seguimiento de memoria de revisión mínima disponible** dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

#### Comunicado de seguimiento final pendiente

Al realizar la acción de "Guardar" una evaluación de revisión mínima, lo que supone que ya se tiene un dictamen para ella, solo para las evaluaciones que SÍ son de revisión mínima y solo si el dictamen es "Favorable", la fecha de fin de la petición de evaluación asociada a la memoria será utilizada para programar, en el módulo de tareas programadas el envío de un comunicado de aviso desde el módulo de comunicados de que el informe de seguimiento final está pendiente hasta que no se presente el mismo. Una vez se presente, esta tarea programada y el correspondiente comunicado, si aún no se había ejecutado y enviado respectivamente, se deberían eliminar.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Informe de seguimiento final pendiente**dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




