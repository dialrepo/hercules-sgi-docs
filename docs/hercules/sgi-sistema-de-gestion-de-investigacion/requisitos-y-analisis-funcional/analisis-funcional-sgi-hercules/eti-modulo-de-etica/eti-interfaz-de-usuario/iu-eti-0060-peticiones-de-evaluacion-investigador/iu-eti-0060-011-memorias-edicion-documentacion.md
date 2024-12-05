# Hércules : IU\-ETI\-0060\-011 Memorias \- Edición documentación



## Formulario de Memorias \- Edición documentación

Pantalla que muestra el formulario de documentación aportada a una memoria, a seguimiento anual, seguimiento final y/o retrospectiva. Dependiendo del estado de la memoria estarán o no activada la subida y borrado de de documentos.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos necesarios para la memoria | | |
| Documento | Texto | Nombre del documento |
| Aportado | Texto corto | Valores:* Sí: el documento ya está subido al sistema y por lo tanto aportado. * No: el documento no está subido al sistema y por lo tanto no esta aportado. |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |
| Documentos aportados al seguimiento anual | | |
| Texto | Texto | Dependiendo del tipo de memoria mostrar:* Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto, así como aquella documentación cuyo modelo fue aprobado por el comité (IF) y que requería firmas (por ejemplo: Autorización de Centros escolares, residenciales, deportivos, Convenios, etc.): para memorias de tipo M10 * Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto durante el primer año: para memorias de tipo M20 * Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto, así como aquella documentación cuyo modelo fue aprobado por el comité (IF) y que requería firmas (por ejemplo: MTA, Convenios, etc.): para memorias de tipo M30 |
| Listado de documentos aportados al seguimiento final | | |
| Documento | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |
| Documentos aportados al seguimiento final | | |
| Texto | Texto | Adjuntar pdf de las publicaciones si se hubiesen generado durante el proyecto |
| Listado de documentos aportados al seguimiento final | | |
| Documento | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |
| Documentos aportados a la retrospectiva | | |
| Texto | Texto | Adjuntar la hoja de Control |
| Listado de documentos aportados a la retrospectiva | | |
| Documento | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadirmemoria | Se va a la pantalla de Añadir nuevo documento [IU\-ETI\-0060\-012 Memorias \- Edición documentación \- Aportar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-012-memorias-edicion-documentacion-aportar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-012-memorias-edicion-documentacion-aportar-documento.md")Únicamente se puede añadir un documento si se tiene permiso para modificar el formulario de memoria, es decir, si estado de la Memoria está en estado:* EN ELABORACION * COMPLETADA * FAVORABLE PENDIENTE DE MODIFICACIONES MINIMAS * PENDIENTE DE CORRECCIONES  Ampliarlo para dejar modificar documentos de tipo memoria para cuando la memoria ya ha tenido un informe favorable y quiera añadir el documento con el formato oficial (hay veces que durante al evaluación del comité adjuntan un documento pero con un formato que no es el adecuado, sin logos, sin firmas,etc), por lo que el Gestor le da el dictamen Favorable pero le pide que adjunte el documento oficial cuando lo tenga.Por eso hay que dejar aportar documentación de tipo memoria a parte de los estados antes mencionado cuando la memoria tenga un estado igual o superior a FIN EVALUACION. | [CU\-ETI\-0060\-012 \- Memorias \- Documentación \- Aportar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-012-memorias-documentacion-aportar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-012-memorias-documentacion-aportar-documento.md") | ETI\-MEM\-INV\-ER |
| Añadir seguimiento anual | Se va a la pantalla de Añadir nuevo documento. [IU\-ETI\-0060\-016 Memorias \- Edición seguimiento anual \- Aportar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-016-memorias-edicion-seguimiento-anual-aportar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-016-memorias-edicion-seguimiento-anual-aportar-documento.md")Únicamente se puede añadir un documento si se tiene permiso para modificar el formulario de seguimiento anual, es decir, si estado de la Memoria está en estado:* FIN DE EVALUACION * COMPLETADA SEGUIMIENTO ANUAL |  | ETI\-MEM\-INV\-ER |
| Añadir seguimiento final | Se va a la pantalla de Añadir nuevo documento. IU\-ETI\-0060\-018 Memorias \- Edición seguimiento final \- Aportar documentoÚnicamente se puede añadir un documento si se tiene permiso para modificar el formulario de seguimiento final, es decir, si estado de la Memoria está en estado:* FIN DE EVALUACION SEGUIMIENTO ANUAL * COMPLETADA SEGUIMIENTO FINAL * EN ACLARACION SEGUIMIENTO FINAL |  | ETI\-MEM\-INV\-ER |
| Añadir retrospectiva | Se va a la pantalla de Añadir nuevo documento. IU\-ETI\-0060\-020 Memorias \- Edición retrospectiva \- Aportar documentoÚnicamente se puede añadir un documento si se tiene permiso para modificar el formulario de retrospectiva, es decir, si estado de la Retrospectiva está en estado:* PENDIENTE * COMPLETADA |  | ETI\-MEM\-INV\-ER |
| Ver fichero | Se visualiza el documento almacenado. |  | ETI\-MEM\-INV\-ER |
| Eliminar memoria | Pone el documento como no aportado. Únicamente se puede eliminar si se tiene permiso para modificar el formulario de memoria, es decir, si estado de la Memoria está en estado:* EN ELABORACION * COMPLETADA * FAVORABLE PENDIENTE DE MODIFICACIONES MINIMAS * PENDIENTE DE CORRECCIONES |  | ETI\-MEM\-INV\-ER |
| Eliminar documento seguimiento anual | Elimina el documento de la lista. Únicamente se puede eliminar si se tiene permiso para modificar el formulario anual, es decir, si estado de la Memoria está en estado:* FIN DE EVALUACION * COMPLETADA SEGUIMIENTO ANUAL |  | ETI\-MEM\-INV\-ER |
| Eliminar documento seguimiento final | Elimina el documento de la lista. Únicamente se puede eliminar si se tiene permiso para modificar el formulario final, es decir, si estado de la Memoria está en estado:* FIN DE EVALUACION SEGUIMIENTO ANUAL * COMPLETADA SEGUIMIENTO FINAL * EN ACLARACION SEGUIMIENTO FINAL |  | ETI\-MEM\-INV\-ER |
| Eliminar documento retrospectiva | Elimina el documento de la lista. Únicamente se puede eliminar si se tiene permiso para modificar el formulario de retrospectiva, es decir, si el estado de la retrospectiva es uno de estos estados :* PENDIENTE * COMPLETADA |  | ETI\-MEM\-INV\-ER |
| Guardar | Se guardan los documentos añadidos nuevos o se eliminan lo que se han eliminado del listado (aportados a No) | [CU\-ETI\-0060\-011 \- Memorias \- Edición documentación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-011-memorias-edicion-documentacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-011-memorias-edicion-documentacion.md") | ETI\-MEM\-INV\-ER |
| Datos generales | Se va a la pantalla de Datos generales de la memoria [IU\-ETI\-0060\-009 Memorias \- Edición datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-009-memorias-edicion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-009-memorias-edicion-datos-generales.md").Ver precondiciones de modificación en el caso de uso. Si no cumple las condiciones de modificación se mostrará en modo consulta. | [CU\-ETI\-0060\-009 \- Memorias \- Edición datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-009-memorias-edicion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-009-memorias-edicion-datos-generales.md") | ETI\-MEM\-INV\-ER |
| Formulario | Se va a la pantalla de Formulario de la memoria [IU\-ETI\-0060\-010 Memorias \- Edición formulario](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-010-memorias-edicion-formulario.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-010-memorias-edicion-formulario.md").Ver precondiciones de modificación en el caso de uso. Si no cumple las condiciones de modificación se mostrará en modo consulta. | [CU\-ETI\-0060\-010 \- Memorias \- Edición formulario](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-010-memorias-edicion-formulario.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-010-memorias-edicion-formulario.md") | ETI\-MEM\-INV\-ER |
| Seguimiento anual | Se va a la pantalla Seguimiento anual [IU\-ETI\-0060\-015 Memorias \- Edición seguimiento anual](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-015-memorias-edicion-seguimiento-anual.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-015-memorias-edicion-seguimiento-anual.md").Ver precondiciones de modificación en el caso de uso. | [CU\-ETI\-0060\-013 \- Memorias \- Edición formulario seguimiento anual](http://CU-ETI-0060-013 - Memorias - Edición formulario seguimiento anual "http://CU-ETI-0060-013 - Memorias - Edición formulario seguimiento anual") | ETI\-MEM\-INV\-ER |
| Seguimiento final | Se va a la pantalla Seguimiento final IU\-ETI\-0060\-017 Memorias \- Edición seguimiento final.Ver precondiciones de modificación en el caso de uso. | [CU\-ETI\-0060\-014 \- Memorias \- Edición formulario seguimiento final](http://CU-ETI-0060-014 - Memorias - Edición formulario seguimiento final "http://CU-ETI-0060-014 - Memorias - Edición formulario seguimiento final") | ETI\-MEM\-INV\-ER |
| Retrospectiva | Se va a la pantalla Retrospectiva IU\-ETI\-0060\-019 Memorias \- Edición retrospectiva.Ver precondiciones de modificación en el caso de uso. | [CU\-ETI\-0060\-015 \- Memorias \- Edición formulario retrospectiva](http://CU-ETI-0060-015 - Memorias - Edición formulario retrospectiva "http://CU-ETI-0060-015 - Memorias - Edición formulario retrospectiva") | ETI\-MEM\-INV\-ER |
| Informes | Se va a la pantalla de Informes de la memoria [IU\-ETI\-0060\-013 Memorias \- Edición informes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-013-memorias-edicion-informes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-013-memorias-edicion-informes.md"). |  | ETI\-MEM\-INV\-ER |
| Evaluaciones | Se va a la pantalla de Evaluaciones de la memoria [IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md"). |  | ETI\-MEM\-INV\-ER |

### Acciones

#### Por actor

#### Todos los permisos de acceso




