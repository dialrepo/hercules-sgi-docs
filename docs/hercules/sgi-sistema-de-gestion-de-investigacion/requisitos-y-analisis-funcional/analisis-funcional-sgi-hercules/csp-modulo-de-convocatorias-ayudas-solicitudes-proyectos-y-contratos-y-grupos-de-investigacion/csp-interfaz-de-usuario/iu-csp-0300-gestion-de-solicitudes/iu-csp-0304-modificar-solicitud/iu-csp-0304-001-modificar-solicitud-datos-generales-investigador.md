# Hércules : IU\-CSP\-0304\-001 \- Modificar Solicitud \- Datos generales \- Investigador



## Formulario Modificar Solicitud \- Datos generales \- Investigador

Formulario de modificación de solicitud. Apartado de Datos generales, cuando la solicitud es cumplimentada por el propio  ACT\-CSP\-001\-Investigador o en el caso de solicitudes de tipo RRHH cuando se trata del "tutor" de la tabla "solicitud RRHH".  


Si se trata del ACT\-CSP\-001\-Investigador que ha cumplimentado la solicitud (el creador de la solicitud es la misma persona que el "solicitante ref" de la tabla "solicitud") podrá modificar la solicitud mientras ésta se encuentre en estado "**Borrador**" y "**Rechazada**". Si se trata del ACT\-CSP\-001\-Investigador que es el "tutor ref" de la tabla "solicitud RRHH" verá todos los campos en modo consulta y únicamente podrá realizar el campo de estado de Solicitada a:  


* Validada
* Rechazada

El ACT\-CSP\-001\-Investigador que ha cumplimentado la solicitud (el creador de la solicitud es la misma persona que el "solicitante ref" de la tabla "solicitud") podrá adjuntar documentos (pantalla Documentos) en los siguientes estados:

* En subsanación
* Excluida provisional
* Excluida definitiva
* Denegada provisional
* Denegada



