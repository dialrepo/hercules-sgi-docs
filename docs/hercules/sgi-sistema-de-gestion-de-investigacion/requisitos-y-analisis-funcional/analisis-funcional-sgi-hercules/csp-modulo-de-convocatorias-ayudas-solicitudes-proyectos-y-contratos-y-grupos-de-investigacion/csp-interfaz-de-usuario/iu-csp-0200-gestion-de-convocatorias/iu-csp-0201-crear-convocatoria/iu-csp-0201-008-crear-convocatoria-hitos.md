# Hércules : IU\-CSP\-0201\-008 \- Crear convocatoria \- Hitos



## Formulario Crear convocatoria \- Hitos

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Fases
* Periodos justificación
* Seguimiento científico
* **Hitos**
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* Configuración de solicitudes.

### Hitos



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listados de hitos de la convocatoria recuperados de la tabla "hitos convocatoria" para la convocatoria que está siendo creada/modificada | | |
| Fecha inicio | Fecha \+ Hora | Campo "fecha" del registro de la tabla "hitos convocatoria". Expresado en formato Fecha \+ Hora |
| Tipo de hito | Texto corto | Nombre recuperado de la tabla "tipos hito convocatoria" a partir del identificador referenciado en la tabla "hitos convocatoria" |
| Observaciones | Texto largo | Campo "observaciones" del registro de la tabla "hitos convocatoria" |
| Aviso | Booleano | Campo "aviso" del registro de la tabla "hitos convocatoria" |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del hito seleccionado del listado de hitos de la convocatoria | Muestra la pantalla [IU\-CSP\-0204\-008 \- Modificar convocatoria \- Hitos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-008-modificar-convocatoria-hitos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-008-modificar-convocatoria-hitos.md") | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar | Elimina el hito de la convocatoria | Elimina el registro de la tabla "hitos convocatoria".Si el hito tuviese asociado un aviso y/o una tarea programada, ambas cosas se deberán eliminar también, invocando a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente. | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir hito | Muestra la pantalla Nuevo hito de convocatoria | Muestra la pantalla [IU\-CSP\-202\-009 \- Añadir hito de convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md") | CSP\-CON\-CCSP\-CON\-C\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. | Se validará que no existan dos hitos para el mismo Tipo de hito para la misma fecha y hora. Podría darse el caso de que el mismo Tipo de hito se repita en la convocatoria, pero sin coincidir exactamente en fecha y hora.Al guardar los cambios habrá que tener en cuenta los comunicados y tareas programadas asociadas que se deben generar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0201008CrearconvocatoriaHitos-comuni "#IUCSP0201008CrearconvocatoriaHitos-comuni") y las acciones "Eliminar" de este listado y "Aceptar" del popup [IU\-CSP\-202\-009 \- Añadir hito a convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md"). | CSP\-CON\-CCSP\-CON\-C\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de algún hito será necesario dar de alta un comunicado y una tarea programada asociados a dicho hito en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Hitos de convocatorias**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




