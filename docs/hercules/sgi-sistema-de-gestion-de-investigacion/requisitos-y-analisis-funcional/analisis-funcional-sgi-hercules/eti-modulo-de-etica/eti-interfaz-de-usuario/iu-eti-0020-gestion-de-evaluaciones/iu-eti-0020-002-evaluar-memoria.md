# Hércules : IU\-ETI\-0020\-002 Evaluar memoria



## Formulario de Evaluar memoria

Pantalla compuesta por tres formularios:

* Evaluación: muestra el formulario para evaluar una memoria, que consiste en asignarle un dictamen y dependiendo del tipo del dictamen seleccionado será obligatorio añadir comentarios para generar el informe de evaluación en la pestaña de Comentarios.
* Comentarios:  muestra el listado de comentarios creados asociados a una memoria. Se puede crear, editar y borrar comentarios.
* Documentación:  muestra enlaces a la documentación relativa a la memoria a evaluar.

### Evaluación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Comité | abreviatura | Comité de la memoria. Modo consulta. |
| Fecha evaluación | fecha | Fecha dictamen si es una evaluación de no revisión mínima o se pondrá la fecha actual si es de revisión mínima. Modo consulta. |
| Referencia memoria | referencias | Referencia de la memoria. Modo consulta |
| Solicitante | Texto corto | Nombre y apellidos del solicitante de la petición de evaluación de proyecto. Modo consulta, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Versión | Numérico entero genérico | Versión de la evaluación. Modo consulta. |
| Dictamen | DesplegableTexto cortoObligatorio | Listado con los siguientes valores si no es de revisión mínima y la evaluación es de tipo Memoria:* Favorable * Favorable pendiente de revisión mínima * Pendiente de correcciones * No procede evaluar  Listado con los siguientes valores si es de revisión mínima y la evaluación es de tipo Memoria::* Favorable * Favorable pendiente de revisión mínima  Listado con los siguientes valores si la evaluación es de tipo Retrospectiva:* Favorable * Desfavorable |
| Comentario | Texto largo | Únicamente se mostrará este campo si el dictamen seleccionado es "No procede evaluar" y el tipo de evaluación es de tipo "Memoria" |
| Ver informe | Enlace a fichero autogenerado | Se genera automáticamente un informe pdf dependiendo del valor del dictamen:* Si el dictamen es "Favorable pendiente de revisión mínima" o "Pendiente de correcciones", se genera a partir de una plantilla donde irá los datos de la memoria y los comentarios añadidos en la pestaña de "Comentarios" [REP\-ETI\- 0040\-Informe evaluación (comentarios)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md") * Si el dictamen es "Favorable", se genera a partir de una plantilla de informe favorable de la Universidad. [REP\-ETI\- 0050\-Informe favorable memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0050-informe-favorable-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0050-informe-favorable-memoria.md"), [REP\-ETI\- 0120\-Informe favorable tipo ratificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0120-informe-favorable-tipo-ratificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0120-informe-favorable-tipo-ratificacion.md") o [REP\-ETI\- 0130\-Informe favorable tipo modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0130-informe-favorable-tipo-modificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0130-informe-favorable-tipo-modificacion.md") si es memoria o [REP\-ETI\- 0110\-Informe evaluación restrospectiva](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0110-informe-evaluacion-retrospectiva.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0110-informe-evaluacion-retrospectiva.md") si es retrospectiva |
| Listado de evaluaciones anteriores, ordenado por versión | | |
| Referencia memoria | referencias | Referencia de la memoria. |
| Versión | Numérico entero genérico | Versión de la evaluación. |
| Fecha evaluación | fecha | Fecha de dictamen. |
| Dictamen | Texto corto | Dictamen de la memoria. |
| Nº de comentarios | Numérico entero genérico | Número de comentarios de la pestaña de "Comentarios" |
| PDF evaluación | Enlace a fichero autogenerado | Enlace al informe evaluación (dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones").[REP\-ETI\- 0040\-Informe evaluación (comentarios)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md") |

### Comentarios

Pantalla que muestra el listado de comentarios creados asociados a una memoria.

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
| Añadir | Muestra la pantalla de Nuevo comentario | [CU\-ETI\-0020\-004 \- Evaluar memoria \- Comentarios \- Añadir](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-004-evaluar-memoria-comentarios-anadir.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-004-evaluar-memoria-comentarios-anadir.md") | ETI\-EVC\-EVAL |
| Editar | Muestra la pantalla de Modificación comentario | [CU\-ETI\-0020\-005 \- Evaluar memoria \- Comentarios \- Modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-005-evaluar-memoria-comentarios-modificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-005-evaluar-memoria-comentarios-modificar.md") | ETI\-EVC\-EVAL |
| Eliminar | Elimina el comentario del listado |  | ETI\-EVC\-EVAL |

### Documentación

Listado con toda la documentación relativa a la memoria:

* Informe en .pdf del formulario entregado por el investigador
* Documentación entregada por el investigador adjunta al formulario
* Ficha evaluador



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de comentarios | | |
| Documento | Texto corto | Nombre del documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe | Se descarga el documento para su visualización.[REP\-ETI\- 0010\-Informe formulario M10](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0010-informe-formulario-m10.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0010-informe-formulario-m10.md")[REP\-ETI\- 0020\-Informe formulario M20](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0020-informe-formulario-m20.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0020-informe-formulario-m20.md")[REP\-ETI\- 0030\-Informe formulario M30](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0030-informe-formulario-m30.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0030-informe-formulario-m30.md")[REP\-ETI\- 0100\-Informe formulario retrospectiva](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0100-informe-formulario-retrospectiva.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0100-informe-formulario-retrospectiva.md")[REP\-ETI\- 0060\-Informe ficha evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0060-informe-ficha-evaluador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0060-informe-ficha-evaluador.md") | [CU\-ETI\-0020\-006 \- Evaluar memoria \- Documentación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-006-evaluar-memoria-documentacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-006-evaluar-memoria-documentacion.md") | PENDIENTE |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Se rellena el campo dictamen a la evaluación.En caso de tener comentarios se dan de alta.Si es una evaluación de revisión mínima se guarda la fecha de dictamen con la fecha actual y se cambia el estado de la memoria asociada al correspondiente dependiendo del dictamen.Al realizar esta acción, será necesario tener en cuenta los comunicados que se deben generar según se describe en el apartado [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md"). | [CU\-ETI\-0020\-002 \- Evaluar memoria \- Guardar sin comentarios](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-002-evaluar-memoria-guardar-sin-comentarios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-002-evaluar-memoria-guardar-sin-comentarios.md")[CU\-ETI\-0020\-003 \- Evaluar memoria \- Guardar con comentarios](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-003-evaluar-memoria-guardar-con-comentarios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-003-evaluar-memoria-guardar-con-comentarios.md") | ETI\-EVC\-EVAL |
| Cancelar | Retorna al listado de Evaluaciones |  |  |

### Comunicados

#### Comunicado de dictamen disponible

Al realizar la acción de "Guardar" una evaluación de revisión mínima, lo que supone que ya se tiene un dictamen para ella, y solo para las evaluaciones que SÍ son de revisión mínima, se creará la entrada correspondiente en el módulo de comunicados para avisar a los investigadores de que ya tienen disponible el informe favorable o de evaluación.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Dictamen de evaluación de revisión mínima disponible**dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

#### Comunicado de seguimiento anual pendiente

Al realizar la acción de "Guardar" una evaluación de revisión mínima, lo que supone que ya se tiene un dictamen para ella, solo para las evaluaciones que SÍ son de revisión mínima y solo si el dictamen es "Favorable", la fecha del dictamen será utilizada para programar, en el módulo de tareas programadas el envío de un comunicado de aviso desde el módulo de comunicados de que el informe de seguimiento anual está pendiente hasta que no se presente el mismo. Una vez se presente, esta tarea programada y el correspondiente comunicado, si aún no se había ejecutado y enviado respectivamente, se deberían eliminar.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Informe de seguimiento anual pendiente** dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




