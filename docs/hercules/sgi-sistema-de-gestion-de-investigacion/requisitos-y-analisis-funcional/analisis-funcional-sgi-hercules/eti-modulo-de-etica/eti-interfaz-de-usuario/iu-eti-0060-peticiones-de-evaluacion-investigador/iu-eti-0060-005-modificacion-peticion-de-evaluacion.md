# Hércules : IU\-ETI\-0060\-005 Modificación petición de evaluación



## Formulario de Modificación petición de evaluación

Las peticiones de evaluación de ética pueden venir de un proyecto de investigación (de una solicitud de convocatoria y ya estará creada la petición con ciertos datos) o bien crearse desde cero sin estar asociado a ningún proyecto.

Pantalla compuesta por cuatro formularios:

* Datos generales
* Equipo investigador
* Asignación de tareas
* Memorias

### Datos generales

Son los datos generales de una petición de evaluación de un proyecto de investigación.



| En el caso de que la solicitud de evaluación no esté vinculada a una solicitud de convocatoria del módulo CSP y, por tanto, se haya  creado desde la opción de Nueva petición de evaluación, [IU\-ETI\-0060\-003 \- Creación petición de evaluación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-003-creacion-peticion-de-evaluacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-003-creacion-peticion-de-evaluacion-datos-generales.md"), los datos son:En el caso de que la solicitud de evaluación se haya creado a partir del checklist disponible en las solicitudes de tipo proyecto del módulo CSP, la pantalla será: | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Código de la solicitud de convocatoria | Texto corto | Sólo se muestra si viene de una solicitud de convocatoria. Modo consulta.Se corresponde con el campo "código registro interno" de la tabla "solicitud" (del módulo de CSP). El usuario investigador debe de tener el permiso CSP\-SOL\-ETI\-V |
| Código petición | Texto corto | Será un código con el formato YYYY/secuencia , donde YYYY es el año y secuencia en un código secuencial desde 000 hasta 999 del año. Se generará solo al crear una nueva petición. Modo consulta. |
| Título | Texto | Título del proyecto. |
| Tipo de actividad | SelectorTexto cortoObligatorio | Desplegable con los valores:* Proyecto de investigación * Práctica docente * Investigación tutelada |
| Tipo de investigación tutelada | SelectorTexto cortoObligatorio si en el combo de Tipo de actividad se selecciona Investigación titulada | Sólo se mostrará si en el campo "tipo actividad" se ha seleccionado "investigación tutelada".Desplegable con los valores:* Tesis doctoral * Trabajo Fin de Máster * Trabajo Fin de Grado |
| Director/a o Tutor/a | ReferenciaTextoObligatorio si en el desplegable "Tipo de actividad" se selecciona "Investigación titulada" | Este campo solamente estará disponible si el tipo de actividad es "investigación tutelada"", siendo, en este caso, obligatorio.Se mostrará el nombre y apellidos recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referencia recogida sobre el campo "tutor ref" de la tabla "petición evaluación"Se permitirá modificar su valor. Para ello  se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"), resuelto por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Las condiciones de invocación a este buscador se especifican en la tabla de acciones "Buscar (director/a o tutor/a)".Tras realizar la búsqueda, se mostrará el nombre y apellidos de la persona seleccionada.  El nombre y apellidos a mostrar se obtendrán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| ¿Se dispone de financiación para realizar el proyecto? | SelectorTexto cortoObligatorio | Desplegable con los valores:* Sí * No |
| Órgano financiador | Texto cortoObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí", en otro caso opcional | Financiación del proyecto. |
| Estado | SelectorTexto cortoObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí" | Desplegable con los valores:* Solicitado * Concedido * Denegado |
| Importe financiación | DecimalObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí", en otro caso opcional | Importe de financiación del proyecto |
| ¿Si se rechaza su solicitud de financiación ejecutará el proyecto con fondos propios? | SelectorTexto cortoObligatorio | Sólo se muestra si viene de una solicitud de convocatoria. |
| Fecha inicio | FechaObligatorio | Fecha de inicio del proyecto. |
| Fecha fin | FechaObligatorio | Fecha fin del proyecto. |
| Resumen | Texto largoObligatorio | Resumen del proyecto. |
| Valor social | SelectorObligatorio | Valor social del proyecto. Desplegable con los valores:* 1\. Investigación fundamental * 2\. Investigación aplicada a la prevención, diagnóstico o tratamiento de alteraciones o de enfermedades físicas, psíquicas u otras anomalías o de sus efectos en los seres humanos, los animales o las plantas. * 3\. Investigación aplicada a la evaluación, detección, regulación o modificación de las condiciones fisiológicas, psicológicas o sociales en los seres humanos, los animales o las plantas * 4\. Investigación aplicada al desarrollo y la fabricación de aparatos, ayudas técnicas o informáticas, fármacos, alimentos, piensos y otras sustancias o productos, así como la realización de pruebas para comprobar su calidad, eficacia y seguridad * 5\. Investigación aplicada a la protección o mejora de las condiciones sociales, políticas, económicas o ambientales en interés del bienestar y/o la salud de los seres humanos. * 6\. Investigación aplicada al bienestar de los animales y/o a la mejora de las condiciones de producción de los animales y las plantas. * 7\. Investigación dirigida a la protección y conservación de las especies y del medio natural. * 8\. Enseñanza superior o la formación para la adquisición o mejora de las aptitudes profesionales. * 9\. Investigación jurídica o médico\-legal. * 10\. Otra finalidad.  En caso de seleccionar la opción 10 será obligatorio informar del campo "Especificar" |
| Especificar (valor social) | Texto largoObligatorio si en el campo Valor social se selecciona la opción 10 | Otra opción de valor social del proyecto |
| Objetivos científicos | Texto largoObligatorio | Objetivos científicos del proyecto |
| Diseño metodológico | Texto largoObligatorio | Diseño metodológico del proyecto |

  


