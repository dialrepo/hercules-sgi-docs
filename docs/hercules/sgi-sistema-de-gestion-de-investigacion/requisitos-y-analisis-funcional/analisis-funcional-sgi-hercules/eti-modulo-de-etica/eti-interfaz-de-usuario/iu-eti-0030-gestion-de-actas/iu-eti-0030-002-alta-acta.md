# Hércules : IU\-ETI\-0030\-002 Alta acta



## Formulario de Alta acta

Pantalla compuesta por tres formularios:

* Datos generales
* Memorias
* Asistentes

### Datos generales

Son los datos generales del acta. Un acta siempre estará asociada a un única convocatoria de reunión. Para identificar la convocatoria de reunión se hace a través de la fecha de la evaluación, el comité y el identificador interno de las convocatorias.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Reunión de evaluación | DesplegablereferenciasObligatorio | Desplegable indicando el código convocatoria |
| Hora de inicio | fecha y horaObligatorio | Hora y minutos del inicio del acta |
| Hora fin | fecha y horaObligatorio | Hora y minutos del fin del acta |
| Resumen | TextoObligatorio | Contenido del acta |

### Memorias

Listado de las evaluaciones de memoria que no son de revisión mínima



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de memorias a evaluar en la convocatoria de reunión asociada al acta. | | |
| Referencia memoria | referencias | Referencia de la memoria. |
| Versión | Numérico entero genérico | Versión de la memoria. |
| Dictamen | Texto corto | Dictamen de la memoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe | Se genera automáticamente un informe pdf dependiendo del valor del dictamen:* Si el dictamen es "Favorable pendiente de revisión mínima" o "Pendiente de correcciones", se genera el informe de evaluación (comentarios) * Si el dictamen es "Favorable", se genera a partir de una plantilla de informe favorable de la Universidad. |  | ETI\-ACT\-C |

### Asistentes

Listado con los evaluadores activos del comité.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado asistentes | | |
| NIF/NIE | Texto corto | NIF/NIE del evaluador del comité, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Nombre y apellidos | Texto corto | Nombre y apellidos del evaluador del comité, , recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Asistencia | BooleanValores: Sí/No | Si ha podido asistir o no a la reunión de convocatoria. |
| Motivo no asistencia | Texto | En caso de no asistir el motivo de la causa. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Editar | Se muestra la pantalla de edición de asistencia. | [CU\-ETI\-0030\-004 \- Modificar Acta \- Asistentes \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-004-modificar-acta-asistentes-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-004-modificar-acta-asistentes-guardar.md") | ETI\-ACT\-C |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea el acta con la información introducida en el formulario | [CU\-ETI\-0030\-002 \- Alta Acta \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-002-alta-acta-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-002-alta-acta-guardar.md") | ETI\-ACT\-C |
| Cancelar | Retorna al listado de Actas sin salvar los posibles cambios. |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




