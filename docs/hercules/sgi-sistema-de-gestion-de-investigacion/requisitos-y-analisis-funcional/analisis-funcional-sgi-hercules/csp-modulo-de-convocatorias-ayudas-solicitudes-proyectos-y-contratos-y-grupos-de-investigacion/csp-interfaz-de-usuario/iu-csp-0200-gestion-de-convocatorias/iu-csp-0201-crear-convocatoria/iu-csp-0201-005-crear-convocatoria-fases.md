# Hércules : IU\-CSP\-0201\-005 \- Crear convocatoria \- Fases



## Formulario Crear convocatoria \- Fases

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* **Fases**
* Periodos justificación
* Seguimiento científico
* Documentos
* Hitos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* Configuración de solicitudes.

### Fases

En este apartado se incluirán las fases generales de la convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de fases de la convocatoria | | |
| Fecha inicio | Fecha \+ Hora | Fecha de inicio de la fase , expresada en formato fecha y hora. |
| Fecha fin | Fecha \+ Hora | Fecha de fin de la fase, expresada en formato de fecha y hora. En caso que una fase pueda recogerse en una sola fecha, en este caso se indicaría el mismo valor tanto en fecha de inicio como en fecha de fin. |
| Tipo de fase | SelectorTexto corto | Nombre del tipo de fase de la convocatoria, recuperada de la tabla "Tipo de fase" a partir de la relación "convocatoria fase" |
| Observaciones | Texto largo | Campo "observaciones" de la convocatoria del registro de la tabla "fases convocatoria". |
| Aviso | Booleano | Campo "aviso" del registro de la tabla "fases convocatoria". |
| Modificar | Icono de acción | Acción modificar. |
| Eliminar | Icono de acción | Acción eliminar. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la fase seleccionada en el listado. | Muestra la pantalla [IU\-CSP\-0204\-005 \- Modificar convocatoria \- Fases](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-005-modificar-convocatoria-fases.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-005-modificar-convocatoria-fases.md"). | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar | Elimina la fase. | Elimina el registro de la tabla "fases convocatoria".Si la fase tuviese asociados avisos y/o tareas programadas, se deberán eliminar también, invocando para todo ello a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP") respectivamente. | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir fase | Muestra la pantalla Nueva fase de convocatoria | Muestra la pantalla [IU\-CSP\-202\-006 \- Añadir fase a convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-006-anadir-fase-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-006-anadir-fase-a-convocatoria.md"). | CSP\-CON\-CCSP\-CON\-C\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. | Se validará que no existan dos fases para el mismo Tipo de fase para un rango de fechas solapado. Podría darse el caso que el mismo Tipo de fase se repita en la convocatoria, pero sin solapar los rangos de fecha marcados por la fecha de inicio y fecha de fin.No se aplicará ninguna validación de solapamiento entre los rangos de fecha que apliquen sobre distintos Tipos de fase.Al guardar los cambios habrá que tener en cuenta los comunicados y tareas programadas asociadas que se deben generar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0201005CrearconvocatoriaFases-comuni "#IUCSP0201005CrearconvocatoriaFases-comuni") y las acciones "Eliminar" de este listado y "Aceptar" del popup [IU\-CSP\-202\-006 \- Añadir fase a convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-006-anadir-fase-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-006-anadir-fase-a-convocatoria.md"). | CSP\-CON\-CCSP\-CON\-C\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de alguna fase, será necesario dar de alta un comunicado y una tarea programada asociados a dicha fase, en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Fases de convocatorias**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").

### Permisos de acceso a la pantalla

#### Por actor



| ACT\-CSP\-004\-Administrador | CSP\-CON\-C, CSP\-CON\-C\_UO |
| --- | --- |
| ACT\-CSP\-003\-Gestor | CSP\-CON\-C, CSP\-CON\-C\_UO |

#### Todos los permisos de acceso



| Permisos | CSP\-CON\-C, CSP\-CON\-C\_UO |
| --- | --- |

Se aplican las mismas restricciones para todos los elementos del árbol de navegación bajo este path.




