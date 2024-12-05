# Hércules : SGI\-REL \- Modelo lógico



![](/attachments/597852752/597861341.bmp)

  


### Entidades del modelo lógico de Relaciones

#### Entidad Relaciones de un proyecto: "Relacion"

Un proyecto puede quedar relacionado con más elementos del SGI además de con su convocatoria y/o solicitud de origen. Esta tabla identifica las relaciones del proyecto/contrato con otras entidades del SGI. Las entidades con las que se pueden establecer relaciones adicionales sobre un proyecto/contrato son:   

* Otro proyecto/contrato.
* Una convocatoria distinta a la que origina el proyecto. Por ejemplo, para vincular el proyecto con otra posible convocatoria con la que pudiera estar relacionado (convocatoria de selección de contratados, a modo de ejemplo). No se establecerá ninguna dependencia entre ambos, simplemente se trata de registrar el vínculo entre ambos.
* Invención.

  




| **ATTRIBUTES** |
| --- |
| entidadDestinoRef : String  Private Identificador de la entidad destino de la relación. Es el identificador único de la tabla correspondiente del SGI de acuerdo al "tipo entidad". |
| entidadOrigenRef : String  Private Identificador de la entidad desde la que se establece la relación. Es el identificador único de la tabla correspondiente del SGI de acuerdo al "tipo entidad". |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| observaciones : String  Private Texto libre. |
| tipoEntidadDestino : TipoEntidad  Private Identifica el tipo de entidad hacia el que se establece la relación. Es un valor del enumerado "tipo entidad". |
| tipoEntidadOrigen : TipoEntidad  Private  Identifica el tipo de entidad desde el que se establece la relación. Es un valor del enumerado "tipo entidad". |

#### Enumerado Tipos de entidad: "TipoEntidad"

Enumerado que recoge los tipos de entidad del SGI con los que se permite establecer una relación de proyecto. Valores: 

* PROYECTO
* CONVOCATORIA
* INVENCION

  




| **ATTRIBUTES** |
| --- |
| Proyecto :   Public |
| Convocatoria :   Public |
| Invención :   Public |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Enumeration) TipoEntidad | Target: Public (Class) Relacion |




