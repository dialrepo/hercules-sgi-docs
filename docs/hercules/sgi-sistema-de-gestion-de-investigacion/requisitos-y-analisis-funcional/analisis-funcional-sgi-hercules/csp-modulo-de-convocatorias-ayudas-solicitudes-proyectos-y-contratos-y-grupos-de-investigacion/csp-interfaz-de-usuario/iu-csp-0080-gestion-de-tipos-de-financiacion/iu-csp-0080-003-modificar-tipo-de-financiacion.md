# Hércules : IU\-CSP\-0080\-003 \- Modificar tipo de financiación



## Formulario Modificar tipo de financiación

Formulario de modificación de tipo de financiación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificación de tipo de financiación | | |
| Nombre | Texto cortoObligatorio | Campo nombre del tipo de financiación. No se podrá dejar vacío. Se podrá modificar el nombre del tipo siempre y cuando se respete la restricción de unicidad sobre aquellos elementos activos (campo "activo" a "true"). Es decir, solo podrán existir tipos con el mismo nombre cuando solo uno de ellos esté activo. |
| Descripción | TextoOpcional | Campo descripción del tipo de financiación. Se podrá modificar libremente y dejar vacío. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos. | Se actualizará el registro en la tabla "Tipo de financiación" de acuerdo a los valores introducidos en el formulario. Se comprobará la unicidad por el campo "nombre" sobre aquellos registros activos (campo "activo"\= "true").[CU\-CSP\-0080\-003 \- Modificar tipo de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-003-modificar-tipo-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-003-modificar-tipo-de-financiacion.md") | CSP\-TFNA\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá [IU\-CSP\-0080\-002 \- Buscar y listar tipos de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0080-gestion-de-tipos-de-financiacion/iu-csp-0080-002-buscar-y-listar-tipos-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0080-gestion-de-tipos-de-financiacion/iu-csp-0080-002-buscar-y-listar-tipos-de-financiacion.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