#### Acciones



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (director/a o tutor/a) | Muestra la pantalla de búsqueda para seleccionar una persona | Se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"), resuelto por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberá pasar a este buscador el tipo de colectivo "tutor csp". | No se necesita permiso para mostrar la pantalla de búsqueda de personas |

  


### Equipo investigador

Personas que forman parte del equipo investigador, por defecto vendrá dada de alta el propio investigador que esta creando la petición de evaluación del proyecto y el resto de investigadores que formen parte del equipo de investigación de la solicitud de convocatoria en caso de venir de una solicitud de convocatoria, pero se pueden insertar mas personas.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de personas que forman parte del equipo investigador | | |
| Nº documento | Texto corto | Número de documento, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Nombre y apellidos | Texto | Nombre y apellidos, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Vinculación | Texto corto | Vinculación de la persona con la Universidad, recuperado por medio de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") (campo categoría profesional) |
| Nivel académico | Texto corto | Nivel académico de la persona, recuperado por medio de [REQ\-INT\-0020\-SGP\-0034 \- Consultar datos académicos de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md") |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Se va a la pantalla de Añadir nueva persona [IU\-ETI\-0060\-006 Equipo investigador \- Alta](https://confluence.um.es/confluence/display/HERCULES/IU-ETI-0060-006+Equipo+investigador+-+Alta "https://confluence.um.es/confluence/display/HERCULES/IU-ETI-0060-006+Equipo+investigador+-+Alta") | [CU\-ETI\-0060\-006 \- Equipo investigador \- Alta](https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0060-006+-+Equipo+investigador+-+Alta "https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0060-006+-+Equipo+investigador+-+Alta") | ETI\-PEV\-ER |
| Eliminar | Se eliminará la persona del equipo de trabajo y sus tareas asociadas a las memorias.Sólo se puede eliminar si todas las memorias a la que está asignada la persona esta en uno de los siguientes estados:* En elaboración * Completada * Favorable Pendiente de Modificaciones Mínimas * Pendiente de correcciones * No procede evaluar  Al creador de la petición no se podrá eliminar. |  | ETI\-PEV\-ER |

### Asignación de tareas

Listado de tareas de las personas del equipo asignadas a las memorias.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tareas de las personas del equipo asignadas a las memorias. | | |
| Nombre y apellidos | Texto | Nombre y apellidos de la persona del equipo investigador. |
| Referencia memoria | Referencia | Referencia de la memoria |
| Tarea | Texto | Descripción de la tarea |
| Formación | Texto | Para las memoria de tipo M10 será la experiencia y para las memorias de tipo M20 y M30 será la formación específica. |
| Organismo | Texto corto | Se informará para las memorias M20 y M30 |
| Año | Numérico entero genérico | Se informará para las memorias M20 y M30 |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Se va a la pantalla de Añadir nueva asignación de tarea [IU\-ETI\-0060\-007 Asignación de tareas \- Alta/modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-007-asignacion-de-tareas-alta-modificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-007-asignacion-de-tareas-alta-modificacion.md") | [CU\-ETI\-0060\-007 \- Asignación de tareas \- Alta/modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md") | ETI\-PEV\-INV\-ER |
| Editar | Se muestra la pantalla de edición de asignación de tarea [IU\-ETI\-0060\-007 Asignación de tareas \- Alta/modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-007-asignacion-de-tareas-alta-modificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-007-asignacion-de-tareas-alta-modificacion.md") | [CU\-ETI\-0060\-007 \- Asignación de tareas \- Alta/modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md") | ETI\-PEV\-INV\-ER |
| Eliminar | Se eliminará la tarea asociada a una memoria de una persona del equipo.Sólo se puede eliminar si la memoria a la que está asignada la persona esta en uno de los siguientes estados:* En elaboración * Completada * Favorable Pendiente de Modificaciones Mínimas * Pendiente de correcciones * No procede evaluar |  | ETI\-PEV\-INV\-ER |

### Memorias

Listado de memorias que forman parte de la petición de evaluación del proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de memorias que forman parte de la petición de evaluación del proyecto. | | |
| Referencia memoria | Referencia | Referencia de la memoria |
| Comité | Texto corto | Comité de la memoria |
| Estado | Texto corto | Estado de la memoria |
| Fecha evaluación | Fecha | Dependiendo del estado de la memoria se obtendrá de una forma u otra, a continuación se explica la forma dependiendo del estado:* **Completada**,  **En secretaria**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor) * **Completada seguimiento anual**,  **En secretaria seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor) * **Completada seguimiento final**,  **En secretaria seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento final, En secretaria seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor) * **Archivado**: se dejan vacías |
| Fecha límite | Fecha | Dependiendo del estado de la memoria se obtendrá de una forma u otra, a continuación se explica la forma dependiendo del estado:* **Completada**,  **En secretaria**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor) * **Completada seguimiento anual**,  **En secretaria seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor) * **Completada seguimiento final**,  **En secretaria seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento final, En secretaria seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor) * **Archivado**: se dejan vacías |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Enviar a secretaría | Icono de acción | Acción de enviar a secretaría. |
| Enviar retrospectiva a secretaría | Icono de acción | Acción de enviar a secretaría la retrospectiva. |

  
  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Se va a la pantalla de Añadir nueva memoria [IU\-ETI\-0060\-008 Memorias \- Alta datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-008-memorias-alta-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-008-memorias-alta-datos-generales.md").La acción solo estará disponible para el creador de la petición de evaluación. El responsable de memoria no puede crear memorias. | [CU\-ETI\-0060\-008 \- Memorias \- Alta datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-008-memorias-alta-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-008-memorias-alta-datos-generales.md") | ETI\-MEM\-INV\-CR |
