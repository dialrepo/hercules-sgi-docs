# Hércules : IU\-CSP\-0204\-008 \- Modificar convocatoria \- Hitos



## Formulario Modificar convocatoria \- Hitos

Pantalla compuesta por las siguientes pestañas:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Plazos y fases
* Periodos justificación
* Seguimiento científico
* **Hitos**
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* Códigos económicos
* Configuración de solicitudes.

### Hitos

### Formulario con el listado de Hitos

**La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Listados de hitos de la convocatoria recuperados de la tabla "hitos convocatoria" para la convocatoria que está siendo creada/modificada | | |
| Tipo de hito | Texto corto | Nombre recuperado de la tabla "tipos hito convocatoria" a partir del identificador referenciado en la tabla "hitos convocatoria" |
| Fecha | Fecha \+ Hora | Campo "fecha" del registro de la tabla "hitos convocatoria".Expresado en formato Fecha \+ Hora. |
| Observaciones | Texto largo | Campo "observaciones" del registro de la tabla "hitos convocatoria". |
| Aviso | Booleano | Campo "aviso" del registro de la tabla "hitos convocatoria". |
| Modificar | Icono de acción | Acción modificar. |
| Eliminar | Icono de acción | Acción eliminar. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del hito seleccionado del listado de hitos de la convocatoria. | Muestra la pantalla de abajo de "Modificar hito". | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar | Elimina el hito de la convocatoria. | Elimina el registro de la tabla "hitos convocatoria".Si el hito tuviese asociado un comunicado y una tarea tarea programada por motivo de un aviso, se deberán eliminar también, invocando para todo ello a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP") respectivamente. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir hito | Muestra la pantalla Nuevo hito de convocatoria | Muestra la pantalla [IU\-CSP\-202\-009 \- Añadir hito de convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |

### Formulario Modificar hito

Formulario que se utilizará para modificar los datos de un hito que ya estuviese añadido a la convocatoria.



