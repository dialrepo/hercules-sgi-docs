# Hércules : IU\-CSP\-0204\-012 \- Modificar convocatoria \- Elegibilidad



## Formulario Modificar convocatoria \- Elegibilidad

**La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Listado de conceptos de gasto permitidos en la convocatoria: recuperados de la tabla "convocatoria concepto gasto" marcados con el campo "permitido" a "true". | | |
| Concepto de gasto | Texto corto | Nombre del concepto de gasto recuperado del campo "nombre" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto") |
| Descripción | Texto | Descripción recuperada del campo "descripción" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Costes indirectos | Boolean | Valor "sí" o "no". Recuperado del campo "costes indirectos" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Importe máximo | DecimalImporte | Campo importe máximo introducido al añadir el concepto de gasto en el listado de gastos permitidos.Se corresponde con el campo "importe máximo" de la tabla "convocatoria concepto gasto" |
| Mes inicial | Entero | Campo "mes inicial" de la tabla "convocatoria concepto gasto". |
| Mes final | Entero | Campo "mes final" de la tabla "convocatoria concepto gasto". |
| Observaciones | Texto largo | Campo "observaciones" de la tabla "convocatoria concepto gasto". |
| Modificar | Icono de acción | Acción modificar gasto permitido |
| Eliminar | Icono de acción | Acción eliminar gasto permitido |
| Listado de conceptos de gasto no permitidos en la convocatoria: recuperados de la tabla "convocatoria concepto gasto" marcados con el campo "permitido" a "false". | | |
| Concepto de gasto | Texto corto | Nombre del concepto de gasto recuperado del campo "nombre" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Descripción | Texto | Descripción recuperada del campo "descripción" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Costes indirectos | Boolean | Valor "sí" o "no". Recuperado del campo "costes indirectos" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Mes inicial | Entero | Campo "mes inicial" de la tabla "convocatoria concepto gasto". |
| Mes final | Entero | Campo "mes final" de la tabla "convocatoria concepto gasto". |
| Observaciones | Texto largo | Campo "observaciones" de la tabla "convocatoria concepto gasto". |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |

  
  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar gasto permitido | Muestra la pantalla de modificación del concepto de gasto seleccionado del listado de conceptos de gasto permitidos de la convocatoria | Se produce un cambio de contexto.Se resuelve con la pantalla: [IU\-CSP\-202\-011 \- Añadir concepto de gasto permitido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-011-anadir-concepto-de-gasto-permitido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-011-anadir-concepto-de-gasto-permitido.md") en modo edición. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar gasto permitido | Elimina el concepto de gasto seleccionado del listado de conceptos de gasto permitidos de la convocatoria | Se realizará un borrado físico del registro en la tabla "convocatoria concepto gasto". Se eliminarán en cascada los códigos económicos de la tabla "convocatoria concepto gasto código económico" vinculados a este concepto de gasto. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación de gasto permitido | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir concepto de gasto permitido | Muestra la pantalla Nuevo concepto de gasto elegible | Se produce un cambio de contexto.Se resuelve con la pantalla: [IU\-CSP\-202\-011 \- Añadir concepto de gasto permitido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-011-anadir-concepto-de-gasto-permitido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-011-anadir-concepto-de-gasto-permitido.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Modificar gasto no permitido | Muestra la pantalla de modificación del concepto de gasto seleccionado del listado de conceptos de gasto no permitidos de la convocatoria | Se produce un cambio de contexto.Muestra la pantalla [IU\-CSP\-202\-012 \- Añadir concepto de gasto no permitido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-012-anadir-concepto-de-gasto-no-permitido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-012-anadir-concepto-de-gasto-no-permitido.md") en modo edición. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar gasto no permitido | Elimina el concepto de gasto seleccionado del listado de conceptos de gasto no permitidos de la convocatoria | Se realizará un borrado físico del registro en la tabla "convocatoria concepto de gasto". Se eliminarán en cascada los códigos económicos de la tabla "convocatoria concepto gasto código económico" vinculados a este concepto de gasto. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación de gasto no permitido | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir concepto de gasto no permitido | Muestra la pantalla Nuevo concepto de gasto prohibido | Se produce un cambio de contexto.Muestra la pantalla [IU\-CSP\-202\-012 \- Añadir concepto de gasto no permitido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-012-anadir-concepto-de-gasto-no-permitido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-012-anadir-concepto-de-gasto-no-permitido.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |

### Botones generales a la pantalla



| **Acciones** | **Descripción** | **Enlace CU.** | **Permisos** |
| --- | --- | --- | --- |
| Guardar | Modifica la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todos los apartados sobre los que se hubieran introducido datos. | Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todos los apartados, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