| Editar | Se muestra la pantalla de edición de memoria. Antes de editar una memoria se debe guardar la petición de evaluación, en caso de no estar guardada se le informará al usuario que debe de Guardar antes de editar una memoria.Tanto el creador como el responsable de memoria pueden modificar la memoria. | [CU\-ETI\-0060\-009 \- Memorias \- Edición datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-009-memorias-edicion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-009-memorias-edicion-datos-generales.md") | ETI\-MEM\-INV\-ER |
| Eliminar | Únicamente se mostrará el icono del borrado si la memorias está en los estados "En elaboración" y/o "Completada", es decir, no se ha enviado nada a Secretaría y no tienen ninguna evaluación.Se desactivará la memoria. Funcionalidad transversal a toda la aplicación del SGI.La acción solo estará disponible para el creador de la petición de evaluación. El responsable de memoria no puede eliminar memorias. |  | ETI\-MEM\-INV\-BR |
| Enviar a secretaría | Es mandar la memoria al gestor para su evaluación. | Al realizar esta acción, será necesario tener en cuenta que es posible que haya que dar de baja la programación de envío de algún comunicado según se indica en el apartado [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md").Ver además los detalles sobre todos los pasos a realizar al enviar a secretaría en: [CU\-ETI\-0060\-005 \- Enviar a secretaría](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-005-enviar-a-secretaria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-005-enviar-a-secretaria.md") | ETI\-MEM\-INV\-ESCR |
| Enviar retrospectiva a secretaría | Es mandar la retrospectiva al gestor para su evaluación. | [CU\-ETI\-0060\-016 \- Enviar a secretaría retrospectiva](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-016-enviar-a-secretaria-retrospectiva.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-016-enviar-a-secretaria-retrospectiva.md") | ETI\-MEM\-INV\-ERTR |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea/Modifica la petición de evaluación con la información introducida en el formulario. | [CU\-ETI\-0060\-004 \- Modificar Petición de evaluación \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-004-modificar-peticion-de-evaluacion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-004-modificar-peticion-de-evaluacion-guardar.md") | ETI\-PEV\-INV\-ER |
| Cancelar | Retorna al listado de peticiones de evaluación sin salvar los posibles cambios. |  |  |

### Comunicados

Al realizar la acción de "Enviar a secretaría" una memoria, es posible que sea necesario dar de baja la programación del comunicado a enviar que se hubiese generado al finalizar un acta de revisión no mímima desde la pantalla [IU\-ETI\-0030\-001 Búsqueda y listado de actas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-001-busqueda-y-listado-de-actas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-001-busqueda-y-listado-de-actas.md")  o bien desde la pantalla [IU\-ETI\-0020\-002 Evaluar memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md") para el caso de revisión mínima, tal y como se describe en dichas pantallas y en el detalle para la generación de los comunicados de los apartados **Informe de seguimiento anual pendiente e Informe de seguimiento final pendiente** dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

Se deberán dar de baja tanto la programación como el comunicado de tipo **Informe de seguimiento anual pendiente** preparado para su envío asociado a una memoria en el caso de que la acción "Enviar a secretaría" produzca el cambio de estado de la memoria del estado "Completada seguimiento anual" a "Enviar secretaría seguimiento anual".

Se deberán dar de baja tanto la programación como el comunicado de tipo **Informe de seguimiento final pendiente** preparado para su envío asociado a una memoria en el caso de que la acción "Enviar a secretaría" produzca el cambio de estado de la memoria del estado "Completada seguimiento final" a "Enviar secretaría seguimiento final".

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




