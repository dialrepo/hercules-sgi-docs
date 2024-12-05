# Hércules : IU\-ETI\-0120\-002 Consulta memoria



## Formulario de Consulta memoria

Pantalla compuesta por los formularios:

* Datos generales
* Formulario
* Seguimiento anual
* Seguimiento final
* Retrospectiva
* Documentación
* Informes
* Evaluaciones

### Datos generales

Son los datos generales de una memoria en modo consulta



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Comité | SelectorTexto corto | Comité asociado a la memoria. Modo consulta. |
| Tipo | SelectorTexto corto | Tipo de memoria. Modo consulta. |
| Título | TextoOpcional | Título descriptivo de la memoria. Modo consulta. |
| Responsable | TextoOpcional | Desplegable con las distintas personas del equipo. Modo consulta.El nombre y apellidos de la persona que estuviese asociada será recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |

### Documentación

Pantalla que muestra el formulario de documentación aportada a una memoria, a seguimiento anual, seguimiento final y/o retrospectiva.

Si una gestor tiene el permiso ETI\-MEM\-EDOC podrá editar la pantalla de Documentación para adjuntar o eliminar documentos (el resto de pantallas seguirá viéndolas en modo consulta).



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos necesarios para la memoria | | |
| Tipo documento | Texto | Tipo del documento  (uno de los apartados del bloque 5 del formulario) |
| Nombre | Texto corto | Nombre del documento que le da el usuario al adjuntar el documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminarÚnicamente si el gestor es la persona que ha adjuntado el documento y el estado de la memoria es igual o superior al estado "En evaluación". Los gestores puedes añadir documentos y eliminarlos (los aportados por él mismo). Usar el campo "created\_by" para saber la persona que ha creado el documento. |
| Documentos aportados al seguimiento anual | | |
| Texto | Texto | Dependiendo del tipo de memoria mostrar:* Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto, así como aquella documentación cuyo modelo fue aprobado por el comité (IF) y que requería firmas (por ejemplo: Autorización de Centros escolares, residenciales, deportivos, Convenios, etc.): para memorias de tipo M10 * Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto durante el primer año: para memorias de tipo M20 * Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto, así como aquella documentación cuyo modelo fue aprobado por el comité (IF) y que requería firmas (por ejemplo: MTA, Convenios, etc.): para memorias de tipo M30 |
| Listado de documentos aportados al seguimiento anual | | |
| Nombre | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Documentos aportados al seguimiento final | | |
| Texto | Texto | Adjuntar pdf de las publicaciones si se hubiesen generado durante el proyecto |
| Listado de documentos aportados al seguimiento final | | |
| Nombre | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Documentos aportados a la retrospectiva | | |
| Texto | Texto | Adjuntar la hoja de Control |
| Listado de documentos aportados a la retrospectiva | | |
| Documento | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadirmemoria | Se abre la pantalla para adjuntar un documento a la memoria | Se va a la pantalla de Añadir nuevo documento [IU\-ETI\-0090\-004 Consultar Memoria \- Edición documentación \- Aportar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-004-consultar-memoria-edicion-documentacion-aportar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-004-consultar-memoria-edicion-documentacion-aportar-documento.md")Podrá adjuntar documentos si el estado de la memoria es igual o superior al estado "EN EVALUACIÓN" | ETI\-MEM\-EDOC |
| Ver fichero | Se visualiza el documento almacenado. |  | ETI\-MEM\-V |
| Eliminar memoria | Se elimina el documento | Podrá eliminar documentos si el estado de la memoria es igual o superior al estado "EN EVALUACIÓN" y ha sido creado por el propio gestor (mirar campo "created\_by") | ETI\-MEM\-EDOC |

### Informes

Pantalla que muestra los informes enviados a secretaria para su evaluación por parte de la comisión de ética. Una memoria puede tener varias versiones, la inicial, y luego tantas reevaluaciones como hubiesen hecho falta hasta conseguir el informe favorable.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Informe memoria | Texto corto | El nombre del informe sigue un formato NumeroRefenciaMemoria\_vz, donde z es un número de versión (1,2,3,...) |
| Ver fichero | Icono de acción | Se visualiza el documento almacenado. |

### Evaluaciones

Pantalla que muestra el resultado de las evaluaciones de una memoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de evaluaciones de la memoria | | |
| Número de referencia | Texto corto | Número de referencia de la memoria |
| Nº de versión | Secuencia | Número de versión  de la evaluación. |
| Dictamen | Texto | Dictamen de la evaluación (en caso de que ya se haya evaluado) |
| Informe de evaluación | Icono de enlace al fichero | En caso de que ya se haya evaluado y el resultado del dictamen es "Favorable pendiente de revisión mínima" o "Pendiente de correcciones" |
| Informe favorable | Enlace al fichero de informe favorable | En caso de que ya se haya evaluado y el resultado del dictamen es "Fin evaluación" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe evaluación | Se genera a partir de una plantilla el informe de evaluación (con los datos del proyecto y los comentarios aportados durante la evaluación)[REP\-ETI\- 0040\-Informe evaluación (comentarios)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md") |  | ETI\-MEM\-V |
| Ver informe favorable | Se genera a partir de una plantilla el informe de favorable[REP\-ETI\- 0050\-Informe favorable memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0050-informe-favorable-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0050-informe-favorable-memoria.md") si es memoria de tipo nueva[REP\-ETI\- 0120\-Informe favorable tipo ratificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999721 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999721") si es memoria de tipo ratificación[REP\-ETI\- 0130\-Informe favorable tipo modificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999723 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999723") si es memoria de tipo modificación[REP\-ETI\- 0110\-Informe evaluación restrospectiva](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0110-informe-evaluacion-retrospectiva.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0110-informe-evaluacion-retrospectiva.md") si es retrospectiva |  | ETI\-MEM\-V |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la Memoria con la información introducida en el formulario.Al guardar una memoria se guardar la información de todos los apartados de definición de la memoria. | En caso de añadir un nuevo documento habrá que subir dicho documento al sistema documental (ESB GDOC) y almacenar el registro en al tabla de documentos de la memoria.En caso de eliminar un documento se eliminará el fichero del sistema documental y se eliminará el registro de la tabla de documentos de la memoria. | ETI\-MEM\-EDOC |
| Cancelar | Retorna al listado de memorias. |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso

  


  





