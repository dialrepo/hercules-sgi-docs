# Hércules : ESB \- SGI \- Usuarios











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Unidad | Unidad de gestión |

### Modelo lógico

[USR \- Modelo lógico](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+Modelo+l%C3%B3gico&linkCreation=true&fromPageId=597853116 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+Modelo+l%C3%B3gico&linkCreation=true&fromPageId=597853116")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

##### Unidad



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único de la Unidad de gestión. |
| nombre | String | Nombre de la unidad de gestión. |
| acronimo | String | Acrónimo de la unidad de gestión. |
| descripcion | String | Descripción de la unidad de gestión. |
| activo | Boolean | Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. |

#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgiusr**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [ESB \- SGI \- Usuarios \- Unidades \- Consultar detalle](/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios+-+Unidades+-+Consultar+detalle "/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios+-+Unidades+-+Consultar+detalle") | GET | /unidades/{id} |  | [Unidad](https://confluence.um.es/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios#ESBSGIUsuarios-Unidad "https://confluence.um.es/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios#ESBSGIUsuarios-Unidad") | Retorna el detalle de una Unidad de gestión. |
| [ESB \- SGI \- Usuarios \- Unidades \- Buscar](/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios+-+Unidades+-+Buscar "/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios+-+Unidades+-+Buscar") | GET | /unidades | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto Unidad | Lista\[[Unidad](https://confluence.um.es/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios#ESBSGIUsuarios-Unidad "https://confluence.um.es/confluence/display/HERCULES/ESB+-+SGI+-+Usuarios#ESBSGIUsuarios-Unidad")] | Busca / Lista Unidades de gestión. |




