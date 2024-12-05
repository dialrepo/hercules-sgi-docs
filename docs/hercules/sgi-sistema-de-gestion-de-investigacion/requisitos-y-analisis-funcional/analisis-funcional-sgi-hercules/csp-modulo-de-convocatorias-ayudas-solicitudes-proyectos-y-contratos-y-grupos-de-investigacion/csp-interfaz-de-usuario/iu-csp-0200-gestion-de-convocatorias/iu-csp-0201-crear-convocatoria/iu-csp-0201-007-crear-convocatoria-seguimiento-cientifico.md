# Hércules : IU\-CSP\-0201\-007 \- Crear convocatoria \- Seguimiento científico



## Formulario Crear convocatoria \- Seguimiento científico

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Fases
* Periodos justificación
* **Seguimiento científico**
* Hitos
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* Configuración de solicitudes.

### Seguimiento científico



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listados de periodos de seguimiento científico de la convocatoria | | |
| Núm. periodo | SecuenciaNumérico entero genérico | Número secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de la fecha de inicio |
| Mes inicial | Entero | Mes inicial y mes final definen el periodo de seguimiento científico. Son relativos a la duración de los proyectos que posteriormente derive la convocatoria. |
| Mes final | Entero | Mes inicial y mes final definen el periodo de seguimiento científico. Son relativos a la duración de los proyectos que posteriormente derive la convocatoria. |
| Fecha inicio presentación | Fecha \+ Hora | Fecha de inicio presentación y fecha fin presentación definen el plazo de presentación del seguimiento científico a la entidad correspondiente. Ambas están expresadas en formato fecha y hora. |
| Fecha fin presentación | Fecha \+ Hora | Fecha de inicio presentación y fecha fin presentación definen el plazo de presentación del seguimiento científico a la entidad correspondiente. Ambas están expresadas en formato fecha y hora. |
| Tipo | Texto corto | Tipo del periodo de seguimiento. Se mostrará el valor del enumerado "Tipo seguimiento" asociado al campo "tipo seguimiento" de la tabla "convocatoria periodo seguimiento cientítico" |
| Observaciones | Texto largo | Observaciones del periodo de seguimiento científico |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del periodo seleccionado del listado de periodos de seguimiento científico de la convocatoria | Muestra la pantalla [IU\-CSP\-0204\-007 \- Modificar convocatoria \- Seguimiento científico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-007-modificar-convocatoria-seguimiento-cientifico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-007-modificar-convocatoria-seguimiento-cientifico.md") | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar | Elimina periodo de seguimiento científico | Elimina el registro de la tabla "Periodos seguimiento científico" de la convocatoria | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir periodo de seguimiento científico | Muestra la pantalla Nuevo periodo de seguimiento científico | Muestra la pantalla [IU\-CSP\-202\-008 \- Añadir periodo de seguimiento científico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-008-anadir-periodo-de-seguimiento-cientifico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-008-anadir-periodo-de-seguimiento-cientifico.md") | CSP\-CON\-CCSP\-CON\-C\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. | Aplicar las siguientes restricciones:* El primer periodo siempre comenzará en el mes 1 * No pueden existir salto de meses entre periodos, ya que no se puede dar la situación de que queden días fuera desde el día de inicio del primer periodo hasta el día fin del último periodo. | CSP\-CON\-CCSP\-CON\-C\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




