# Hércules : IU\-CSP\-0060\-001 \- Crear plan de investigación



## Formulario Crear plan de investigación

Formulario de creación de plan de financiación. Pestaña "Datos generales".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Pestaña Datos generales | | |
| Nombre | Texto cortoObligatorio | Identificador del nombre del Plan de investigación.Es un campo obligatorio y debe de ser único. No pueden repetirse dos planes con el mismo nombre entre aquellos que tengan el indicador "activo" a true.Debe ser un alfanumérico de 200 caracteres |
| Descripción | TextoOpcional | Descripción del plan de financiación. Es un campo de libre introducción. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Botón común a la página de creación de "plan de investigación". Inserta el nuevo registro en la tabla "Programa" con padre a null. | Se debe verificar la unicidad del campo Nombre entre todos los registros activos de la tabla "Programa" y con padre a null.No es necesario que se haya creado ningún programa ("pestaña programas") para crear el plan de investigación.El plan se crea siempre activo, campo "Activo" a true.[CU\-CSP\-0050\-002 \- Crear plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-002-crear-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-002-crear-plan-de-investigacion.md") | CSP\-PRG\-C |
| Cancelar | Botón común a la página de creación de "plan de investigación". No realiza ninguna operación en base de datos | Retorna a la pantalla de listado [IU\-CSP\-0060\-002 \- Buscar y listar planes de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md") |  |

  


Formulario de creación de plan de investigación. Pestaña "Programas".



|  | | |
| --- | --- | --- |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir programa | Muestra la ventana de creación del árbol de programas de plan. | [CU\-CSP\-0050\-003 \- Añadir programa al plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-003-anadir-programa-al-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-003-anadir-programa-al-plan-de-investigacion.md")Muestra la pantalla [IU\-CSP\-0060\-003 \- Añadir programa al plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-003-anadir-programa-al-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-003-anadir-programa-al-plan-de-investigacion.md") | CSP\-PRG\-C |
| Guardar | Botón común a la página de creación de "plan de investigación". | Se debe verificar la unicidad del campo Nombre entre todos los registros activos de la tabla "Programa" y con padre a null.No es necesario que se haya creado ningún programa ("pestaña programas") para crear el plan de financiación.El plan se crea siempre activo, campo "Activo" a true.Se inserta el nuevo registro en la tabla "Programa" con padre a null.[CU\-CSP\-0050\-002 \- Crear plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-002-crear-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-002-crear-plan-de-investigacion.md") | CSP\-PRG\-C |
| Cancelar | Botón común a la página de creación de "plan de investigación". No realiza ninguna operación en base de datos | Retorna a la pantalla de listado [IU\-CSP\-0060\-002 \- Buscar y listar planes de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  