| Vista del IU en caso de modificar una solicitud de tipo "proyecto":Vista del IU en caso de modificar una solicitud de tipo "constitución de grupo":Vista del IU en caso de modificar una solicitud de tipo "modificación de datos de grupo":Vista del IU en caso de modificar una solicitud de tipo "RRHH": | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado de la solicitud | Texto corto | Estado actual de la solicitud. Modo consulta |
| Comentarios del estado | Texto largo | Comentario indicando el motivo del que se ha pasado al estado indicado en el campo Estado de la solicitud. Modo consulta.Mostrar el campo comentario únicamente para los estados que tienen dicho campo informado. |
| Título convocatoria | Texto | Título de la convocatoria obtenido automáticamente al crear la solicitud desde una convocatoria registrada con anterioridad. Modo consulta. |
| Tipo solicitud grupo | SelectorTextoModo consulta | Este campo solo estará disponible si la solicitud está asociada a una convocatoria de tipo grupo (el campo "formulario solicitud" de la tabla "convocatoria" para la convocatoria referenciada desde la solicitud toma el valor "grupo").Al acceder a la solicitud en modo edición no podrá ser modificado por lo que se mostrará en modo consulta.Se corresponde con el campo "tipo solicitud grupo" de la tabla solicitud. |
| Grupo | SelectorTextoObligatorio | Este campo solo estará disponible si en el se selector "tipo solicitud grupo" se ha seleccionado el valor "modificación datos grupo".Al acceder a la solicitud en modo edición su valor se obtendrá del campo "grupo" de la tabla "solicitud grupo" vinculada a la solicitud. Se mostrará el campo "nombre" de la tabla "grupo investigación" para el grupo referenciado en la tabla "solicitud grupo".Podrá ser modificado. Para ello el selector se cargará con el listado de los grupos para los que ACT\-CSP\-001\- Investigador que crea la solicitud cumpla una de estas dos situaciones:* Ocupe el rol principal en la fecha actual. Se recuperarán todos los grupos para los que la persona figure en la tabla "grupo equipo" con las siguientes condiciones: 	+ El campo "rol" tomará un valor que esté configurado en la tabla "rol proyecto" con el campo "principal" a "true". 	+ La fecha actual estará comprendida en el rango establecido por los campos "fecha inicio" y "fecha fin" de la tabla "grupo equipo", considerando del valor vacío sobre "fecha fin" como registro vigente. * Sea una persona autorizada en la fecha actual. Se recuperarán todos los grupos para lo que la persona figure en la tabla "grupo persona autorizada" con las siguientes condiciones: 	+ La fecha actual estará comprendida en el rango establecido por los campos "fecha inicio" y "fecha fin" de la tabla "grupo persona autorizada", considerando del valor vacío sobre "fecha fin" como registro vigente.  Se mostrará el nombre del grupo (campo "nombre" de la tabla "grupo investigación"). El listado se mostrará en orden alfabético.El valor seleccionado se almacenará en el campo "grupo" de la tabla "solicitud grupo" que quedará vinculada a la solicitud en curso. |
| Código de registro interno | Texto cortoAutomático | Código de registro de la solicitud generado automáticamente al crear la solicitud. Estará formado por un sufijo unido a la fecha y hora de la creación, por tanto, será único y permitirá identificar inequívocamente a la solicitud. Se corresponde con el campo "código registro interno" de la tabla "solicitud"Modo consulta |
| Código de registro en entidad convocante | Texto cortoOpcional | Campo para introducir el código de registro de la solicitud en la entidad convocante, en caso que la solicitud se haya registrado/presentado de forma paralela en la entidad convocante. En el caso de las convocatorias del plan propio (internas a la Universidad) el código introducido se correspondería con el código asignado en el Registro de la institución. No será obligatorio. Se corresponde con el campo "código externo" de la tabla "solicitud". |
| Título | TextoOpcional | Este campo solo estará disponible si la solicitud está asociada a una convocatoria de tipo grupo o proyecto (el campo "formulario solicitud" de la tabla "convocatoria" para la convocatoria referenciada desde la solicitud toma el valor "grupo" o "proyecto").Campo para introducir el título de la solicitud, si se trata de una solicitud de un proyecto de investigación, será el título del proyecto, si es una solicitud de grupo el nombre del grupoEs un campo opcional.Se corresponde con el campo "título" de la tabla "solicitud". |
| Observaciones | Texto largoOpcional | Campo abierto que permite introducir cualquier observación de tipo genérico asociada a la solicitud, se almacenará sobre el campo "observaciones" de la tabla Solicitud. |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud cumple las dos condiciones siguientes:* Es una solicitud de RRHH (campo "formulario solicitud" de la tabla "solicitud" toma valor "rrhh") * La solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").  Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |
| Listado de las entidades convocantes de la convocatoria. Se obtendrá el listado de la tabla "Convocatoria entidad convocante" para la convocatoria asociada a la solicitud. El listado podrá estar vacío ya que no es obligatorio crear la convocatoria con ninguna entidad convocante. En este caso no se mostrará en pantalla la tabla asociada al listado ni el título de la misma. | | |
| Entidad convocante | TextoOpcional | Nombre de la entidad convocante recuperado a través de la referencia a la entidad almacenada en la tabla de relación "Convocatoria entidad convocante", por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Plan de la convocatoria | TextoOpcional | Nombre del plan de investigación recuperado de la tabla Programa a través del campo "programa" referenciado en la tabla de relación "Convocatoria entidad convocante". El plan de investigación se corresponderá con el nodo raíz del árbol al que pertenece el programa asociado a la entidad convocante en "Convocatoria entidad convocante" (campo "programa" de esta relación). |
| Programa/subprograma de la convocatoria | TextoOpcional | Nombre del programa/subprograma/modalidad al que está vinculada la convocatoria desde la que se crea la solicitud. Se corresponderá con el campo nombre recuperado de la tabla "Programa" a partir del valor almacenado en el campo "programa" de la relación "Convocatoria entidad convocante" |
| Modalidad seleccionada | Texto | Nombre del item de menor nivel seleccionado. Puede corresponderse con un subprograma, una modalidad o una submodalidad. Es el campo "Programa" de la tabla "SolicitudModalidad" en caso de que exista para la Entidad convocante un registro en la tabla "SolicitudModalidad", sino existe el registro estará vacío el campo. |
| Seleccionar modalidad | Icono de acción | Acción "Seleccionar modalidad" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Seleccionar modalidad | Muestra la pantalla que permite seleccionar la modalidad de la entidad convocante | Muestra la pantalla [IU\-CSP\-0302\-001 \- Añadir modalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-001-anadir-modificar-modalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-001-anadir-modificar-modalidad.md").Ver condiciones en [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-INV\-ER |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica la solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | Ver condiciones en [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar").Se actualizarán los registros de las tablas "solicitud" y/o "solicitud grupo" de acuerdo a los cambios introducidos en el formulario. | CSP\-SOL\-INV\-ER |
| Cancelar | Retorna al listado de Solicitud sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




