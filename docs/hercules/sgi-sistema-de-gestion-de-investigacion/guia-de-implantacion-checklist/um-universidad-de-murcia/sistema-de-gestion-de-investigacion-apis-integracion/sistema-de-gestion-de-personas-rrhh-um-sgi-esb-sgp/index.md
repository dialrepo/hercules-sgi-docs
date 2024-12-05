# Hércules : Sistema de gestión de Personas (RRHH) (UM \- SGI \- ESB \- SGP)



  










Control de cambios

  


**Leyenda**



| Nuevo | Modificado | Eliminado |
| --- | --- | --- |

  


**Historial de cambios**



| Fecha | Cambios |
| --- | --- |
| 29\-abr\-2021 | Adaptaciones a los cambios de operativa y campos para el alta de personas y a la nueva solicitud de modificación de las mismas. |
| 03\-may\-2021 | Corrección en los tipos de dato de los objetos de tipo Fecha. Estaban con tipo String. |
| 13\-may\-2021 | Adaptaciones a los cambios en los datos de vinculación de persona a presentar en la pantalla "Ver Detalle". |
| 27\-may\-2021 | Adaptaciones a los cambios en requisitos de investigadores de que niveles académicos y categorías profesionales sean campos multivalor. |
| 08\-jun\-2021 | Se actualizan los siguientes servicios del API de personas:* POST: 	+ Se cambia la definición a /personas/formly. * PUT: 	+ Se cambia la definición a /personas/formly/{id}. 	+ Se añade en el JSON el campo personaId para facilitar su identificación. 	+ Se cambia el campo areasConocimiento por areaConocimientoId que contendrá el área de conocimiento a la que está adscrita. 	+ Se cambian los campos telefonos y emails para que contengan un array "simple" de teléfonos o emails. |
| 21\-jun\-2021 | Adaptaciones en entidades, objetos y servicios para incorporar los nuevos campos de dirección de contacto de persona:* Tipo de vía de contacto * Nombre de vía de contacto * Número de vía de contacto * Ampliación de dirección de contacto  y eliminar el campo previamente existente de dirección de contacto. |
| 06\-ago\-2021 | Nuevo servicio en el API de personas para poder realizar la integración entre la aplicación CVN y el SGI:* GET: 	+ **/personas/modificadas\-ids**: Devuelve los identificadores de personas que han sufrido cambios en los datos identificativos (nombre, apellidos, sexo, número de documento y tipo de documento) y/o en los datos personales (fecha de nacimiento, país de nacimiento, comunidad autónoma de nacimiento y ciudad de nacimiento) y/o en datos de contacto (país de contacto, comunidad autónoma de contacto, provincia de contacto, ciudad de contacto, dirección de contacto, código postal, listado de teléfonos y listado de emails) y/o en la fotografía a partir de una fecha. |
| 03\-sep\-2021 | Adaptación de la entidad Persona para incorporar el campo nuevo:* activo  Modificar los servicios que devuelven el detalle de una persona para tener en cuenta también las personas no activas, es decir, devolver los datos de detalle de las personas no activas:* GET /personas/{id} * GET /datos\-personales/persona/{id} * GET /datos\-contacto/persona/{id} * GET /vinculaciones/persona/{id} * GET /datos\-academicos/persona/{id} * GET /personas/{id}/fotografia |
| 13\-sep\-2021 | Adaptación de la entidad Persona para incorporar el campo nuevo:* personalPropio |
| 27\-sep\-2021 | Adaptación de la entidad DatosContacto para incorporar el campo nuevo:* moviles |
| 18\-oct\-2021 | Se modificar el servicio del alta de persona para que en el caso de que el servicio sea síncrono devuelva el id de la persona creada. |
| 12\-nov\-2021 | Se modifica el servicio de búsqueda de personas modificadas a partir de una fecha para tener en cuenta los cambios en los sexenios de una persona.Se añade el servicio de consultar los sexenios de una persona. |
| 15\-nov\-2021 | Adaptación del servicio de búsqueda de personas para poder buscar por email, eliminar como criterio de búsqueda el NIF y para añadir en el resultado de la búsqueda el listado de emails de una persona.El email además pasa a ser un objeto con dos campos, el email y un flag indicador de si es principal o no.Adaptación de los servicios que devuelven la entidad Persona para que ésta incorpore el nuevo campo entidadPropiaRef donde informar el identificador de UM para el personal propio de la universidad.Nuevos servicios necesarios desde el módulo de GI:* Consulta de categoría de una persona a una fecha dada. * Recepción de notificación de cambio de categoría de una persona.  Estos nuevos servicios requieren modificar la entidad Vinculacion para simplificar las consultas y notificaciones por categoría y por tanto también será necesario modificar el servicio que dada una persona devuelve su vinculación vigente. |
| 19\-nov\-2021 | Cambios para recuperar el centro de adscripción de una persona que sea personal propio de la Universidad. |
| 22\-nov\-2021 | Se añade el servicio personasFast para su uso en los componentes autocompletar de búsqueda de personas. |
| 04\-mar\-2022 | Cambios para añadir el nuevo parámetro "nombreApellidos" al servicio de búsqueda de personas de forma que se filtre por la combinación de los campos nombre y apellidos. |
| 22\-mar\-2022 | Se añaden los siguientes servicios para ser usados desde la aplicación CVN:* GET /formacion/modificados\-ids * GET /formacion/{id} * GET /actividad\-docente/modificados\-ids * GET /actividad\-docente/{id} |
| 23\-mar\-2022 | Se añaden los siguientes servicios necesarios para la baremación de PRC:* GET /sexenios * GET /direccion\-tesis |
| 01\-abr\-2022 | Se cambia el parámetro que recibe el servicio GET /sexenios de un año a una fecha |





## Sistema de Gestión Personas

### Entidades

Cambios

29\-abr\-2021 Se actualiza lista de entidades para:

* Eliminar entidad "Subcategoria".

13\-may\-2021 Se actualizan las entidades para:

* Añadir y modificar campos a la entidad "Vinculacion" relativos a la relación de una persona con la universidad para diferenciar entre PDI, PAS y vinculación con entidad externa.
* Añadir la nueva entidad "HistoricoVinculacionEmpresa" para contemplar un histórico de vinculaciones de una persona con una lista de entidades externas o que actúan en calidad de externas en esa vinculación en concreto.

12\-nov\-2021  Se añade la entidad "Sexenio"

15\-nov\-2021  Se actualizan las entidades para:

