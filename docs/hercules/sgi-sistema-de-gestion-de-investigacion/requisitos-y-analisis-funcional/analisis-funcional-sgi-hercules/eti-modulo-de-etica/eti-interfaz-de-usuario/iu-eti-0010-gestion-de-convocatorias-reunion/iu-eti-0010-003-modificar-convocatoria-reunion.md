# Hércules : IU\-ETI\-0010\-003 Modificar convocatoria reunión



## Formulario de Modificar convocatoria reunión

Pantalla compuesta por dos formularios:

* Datos generales: muestra el formulario para modificar los datos generales de una convocatoria de reunión.
* Asignación memorias: muestra el formulario para asignar las memorias que van a ser evaluadas en la reunión de convocatoria de reunión.

### Datos generales

Si la convocatoria de reunión tiene un acta asociada en estado "Finalizada" no se podrá modificar ningún dato de la convocatoria, sólo se puede consultar.

Si la convocatoria de reunión tiene un acta asociada en estado "En elaboración" únicamente se podrán modificar los campos "Lugar" y "Orden del día" de Datos generales. En asignación de memorias se podrán añadir, modificar o eliminar memorias a la convocatoria.

Si la convocatoria de reunión no tiene un acta asociada se podrán modificar todos los campos de Datos generales salvo el "comité" y el campo "convocatoria" y "fecha límite" en caso de que ya tenga memorias asignadas. En asignación de memorias se podrán añadir, modificar o eliminar memorias a la convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Código | códigoObligatorio | Código con formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año actual y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comitéModo consulta |
| Comité | DesplegableTexto cortoObligatorio | Desplegable con los valores: * CEISH * CEEA * CEIAB  Modo consulta |
| Fecha evaluación | fecha | Calendario para marcar el día.No se puede modificar su valor si tiene un acta relacionada. |
| Fecha límite | fecha | Calendario para marcar el día (por defecto una semana antes de la reunión).No puede ser posterior a la fecha de reunión.No se puede modificar su valor si tiene un acta relacionada o tiene memorias asignadas. |
| Convocatoria | DesplegableTexto cortoObligatorio | Desplegable con los valores: * Ordinaria * Extraordinaria * Seguimiento  No se puede modificar su valor si tiene un acta relacionada o tiene memorias asignadas. |
| Hora inicio Primera Convocatoria | Horas y minutosObligatorio | Hora y minutos de inicio de la reunión de primera convocatoria.No se puede modificar su valor si tiene un acta relacionada. |
| Hora inicio Segunda Convocatoria | Horas y minutosOpcional | Hora  y minutos de inicio de la reunión de segunda convocatoria.No se puede modificar su valor si tiene un acta relacionada. |
| Lugar | Texto cortoObligatorio | Lugar donde se celebra la reunión.No se puede modificar su valor si tiene un acta relacionada es estado Finalizada. |
| Orden del día | TextoObligatorio | Caja de texto para explicar el orden del día de la reunión.No se puede modificar su valor si tiene un acta relacionada es estado Finalizada. |
| Convocantes | Listado seleccionableTexto cortoOpcional | Listado con todos los miembros activos del comité seleccionado (NIF, nombre, apellidos) más los gestores del módulo de ética. Se autocompleta automáticamente al seleccionar el comité. Aunque se deja poder modificar sobre dicha lista por si se necesita borrar a alguien del listado.Datos de cada miembro recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md").No se puede modificar su valor si tiene un acta relacionada. |

### Asignación memorias

Pantalla que muestra el formulario para asignar las memorias que van a ser evaluadas en la reunión de convocatoria de reunión. Son registros de la tabla evaluación.

El listado saca aquellas evaluaciones de la convocatoria de reunión que no son revisión mínima. Las evaluaciones debidas a dictamen Favorable pendiente de revisión mínima implican una nueva evaluación pero asociadas a la misma convocatoria de reunión. Por eso puede existir mas de un registro en la tabla evaluación para la mima memoria y misma convocatoria de reunión.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de memorias asignadas a la reunión de convocatoria | | |
| Memoria | DesplegableTexto cortoObligatorio | Memoria a evaluar. |
| Evaluador1 | DesplegableTexto cortoObligatorio | Nombre y apellidos del evaluador 1\.Datos recuperados a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Evaluador2 | DesplegableTexto cortoObligatorio | Nombre y apellidos del evaluador 2\.Datos recuperados a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Se va a la pantalla de Nueva asignación de memoria.Solo se podrá añadir si no ha empezado la reunión de evaluación. | [CU\-ETI\-0010\-004 \- Asignación de memorias \- Añadir](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-004-asignacion-de-memorias-anadir.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-004-asignacion-de-memorias-anadir.md") | ETI\-CNV\-E |
| Editar | Se va a la pantalla de Modificación asignación de memoria.Solo se podrá editar si no ha empezado la reunión de evaluación. | [CU\-ETI\-0010\-007 \- Asignación de memorias \- Modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-007-asignacion-de-memorias-modificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-007-asignacion-de-memorias-modificar.md") | ETI\-CNV\-E |
| Eliminar | Se podrá eliminar siempre y cuando no haya empezado la reunión de evaluación. Dichos cambios se hacen en memoria, no se consolidan hasta pulsar el botón Guardar.No se podrá eliminar si hay dictamen o ya existan comentarios creados, es decir, se ha empezado a trabajar en la evaluación.Solo se podrá eliminar si no ha empezado la reunión de evaluación. | [CU\-ETI\-0010\-005 \- Asignación de memorias \- Eliminar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-005-asignacion-de-memorias-eliminar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-005-asignacion-de-memorias-eliminar.md") | ETI\-CNV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Guardar | Se modifica la convocatoria.Para los nuevos registros de memoria creados:* Se crean las evaluaciones para las memorias nuevas del listado de memorias rellenando los datos de memoria, convocatoria de reunión, versión (se calcula buscando la última versión de la memoria mas uno), que no son de revisión mínima y fecha dictamen con la fecha de evaluación de la convocatoria. * Se les cambia el estado de las memoria a "En evaluación" * Se notifica al investigador/solicitante de la fecha de convocatoria de su evaluación  En caso de eliminar una memoria se cambia el estado de la memoria a "En secretaria" y se borra la evaluación creada, siempre y cuando no hay dictamen ni haya comentarios creados, es decir, no se ha empezado a trabajar en la evaluación. | [CU\-ETI\-0010\-003 \- Modificar Convocatoria reunión \- Datos generales \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-003-modificar-convocatoria-reunion-datos-generales-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-003-modificar-convocatoria-reunion-datos-generales-guardar.md")[CU\-ETI\-0010\-006 \- Modificar Convocatoria reunión \- Asignación de memorias \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-006-modificar-convocatoria-reunion-asignacion-de-memorias-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-006-modificar-convocatoria-reunion-asignacion-de-memorias-guardar.md") | ETI\-CNV\-E |
| Cancelar | Retorna al listado de Convocatorias reunión. |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




