# Hércules : IU\-CSP\-0204\-003 \- Modificar convocatoria \- Entidades Financiadoras



## Formulario Modificar convocatoria \- Entidades Financiadoras

### Formulario con el listado de entidades financiadoras

**La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")** | | |
| Listado de entidades financiadoras | | |
| Nombre | Texto | Nombre de la entidad financiadora, obtenido a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Número de identificación fiscal | Texto corto | Número de identificación de la entidad convocante, obtenido a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Fuente financiación | Texto corto | Fuente de la financiación de la convocatoria.Se corresponde con el campo "nombre" de la tabla "fuente financiación" recuperado a través del campo "fuente financiación" de la tabla "convocatoria entidad financiadora" |
| Ámbito | Texto corto | Ámbito geográfico de la convocatoriaSe corresponde con el campo "nombre" de la tabla "tipo ámbito geográfico" recuperado a través de campo "tipo ámbito geográfico" de la tabla "fuente financiación" para la fuente financiación de la convocatoria (campo "fuente financiación" de la tabla "convocatoria entidad financiadora") |
| Tipo financiación | Texto corto | Tipo de financiación de la convocatoriaSe corresponde con el campo "nombre" de la tabla "tipo financiación" recuperado a través del campo "tipo financiación" de la tabla "convocatoria entidad financiadora" |
| % financiación | Numérico Porcentaje | Porcentaje de financiación de la convocatoriaSe corresponde con el campo "porcentaje financiación" de la tabla "convocatoria entidad financiadora" |
| Importe financiación | Económico | Importe de financiación de la convocatoriaSe corresponde con el campo "importe financiación" de la tabla "convocatoria entidad financiadora" |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |

  
  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la entidad seleccionada del listado de entidades financiadora | Esta opción sólo estará disponible si es el estado de la convocatoria es:* "Borrador" * "Registrada" pero no existen solicitudes o proyectos asociados a la convocatoria  Muestra la pantalla de abajo de "Modificar entidad financiadora a la convocatoria".Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar | Elimina la entidad financiadora | Esta opción sólo estará disponible si es el estado de la convocatoria es:* "Borrador" * "Registrada" pero no existen solicitudes o proyectos asociados a la convocatoria  Elimina el registro de la tabla de Entidades financiadoras de la convocatoria.Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir entidad financiadora | Muestra la pantalla de Nueva entidad financiadora | Esta opción sólo estará disponible si es el estado de la convocatoria es:* "Borrador" * "Registrada" pero no existen solicitudes o proyectos asociados a la convocatoria  Muestra la pantalla [IU\-CSP\-202\-004 \- Añadir entidad financiadora](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-004-anadir-entidad-financiadora.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-004-anadir-entidad-financiadora.md").Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |

### Formulario para modificar las entidades financiadoras de una convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")** | | |
| Entidad financiadora | Texto | Empresa u organismo que financia la convocatoria. Se visualizará el nombre de la entidad financiadora seleccionada en el alta de la entidad financiadora, recuperado a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md").**Se muestra en modo consulta. No se permite modificar la entidad** |
| Fuente de financiación | SelectorTexto cortoOpcional | Listado de fuentes de investigación activasSe listarán los valores (campo "nombre" ) de la tabla "fuente financiación" que tengan el campo "activo" a "true" |
| Tipo financiación | SelectorTexto cortoOpcional | Listado de Tipos de financiación activasSe listarán los valores (campo "nombre" ) de la tabla "tipo financiación" que tengan el campo "activo" a "true" |
| Porcentaje de financiación | Numérico PorcentajeOpcional | Porcentaje de financiaciónSe corresponde con el campo "porcentaje financiación" de la tabla "convocatoria entidad financiadora" |
| Importe de financiación | Numérico EconómicoOpcional | Importe de financiaciónSe corresponde con el campo "importe financiación" de la tabla "convocatoria entidad financiadora" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos | Se realizarán las comprobaciones de tipo y de unicidad sobre los campos entidad financiadora, fuente y tipo.Se guardarán los cambios modificando los datos de la entidad financiadora de la convocatoria en la tabla "convocatoria entidad financiadora"Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá al listado de entidades financiadoras de la convocatoria. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




