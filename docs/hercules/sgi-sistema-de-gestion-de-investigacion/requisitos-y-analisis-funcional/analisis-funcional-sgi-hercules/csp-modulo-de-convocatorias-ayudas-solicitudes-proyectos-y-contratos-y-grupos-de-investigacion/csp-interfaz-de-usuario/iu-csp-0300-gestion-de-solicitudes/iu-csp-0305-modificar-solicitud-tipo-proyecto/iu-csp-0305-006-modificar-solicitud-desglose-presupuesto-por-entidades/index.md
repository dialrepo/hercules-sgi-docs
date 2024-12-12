# Hércules : IU\-CSP\-0305\-006 \- Modificar solicitud \- Desglose presupuesto (por entidades)



## Formulario de Modificar solicitud \- Desglose presupuesto (por entidades)

Formulario que permitirá indicar en la solicitud de proyecto el desglose presupuestario del proyecto en solicitud. Se muestra este formulario si en Datos proyecto el campo "Tipo de desglose de presupuesto" tiene uno de los valores "Mixto" o "Por entidad"



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| El apartado "Desglose presupuesto" y, en general, todo del bloque "Datos proyecto" solamente estará visible si el campo "formulario solicitud" de la tabla "solicitud" toma valor "proyecto". | | |
| Listado de entidades financiadoras ( se obtiene de los registros de la tabla "SolicitudProyectoEntidad"):* Si el campo "Tipo de desglose de presupuesto" tiene valor "Por entidad", son las entidades financiadoras registradas en la convocatoria para la que realiza la solicitud (aquellos registros con el campo "convocatoriaEntidadFinanciadora" informado) y entidades financiadoras ajenas a la convocatoria (aquellas con el campo "solicitudProyectoEntidadFinanciadoraAjena" informado) * Si el campo "Tipo de desglose de presupuesto" tiene valor "Mixta", es la entidad gestora registrada en la convocatoria para la que realiza la solicitud (aquellos registros con el campo "convocatoriaEntidadGestora" informado) y entidades financiadoras ajenas a la convocatoria (aquellas con el campo "solicitudProyectoEntidadFinanciadoraAjena" informado) | | |
| Nombre | Texto | Nombre de la entidad financiadora, empresa u organismo que financia la convocatoria. El nombre será recuperado a través de la referencia de la empresa haciendo uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md")La referencia se obtiene del campo "entidadRef" del campo "convocatoriaEntidadFinanciadora" de la tabla "SolicitudProyectoEntidad" |
| CIF | Texto corto | Número de identificación fiscal de la entidad financiadora, empresa u organismo que financia la convocatoria. El dato será recuperado a través de la referencia de la empresa haciendo uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Fuente financiación | Texto corto | Fuente de la financiación de la convocatoriaSe mostrará el campo "nombre" de la tabla "fuente financiación" para el registro referenciado por el campo "fuente financiación" del campo "convocatoriaEntidadFinanciadora" de la tabla "SolicitudProyectoEntidad" |
| Ajena a la convocatoria | Texto | Indica si viene de una convocatoria o no (si tiene informado los campos "convocatoriaEntidadFinanciadora"  o "convocatoriaEntidadGestora" en la tabla "SolicitudProyectoEntidad" su valor será "No" y si tienen informado el campo "solicitudProyectoEntidadFinanciadoraAjena" su valor será "Sí") |
| Ver | Icono de acción | Acción "Ver  presupuesto Entidad financiadora" |
| Ver presupuesto completo | Botón | Acción "Ver presupuesto completo" |
| Importes totales del presupuesto. Se mostrarán en formato de tabla, representando en las columnas dos valores: valor calculado (se obtendrá del sumatorio a partir del detalle del desglose del presupuesto y/o datos de los socios), valor manual (se permitirá que se introduzca manualmente un valor, para cubrir aquellos casos en los que no se desee detallar el presupuesto y/o datos de los socios). Se mostrará un tooltip informativo (info.), al lado del título "Valor manual". Este tooltip tendrá como contenido: "En caso de que no hayan sido introducidos los detalles del presupuesto y/o socios, puede introducir manualmente los importes que desee. Éstos prevalecerán sobre los calculados." | | |
| Importe presupuestado entidades convocatoria (valor calculado) | EconómicoSolo lectura | Suma del importe presupuestado para  todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades financiadoras de la convocatoriaSe mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe presupuestado de todos los registros de la tabla "solicitud proyecto presupuesto" vinculados a los registros de la tabla "solicitud proyecto entidad" con los campos "convocatoriaEntidadFinanciadora" o "convocatoriaEntidadGestora" informados y vinculados a la solicitud. |
| Importe solicitado entidades convocatoria (valor calculado) | EconómicoSolo lectura | Suma del importe solicitado para  todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades financiadoras de la convocatoriaSe mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe solicitado de todos los registros de la tabla "solicitud proyecto presupuesto" vinculados a los registros de la tabla "solicitud proyecto entidad" con los campos "convocatoriaEntidadFinanciadora" o "convocatoriaEntidadGestora" informados y vinculados a la solicitud. |
| Importe presupuestado entidades ajenas (valor calculado) | EconómicoSolo lectura | Suma del importe presupuestado para  todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades financiadoras ajenas a la convocatoriaSe mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe presupuestado de todos los registros de la tabla "solicitud proyecto presupuesto" vinculados a los registros de la tabla "solicitud proyecto entidad" con el campo "solicitudProyectoEntidadFinanciadoraAjena"  informado y vinculados a la solicitud. |
| Importe solicitado entidades ajenas (valor calculado) | EconómicoSolo lectura | Suma del importe solicitado para  todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades financiadoras ajenas a la convocatoriaSe mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe solicitado de todos los registros de la tabla "solicitud proyecto presupuesto" vinculados a los registros de la tabla "solicitud proyecto entidad" con el campo "solicitudProyectoEntidadFinanciadoraAjena"  informado y vinculados a la solicitud. |
| Importe presupuestado Universidad (valor calculado) | EconómicoSolo lectura | Suma del importe presupuestado para  todos los conceptos de gasto que no representen costes indirectos en los que se desglosa el presupuesto.Se mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe presupuestado de los registros de la tabla "solicitud proyecto presupuesto" asociados a la solicitud cuyo campo "concepto gasto" figure en la tabla "conceptos gasto" con el campo "costes indirectos" a "false". Si el dato no puede ser calculado por no haberse detallado el presupuesto para la solicitud, el campo se mostrará vacío pero también en modo solo lectura. |
| Importe presupuestado Universidad (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe presupuestado, que no se corresponda con costes indirectos, correspondiente al presupuesto del proyecto a desarrollar por la Universidad.Se corresponde con el campo "importe presupuestado" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Importe presupuestado por universidad (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "importe presupuestado" de la tabla "solicitud proyecto", en caso de acceder a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Importe presupuestado Universidad  Costes Indirectos (valor calculado) | EconómicoSolo lectura | Suma del importe presupuestado para  todos los conceptos de gasto que representen costes indirectos en los que se desglosa el presupuesto.Se mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe presupuestado de los registros de la tabla "solicitud proyecto presupuesto" asociados a la solicitud cuyo campo "concepto gasto" figure en la tabla "conceptos gasto" con el campo "costes indirectos" a "true". Si el dato no puede ser calculado por no haberse detallado el presupuesto para la solicitud, el campo se mostrará vacío pero también en modo solo lectura. |
| Importe presupuestado Universidad  Costes Indirectos (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe presupuestado, que se corresponda con costes indirectos, correspondiente al presupuesto del proyecto a desarrollar por la Universidad.Se corresponde con el campo "importe presupuestado costes indirectos" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Importe presupuestado por universidad costes indirectos (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "importe presupuestado costes indirectos" de la tabla "solicitud proyecto", en caso de acceder a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Total importe presupuestado Universidad (valor calculado) | EconómicoSolo lectura | Importe total presupuestado por la Universidad.Se mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe presupuestado de todos los registros de la tabla "solicitud proyecto presupuesto" asociados a la solicitud (que debería corresponderse también con la suma de los valores calculados previamente, "importe presupuestado entidades convocatoria" e "importe presupuestado entidades ajenas"). Si el dato no puede ser calculado por no haberse detallado el presupuesto para la solicitud, el campo se mostrará vacío pero también en modo solo lectura. |
| Total importe presupuestado Universidad (valor manual) | EconómicoSolo lectura | Se corresponde con la suma de los campos "Importe presupuestado por Universidad (valor manual)" e "Importe presupuestado por Universidad Costes Indirectos (valor manual)".Se muestra en modo solo lectura.En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Total importe presupuestado por universidad (valor calculado)" se mostrará un aviso cuando el valor de este campo y la suma de los valores  "importe presupuestado por Universidad (valor manual)" e "importe presupuestado por Universidad Costes Indirectos (valor manual)" introducidos manualmente (o recogidos de los valores almacenados ya en "importe presupuestado" e "importe presupuestado costes indirectos" de la tabla "solicitud proyecto", cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Importe solicitado Universidad (valor calculado) | EconómicoSolo lectura | Suma del importe solicitado para  todos los conceptos de gasto que no representen costes indirectos en los que se desglosa el presupuesto.Se mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe solicitado de los registros de la tabla "solicitud proyecto presupuesto" asociados a la solicitud cuyo campo "concepto gasto" figure en la tabla "conceptos gasto" con el campo "costes indirectos" a "false". Si el dato no puede ser calculado por no haberse detallado el presupuesto para la solicitud, el campo se mostrará vacío pero también en modo solo lectura. |
| Importe solicitado Universidad (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe solicitado, que no se corresponda con costes indirectos, correspondiente al presupuesto del proyecto a desarrollar por la Universidad.Se corresponde con el campo "importe solicitado" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Importe solicitado por universidad (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "importe solicitado" de la tabla "solicitud proyecto",  cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Importe solicitado Universidad Costes Indirectos (valor calculado) | EconómicoSolo lectura | Suma del importe solicitado para  todos los conceptos de gasto que  representen costes indirectos en los que se desglosa el presupuesto.Se mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe solicitado de los registros de la tabla "solicitud proyecto presupuesto" asociados a la solicitud cuyo campo "concepto gasto" figure en la tabla "conceptos gasto" con el campo "costes indirectos" a "true". Si el dato no puede ser calculado por no haberse detallado el presupuesto para la solicitud, el campo se mostrará vacío pero también en modo solo lectura. |
| Importe solicitado Universidad Costes Indirectos (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe solicitado, que se corresponda con costes indirectos, correspondiente al presupuesto del proyecto a desarrollar por la Universidad.Se corresponde con el campo "importe solicitado costes indirectos" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Importe solicitado por universidad costes indirectos (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "importe solicitado costes indirectos" de la tabla "solicitud proyecto",  cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Total importe solicitado Universidad Costes Indirectos (valor calculado) | EconómicoSolo lectura | Importe total solicitado por la Universidad.Se mostrará en modo solo lectura y contendrá el valor calculado a partir de la suma del importe solicitado de todos los registros de la tabla "solicitud proyecto presupuesto" asociados a la solicitud (que debería corresponderse también con la suma de los valores calculados previamente, "importe solicitado entidades convocatoria" e "importe solicitado entidades ajenas"). Si el dato no puede ser calculado por no haberse detallado el presupuesto para la solicitud, el campo se mostrará vacío pero también en modo solo lectura. |
| Total importe solicitado Universidad Costes Indirectos (valor manual) | EconómicoSolo lectura | Se corresponde con la suma de los campos "Importe solicitado por Universidad (valor manual)" e "Importe solicitado por Universidad Costes Indirectos (valor manual)".Se muestra en modo solo lectura.En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Total importe solicitado por universidad (valor calculado)" se mostrará un aviso cuando el valor de este campo y la suma de los valores  "importe solicitado por Universidad (valor manual)" e "importe solicitado por Universidad Costes Indirectos (valor manual)" introducidos manualmente (o recogidos de los valores almacenados ya en "importe solicitado" e "importe solicitado costes indirectos" de la tabla "solicitud proyecto", cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Importe presupuestado socios (valor calculado) | EconómicoSolo lectura | Suma del importe presupuestado de todos los socios que participan en el proyecto (exceptuando la Universidad).Se mostrará en modo solo lectura y contendrá el valor calculado con la suma del importe presupuestado de todos los registros de la tabla "solicitud proyecto socio". Si no hay ningún registro en "solicitud proyecto socio" el campo se mostrará vacío y también en modo solo lectura. |
| Importe presupuestado socios (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe total presupuestado por todos los socios (adicionales a la Universidad) que participan en el proyecto.Se corresponde con el campo "importe presupuestado socios" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Importe presupuestado por socios (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "importe presupuestado socios" de la tabla "solicitud proyecto" cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Importe solicitado socios (valor calculado) | EconómicoSolo lectura | Suma del importe solicitado de todos los socios que participan en el proyecto (exceptuando la Universidad).Se mostrará en modo solo lectura y contendrá el valor calculado con la suma del importe solicitado de todos los registros de la tabla "solicitud proyecto socio". Si no hay ningún registro en "solicitud proyecto socio" el campo se mostrará vacío y también en modo solo lectura. |
| Importe solicitado socios (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe total solicitado por todos los socios (adicionales a la Universidad) que participan en el proyecto.Se corresponde con el campo "importe solicitado socios" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Importe solicitado por socios (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "importe solicitado socios" de la tabla "solicitud proyecto" cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Total importe presupuestado (valor calculado) | EconómicoSolo lectura | Suma total del importe presupuestado de la solicitud (Universidad y socios).Se mostrará en modo solo lectura y contendrá el valor calculado con la suma del importe presupuestado  de todos los registros de la tabla "solicitud proyecto presupuesto" y del importe presupuestado de todos los registros de la tabla "solicitud proyecto socio". Si el valor no puede ser obtenido porque no existan los datos de origen, el campo se mostrará vacío y también en modo solo lectura. |
| Total importe presupuestado (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe total presupuestado de la solicitud (Universidad y socios).Se corresponde con el campo "total importe presupuestado" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Total importe presupuestado (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "total importe presupuestado" de la tabla "solicitud proyecto" cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |
| Total importe solicitado (valor calculado) | EconómicoSolo lectura | Suma total del importe solicitado (Universidad y socios).Se mostrará en modo solo lectura y contendrá el valor calculado con la suma del importe solicitado  de todos los registros de la tabla "solicitud proyecto presupuesto" y del importe solicitado de todos los registros de la tabla "solicitud proyecto socio". Si el valor no puede ser obtenido porque no existan los datos de origen, el campo se mostrará vacío y también en modo solo lectura. |
| Total importe solicitado (valor manual) | EconómicoOpcional | Este campo permite introducir libremente el importe total solicitado (Universidad y socios).Se corresponde con el campo "total importe solicitado" de la tabla "solicitud proyecto".En caso que haya sido posible obtener el valor calculado sobre el campo anterior "Total importe solicitado (valor calculado)" se mostrará un aviso cuando el valor calculado y el valor introducido manualmente (o recogido del valor almacenado ya en "total importe solicitado" de la tabla "solicitud proyecto" cuando se accede a esta pantalla en modo edición) no coincidan. El aviso se mostrará como icono de advertencia a la derecha del valor manual. El contenido del aviso se puede mostrar como tooltip: "El valor introducido manualmente no coincide con el valor calculado a partir de los datos de detalle de la solicitud. Si quiere que prevalezca el valor calculado debe eliminar el valor introducido manualmente, vaciando el contenido de este campo." |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver (Presupuesto Entidad financiadora) | Produce un cambio de contexto al presupuesto de la entidad financiadora seleccionada del listado de entidades financiadoras | Muestra la pantalla [IU\-CSP\-0305\-006\-001 \- Crear solicitud \- Desglose presupuesto \- Entidad financiadora \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-006-modificar-solicitud-desglose-presupuesto-por-entidades/iu-csp-0305-006-001-crear-solicitud-desglose-presupuesto-entidad-financiadora-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-006-modificar-solicitud-desglose-presupuesto-por-entidades/iu-csp-0305-006-001-crear-solicitud-desglose-presupuesto-entidad-financiadora-datos-generales.md").Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |  |
| Ver presupuesto Completo | Muestra una pantalla con el presupuesto completo de la solicitud mostrando todas las entidades financiadoras y el desglose de presupuesto por conceptos de gasto | Muestra la pantalla [IU\-CSP\-0302\-014 \- Presupuesto completo de la solicitud (por entidades)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-014-presupuesto-completo-de-la-solicitud-por-entidades.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-014-presupuesto-completo-de-la-solicitud-por-entidades.md").Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-VCSP\-SOL\-V\_UOCSP\-SOL\-ECSP\-SOL\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todas las pestañas de la pantalla. | Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar").Si han sido introducidos valores en los campos:* Importe presupuestado por Universidad (valor manual) * Importe presupuestado por Universidad Costes Indirectos (valor manual) * Importe solicitado por Universidad (valor manual) * Importe solicitado por Universidad Costes Indirectos(valor manual) * Importe presupuestado por socios (valor manual) * Importe solicitado por socios (valor manual) * Total importe presupuestado (valor manual) * Total importe solicitado (valor manual)  se almacenarán respectivamente sobre los campos:* "importe presupuestado" * "importe presupuestado costes indirectos" * "importe solicitado" * "importe solicitado costes indirectos" * "importe presupuestado socios" * "importe solicitado socios" * "total importe presupuestado" * "total importe solicitado"  de la tabla "solicitud proyecto"Si cualquiera de estos campos pasa de tener valor en la tabla "solicitud proyecto" a quedar vacío en esta pantalla (cuando se entra en modo edición), se deberá actualizar su valor en la tabla "solicitud proyecto" pasando a tomar valor "null". | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Cancelar | Retorna al listado de Solicitudes sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



