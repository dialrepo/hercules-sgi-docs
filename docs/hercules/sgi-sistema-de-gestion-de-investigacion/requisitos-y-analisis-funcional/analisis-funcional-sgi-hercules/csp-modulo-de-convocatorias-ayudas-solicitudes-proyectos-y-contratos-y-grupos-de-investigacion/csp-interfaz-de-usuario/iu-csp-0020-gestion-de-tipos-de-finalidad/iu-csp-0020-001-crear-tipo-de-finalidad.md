# Hércules : IU\-CSP\-0020\-001 Crear tipo de finalidad



## Formulario Crear tipo de finalidad

Creación de un nuevo tipo de finalidad.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Crear tipo de finalidad | | |
| Nombre | Texto cortoObligatorio | Es el nombre identificativo del tipo de finalidad, con el que se listará en todos los desplegables.Campo "nombre" de la tabla "tipo finalidad". Debe de validarse su unicidad sobre los elementos activos de esta tabla. |
| Descripción | TextoOpcional | No requiere ser introducido de manera obligatoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos. | Inserta un nuevo registro en la tabla "tipo finalidad". Se deberá verificar la unicidad a partir del campo "Nombre" sobre aquellos elementos activos.El registro se almacenará con el campo "activo" a true.[CU\-CSP\-0008\-002 \- Crear tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md") | CSP\-TFIN\-C |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de búsqueda y listado de tipos de finalidad. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




