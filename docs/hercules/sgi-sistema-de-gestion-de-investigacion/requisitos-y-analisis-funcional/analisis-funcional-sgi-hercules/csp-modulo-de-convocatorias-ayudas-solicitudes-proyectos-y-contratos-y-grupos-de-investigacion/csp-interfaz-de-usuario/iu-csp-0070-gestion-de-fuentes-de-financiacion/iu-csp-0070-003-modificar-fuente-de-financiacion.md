# Hércules : IU\-CSP\-0070\-003 \- Modificar fuente de financiación



## Formulario Modificar fuente de financiación

Formulario de modificación de una fuente de financiación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificar fuente de financiación | | |
| Nombre | Texto cortoObligatorio | Campo nombre de la fuente de financiación. No se podrá dejar vacío. Se podrá modificar el nombre de la fuente siempre y cuando se respete la restricción de unicidad entre los registros con campo "activo" a "true". Es decir, no podrán existir dos fuentes con el mismo nombre en caso de estar las dos activas. Sí se podrá dar la repetición de nombre cuando uno de los elementos esté inactivo (campo "activo" \= false). |
| Descripción | TextoOpcional | Campo descripción de la fuente de financiación. Se podrá modificar libremente y dejar vacío. |
| Ámbito geográfico | SelectorObligatorio | Se debe seleccionar un valor de los incluidos en el listado. El listado se cargará a partir del campo nombre de la tabla "tipo de ámbito geográfico" de todos los registros con campo "activo\=true". |
| Origen | SelectorObligatorio | Se debe seleccionar un valor de los incluidos en el listado. El listado se cargará a partir del campo nombre de la tabla "tipo de origen" de todos los registros con campo "activo\=true". |
| Fondo estructural | SelectorBooleanoValores: sí, noObligatorio | Se debe de indicar un valor. Solo puede tomar uno de los valores sí o no. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos. | Se actualizará el registro en la tabla "Fuente de financiación" de acuerdo a los valores introducidos en el formulario. Se comprobará la unicidad por el campo "nombre" entre aquellos elementos que tenga el campo "activo" \= "true". Se podrá dar la repetición del campo nombre únicamente cuando se dé sobre un elemento inactivo (campo "activo"\="false").[CU\-CSP\-0070\-003 \- Modificar fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-003-modificar-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-003-modificar-fuente-de-financiacion.md") | CSP\-FNT\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá [IU\-CSP\-0070\-002 \- Buscar y listar fuentes de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-002-buscar-y-listar-fuentes-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-002-buscar-y-listar-fuentes-de-financiacion.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




