# Hércules : IU\-CSP\-0095\-005 \- Modificar listado de áreas temáticas \- Datos generales



## Formulario Modificar listado de áreas temáticas \- Datos generales

Formulario de modificación de un listado de áreas temáticas, apartado Datos generales.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificar área temática \- Datos generales | | |
| Nombre del listado de áreas temáticas | Texto cortoObligatorio | Nombre identificativo del grupo o listado de áreas temáticas. Deberá ser un nombre único en la tabla "Área temática" entre aquellos elementos raíz (campo "padre" a null) que estén activos (campo "activo" a "true") |
| Descripción | Texto largoOpcional | Campo de texto abierto para incluir la descripción del listado de área temáticas. No será obligatorio. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos. | Se actualizará el registro en la tabla "Área temática" de acuerdo a los valores introducidos en el formulario. Se comprobará la unicidad del campo Nombre entre los registros activos y con padre a null de la tabla [CU\-CSP\-0060\-004 \- Modificar listado de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-004-modificar-listado-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-004-modificar-listado-de-areas-tematicas.md") | CSP\-AREA\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se efectuará la actualización del registro, retornando a la pantalla [IU\-CSP\-0095\-003 \- Buscar y listar listados de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-003-buscar-y-listar-listados-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-003-buscar-y-listar-listados-de-areas-tematicas.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




