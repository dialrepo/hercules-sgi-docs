# Hércules : IU\-CSP\-0090\-003 \- Modificar concepto de gasto



## Formulario Modificar concepto de gasto

Formulario de modificación de un concepto de gasto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificación concepto de gasto | | |
| Nombre | Texto cortoObligatorio | Campo nombre del concepto de gasto. No se podrá dejar vacío. Se podrá modificar el nombre del concepto de gasto siempre y cuando se respete la restricción de unicidad con independencia del valor del campo "activo". Es decir, no podrán existir dos conceptos de gasto con el mismo nombre estén o no activos.Se corresponde con el campo "nombre" de la tabla "concepto de gasto". |
| Descripción | TextoOpcional | Campo descripción del concepto de gasto. Se podrá modificar libremente y dejar vacío.Se corresponde con el campo "descripción" de la tabla "concepto de gasto". |
| ¿Representa costes indirectos? | SelectorBooleanoObligatorio | Permite indicar si el concepto de gasto será utilizado para recoger costes indirectos. No se restringirá la existencia de varios conceptos representativos de costes indirectos. Se podrá modificar. Es un campo obligatorio.Selector con los valores: sí, no.Se mostrará un icono informativo a su derecha con un tooltip con el texto: "Se debe de indicar si se trata de un concepto de gasto a través del que se realiza el control y gestión de los costes indirectos".Se corresponde con el campo "costes indirectos" de la tabla "concepto de gasto". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Se actualizará el registro en la tabla "Concepto de gasto" de acuerdo a los valores introducidos en el formulario. | Se comprobará la unicidad por el campo "nombre" entre los elementos de la tabla "concepto de gasto" que estén activos (campo "activo" a "true").[CU\-CSP\-0090\-003 \- Modificar concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-003-modificar-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-003-modificar-concepto-de-gasto.md") | CSP\-TGTO\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se efectuará la actualización del registro, retornando a la pantalla [IU\-CSP\-0090\-002 \- Buscar y listar conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-002-buscar-y-listar-conceptos-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-002-buscar-y-listar-conceptos-de-gasto.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




