# Hércules : IU\-CSP\-0451\-009 \- Cambiar estado autorización participación proyecto externo \- Unidad gestión



## Formulario Cambiar estado autorización participación proyecto externo \- Unidad gestión

Formulario que permite cambiar el estado de una solicitud de autorización de participación en un proyecto externo para ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario cambio de estado de una solicitud de autorización (tabla "estado autorización"). | | |
| Estado actual | Modo ConsultaTexto corto | Se mostrará siempre en modo consulta.Se mostrará el valor del campo "estado" del registro de la tabla "estado autorización" referenciado desde el campo "estado" de la tabla "autorización". |
| Nuevo estado | TextoObligatorio | Desplegable con el listado de los estados posibles por los que puede pasar una solicitud de autorización (enumerado "tipo estado autorización"). No se implementará ningún ciclo de estados. ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán poner la autorización en cualquiera de sus estados posibles. |
| Fecha nuevo estado | Fecha \+ horaObligatorio | Fecha y hora con la que se almacenará el nuevo estado.Se precargará la fecha y hora actuales pudiendo seleccionarse un valor diferente.Se corresponde con el campo "fecha" de la tabla "estado autorización". |
| Comentario | Texto largoOpcional | Campo de texto libre.Se corresponde con el campo "comentario" de la tabla "estado autorización". |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Se crea un nuevo estado para la solicitud de autorización. | Se creará un nuevo registro en la tabla "estado autorización":* El campo estado tomará el valor seleccionado en el desplegable "nuevo estado". * El campo "fecha" tomará el valor indicado en el campo "fecha nuevo estado" . * El campo "comentario"  tomará el valor indicado en el campo "comentario".  Se actualizará el registro correspondiente de la tabla "autorización" para que el campo "estado" referencie al nuevo registro creado sobre la tabla "estado autorización".Al realizar esta acción habrá que tener en cuenta que se generará un comunicado según se describe en el apartado [Comunicados](#IUCSP0451009CambiarestadoautorizaciónparticipaciónproyectoexternoUnidadgestión-comunicados "#IUCSP0451009CambiarestadoautorizaciónparticipaciónproyectoexternoUnidadgestión-comunicados"). Tras actualizar el estado se debe permanecer en la pantalla de la solicitud de autorización (no regresar al listado autorizaciones) | CSP\-AUT\-E |
| Cancelar | Retorna a la pantalla de Datos generales de la autorización sin realizar ningún cambio sobre el estado de la misma. |  |  |

### Comunicados

Ante cualquier cambio de estado por parte del usuario actor de esta pantalla (gestor o administrador) se creará la entrada correspondiente en el módulo de comunicados para avisar de este cambio al investigador solicitante de que la solicitud de autorización de participación en un proyecto externo.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Cambiar estado autorización participación proyecto externo \- Unidad gestión** dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




