# Hércules : IU\-ETI\-0030\-003 Modificar acta



## Formulario de Modificar acta

Compuesto por cuatro formularios:

* Datos generales
* Memorias
* Asistentes
* Comentarios

### Datos generales

Son los datos generales del acta. Un acta siempre estará asociada a un única convocatoria de reunión. Para identificar la convocatoria de reunión se hace a través de la fecha de la evaluación y del comité.

Los evaluadores verán esta pantalla en modo consulta siempre (aunque el estado este en estado En elaboración)



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Reunión de evaluación | DesplegablereferenciasObligatorio | Desplegable indicando el código convocatoria.Modo consulta |
| Hora de inicio | fecha y horaObligatorio | Hora y minutos del inicio del acta |
| Hora fin | fecha y horaObligatorio | Hora y minutos del fin del acta |
| Resumen | Texto largoObligatorio | Contenido del acta |

### Memorias

Listado de las memorias evaluadas en la convocatoria de reunión.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de memorias a evaluar en la convocatoria de reunión asociada al acta. | | |
| Referencia memoria | referencias | Referencia de la memoria. |
| Versión | Numérico entero genérico | Versión de la memoria. |
| Dictamen | Texto corto | Dictamen de la memoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe | Se genera automáticamente un informe pdf dependiendo del valor del dictamen:* Si el dictamen es "Favorable pendiente de revisión mínima" o "Pendiente de correcciones", se genera el informe de evaluación (comentarios). * Si el dictamen es "Favorable", se genera a partir de una plantilla de informe favorable de la Universidad. |  | ETI\-ACT\-DESETI\-ACT\-INV\-DESRETI\-ACT\-DESR |

### Asistentes

Listado con los evaluadores activos del comité.

Los evaluadores verán esta pantalla en modo consulta siempre (aunque el estado este en estado En elaboración)



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado asistentes | | |
| NIF/NIE | Alfanumérico | NIF/NIE del evaluador del comité, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Nombre y apellidos | Texto corto | Nombre y apellidos del evaluador del comité, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Asistencia | BooleanValores: Sí/No | Si ha podido asistir o no a la reunión de convocatoria. |
| Motivo no asistencia | Texto | En caso de no asistir el motivo de la causa. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Editar | Se muestra la pantalla de edición de asistencia. | [CU\-ETI\-0030\-005 \- Asistentes \- Modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-005-asistentes-modificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-005-asistentes-modificar.md") | ETI\-ACT\-E |

### Comentarios

Pantalla que muestra el listado de comentarios de tipoComentario \= ACTA añadidos a las evaluaciones de la convocatoria de reunión relacionada con el acta.

Se irá mostrando una lista con los comentarios dados de alta. Se podrá crear, eliminar y modificar los comentarios (siempre de tipoComentario \= ACTA)

Hasta pulsar el botón de Guardar no se harán efectivos los cambios.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de comentarios | | |
| Evaluador | Texto | Nombre y apellidos del evaluador que ha creado o modificado el comentario, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")En caso de que no exista usuario de modificacion, se saca el usuario de creación (created\_by), en caso de que el comentario se haya modificado se saca el usuario de modificación (last\_modified\_by) |
| Memoria | Texto | Referencia de la memoria sobre el que esta creado el comentario |
| Bloque | Texto corto | Bloque del formulario |
| Apartado | Texto corto | Apartado del formulario |
| Subapartado | Texto corto | Subapartado del formulario |
| Comentario | Texto corto | Texto del comentario |



| **Acciones** | **Descripción** | **Enlace CU.** | **Permisos** |
| --- | --- | --- | --- |
| Añadir | Muestra la pantalla de Nuevo comentario | Sólo se podrá empezar a añadir comentarios cuando todas la memorias ya estén evaluadas en la convocatoria de reunión.[IU\-ETI\-0030\-005 Modificar acta \- Comentarios \- Añadir/modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-005-modificar-acta-comentarios-anadirmodificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-005-modificar-acta-comentarios-anadirmodificar.md") | ETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Editar | Muestra la pantalla de Modificación comentario | [IU\-ETI\-0030\-005 Modificar acta \- Comentarios \- Añadir/modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-005-modificar-acta-comentarios-anadirmodificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-005-modificar-acta-comentarios-anadirmodificar.md") | ETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Eliminar | Elimina el comentario del listado |  | ETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica la convocatoria con la información introducida en el formulario. | [CU\-ETI\-0030\-003 \- Modificar Acta \- Datos generales \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-003-modificar-acta-datos-generales-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-003-modificar-acta-datos-generales-guardar.md")[CU\-ETI\-0030\-004 \- Modificar Acta \- Asistentes \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-004-modificar-acta-asistentes-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-004-modificar-acta-asistentes-guardar.md") | ETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Cancelar | Retorna al listado de Actas sin salvar los posibles cambios. |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




