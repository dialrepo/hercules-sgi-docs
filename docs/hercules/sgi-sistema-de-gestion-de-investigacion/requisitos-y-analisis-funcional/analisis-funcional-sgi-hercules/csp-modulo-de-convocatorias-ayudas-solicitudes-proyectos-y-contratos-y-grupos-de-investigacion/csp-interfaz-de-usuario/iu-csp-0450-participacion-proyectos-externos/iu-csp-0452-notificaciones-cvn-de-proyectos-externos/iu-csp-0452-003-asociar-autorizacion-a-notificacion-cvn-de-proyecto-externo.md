# Hércules : IU\-CSP\-0452\-003 \- Asociar autorización a notificación CVN de proyecto externo



## Formulario Asociar autorización a notificación CVN de proyecto externo

Formulario que permite asociar una solicitud de autorización de participación en proyecto externo con una notificación de creación de proyecto en CVN



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
|  | | |
| Solicitudes de participación autorizadas del/la investigador/a | SelectorTexto Obligatorio | El desplegable mostrará un listado que contendrá una cadena con el título del proyecto y el nombre de la entidad de participación que se hayan recogido en la solicitud de autorización. Solo se mostrarán las solicitudes que figuren en estado "autorizada".El listado se formará a partir de los registros de la tabla "autorización" que cumplan:* el campo "solicitante ref" de la tabla "autorización" coincida con el campo "solicitante ref" de la tabla "notificación proyecto externo CVN" (registro desde el que invoca a este formulario) * que aún no tengan una notificación vinculada (no existe ningún registro en la tabla "notificación cvn" asociado a la autorización a través del campo "autorización").   Se mostrará una cadena concatenada por el carácter "\-" a partir de:* contenido del campo "título proyecto" de la tabla "autorización" * Nombre recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la referencia almacenada en el campo "entidad ref" de la tabla "autorización" |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Crea el vínculo entre la notificación CVN y la solicitud de autorización de participación en proyecto externo. | Se actualizará el registro correspondiente de la tabla "notificación proyecto externo CVN" actualizando el campo "autorización" de acuerdo a las solicitud de autorización seleccionada en el desplegable. | CSP\-CVPR\-E |
| Cancelar | Retorna al listado de notificaciones CVN sin salvar los posibles cambios introducidos hasta el momento. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