* Añadir campos a la entidad "Persona" y a la entidad "Vinculacion" para disponer del identificador de UM como entidad cuando la persona es personal propio de la Universidad.
* Añadir indicador de si es principal o no a la entidad "Email".
* Añadir entidad relacional "VinculacionCategoriaProfesional" para relacionar Vinculacion con una lista de categorías vigentes de la persona, las fecha de obtención y fin de cada una y el tipo de personal (PDI o PAS) de cada una.
* Añadir entidad relacional "VinculacionDepartamento" para relacionar Vinculacion con una lista de departamentos vigentes de la persona con el tipo de personal (PDI o PAS) que le aplica a cada uno.
* Modificar entidad "Vinculacion" para pasar a contener una lista de objetos Categoria y otra de objetos Departamento en lugar de un campo para cada uno y sus fechas (en el caso de la categoría) en función de si la persona es PAS o PDI.

19\-nov\-2021 Se actualizan las entidades para:

* Añadir el campo identificador de centro a la entidad "Vinculacion"


| Entidad | Descripción |
| --- | --- |
| Persona | Contiene los datos básicos de una persona. |
| DatosPersonales | Contiene los datos personales de una persona (datos nacimiento de la persona). |
| DatosContacto | Contiene los datos de contacto de una persona (dirección de contacto, teléfonos, email, etc.). |
| DatosAcademicos | Contiene los datos académicos, por el momento, únicamente se necesita el nivel académico. |
| Vinculacion | Contiene los datos de vinculación de una persona tanto a la estructura organizativa Universitaria, en caso de disponer de ella tanto como PAS como en calidad de PDI, como la relación que esté vigente en la actualidad con una entidad externa, en caso de disponer de ella. |
| VinculacionCategoria | Relaciona la vinculación de una persona con la lista de categorías que puede tener vigentes, una como PDI, una como PAS, ambas o ninguna. |
| VinculacionDepartamento | Relaciona la vinculación de una persona con la lista de departamentos que puede tener vigentes, uno como PDI, uno como PAS, ambos o ninguno. |
| HistoricoVinculacionEmpresa | Contiene el historial de relaciones de la persona con entidades externas y que ya no son vigentes en la actualidad. |
| TipoDocumento | Listado con los tipos de documento de identificación (NIF/NIE/Pasaporte). |
| Sexo | Listado con los valores que puede tomar la entidad sexo (Mujer/Hombre). |
| Email | Contiene los email de una persona (el de la universidad, el personal, etc) incluido el indicador de si el email es principal o no. |
| Telefono | Contiene los teléfonos de una persona (móvil, fijo, fax, etc). |
| CategoriaProfesional | Listado con las categorías profesionales de la Universidad. |
| NivelAcademico | Listado con los niveles académicos (Doctor, Ldo/Graduado, Diplomado, FP, etc). |
| Colectivo | Listado de colectivos que tiene la Universidad, sirvan como ejemplos de colectivos "personal de investigación", "personal de administración" ,"alumnos". Agrupación de personas sobre las que se van a realizar las búsquedas de personas. ([RELACIONES VIGENTES UM.xlsx](https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2 "https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2")). |
| ColectivoTipoColectivo | Relaciona los colectivos con el enumerado interno del SGI "TipoColectivo". En las búsquedas de personas de los distintos módulos del SGI se podrán buscar personas sobre varios colectivos o sobre un "TipoColectivo". Un "TipoColectivo" estará relacionado con varios colectivos. Por ejemplo se puede tener como "TipoColectivo" evaluador ética, donde los colectivos que lo forman son PDI y Alumnos 5 ciclo. Por lo que al buscar personas para que sean el evaluador de ética se filtrarán por aquellas que sean PDI o sean Alumnos de 5 ciclo. |
| ColectivoCategoriaProfesional | Define qué categorías profesionales pertenecen a cada uno de los colectivos definidos en la Universidad. En categoría profesionales, podemos tener "PAS FIJO/INDEFINIDO" , "PAS CONTRATADO", "PAS CENTROS ADSCRITOS" |
| Fotografia | Foto digital de la persona. |
| Sexenio | Contiene el número de sexenios en un país determinado de una persona |

### Modelo lógico

Cambios

29\-abr\-2021 Se actualiza el modelo para:

* Eliminar entidad "Subcategoría" y su referencia desde "Categoria".
* Eliminar la referencia a Empresa (Entidad) de la entidad "Vinculacion".
* Añadir la referencia a Empresa (Entidad) en la entidad "Persona".
* Añadir la referencia de la entidad Empresa a sí misma.

13\-may\-2021 Se actualiza el modelo para:

* Eliminar la referencia a Empresa (Entidad) en la entidad "Persona".
* Añadir en la entidad "Vinculacion" los siguientes campos:
	+ Referencia a Empresa (Entidad).
	+ Categoría profesional como PDI.
	+ Categoría profesional como PAS.
	+ Fecha de obtención de categoría profesional como PDI.
	+ Fecha de obtención en categoría profesional como PAS.
	+ Fecha de fin en categoría profesional como PDI.
	+ Fecha de fin en categoría profesional como PAS.
	+ Departamento como PDI.
	+ Departamento como PAS.
* Eliminar en la entidad "Vinculacion" los siguientes campos:
	+ Categoría profesional.
	+ Fecha de obtención de categoría profesional.
	+ Departamento.
* Añadir la nueva entidad "HistoricoVinculacionEmpresa".

21\-jun\-2021 Se modifica el modelo lógico para:

* Modificación en los campos de la entidad DatosContacto\-UM relativos al detalle de dirección de contacto:
	+ Se añaden los campos tipoViaContacto, nombreViaContacto, numeroViaContacto y ampliacionDireccionContacto.
	+ Se elimina el campo direccionContacto.
