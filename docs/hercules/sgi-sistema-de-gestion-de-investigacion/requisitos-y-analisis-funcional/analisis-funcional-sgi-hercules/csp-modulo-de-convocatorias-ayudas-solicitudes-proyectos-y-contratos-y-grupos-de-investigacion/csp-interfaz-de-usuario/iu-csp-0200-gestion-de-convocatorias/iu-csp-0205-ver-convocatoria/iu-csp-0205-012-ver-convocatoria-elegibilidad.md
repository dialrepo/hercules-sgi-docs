# Hércules : IU\-CSP\-0205\-012 \- Ver convocatoria \- Elegibilidad



## Formulario  Ver convocatoria \- Elegibilidad

Formulario para ver la configuración de los conceptos de gasto de una convocatoria:

* Conceptos de gasto permitidos o elegibles
* Costes indirectos
* Conceptos de gasto no permitidos



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de conceptos de gasto permitidos de la convocatoria: recuperados de la tabla "convocatoria concepto gasto" marcados con el campo "permitido" a true | | |
| Concepto de gasto | Texto corto | Nombre del concepto de gasto recuperado del campo "nombre" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Descripción | Texto | Descripción recuperada del campo "descripción" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Costes indirectos | Boolean | Valor "sí" o "no". Recuperado del campo "costes indirectos" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Importe máximo | DecimalImporte | Campo importe máximo introducido al añadir el concepto de gasto en el listado de gastos permitidos.Se corresponde con el campo "importe máximo" de la tabla "convocatoria concepto gasto". |
| Mes inicial | Entero | Campo "mes inicial" de la tabla "convocatoria concepto gasto". |
| Mes final | Entero | Campo "mes final" de la tabla "convocatoria concepto gasto". |
| Observaciones | Texto largo | Campo "observaciones" de la tabla "convocatoria concepto gasto". |
| Ver | Icono de acción | Acción ver |
| Listado de conceptos de gasto no permitidos de la convocatoria: recuperados de la tabla "convocatoria concepto gasto" marcados con el campo "permitido" a "false". | | |
| Concepto de gasto | Texto corto | Nombre del concepto de gasto recuperado del campo "nombre" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Descripción | Texto | Descripción recuperada del campo "descripción" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Costes indirectos | Boolean | Valor "sí" o "no". Recuperado del campo "costes indirectos" de la tabla "concepto gasto", a partir del identificador de la tabla "convocatoria concepto gasto" (campo "concepto gasto"). |
| Mes inicial | Entero | Campo "mes inicial" de la tabla "convocatoria concepto gasto". |
| Mes final | Entero | Campo "mes final" de la tabla "convocatoria concepto gasto". |
| Observaciones | Texto largo | Campo "observaciones" de la tabla "convocatoria concepto gasto". |
| Ver | Icono de acción | Acción ver |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver concepto de gasto permitido | Se abre la pantalla con los detalles del concepto de gasto permitido. Modo consulta. Cambio de contexto | Muestra la pantalla [IU\-CSP\-0206\-009 \- Ver concepto de gasto permitido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0206-009-ver-concepto-de-gasto-permitido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0206-009-ver-concepto-de-gasto-permitido.md") | CSP\-CON\-INV\-VCSP\-CON\-V |
| Paginación de gasto permitido | Componente estándar de paginación sobre la tabla de lista de resultados. |  | CSP\-CON\-INV\-VCSP\-CON\-V |
| Ver concepto de gasto no permitido | Se abre la pantalla con los detalles del concepto de gasto prohibido. Modo consulta. Cambio de contexto | Muestra la pantalla [IU\-CSP\-0206\-010 \- Ver concepto de gasto no permitido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0206-010-ver-concepto-de-gasto-no-permitido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0206-010-ver-concepto-de-gasto-no-permitido.md") |  |
| Paginación de gasto no permitido | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al listado de Convocatorias. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




