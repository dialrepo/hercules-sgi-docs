# Hércules : IU\-ETI\-0090\-002 Consulta petición de evaluación



## Formulario de Consulta petición de evaluación

Pantalla compuesta por cuatro formularios:

* Datos generales
* Equipo investigador
* Asignación de tareas
* Memorias

### Datos generales

Son los datos generales de una petición de evaluación de un proyecto de investigación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Código de la solicitud de convocatoria | Texto corto | Sólo se muestra si viene de una solicitud de convocatoria. Es en modo consulta.Se corresponde con el campo "código registro interno" de la tabla "solicitud" (del módulo de CSP). El usuario gestor debe de tener el permiso CSP\-SOL\-ETI\-V |
| Código petición | Texto corto | Será un código con el formato YYYY/secuencia , donde YYYY es el año y secuencia en un código secuencial desde 000 hasta 999 del año. Se generará solo al crear una nueva petición. Modo consulta. |
| Título | Texto | Título del proyecto. Es en modo consulta. |
| Tipo de actividad | SelectorTexto cortoObligatorio | Desplegable con los valores:* Proyecto de investigación * Práctica docente  Es en modo consulta. |
| Tipo de investigación tutelada | SelectorTexto cortoObligatorio si en el combo de Tipo de actividad se selecciona Investigación titulada | Desplegable con los valores:* Tesis doctoral * Trabajo Fin de Máster * Trabajo Fin de Grado  Es en modo consulta. |
| ¿Se dispone de financiación para realizar el proyecto? | SelectorTexto cortoObligatorio | Desplegable con los valores:* Vacío * Sí * No  Si se selecciona Sí se mostrarán los campos:* Órgano financiador * Estado * Importe  Es en modo consulta. |
| Órgano financiador | Texto cortoObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí" | Financiación del proyecto.Sólo se muestra si en el campo "¿Se dispone de financiación para realizar el proyecto?" se ha seleccionado el valor "Sí"Es en modo consulta. |
| Estado | SelectorTexto cortoObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí" | Desplegable con los valores:* Vacío * Solicitado * Concedido * Denegado  Sólo se muestra si en el campo "¿Se dispone de financiación para realizar el proyecto?" se ha seleccionado el valor "Sí"Es en modo consulta. |
| Importe financiación | DecimalObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí" | Importe de financiación del proyectoSólo se muestra si en el campo "¿Se dispone de financiación para realizar el proyecto?" se ha seleccionado el valor "Sí"Es en modo consulta. |
| ¿Si se rechaza su solicitud de financiación ejecutará el proyecto con fondos propios? | BooleanoValores: Sí, No | Sólo se muestra si viene de una solicitud de convocatoria. Es en modo consulta. |
| Fecha inicio | Fecha | Fecha de inicio del proyecto. Es en modo consulta. |
| Fecha fin | Fecha | Fecha fin del proyecto. Es en modo consulta. |
| Resumen | Texto largo | Resumen del proyecto. Es en modo consulta. |
| Valor social | Selector | Valor social del proyecto. Desplegable con los valores:* 1\. Investigación fundamental * 2\. Investigación aplicada a la prevención, diagnóstico o tratamiento de alteraciones o de enfermedades físicas, psíquicas u otras anomalías o de sus efectos en los seres humanos, los animales o las plantas. * 3\. Investigación aplicada a la evaluación, detección, regulación o modificación de las condiciones fisiológicas, psicológicas o sociales en los seres humanos, los animales o las plantas * 4\. Investigación aplicada al desarrollo y la fabricación de aparatos, ayudas técnicas o informáticas, fármacos, alimentos, piensos y otras sustancias o productos, así como la realización de pruebas para comprobar su calidad, eficacia y seguridad * 5\. Investigación aplicada a la protección o mejora de las condiciones sociales, políticas, económicas o ambientales en interés del bienestar y/o la salud de los seres humanos. * 6\. Investigación aplicada al bienestar de los animales y/o a la mejora de las condiciones de producción de los animales y las plantas. * 7\. Investigación dirigida a la protección y conservación de las especies y del medio natural. * 8\. Enseñanza superior o la formación para la adquisición o mejora de las aptitudes profesionales. * 9\. Investigación jurídica o médico\-legal. * 10\. Otra finalidad.  En caso de seleccionar la opción 10 será obligatorio informar del campo "Especificar"Es en modo consulta. |
| Especificar (valor social) | Texto largoObligatorio si en el campo Valor social se selecciona la opción 10 | Otra opción de valor social del proyecto. Es en modo consulta. |
| Objetivos científicos | Texto largo | Objetivos científicos del proyecto. Es en modo consulta. |
| Diseño metodológico | Texto largo | Diseño metodológico del proyecto. Es en modo consulta. |

### Equipo investigador

Personas que forman parte del equipo investigador.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de personas que forman parte del equipo investigador | | |
| Nº documento | Texto corto | Número de documento, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Nombre y apellidos | Texto | Nombre y apellidos, recuperados por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Vinculación | Texto corto | Vinculación de la persona con la Universidad, recuperado por medio de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") (campo categoría profesional) |
| Nivel académico | Texto corto | Nivel académico de la persona, recuperado por medio de [REQ\-INT\-0020\-SGP\-0034 \- Consultar datos académicos de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md") |

### Asignación de tareas

Listado de tareas de las personas del equipo asignadas a las memorias.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tareas de las personas del equipo asignadas a las memorias. | | |
| Nombre y apellidos | Texto | Nombre y apellidos de la persona del equipo investigador, recuperados por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Referencia memoria | Referencia | Referencia de la memoria |
| Tarea | Texto | Descripción de la tarea |
| Formación | Texto | Para las memoria de tipo M10 será la experiencia y para las memorias de tipo M20 y M30 será la formación específica. |
| Organismo | Texto corto | Se informará para las memorias M20 y M30 |
| Año | Numérico entero genérico | Se informará para las memorias M20 y M30 |

### Memorias

Listado de memorias que forman parte de la petición de evaluación del proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de memorias que forman parte de la petición de evaluación del proyecto. | | |
| Referencia memoria | Alfanumérico | Referencia de la memoria |
| Comité | Texto corto | Comité de la memoria |
| Estado | Texto corto | Estado de la memoria |
| Fecha evaluación | Fecha | Dependiendo del estado de la memoria se obtendrá de una forma u otra, a continuación se explica la forma dependiendo del estado:* **Completada**,  **En secretaria**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor) * **Completada seguimiento anual**,  **En secretaria seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor) * **Completada seguimiento final**,  **En secretaria seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento final, En secretaria seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor) * **Archivado**: se dejan vacías |
| Fecha límite | Fecha | Dependiendo del estado de la memoria se obtendrá de una forma u otra, a continuación se explica la forma dependiendo del estado:* **Completada**,  **En secretaria**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor) * **Completada seguimiento anual**,  **En secretaria seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor) * **Completada seguimiento final**,  **En secretaria seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento final, En secretaria seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor) * **Archivado**: se dejan vacías |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Consultar | Se muestra la pantalla de consulta de la memoria. |  | ETI\-MEM\-V |
| Volver estado anterior | El gestor puede para ciertas memorias dependiendo del estado volver a poner el estado anterior. | [CU\-ETI\-0080\-002 \- Volver a estado anterior](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0080-peticiones-de-evaluacion-gestor/cu-eti-0080-002-volver-a-estado-anterior.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0080-peticiones-de-evaluacion-gestor/cu-eti-0080-002-volver-a-estado-anterior.md") | ETI\-MEM\-CEST |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al listado de peticiones de evaluación . |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