| ***Vista de popup de modificación de Hito SIN AVISO******Detalle de popup de modificación de Hito CON AVISO******Detalle de popup de modificación de Hito CON AVISO en modo SOLO CONSULTA*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Tipo de hito | SelectorTexto cortoObligatorioModificable | Listado precargado con los nombres recuperado de la tabla "tipos hito convocatoria" a partir de los identificadores de los hitos que se mantengan con el campo "activo" a true asociados al modelo de ejecución de la convocatoria.Será obligatorio seleccionar un tipo de hito. |
| Fecha y hora | Fecha \+ HoraObligatorioModificable | Campo "fecha" del registro de la tabla "hitos convocatoria". Será un campo obligatorio.Expresado en formato fecha \+ hora.Si se cambia el valor de este campo estando aún los cambios del hito sin guardar y ya se había marcado el check "Generar aviso", pueden ocurrir dos cosas:1. La nueva fecha y hora es a futuro. En este caso, al cambiar la fecha u hora del hito, se restablecerán todos los campos del aviso a sus valores por defecto. 2. La nueva fecha y hora es a pasado. En este caso, se desmarcará automáticamente el check "Generar aviso" limpiando todos los datos que se pudiesen haber introducido relativos al mismo.  Si se cambia el valor de este campo, estando ya los cambios del hito guardados, y estando marcado el check "Generar aviso", no se restablecerán los datos del aviso. |
| Observaciones | Texto largoOpcionalModificable | Campo "observaciones" del registro de la tabla "hitos convocatoria". Podrá modificarse y/o dejarse vacío.Si se modifica a posterioridad de haber marcado el check de "Generar aviso", no se volcará en el campo Contenido del comunicado, ya que, en otro caso, se perdería el texto existente previamente. |
| Generar aviso | BooleanoModificable | Campo "aviso" del registro de la tabla "hitos convocatoria". Si la fecha indicada en el campo "fecha" ya ha pasado, el valor de este check no será editable. Si la fecha indicada es una fecha futura, el check podrá marcarse o desmarcarse (según fuera su estado original).Al marcar este check, en caso de estar informado, se volcará al final del contenido por defecto del email el texto "En el hito se han indicado las siguientes observaciones: " seguido del contenido que pudiese tener el campo Observaciones. |
| ***Campos específicos del aviso*** **La obligatoriedad de estos campos aplicará en el momento que el check "Generar aviso" esté marcado.** **En la modificación, si la fecha y hora para el envío del aviso ya ha pasado, todos los campos a continuación se mostrarán en modo de solo consulta.** | | |
| Fecha y hora de envío | Fecha \+ HoraObligatorioModificable | Fecha y hora en la que el usuario ha programado el envío del comunicado.Mientras sea modificable, deberá ser posterior al momento actual \+ 15 minutos, para permitir que al usuario le pueda dar tiempo a realizar los cambios que precise en el hito, el aviso o en otros apartados de la convocatoria, antes de Guardar los cambios en la pantalla de Convocatoria, momento en el que se ya sí se registrará o modificará la programación del envío para la fecha y hora indicadas. El usuario podrá modificarla si el aviso aún no ha sido enviado. |
| Asunto | TextoObligatorioModificable | Asunto que tendrá el email de aviso.El usuario podrá modificarlo si el aviso aún no ha sido enviado. |
| Contenido del email | Texto largoObligatorioModificable | Contenido o cuerpo del email de aviso.El usuario podrá modificarlo si el aviso aún no ha sido enviado. |
| Destinatarios | Componente a medidaObligatorioModificable | Lista de destinatarios del email de aviso a los que añadirán los checks "Añadir IPs solicitud" y "Añadir IPs proyecto" si se marcan.El comportamiento y uso de este componente se describe en detalle en [IU\-COM\-0010 \- Generación de comunicados \- Gestión de destinatarios](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-COM-0010+-+Generaci%26oacute%3Bn+de+comunicados&linkCreation=true&fromPageId=597853463 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-COM-0010+-+Generaci%26oacute%3Bn+de+comunicados&linkCreation=true&fromPageId=597853463").El usuario podrá modificar esta lista si el aviso aún no ha sido enviado. |
| --- | --- | --- |
| Añadir IPs solicitud | BooleanoModificable | Indicador de si se quiere añadir a los IPs de las solicitudes asociadas a la convocatoria.Estos destinatarios no se mostrarán en el campo "Destinatarios" ya que se resolverán en el día y hora en el que se haya programado el el envío del aviso.El usuario podrá modificar este dato si el aviso aún no ha sido enviado. |
| Añadir IPs proyecto | BooleanoModificable | Indicador de si se quiere añadir a los IPs de los proyectos asociados a las solicitudes de la convocatoria.Estos destinatarios no se mostrarán en el campo "Destinatarios" ya que se resolverán en el día y hora en el que se haya programado el el envío del aviso.El usuario podrá modificar este dato si el aviso aún no ha sido enviado. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Se actualiza la información del hito dentro de la convocatoria. | Se actualiza el registro en la tabla de relación "hitos convocatoria", tomando como valores los recogidos en el formulario.Si se marca el flag "Generar aviso", sin que previamente hubiese estado marcado:* Los campos específicos del aviso serán utilizados para generar un aviso y una tarea programada para su envío en los módulos de comunicados [COM \- Módulo de Comunicados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85636024 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85636024") y tareas programadas [SGI \- TP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP") respectivamente según se detalla en el apartado **Hitos de convocatorias** de la página [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado"). * Se creará un nuevo registro en la tabla "convocatoria hito aviso" para almacenar los valores de los checks "Añadir IPs solicitud" y "Añadir IPs proyecto" y las referencias al comunicado y tarea programada generados en el punto anterior.  Si el campo "Generar aviso" estaba ya marcado y se desmarca:* Se debe eliminar tanto el comunicado asociado al hito en el módulo de comunicados [COM \- Módulo de Comunicados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85636024 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85636024") como la tarea programada en el módulo de tareas programadas [SGI \- TP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP"). * Se eliminará además el registro correspondiente que referencie a ese comunicado y tarea programada en la tabla "convocatoria hito aviso".  Si el campo "Generar aviso" estaba ya marcado y se modifican los datos del aviso:* Los campos específicos del aviso serán utilizados para actualizar, según el caso, tanto el comunicado asociado al hito en el módulo de comunicados [COM \- Módulo de Comunicados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85636024 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85636024") como la tarea programada en el módulo de tareas programadas [SGI \- TP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP") referenciados ambos en la tabla "convocatoria hito aviso" del hito. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | Retorna al formulario de listado de hitos de la convocatoria, sin salvar los posibles cambios. |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica la convocatoria.Al guardar una convocatoria se guarda la información de todos los apartados que presenten cambios. | Ver restricciones de modificación en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria").Se validará que no existan dos hitos para el mismo Tipo de hito para la misma fecha y hora. Podría darse el caso de que el mismo Tipo de hito se repita en la convocatoria, pero sin coincidir exactamente en fecha y hora.Al guardar los cambios además habrá que tener en cuenta los comunicados y tareas programadas asociados que se deben generar/eliminar/modificar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0204008ModificarconvocatoriaHitos-comunicados "#IUCSP0204008ModificarconvocatoriaHitos-comunicados") y en las acciones "Eliminar" del listado de hitos y "Aceptar" del popup de modificación. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar el guardado una convocatoria se descarta la información nueva o modificada de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de algún hito que previamente no lo tuviese marcado, se desmarque dicho check de algún hito que sí lo tuviese previamente marcado o que se modifiquen los datos del propio aviso, será necesario dar de alta, de baja o modificar respectivamente, los datos del comunicado y/o de la tarea programada, que se hubiesen generado con motivo del aviso asociado a dicho hito, en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Hitos de convocatorias**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