* Añadir relación de la entidad DatosContacto\-UM con la entidad TipoVia del modelo del SGO (Ver [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md")).

03\-sep\-2021 Se modifica el modelo lógico para:

* Añadir campo activo en la entidad Persona

13\-sep\-2021 Se modifica el modelo lógico para:

* Añadir campo personalPropio en la entidad Persona

27\-sep\-2021 Se modifica el modelo lógico para:

* Añadir entidad Movil asociada a la entidad DatosContacto\-UM

12\-nov\-2021  Se modifica el modelo lógico para:

* Añadir la entidad Sexenio
* Añadir la relación de Persona con Sexenio

15\-nov\-2021 Se modifica el modelo lógico para:

* Añadir la relación entre Persona y Email.
* Añadir a Persona y a Vinculacion el nuevo campo entidadPropiaRef y una nueva relación a través de ese campo con Empresa en cada una.
* Añadir a Email el nuevo campo principal.
* Añadir nuevas entidades relacionales VinculacionCategoriaProfesional y VinculacionDepartamento.
* Eliminar de la entidad Vinculacion los campos de categoría y sus fechas de obtención y fin tanto para PDI como para PAS y los campos de departamento tanto PDI como PAS.
* Añadir enumerado TipoPersonal con dos valores posibles: PDI y PAS.

19\-nov\-2021 Se modifica el modelo lógico para:

* Añadir la relación entre Vinculacion y Centro a través del nuevo campo centro.
![](/attachments/597853162/597860137.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

Cambios

29\-abr\-2021 Se actualizan los objetos para:

* Eliminar objeto "Subcategoria" y su referencia desde el objeto "Vinculacion".
* Eliminar la referencia a "Empresa" (Entidad) del objeto "Vinculacion".
* Añadir la referencia a "Empresa" (Entidad) en el objeto "Persona".

03\-may\-2021 Se actualizan los objetos con campos de tipo fecha (DatosPersonales, Vinculacion y DatosAcademicos) para poner correctamente el tipo Fecha en lugar de String.

13\-may\-2021 Se actualizan los objetos para:

* Modificar la definición del campo referencia a "Empresa" (Entidad) en el objeto "Persona".
* Añadir en  "Vinculacion" los siguientes campos:
	+ Referencia a Empresa (Entidad).
	+ Categoría profesional como PDI.
	+ Categoría profesional como PAS.
	+ Fecha de obtención de categoría profesional como PDI.
	+ Fecha de obtención en categoría profesional como PAS.
	+ Fecha de fin en categoría profesional como PDI.
	+ Fecha de fin en categoría profesional como PAS.
	+ Departamento como PDI.
	+ Departamento como PAS.
* Eliminar en la entidad "Vinculacion" los siguientes campos:
	+ Categoría profesional.
	+ Fecha de obtención de categoría profesional.
	+ Departamento.

21\-jun\-2021  Se modifica la definición de objetos para:

* Modificaciones en los campos del objeto DatosContacto\-UM relativos al detalle de dirección de contacto:
	+ Se añaden tipoViaContacto, nombreViaContacto, numeroViaContacto y ampliacionDireccionContacto.
	+ Se elimina direccionContacto.
* Añadir relación del objeto DatosContacto\-UM con el objeto TipoVia.

03\-sep\-2021 Se modifica la definición de objetos para:

* Añadir campo activo en la entidad Persona.

13\-sep\-2021 Se modifica la definición de objetos para:

* Añadir campo personalPropio en la entidad Persona.

27\-sep\-2021  Se modifica la definición de objetos para:

* Añadir nuevo campo moviles a la entidad DatosContacto.

12\-nov\-2021 Se modifica la definición de objetos para:

* Añadir entidad Sexenio

15\-nov\-2021 Se modifica la definición de objetos para:

* Añadir campo emails al objeto Persona.
* Añadir el nuevo campo entidadPropiaRef a los objetos Persona y Vinculacion relacionarlos con Empresa.
* Crear el objeto Email con el nuevo campo principal.
* Cambiar en el objeto DatosContacto el tipo de elemento de la lista de emails de String a Email.
* Añadir al objeto Vinculacion el campo personalPropio.
* Añadir al objeto Vinculacion una lista de objetos Categoria y otra de objetos Departamento para reflejar las categorías y departamentos como PDI y como PAS.
* Eliminar del objeto Vinculacion los campos de categoría y sus fechas de obtención y fin tanto para PDI como para PAS y los campos de departamento tanto PDI como PAS.

19\-nov\-2021 Se modifica la definición de objetos para:

* Añadir la relación entre Vinculacion y Centro a través del nuevo campo centroId.

23\-mar\-2022 Se actualiza el obteto Sexenio para incluirle el campo personaRef y se añade la DireccionTesis

##### Persona



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la persona. |
| nombre | String | Nombre de la persona. |
| apellidos | String | Apellidos de la persona. |
| sexo | Sexo | Se devuelve la entidad Sexo con todos sus campos. |
| numeroDocumento | String | Número de documento de identificación personal. |
| tipoDocumento | TipoDocumento | Se devuelve la entidad TipoDocumento con todos sus campos. |
| empresaRef | String | Se devuelve el identificador/referencia de la entidad Empresa externa que es la relacionada en la actualidad con la persona, la vigente. |
| personalPropio | Boolean | Indica si es personal de la Universidad o no (a día de hoy). |
| entidadPropiaRef | String | Se devuelve el identificador/referencia de la entidad que representa a la UM en caso de que valor de personalPropio sea true (a día de hoy), esto es, que la relación de la persona con la UM esté vigente. |
| emails | Lista\[Email] | Lista con los emails de la persona. |
| activo | Boolean | Indica si la persona esta activa o no (a día de hoy). |



**Persona** Ampliar origen



```
{
    "id": "per-102",
    "nombre": "Prueba",
    "apellidos": "Apellido1 Apellido2",
    "sexo": {
          "id":"sex-1",
          "nombre":"Mujer"
     },
    "numeroIdentificacion": "11111111H",
    "tipoDocumento": {
            "id":"tp-1",
            "nombre": "NIF"
    },
    "empresaRef": "ent-002",
    "personalPropio": true,
    "entidadPropiaRef": "ent-UM-001",
    "emails":[{
		 email: "prueba@prueba.es",
		 principal: true
		},
		{
		 email: "prueba2@prueba.es",
 		 principal: false
		}
	],
    "activo": true
}
```


##### Sexo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad Sexo. |
| nombre | String | Nombre (Posibles valores: Mujer, Hombre). |



**Sexo** Ampliar origen



```
{
   "id":"sex-1",
   "nombre":"Mujer"  
}
```


##### TipoDocumento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoDocumento. |
| nombre | String | Nombre (Posibles valores: NIF, NIE, Pasaporte). |



**TipoDocumento** Ampliar origen



```
{ 
    "id":"tp-1",
    "nombre": "NIF"   
}
```


##### Email



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| email | String | Dirección de email |
| principal | Boolean | Indicador de si el email es principal o no. Podrá tener los valores "true" o "false". |



**Email** Ampliar origen



```
{ 
    "email":"email@um.es",
    "principal": true   
}
```


##### DatosPersonales



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| fechaNacimiento | Fecha | Fecha de nacimiento de la persona. |
| paisNacimiento | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| comAutonomaNacimiento | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| ciudadNacimiento | String | Ciudad de nacimiento de la persona. |



**DatosPersonales** Ampliar origen



```
{
    "fechaNacimiento": "2000-02-10",
    "paisNacimiento": {
       "id":"33",
       "nombre":"España"
     },
    "comAutonomaNacimiento": {
       "id":"ca-1",
       "nombre":"Andalucía"
     }, 
    "ciudadNacimiento": "Sevilla"
    
}
```


##### DatosContacto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| paisContacto | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| comAutonomaContacto | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| provinciaContacto | Provincia | Se devuelve la entidad Provincia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| ciudadContacto | String | Ciudad de contacto de la persona. |
| tipoViaContacto | TipoVia | Tipo de vía de la dirección de contacto de la persona. Se devuelve la entidad TipoVia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| nombreViaContacto | String | Nombre de vía de la dirección de contacto de la persona. |
| numeroViaContacto | String | Número de vía de la dirección de contacto de la persona. |
| ampliacionDireccionContacto | String | Ampliación de la dirección de contacto de la persona. |
| codigoPostalContacto | String | Código postal de la dirección de contacto de la persona. |
| emails | Lista\[Email] | Lista con los email de la persona. |
| telefonos | Lista\[String] | Lista con los teléfonos fijos de la persona. |
| moviles | Lista\[String] | Lista con los teléfonos móviles de la persona. |



**DatosContacto** Ampliar origen



```
{
    "paisContacto": {
       "id":"33",
       "nombre":"España"
     },
    "comAuntonomaContacto": {
       "id":"ca-3",
       "nombre":"Asturias"
     }, 
    "provinciaContacto": {
       "id":"pro-1",
       "nombre":"Asturias"
     }, 
	"ciudadContacto": "Oviedo",
    "tipoViaContacto": {
       "id":"tv-1",
       "nombre":"Calle"
     },
	"nombreViaContacto": "Uría",
	"numeroViaContacto": "4",
	"ampliacionDireccionContacto": "puerta A",
	"codigoPostalContacto": "33005",
    "emails":[{
		 email: "prueba@prueba.es",
		 principal: true
		},
		{
		 email: "prueba2@prueba.es",
 		 principal: false
		}
	],
    "telefonos":["985112233","984445566"],
	"moviles": ["666112233","699445566"]
}
```


##### Vinculacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| vinculacionesCategoriasProfesionales | Lista\[VinculacionCategoriaProfesional] | Lista de vinculaciones con a categorías profesionales de la persona. Se devuelve una lista de entidades VinculacionCategoriaProfesional de la persona en su calidad de PAS o de PDI o de ambos, en caso de existir alguna de dichas relaciones, con todos sus campos. |
| vinculacionesDepartamentos | Lista\[VinculacionDepartamento] | Lista de vinculaciones a departamentos de la persona. Se devuelve una lista de entidades VinculacionDepartamento de la persona en su calidad de PAS o de PDI o de ambios, en caso de existir alguna de dichas relaciones, con todos sus campos. Ver definición de la entidad Departamento en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| centro | Centro | Se devuelve la entidad Centro con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| areaConocimiento | AreaConocimiento | Se devuelve la entidad AreaConocimiento con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| empresaRef | String | Se devuelve el identificador/referencia de la entidad Empresa externa que es la relacionada en la actualidad con la persona, la vigente. |
| personalPropio | Boolean | Indica si es personal de la Universidad o no (a día de hoy). |
| entidadPropiaRef | String | Se devuelve el identificador/referencia de la entidad que representa a la UM en caso de que la persona sea personalPropio de la Universidad, esto es, que la relación de la persona con la UM esté vigente. |



**Vinculacion** Ampliar origen



```
{
    "vinculacionesCategoriasProfesionales": [{        
		"categoriaProfesional": {
			"id":"catp-1",
   			"nombre":"PDI Numerario"
		},
	   	"fechaObtencionCategoria" : "2020-03-15",
	   	"fechaFinCategoria" : "2022-03-15",
	   	"tipoPersonal":"PDI"
     },
	 {
	 	"categoriaProfesional": {
       		"id":"catp-5",
       		"nombre":"PAS contratado"
		}
	   	"fechaObtencionCategoria" : "2020-09-15",
	   	"fechaFinCategoria" : "2022-09-15",
	   	"tipoPersonal":"PAS"
     }
	],
    "vinculacionesDepartamentos": [{
		"departamento": {
			"id":"dpt-1,
			"nombre":"Departamento Ciencias de la tecnología"
		},
	   "tipoPersonal":"PDI"
	 },
	 {
		"departamento": {
			"id":"dpt-145",
			"nombre":"Departamento de Informática aplicada"
		},
	   "tipoPersonal":"PAS"
	 }
	],
	"centro": {
		"id":"cen-1",
		"nombre": "Centro 1 de la Universidad de Murcia"
	},
    "areaConocimiento": {
       "id":"ac-1",
       "nombre":"Área de conocimiento A"
     },
	"empresaRef": "ent-002",
	"personalPropio": true,
 	"entidadPropiaRef": "ent-UM-001" 
}
```


##### CategoriaProfesional



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad CategoriaProfesional. |
| nombre | String | Nombre de la categoría profesional de la persona dentro de la universidad. |



**CategoriaProfesional** Ampliar origen



```
{
   "id":"catp-1",
   "nombre":"PDI Numerario"
}
```


##### VinculacionCategoriaProfesional



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| categoriaProfesional | CategoriaProfesional | Categoría profesional de la persona en su calidad de PAS o PDI (según lo indicado en tipoPersonal). |
| fechaObtencion | Fecha | Fecha de obtención de categoría profesional del tipo indicado en tipoPersonal. Fecha en la que se obtiene la categoría profesional de la persona en su calidad de PAS o PDI (según lo indicado en tipoPersonal), en caso de existir dicha relación. |
| fechaFin | Fecha | Fecha de fin en categoría profesional del tipo indicado en tipoPersonal. Fecha en la que finaliza la asociación con la categoría profesional de la persona en su calidad de PAS o PDI (según lo indicado en tipoPersonal), en caso de existir dicha relación. |
| tipoPersonal | String | Tipo de personal. Valores posibles: PAS o PDI. |



**VinculacionCategoriaProfesional** Ampliar origen



```
{    
	"categoriaProfesional": {
		"id":"catp-1",
   		"nombre":"PDI Numerario"
	},
	"fechaObtencion" : "2020-03-15",
	"fechaFin" : "2022-03-15",
	"tipoPersonal":"PDI"
}
```


##### VinculacionDepartamento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| departamento | Departamento | Departamento al que está asociada la persona en su calidad de PAS o PDI (según lo indicado en tipoPersonal). |
| tipoPersonal | String | Tipo de personal. Valores posibles: PAS o PDI. |



**VinculacionDepartamento** Ampliar origen



```
{    
	"departamento": {
		"id":"dpt-145",
		"nombre":"Departamento de Informática aplicada"
	},
   "tipoPersonal":"PAS"
}
```


##### DatosAcademicos



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| nivelAcademico | NivelAcademico | Se devuelve la entidad NivelAcademico con todos sus campos. |
| fechaObtencion | Fecha | Fecha obtención del nivel académico. |



**DatosAcademicos** Ampliar origen



```
{
    "nivelAcademico": {
       "id":"1",
       "nombre":"Doctorado"
     },
     "fechaObtencion":"2000-02-10"
}
```


##### NivelAcademico



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad NivelAcademico. |
| nombre | String | Nombre del NivelAcademico (Posibles valores: Doctor, Ldo/Graduado, Diplomado, FP, etc). |



**NivelAcademico** Ampliar origen



```
{
   "id":"1",
   "nombre":"Doctorado"  
}
```


##### Colectivo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad Colectivo |
| nombre | String | Nombre del colectivo (Posibles valores: PAS, PSI, Alumnos, Becarios, Externo). ([RELACIONES VIGENTES UM.xlsx](https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2 "https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2")). |



**Colectivo** Ampliar origen



```
{
    "id":"1",
    "nombre":"PDI"
}
```


##### Fotografia



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| contenido | String | Contenido de la fotografía digital de la persona (en bytes y en base 64\). |
| mimeType | String | Mimetype de la fotografía. |



**Fotografia** Ampliar origen



```
{
    "contenido":"DDfgdfgdfj46gd6f5gdfgdf=",
    "mimeType":"image/jpeg"
}
```


##### Sexenio



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| numero | String | Número de sexenios reconocidos |
| paisRef | String | País del reconocimiento |
| personaRef | String | Identificador de la persona que tiene el sexenio |



**Sexenio** Ampliar origen



```
{
    "numero":"2",
    "paisRef":"011",
    "personaRef":11111111
}
```


##### DireccionTesis



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del doctorado |
| personaRef | String | Identificador de la persona que es el Director de la tesis |
| tituloTrabajo | String |  |
| fechaDefensa | Date | Fecha de obtención del título |
| alumno | String | Nombre del alumno. |
| tipoProyecto | TipoTrabajoDirigido | Tipo del trabajo dirigido: Otros, Proyecto de fin de carrera, Tesina, Tesis doctoral, Trabajo conducente a la obtención de DEA |
| calificacionObtenida | String | P.e. "Cum laude" |
| coDirectorTesisRef | String | Identificador del co\-director/a que ha intervenido |
| doctoradoEuropeo | Bool | Indica si se ha recibido una mención europea |
| fechaMencionDoctoradoEuropeo | Date | Fecha de la mención del doctorado europeo |
| mencionCalidad | Bool | Indica si el dotorado ha recibido una mención de calidad |
| fechaMencionCalidad | Date | Fecha de la homologación del doctorado extranjero |
| mencionInternacional | Bool |  |
| mencionIndustrial | Bool |  |

##### TipoTrabajoDirigido



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del tipo de trabajo\-proyecto dirigido |
| nombre | String | Tipo de trabajo dirigido.Posibles valores:* Texto de otros * Proyecto de fin de carrera * Tesina, Tesis doctoral * Trabajo conducente a la obtención de DEA |

#### Servicios

Cambios

29\-abr\-2021 Se actualizan los servicios API para:

* Modificar el funcionamiento del método POST de alta de persona, ahora recibirá más información, toda la indicada por la UM para el alta (recogida en la pantalla de Alta de Persona).
* Crear 3 nuevos métodos:
	+ Solicitar la modificación de los datos de Persona
	+ Obtener todos los datos de una persona en JSON para pintar tanto en la pantalla de Modificación como en el Ver Detalle.
	+ Obtener listado de sexos a asociar a Persona.
* Eliminar todos los métodos de alta parcial de datos de Persona por secciones.
* Eliminar servicio de obtener las subcategorías de una categoría, ya que desaparece el objeto Subcategoría y su referencia desde Categoría.

13\-may\-2021 No son necesarios cambios a nivel del interface o firma de los servicios del API, ya que los cambios a aplicar afectan a los objetos de comunicación y a la lógica de negocio interna a los mismos para aplicar las consideraciones descritas en apartados anteriores.

27\-may\-2021 Se añaden 2 nuevos servicios al API para poder pintar la pantalla de requisitos de equipo de investigación con las nuevas especificaciones de que niveles académicos y categorías profesionales sean campos multivalor.

08\-jun\-2021 Se actualizan los siguientes servicios del API de personas:

* POST:
	+ Se cambia la definición a /personas/formly.
* PUT:
	+ Se cambia la definición a /personas/formly/{id}.
	+ Se añade en el JSON el campo personaId para facilitar su identificación.
	+ Se cambia el campo areasConocimiento por areaConocimientoId que contendrá el área de conocimiento a la que está adscrita.
	+ Se cambian los campos telefonos y emails para que contengan un array "simple" de teléfonos o emails

21\-jun\-2021 Se actualizan los JSON de los siguientes servicios del API de personas para sustituir el campo direccionContacto por los campos tipoViaContactoId, nombreViaContacto, numeroViaContacto y ampliacionDireccionContacto:

* POST /personas/formly
* PUT /personas/formly/{id}
* GET /personas/formly/{id}

06\-ago\-2021 Se añade nuevo servicio:

* GET personas/modificadas\-ids

03\-sep\-2021 Modificar los siguientes servicios para que devuelva el campo activo en la entidad Persona.

* GET /personas
* GET /personas/{id}

Modificar los siguientes servicios para eliminar la funcionalidad de que solo se devuelve el detalle una persona que este activa:

* GET /personas/{id}
* GET /datos\-personales/persona/{id}
* GET /datos\-contacto/persona/{id}
* GET /vinculaciones/persona/{id}
* GET /datos\-academicos/persona/{id}
* GET /personas/{id}/fotografia

13\-sep\-2021 Modificar los siguientes servicios para que devuelva el campo personalPropio en la entidad Persona.

* GET /personas
* GET /personas/{id}

27\-sep\-2021  Modificar los siguientes servicios para que devuelva el campo moviles en la entidad DatosContacto:

* GET /datos\-contacto/persona/{id}

18\-oct\-2021 Se modificar el servicio del alta de persona para que en el caso de que el servicio sea síncrono devuelva el id de la persona creada.

* POST /personas/formly

12\-nov\-2021 Se actualizan los servicios API para:

* GET /personas/modificadas\-ids : tener en cuenta los cambios en los sexenios de una persona.
* GET /sexenios/persona/{id}: se añade el servicio de consultar los sexenios de una persona

15\-nov\-2021 Se actualizan los servicios API para:

* GET /personas : poder buscar por email, eliminar la búsqueda por NIF y añadir en el resultado de la búsqueda el listado de emails de una persona, informando cuál es el principal de entre todos los devueltos en la lista y la referencia a la UM como entidad en el caso de que sea personal propio.
* GET /vinculaciones/persona/{id}:
	+ añadir al resultado la referencia a la UM como entidad en el caso de que sea personal propio y el flag de personal propio.
	+ modificar el objeto de respuesta Vinculacion a la nueva estructura de campos definida.
* GET /datos\-contacto/persona/{id}:
	+ Incluir en cada email de la lista el flag de si es principal o no.
* Nuevos servicios necesarios desde el módulo de GI:


	+ GET /vinculaciones/persona/{id}/vinculaciones\-categorias\-profesionales : consulta de vinculación con categoría en una fecha dada.
	+ ~~POST /vinculaciones/persona/{id}/vinculaciones\-categorias\-profesionales : recepción de notificación de cambios de categorías de una persona.~~ (Se descarta finalmente implementarlo, UM accederá por BBDD)

19\-nov\-2021 Se actualizan los servicios API para:

* GET /vinculaciones/persona/{id}:
	+ añadir al resultado la referencia al centro de adscripción de la persona en el caso de ser personal propio.

22\-nov\-2021 Se actualizan los servicios API para:

* GET /personasFast:
	+ añadir el nuevo servicio personasFast para su uso en los componentes autocompletar de búsqueda de personas.

04\-mar\-2022 Se actualizan los servicios API para:

* GET /personas:
	+ añadir el nuevo parámetro "nombreApellidos" al servicio de búsqueda de personas de forma que se filtre por la combinación de los campos nombre y apellidos.

22\-mar\-2022 Se añaden los servicios siguientes para ser usados desde la aplicación CVN:

* GET /formacion/modificados\-ids
* GET /formacion/{id}
* GET /actividad\-docente/modificados\-ids
* GET /actividad\-docente/{id}

23\-mar\-2022 Se añaden los siguientes servicios necesarios para la baremación de PRC:

* GET /sexenios
* GET /direccion\-tesis

01\-abr\-2022 Se cambia el parámetro que recibe el servicio GET /sexenios de un año a una fecha



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| Métodos a los que se llama desde el SGI y éstos a su vez llaman a los sistemas de la Universidad | | | | | |
| GET | /personasFast | * búsqueda (cadena a buscar en nombre / apellidos / email). * colectivoId (uno o varios colectivos sobre los que realizar la búsqueda). | Lista\[Persona] |  | Listado de Persona.*Ejemplo*:\[mailto:busqueda\=skarmeta@um.es\&colectivoId\=]busqueda\=skarmeta@um.es\&colectivoId\=(1,2,3,4\)busqueda\=jorge carrillo\&colectivoId\=(2\)**NOTA**:La búsqueda no es sensible a mayúsculas ni minúsculas. Los parámetros no deben ir entrecomillados.Si no se indica el parámetro colectivoId, se buscará en todos los colectivos.Se devuelven como máximo 11 registros, al devolver más de 10 registros el buscador indicará que existen más registros y se puede refinar la búsqueda. |
| GET | /personas | q\+s (query \+ sort)La query estará formada por:* id * colectivoId * nombre * apellidos * fechaModificacion * email * nombreApellidos | Lista\[Persona] |  | Listado de Persona.*Ejemplo*:colectivoId\=in\=(refPAS,refPDI);(nombre\=like\=jim,apellidos\=like\=jim,email\=like\=jim,nombreApellidos\=like\=jim)colectivoId\=in\=(refPAS,refPDI);(nombre\=like\=nombre.apellido@um.es,apellidos\=like\=nombre.apellido@um.es,email\=like\=nombre.apellido@um.es,nombreApellidos\=like\=nombre.apellido@um.es)**NOTA**:Este método tendrá que ser capaz de responder con una lista de las personas modificadas con posterioridad a la fecha/hora proporcionada en el parámetro fechaModificacion.La modificación debe incluir altas, actualizaciones y borrados lógicos. |
| GET | /personas/{id} | id | Persona |  | Detalle de los datos generales de una persona (esté la persona activa o no). |
| POST | /personas/formly | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. |  | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear una persona.  **Ejemplo de JSON** Ampliar origen    ``` { 	"nombre": "nombre de prueba", 	"apellidos": "apellidos de prueba", 	"tipoDocumentoId": "2", 	"numeroDocumento": "07852369Y", 	"sexoId": "2", 	"fechaNacimiento": "1981-05-18", 	"paisNacimientoId": "1", 	"regionNacimientoId": "3", 	"ciudadNacimiento": "Madrid", 	"empresaId": "3",     "tipoViaContactoId": "3",     "nombreViaContacto": "Castellana",     "numeroViaContacto": "123",     "ampliacionDireccionContacto": "ampliación", 	"paisContactoId": "1", 	"regionContactoId": "2", 	"provinciaContactoId": "10", 	"codigoPostalContacto": "48152", 	"ciudadContacto": "Alcorcón (Madrid)", 	"emails": ["a@prueba.com", "a@prueba.com" ],     "telefonos": ["666123456","666654321"], }  ```   Descripción de campos JSON (pulsa para expandir)...* **nombre**: Nombre * **apellidos**: Apellidos * **tipoDocumentoId**: Id tipo de documento procedente de endpoint /tipos\-documento * **numeroDocumento**: Número de documento * **sexoId**: Id sexo procedente de endpoint /sexos * **fechaNacimiento**: Fecha de nacimiento en formato yyyy\-MM\-dd (Ej: 1981\-05\-18\) * **paisNacimientoId**: Id de pais de nacimiento procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **regionNacimientoId**: Id de comunidad autónoma de nacimiento procedente de endpoint /comunidades\-autonomas. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **ciudadNacimiento**: Ciudad de nacimiento * **empresaId**: Id de empresa procedente de endpoint /empresas. Ver definición en [Sistema de Gestión de Empresas (UM \- SGI \- ESB \- SGEMP)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md") * **tipoViaContactoId**: Id de tipo de vía de contacto. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **nombreViaContacto**: Nombre de vía de contacto * **numeroViaContacto**: Número de dirección de contacto * **ampliacionDireccionContacto**: Descripción de ampliación * **paisContactoId**: Id de pais de contacto procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **regionContactoId**: Id de comunidad autónoma de contacto procedente de endpoint /comunidades\-autonomas. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **provinciaContactoId**: Id de provincia de contacto procedente de endpoint /provincias. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **codigoPostalContacto**: Código postal de contacto * **ciudadContacto**: Ciudad de contacto * **emails**: Array de emails * **telefonos**: Array de teléfonos |
| PUT | /personas/formly/{id} | JSON |  |  | Recibe como parámetro la respuesta del usuario del formulario de datos de modificación (formly) con los campos necesarios para actualizar una persona.  **Ejemplo de JSON** Ampliar origen    ``` {   "personaId": "1",   "nombre": "nombre de prueba",   "apellidos": "apellidos de prueba",   "tipoDocumentoId": "2",   "numeroDocumento": "07852369Y",   "sexoId": "2",   "fechaNacimiento": "2021-02-14T23:00:00Z",   "paisNacimientoId": "1",   "regionNacimientoId": "3",   "ciudadNacimiento": "Madrid",   "empresaId": "3",   "fechaInicioVinculacion": "2021-02-14T23:00:00Z",   "tipoViaContactoId": "3",   "nombreViaContacto": "Castellana",   "numeroViaContacto": "123",   "ampliacionDireccionContacto": "ampliación",   "paisContactoId": "1",   "regionContactoId": "2",   "provinciaContactoId": "10",   "codigoPostalContacto": "48152",   "ciudadContacto": "Alcorcón (Madrid)",   "emails": ["a@prueba.com", "b@prueba.com"],   "telefonos": ["666123456","666654321"],   "areaConocimientoId": "id1",   "historicosEntidades": [     {       "entidad": "entidad 1",       "inicioVinculacion": "2021-02-14T23:00:00Z",       "finVinculacion": "2021-02-14T23:00:00Z"     }   ],   "nivelAcademicoId": "1",   "fechaObtencion": "2021-02-14T23:00:00Z",   "categoriaPdiId": "1",   "departamentoPdiId": "2",   "fechaCategoriaPdi": "2021-02-14T23:00:00Z",   "fechaFinCategoriaPdi": "2021-02-14T23:00:00Z",   "categoriaPasId": "2",   "unidadPasId": "1",   "fechaCategoriaPas": "2021-02-14T23:00:00Z",   "fechaFincategoriaPas": "2021-02-14T23:00:00Z" }  ```   Descripción de campos JSON (pulsa para expandir)...* **personaId:** Id de persona * **nombre**: Nombre * **apellidos**: Apellidos * **tipoDocumentoId**: Id tipo de documento procedente de endpoint /tipos\-documento * **numeroDocumento**: Número de documento * **sexoId**: Id sexo procedente de endpoint /sexos * **fechaNacimiento**: Fecha de nacimiento en formato ISO 8601 en UTC * **paisNacimientoId**: Id de pais de nacimiento procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **regionNacimientoId**: Id de comunidad autónoma de nacimiento procedente de endpoint /comunidades\-autonomas. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **ciudadNacimiento**: Ciudad de nacimiento * **empresaId**: Id de empresa procedente de endpoint /empresas. Ver definición en [Sistema de Gestión de Empresas (UM \- SGI \- ESB \- SGEMP)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md") * **fechaInicioVinculacion**: Fecha de inicio de vinculación en formato ISO 8601 en UTC * **tipoViaContactoId**: Id de tipo de vía de contacto. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **nombreViaContacto**: Nombre de vía de contacto * **numeroViaContacto**: Número de dirección de contacto * **ampliacionDireccionContacto**: Descripción de ampliación * **paisContactoId**: Id de pais de contacto procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **regionContactoId**: Id de comunidad autónoma de contacto procedente de endpoint /comunidades\-autonomas. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **provinciaContactoId**: Id de provincia de contacto procedente de endpoint /provincias. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **codigoPostalContacto**: Código postal de contacto * **ciudadContacto**: Ciudad de contacto * **emails**: Array de emails * **telefonos**: Array de teléfonos * **areaConocimientoId**: Área de conocimiento a la que está adscrita la persona * **historicosEntidades**: Array de histórico de entidades con objetos que refleja la información devuelta por el esb y que tiene la siguiente estructura: 	+ **entidad**: Entidad 	+ **inicioVinculacion**: Inicio de vinculación 	+ **finVinculacion**: Fin de vinculación * **nivelAcademicoId**: Id de nivel académico procedente de endpoint /niveles\-academicos * **fechaObtencion**: Fecha de obtención nivel académico en formato ISO 8601en UTC * **categoriaPdiId**: Id de categoría PDI procedente de endpoint /categorias\-profesionales * **departamentoPdiId**: Id de departamento * **fechaCategoriaPdi**: Fecha de nacimiento en formato ISO 8601 en UTC * **fechaFinCategoriaPdi**: Fecha de nacimiento en formato ISO 8601 en UTC * **categoriaPasId**: Id de categoría PAS procedente de endpoint /categorias\-profesionales * **unidadPasId**: Id de unidad * **fechaCategoriaPas**: Fecha de nacimiento en formato ISO 8601 en UTC * **fechaFincategoriaPas**: Fecha de fin de categoría en formato ISO 8601 en UTC |
| GET | /personas/formly/{id} |  | JSON |  | Devuelve los datos a pintar en el formulario de Ver Detalle/Actualizar en el SGI (formly).Se recibirá el mismo json que en la solicitud de modificación de persona (/personas PUT) |
|  | | | | | |
| GET | /datos\-personales/persona/{id} | id | DatosPersonales |  | Detalle de los datos personales de una persona independientemente de que este activa o no la persona (datos de dirección, nacimiento, etc). |
|  | | | | | |
| GET | /datos\-contacto/persona/{id} | id | DatosContacto |  | Contiene la lista de emails, incluido si el email es principal o no, y/o de teléfonos fijos y móviles de una persona (independientemente de que este activa o no la persona) |
|  | | | | | |
| GET | /vinculaciones/persona/{id} |  | Vinculacion |  | Detalle de los datos de vinculación vigentes de una persona (independientemente de que esté activa o no la persona).Ver [UM \- SGI \- ESB \- SGP \- Adaptaciones integración](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/um-sgi-esb-sgp-adaptaciones-integracion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/um-sgi-esb-sgp-adaptaciones-integracion.md") para su implementación en el SGI. |
| GET | /vinculaciones/persona/{id}/vinculaciones\-categorias\-profesionales | q\+s (query \+ sort)La query estará formada por:* fechaObtencion * fechaFin | Lista\[VinculacionCategoriaProfesional] |  | Si no se especifica ningún filtrado, deberá recuperar la lista de categorías profesionales a las que está asociada la persona y que sean vigentes.Para recuperar la lista de vinculaciones activas a una **FECHA** determinada se generaría una consulta RSQL del tipo: ``` q=fechaObtencion<=FECHA;fechaFin>=FECHA,fechaFin=na= ``` Devolver las **vinculaciones** asociadas a la persona con identificador **{id}** donde los objetos que viene en la lista **vinculacionesCategoriasProfesionales** deben cumplir que su atributo **fechaObtenicion** debe ser menor o igual que una **FECHA** dada y su atributo **fechaFin** debe ser mayor o igual que una **FECHA** dada o no debe tener valor.Ver [UM \- SGI \- ESB \- SGP \- Adaptaciones integración](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/um-sgi-esb-sgp-adaptaciones-integracion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/um-sgi-esb-sgp-adaptaciones-integracion.md") para su implementación en el SGI. |
|  | | | | | |
| GET | /datos\-academicos/persona/{id} | id | DatosContacto |  | Contiene el nivel académico de la persona (independientemente de que este activa o no la persona) |
|  |  |  |  |  |  |
| GET | /colectivos |  | Lista\[Colectivo] |  | Listado de colectivos ordenados alfabéticamente de forma ascendente. |
|  |  |  |  |  |  |
| GET | /tipos\-documento |  | Lista\[TipoDocumento] |  | Listado de tipos de documento de identificación personal ordenados alfabéticamente de forma ascendente. |
|  | | | | | |
| GET | /sexos |  | Lista\[Sexo] |  | Listado de sexos ordenados alfabéticamente de forma ascendente. |
|  |  |  |  |  |  |
| GET | /categorias\-profesionales |  | Lista\[CategoriaProfesional] |  | Listado de categorías profesionales ordenadas alfabéticamente de forma ascendente. |
| GET | /categorias\-profesionales/{id} |  | CategoriaProfesional |  | Detalle de la categoría profesional cuyo identificador se indica por parámetro. |
|  | | | | | |
| GET | /niveles\-academicos |  | Lista\[NivelAcademico] |  | Listado de niveles académicos ordenados alfabéticamente de forma ascendente. |
| GET | /niveles\-academicos/{id} |  | NivelAcademico |  | Detalle del nivel académico cuyo identificador se indica por parámetro. |
|  | | | | | |
| GET | /personas/{id}/fotografia | id | Fotografia |  | Detalle de la fotografía digital de la persona (independientemente de que este activa o no la persona) |
|  | | | | | |
| GET | /sexenios | fecha | Lista\[Sexenio] |  | Devuelve una lista de identificadores de persona con el número de sexenios en la fecha pasada por parámetro.En caso de que la fecha se envíe vacía se enviará el número de sexenios en el momento actualSe tendrá que mirar para la fecha pasada por parámetro el número de sexenios de cada PDI de la Universidad.Si no tiene sexenios no se enviaránEjemplo:* fecha\="2021\-12\-31T23:00:00Z" |
| GET | /direccion\-tesis | anioDefensa | Lista\[DireccionTesis] |  | Devuelve la lista de Direcciones de tesis (incluida la personaRef indicando la persona que es el director de la tesis) cuya fecha de defensa sea en el año que se le pasa por parámetroSi se le pasa el parámetro del año de la fecha de defensa.Ejemplo:* anioDefensa\="2019" |
|  | | | | | |
| **Métodos donde el SGI solo hace de pasarela entre Universidad y CVN (No son necesarios para el funcionamiento del SGI)** | | | | | |
| GET | /personas/modificadas\-ids | q\+s (query \+ sort)La query estará formada por:* fechaModificacion | Lista\[String] |  | Listado de los identificadores de personas que han sufrido cambios en los datos identificativos (nombre, apellidos, sexo, número de documento y tipo de documento) y/o en los datos personales (fecha de nacimiento, país de nacimiento, comunidad autónoma de nacimiento y ciudad de nacimiento) y/o en datos de contacto (país de contacto, comunidad autónoma de contacto, provincia de contacto, ciudad de contacto, dirección de contacto, código postal, listado de teléfonos y listado de emails) y/o en la fotografía a partir de la fecha de modificación pasada por parámetro y/o en los sexenios.La modificación debe incluir altas, actualizaciones y borrados lógicos. |
|  | | | | | |
| GET | /sexenios/persona/{id} | fecha | Sexenio |  | Devuelve el número de sexenios de la persona. Si se le pasa el parámetro de la fecha devuelve el número de sexenios en esa fecha, sino se devuelve el número de sexenios a la fecha actual.Ejemplo:* fecha\="2021\-08\-18T22:00:00Z" |
|  | | | | | |
| GET | /formacion/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion * tipoFormacion | Lista\[Long] |  | Listado de identificadores de las personas que han tenido modificaciones en formación realizada.Se utilizarán los siguientes parámetros en la llamada al servicio:* fechaModificacion: se le pasará la fecha a partir de la cual se quieren ver los cambios * tipoFormacion: se le pasa el tipo de formación que se quiere recuperar, usando los códigos de CVN  Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" * tipoFormacion\="020\.010\.020\.000" (para Doctorados) |
| GET | /formacion/{id} | tipoFormacion | Lista\[Formación (del tipo solicitado)]Ver entidades en [https://confluence.um.es/confluence/pages/viewpage.action?pageId\=397534658](https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534658 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534658") |  | Detalle sobre los datos de la Formación Recibida, dependiendo del ID de la persona y el tipo de formación.Se utilizará el siguiente parámetro en la llamada al servicio:* tipoFormacion: se le pasa el tipo de formación que se quiere recuperar, usando los códigos de CVN  Ejemplo:* tipoFormacion\="020\.010\.020\.000" (para Doctorados) |
|  |  |  |  |  |  |
| GET | /actividad\-docente/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion * tipoActividad | Lista\[Long] |  | Listado de identificadores de las personas que han tenido modificaciones en la actividad docente.Se utilizarán los siguientes parámetros en la llamada al servicio:* fechaModificacion: se le pasará la fecha a partir de la cual se quieren ver los cambios * tipoActividad: se le pasa el tipo de actividad docente que se quiere recuperar, usando los códigos de CVN  Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" * tipoActividad\="030\.040\.000\.000" (para direcciones) |
| GET | /actividad\-docente/{id} | tipoActividad | Lista\[Actividad docente (del tipo solicitado)]Ver entidades en [https://confluence.um.es/confluence/display/HERCULES/Actividad\+docente\+\-\+CVN](https://confluence.um.es/confluence/display/HERCULES/Actividad+docente+-+CVN "https://confluence.um.es/confluence/display/HERCULES/Actividad+docente+-+CVN") |  | Detalle sobre los datos de la Actividad Docente, dependiendo del ID de la persona y el tipo de actividad.Se utilizará el siguiente parámetro en la llamada al servicio:* tipoActividad: se le pasa el tipo de actividad docente que se quiere recuperar, usando los códigos de CVN  Ejemplo:* tipoActividad\="030\.040\.000\.000 |




