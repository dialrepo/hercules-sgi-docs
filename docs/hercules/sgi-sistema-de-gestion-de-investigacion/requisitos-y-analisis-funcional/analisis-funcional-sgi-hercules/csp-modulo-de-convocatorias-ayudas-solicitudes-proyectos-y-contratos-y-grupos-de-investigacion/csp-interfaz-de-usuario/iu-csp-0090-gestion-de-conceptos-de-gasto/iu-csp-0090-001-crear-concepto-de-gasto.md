# Hércules : IU\-CSP\-0090\-001 \- Crear concepto de gasto



## Formulario Crear concepto de gasto

Formulario de creación de conceptos de gasto de investigación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación de concepto de gasto | | |
| Nombre | Texto cortoObligatorio | Nombre identificativo del concepto de gasto. Es un campo obligatorio. Debe de ser único entre aquellos elementos activos (campo "activo" a "true").Se corresponde con el campo "nombre" de la tabla "concepto de gasto". |
| Descripción | TextoOpcional | Descripción del concepto de gasto. No existen restricciones sobre este campo pudiendo dejarse vacío.Se corresponde con el campo "descripción" de la tabla "concepto de gasto". |
| ¿Representa costes indirectos? | SelectorBooleanoObligatorio | Permite indicar si el concepto de gasto será utilizado para recoger costes indirectos. No se restringirá la existencia de varios conceptos representativos de costes indirectos.Selector con los valores: sí, no.Es un campo obligatorio.Se mostrará un icono informativo a su derecha con  un tooltip con el texto: "Se debe de indicar si se trata de un concepto de gasto a través del que se realiza el control y gestión de los costes indirectos".Se corresponde con el campo "costes indirectos" de la tabla "concepto de gasto". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Inserta el nuevo registro en la tabla "concepto gasto". | Se debe verificar la unicidad del campo Nombre en la tabla "Concepto gasto" sobre aquellos registros activos (campo "activo" a "true").El registro se creará con el campo "activo" a  "true".[CU\-CSP\-0090\-002 \- Crear concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-002-crear-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-002-crear-concepto-de-gasto.md") | CSP\-TGTO\-C |
| Cancelar | No se realiza ninguna operación sobre base de datos | Se retorna al listado de conceptos de gasto [IU\-CSP\-0090\-002 \- Buscar y listar conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-002-buscar-y-listar-conceptos-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-002-buscar-y-listar-conceptos-de-gasto.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




