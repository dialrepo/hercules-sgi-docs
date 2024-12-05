# Hércules : IU\-ETI\-0010\-002 Alta convocatoria reunión



## Formulario de Alta convocatoria reunión

Pantalla compuesta por dos formularios:

* Datos generales: muestra el formulario de alta de una convocatoria de reunión. Para dar de alta una nueva convocatoria únicamente hace falta introducir los campos obligatorios de esta pestaña.
* Asignación memorias: muestra el formulario para asignar las memorias que van a ser evaluadas en la reunión de convocatoria de reunión

### Datos generales



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Comité | DesplegableTexto cortoObligatorio | Desplegable con los valores: * CEISH * CEEA * CEIAB  No se puede modificar su valor si se ha asignado una memoria |
| Fecha evaluación | fechaObligatorio | Calendario para marcar el día. |
| Fecha límite | fechaObligatorio | Calendario para marcar el día (por defecto una semana antes de la reunión).No puede ser posterior a la fecha de reunión. |
| Convocatoria | DesplegableTexto cortoObligatorio | Desplegable con los valores: * Ordinaria * Extraordinaria * Seguimiento |
| Hora inicio Primera Convocatoria | Horas y minutosObligatorio | Hora y minutos de inicio de la reunión de primera convocatoria. |
| Hora inicio Segunda Convocatoria | Horas y minutosOpcional | Hora  y minutos de inicio de la reunión de segunda convocatoria. |
| Lugar | Texto cortoObligatorio | Lugar donde se celebra la reunión. |
| Orden del día | TextoObligatorio | Caja de texto para explicar el orden del día de la reunión. |
| Convocantes | Listado seleccionableTexto cortoOpcional | Listado con todos los miembros activos del comité seleccionado (NIF, nombre, apellidos) más los gestores del módulo de ética. Se autocompleta automáticamente al seleccionar el comité. Aunque se deja poder modificar sobre dicha lista por si se necesita borrar a alguien del listado.Los datos de cada miembro del comité serán recuperados a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |

### Asignación memorias

Pantalla que muestra el formulario para asignar las memorias que van a ser evaluadas en la reunión de convocatoria de reunión. Son registros de la tabla evaluación.

El listado saca aquellas evaluaciones de la convocatoria de reunión que no son revisión mínima. Las evaluaciones debidas a dictamen Favorable pendiente de revisión mínima implican una nueva evaluación pero asociadas a la misma convocatoria de reunión. Por eso puede existir mas de un registro en la tabla evaluación para la mima memoria y misma convocatoria de reunión.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de memorias asignadas a la reunión de convocatoria | | |
| Memoria | Texto corto | Memoria a evaluar |
| Evaluador1 | Texto corto | Nombre y apellidos del evaluador 1\.Se recuperará a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Evaluador2 | Texto corto | Nombre y apellidos del evaluador 2\.Se recuperará a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Se va a la pantalla de Nueva asignación de memoria.Solo se podrá añadir si no ha empezado la reunión de evaluación. | [CU\-ETI\-0010\-004 \- Asignación de memorias \- Añadir](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-004-asignacion-de-memorias-anadir.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-004-asignacion-de-memorias-anadir.md") | ETI\-CNV\-C |
| Editar | Se va a la pantalla de Modificación de asignación de memoria.Solo se podrá editar si no ha empezado la reunión de evaluación. |  | ETI\-CNV\-C |
| Eliminar | Se podrá eliminar siempre y cuando no haya empezado la reunión de evaluación. Dichos cambios se hacen en memoria, no se consolidan hasta pulsar el botón Guardar. | [CU\-ETI\-0010\-005 \- Asignación de memorias \- Eliminar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-005-asignacion-de-memorias-eliminar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-005-asignacion-de-memorias-eliminar.md") | ETI\-CNV\-C |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la convocatoria.Se crean las evaluaciones para las memorias del listado de memorias a evaluar en la reunión de convocatoria rellenando los datos de memoria, convocatoria de reunión, versión (se calcula buscando la última versión de la memoria mas uno), que no son de revisión mínima y fecha dictamen con la fecha de evaluación de la convocatoria.Se les cambia el estado de las memoria a "En evaluación".Se notifica al investigador/solicitante de la fecha de convocatoria de su evaluación. | [CU\-ETI\-0010\-002 \- Alta Convocatoria reunión \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-002-alta-convocatoria-reunion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-002-alta-convocatoria-reunion-guardar.md") | ETI\-CNV\-C |
| Volver | Retorna al listado de Convocatorias reunión sin salvar los posibles cambios. |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




