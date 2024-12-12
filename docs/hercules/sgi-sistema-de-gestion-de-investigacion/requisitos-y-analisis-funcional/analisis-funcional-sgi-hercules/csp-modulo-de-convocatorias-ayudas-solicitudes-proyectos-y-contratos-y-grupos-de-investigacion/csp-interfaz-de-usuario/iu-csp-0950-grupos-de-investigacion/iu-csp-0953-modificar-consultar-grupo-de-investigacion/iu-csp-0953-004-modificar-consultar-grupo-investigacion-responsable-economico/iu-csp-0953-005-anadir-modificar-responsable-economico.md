# Hércules : IU\-CSP\-0953\-005 \- Añadir\-modificar responsable económico



## Formulario Añadir/modificar responsable económico

Formulario para añadir/modificar un responsable económico de grupo.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario para añadir responsable económico | | |
| Responsable económico | BuscadorTextoObligatorio | Nombre y apellidos del responsable económicoCuando se añade un nuevo responsable económico se deberá realizar la búsqueda por medio del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"), que se resolverá por medio del requisito de integración  [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos")[.](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89621968 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=89621968") Las condiciones de invocación al buscador se especifican en la tabla de acciones.Cuando se accede al formulario para modificar los datos asociados a un responsable económico ya incluido en el grupo, este campo mostrará el nombre y apellidos de la persona referencia, que serán recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")Campo "persona ref" de la tabla "grupo responsable económico" |
| Fecha inicio | FechaOpcional | Fecha de inicio para la participación del responsable económico en el grupo.Campo "fecha inicio" de la tabla "grupo responsable económico" |
| Fecha fin | FechaOpcional | Fecha de fin para la participación del responsable económico en el grupo.Campo "fecha fin" de la tabla "grupo responsable económico" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (responsable económico) | Muestra la pantalla de búsqueda para seleccionar un responsable económico | La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453") El listado de personas disponible será obtenido a través del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos")[.](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89621968 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=89621968") En este caso el tipo de colectivo que se ha de enviar como filtro implícito a la pantalla de buscador y a la función de búsqueda será "responsable económico csp".En el caso de que el buscador no devolviese al investigador que se desea añadir como responsable económico del grupo será necesario realizar la solicitud de registro a través del requisito de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona") desencadenado desde la pantalla de solicitar alta de persona [IU\-GEN\-0061\- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona") a la que se accede desde el propio formulario de búsqueda  [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). Solamente podrán realizar esta solicitud de alta los roles ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador. En el caso de que el buscador devolviese al investigador que se desea añadir como responsable económico del grupo, pero se quisiera realizar alguna modificación en sus datos, se podrá solicitar dicha modificación, utilizando para ello el formulario de solicitud de modificación [IU\-GEN\-0062 \- Ver detalle \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108605529 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108605529"), que cumple con el requisito de integración [REQ\-INT\-0020\-SGP\-0060 \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108606269 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108606269") y a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). Solamente podrán realizar esta solicitud de modificación los roles ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador. | No se necesita permiso para mostrar la pantalla de búsqueda de personas |
| Añadir/Aceptar | El botón se muestra:* Añadir, cuando se acceda al formulario para añadir un nuevo miembro al equipo de grupo. * Aceptar, cuando se acceda al formulario para modificar un miembro ya incluido en el equipo de grupo | Validaciones de obligatoriedad:* Persona  Comprobaciones de vigencia de la participación de la persona:* Fecha inicio y fecha fin deben estar dentro del rango de duración de grupo. * Únicamente puede existir una persona responsable económica en un momento dado, es decir, si existen dos registros es porque están en periodos distintos. En un mismo periodo sólo puede existir un responsable económico. * Si no se informa la fecha inicio y fecha fin, sólo existirá una persona como responsable económica * Si en un periodo solo se define la fecha inicio se considerará que la vigencia, desde esa fecha inicial, es permanente. | CSP\-GIN\-E |
| Cancelar | Retorna al formulario de grupo, sin salvar los posibles cambios |  |  |

  


### Permisos de acceso a la pantalla

#### Por actor



| ACT\-CSP\-004\-Administrador | CSP\-GIN\-E |
| --- | --- |
| ACT\-CSP\-003\-Gestor | CSP\-GIN\-E |

#### Todos los permisos de acceso

  




| Permisos | CSP\-GIN\-E |
| --- | --- |



