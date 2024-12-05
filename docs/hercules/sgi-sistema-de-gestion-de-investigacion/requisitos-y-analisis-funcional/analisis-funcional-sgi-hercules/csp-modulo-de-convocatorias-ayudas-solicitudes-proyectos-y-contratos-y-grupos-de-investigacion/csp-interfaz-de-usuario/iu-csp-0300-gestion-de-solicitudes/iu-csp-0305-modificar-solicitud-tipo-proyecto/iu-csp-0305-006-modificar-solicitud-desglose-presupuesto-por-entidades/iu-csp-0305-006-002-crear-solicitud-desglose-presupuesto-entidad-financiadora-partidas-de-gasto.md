# Hércules : IU\-CSP\-0305\-006\-002 \- Crear solicitud \- Desglose presupuesto \- Entidad financiadora \- Partidas de gasto



presupuestado

## Formulario Crear solicitud \- Desglose presupuesto \- Entidad financiadora \- Partidas de gasto

Formulario que permitirá indicar en la entidad financiadora de proyecto el desglose presupuestario del proyecto en solicitud.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de registros de la tabla "SolicitudProyectoPresupuesto" de la entidad seleccionada | | |
| Concepto de gasto | Texto corto | Nombre del concepto de gasto recuperado de la tabla "Conceptos de gasto" |
| Anualidad | Numérico decimal genérico | Anualidad a la que pertenece el concepto de gasto |
| Importe presupuestado | Económico | Importe presupuestado para el concepto de gasto por la entidad |
| Importe solicitado | Económico | Importe solicitado para el concepto de gasto por la entidad |
| Importe total presupuestado | Económico | Importe presupuestado total para el concepto de gasto dentro del presupuesto de la solicitud. Es la suma de todos los "importes presupuestados" del concepto gasto en la tabla "Desglose Presupuesto" (sumando el "importe presupuestado" de todos los registros, todas las entidades) |
| Importe total solicitado | Económico | Importe presupuestado total para el concepto de gasto dentro del presupuesto de la solicitud. Es la suma de todos los "importes solicitados" del concepto gasto en la tabla "Desglose Presupuesto" (sumando el "importe solicitado" de todos los registros, todas las entidades) |
| Observaciones | Texto largo | Campo abierto que permite introducir cualquier observación consideración del concepto de gasto en el presupuesto asociada a la solicitud |
| Modificar | Icono de acción | Acción "Modificar (Presupuesto entidad financiadora)" |
| Eliminar | Icono de acción | Acción "Eliminar (Presupuesto entidad financiadora)" |
| Añadir nueva partida de gasto | Icono de acción | Acción "Añadir nueva partida de gasto (Presupuesto entidad financiadora)" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar (Presupuesto entidad financiadora) | Muestra la pantalla de modificación del concepto de gasto para la entidad financiadora de la convocatoria | Si la entidad es de la convocatoria (financiadora o gestora, campo "convocatoriaEntidadFinanciadora" o "convocatoriaEntidadGestora" informados del objeto "solicitudProyectoEntidad"):Se resuelve con la pantalla [IU\-CSP\-0302\-010 \- Añadir partida de gasto a entidad financiadora de la convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-011-anadir-modificar-partida-de-gasto-a-entidad-financiadora-de-la-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-011-anadir-modificar-partida-de-gasto-a-entidad-financiadora-de-la-convocatoria.md")Si la entidad es ajena a la convocatoria (campo ajena a la convocatoria, campo "solicitudProyectoEntidadFinanciadoraAjena" informado del objeto "solicitudProyectoEntidad"):Se resuelve con la pantalla [IU\-CSP\-0302\-011 \- Añadir partida de gasto a entidad financiadora ajena a la convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-012-anadir-modificar-partida-de-gasto-a-entidad-financiadora-ajena-a-la-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-012-anadir-modificar-partida-de-gasto-a-entidad-financiadora-ajena-a-la-convocatoria.md") |
| Eliminar (Presupuesto entidad financiadora) | Elimina el concepto de gasto de la entidad financiadora |  |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |
| Añadir nueva partida de gasto (Presupuesto entidad financiadora) | Muestra la pantalla de creación del concepto de gasto para la entidad financiadora de la convocatoria | Si la entidad es de la convocatoria (financiadora o gestora, campo "convocatoriaEntidadFinanciadora" o "convocatoriaEntidadGestora" informados del objeto "solicitudProyectoEntidad"):Se resuelve con la pantalla [IU\-CSP\-0302\-010 \- Añadir partida de gasto a entidad financiadora de la convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-011-anadir-modificar-partida-de-gasto-a-entidad-financiadora-de-la-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-011-anadir-modificar-partida-de-gasto-a-entidad-financiadora-de-la-convocatoria.md")Si la entidad es ajena a la convocatoria (campo ajena a la convocatoria, campo "solicitudProyectoEntidadFinanciadoraAjena" informado del objeto "solicitudProyectoEntidad"):Se resuelve con la pantalla [IU\-CSP\-0302\-011 \- Añadir partida de gasto a entidad financiadora ajena a la convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-012-anadir-modificar-partida-de-gasto-a-entidad-financiadora-ajena-a-la-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-012-anadir-modificar-partida-de-gasto-a-entidad-financiadora-ajena-a-la-convocatoria.md") |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Crea la entidad financiadora con la información introducida en el formulario.Al guardar una entidad financiadora se guardar la información de todos los apartados de definición de la entidad. |  |
| Cancelar | Retorna al listado de Entidades financiadoras sin salvar los posibles cambios.Al cancelar una entidad se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

  
  
  
  
  
  





