# Hércules : Integración SGI\-DIALNET



## Introducción

Se describe en esta página la integración entre el SGI Hercules y Dialnet.

## Personas (personas.csv)

  


La documentación completa se encuentra en el siguiente enlace:

[Sistema de gestión de personas](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md")

#### Servicios



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /personas/{id} | id | Persona |  | Detalle de los datos generales de una persona (este la persona activo o no) |
| GET | /datos\-personales/persona/{id} | id | DatosPersonales |  | Detalle de los datos personales de una persona independientemente de que este activa o no la persona (datos de dirección, nacimiento, etc). |
| GET | /vinculaciones/persona/{id} |  | Vinculacion |  | Detalle de los datos de vinculación vigentes de una persona (independientemente de que esté activa o no la persona).Ver [UM \- SGI \- ESB \- SGP \- Adaptaciones integración](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/um-sgi-esb-sgp-adaptaciones-integracion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/um-sgi-esb-sgp-adaptaciones-integracion.md") para su implementación en el SGI. |

#### Definición de los objetos

##### Persona



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la persona. |
| nombre | String | Nombre de la persona. |
| apellidos | String | Apellidos de la persona. |
| sexo | Sexo | Se devuelve la entidad Sexo con todos sus campos. |
| numeroDocumento | String | Número de documento de identificación personal. |
| tipoDocumento | TipoDocumento | Se devuelve la entidad TipoDocumento con todos sus campos. |
| empresaRef | String | Se devuelve el identificador/referencia de la entidad Empresa. |
| personalPropio | Boolean | Indica si es personal de la Universidad o no (a día de hoy). |
| entidadPropiaRef | String | Se devuelve el identificador/referencia de la entidad que representa a la UM en caso de que valor de personalPropio sea true (a día de hoy), esto es, que la relación de la persona con la UM esté vigente. |
| emails | Lista\[Email] | Lista con los emails de la persona (o con el email que se quiere visualizar en el resultado de la búsqueda de personas) |
| activo | Boolean | Indica si la persona esta activa o no (a día de hoy). |



**Persona** Ampliar origen



```
{
    "id": "ent-002",
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
     "empresaRef: "ent-002",
     "personalPropio": true,
     "entidadPropiaRef" : "ent-UM-001",
  	 "emails":[{
         email: "prueba@prueba.es",
         principal: true
        },
        {
         email: "prueba2@prueba.es",
         principal: false
        }
     ]
     "activo": true
}
```


##### DatosPersonales



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| fechaNacimiento | Fecha | Fecha de nacimiento de la persona |
| paisNacimiento | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [SGI \- ESB \- SGO](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO") |
| comAuntonomaNacimiento | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [SGI \- ESB \- SGO](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO") |
| ciudadNacimiento | String | Ciudad de nacimiento de la persona |



**DatosPersonales** Ampliar origen



```
{
    "fechaNacimiento": "2000-02-10",
    "paisNacimiento": {
       "id":"33",
       "nombre":"España"
     },
    "comAuntonomaNacimiento": {
       "id":"ca-1",
       "nombre":"Andalucía"
     }, 
    "ciudadNacimiento": "Sevilla"
    
}
```


##### Vinculacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| vinculacionCategoriaProfesional | VinculacionCategoriaProfesional | Se devuelve la entidad VinculacionCategoriaProfesional con todos sus campos. |
| departamento | Departamento | Se devuelve la entidad Departamento con todos sus campos. Ver definición en [SGI \- ESB \- SGO](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO"). |
| centro | Centro | Se devuelve la entidad Centro con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md") |
| areaConocimiento | AreaConocimiento | Se devuelve la entidad AreaConocimiento con todos sus campos. Ver definición en [SGI \- ESB \- SGO](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO"). |
| empresaRef | String | Se devuelve el identificador/referencia de la entidad Empresa externa que es la relacionada en la actualidad con la persona, la vigente. |
| personalPropio | Boolean | Indica si es personal de la Universidad o no (a día de hoy). |
| entidadPropiaRef | String | Se devuelve el identificador/referencia de la entidad que representa a la Universidad en caso de que valor de personalPropio sea true (a día de hoy), esto es, que la relación de la persona con la Universidad esté vigente. |



**Vinculacion** Ampliar origen



```
{
    "vinculacionCategoriaProfesional":{
		"categoriaProfesional":{
			"id":"catp-1",
	        "nombre":"PDI Numerario"
     	},
    	"fechaObtencionCategoria":"2020-03-15"
	},
    "departamento": {
       "id":"dpt-1",
       "nombre":"Departamento Ciencias de la tecnología"
     },
	"centro": {
		"id":"cen-1",
		"nombre": "Centro 1 de la Universidad de Murcia"
	 },
     "areaConocimiento": {
       "id":"ac-1",
       "nombre":"Área de conocimiento A"
     },
	"empresaRef": "ent-002",
	"personalPropio" : true,
	"entidadPropiaRef": "ent-UM-001"
}
```


  


#### Correspondencias

  




| personas.csv | Objetos SGI |
| --- | --- |
| persona\_id | Persona.id |
| nif | Persona.numeroIdentificacion |
| email | Persona.emails.email donde principal \= true |
| nombre | Persona.nombre |
| apellido1 | Persona.apellidos |
| apellido2 | Persona.apellidos |
| area\_id | DatosVinculacion.areaConocimiento.id |
| genero | Persona.sexo.nombre |
| fecha\_nacimiento | DatosPersonales.fechaNacimiento |
| rol | Si Persona.activo \= true entonces INVESTIGADOR\_ACTUALen otro caso INVESTIGADOR\_EXTERNO |

  


## Unidades (unidades.csv)

La documentación completa se encuentra en el siguiente enlace:

[Sistema de la gestión de la estructura orgánica \- Hércules \- Confluence (um.es)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147533 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147533")

#### Servicios



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /centros |  | Lista\[Centro] |  | Listado de centros. |
| GET | /departamentos |  | Lista\[Departamento] |  | Listado de departamentos. |

#### Definición de los objetos

##### Centro



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad Centro. |
| nombre | String | Nombre del centro. |

  




**Centro** Ampliar origen



```
{
    "id":"cen-1",
    "nombre":"Centro 1 de la Universidad de Murcia"
}
```


  


##### Departamento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador del departamento. |
| nombre | String | Nombre del departamento. |

  




**Departamento** Ampliar origen



```
{
    "id":"dpt-1",
    "nombre":"Departamento Ciencias de la teconología"
}


```


#### Correspondencias

  




| unidades.csv | Objetos SGI |
| --- | --- |
| id | Centro.id o Departamento.id |
| nombre | Centro.nombre o Departamento.nombre |
| tipo\_id | CENTROS\_ACADEMICOS o DEPARTAMENTO |

  


## Grupos de investigación (grupos.csv)

  


La documentación completa se encuentra en el siguiente enlace:

[SGI \- Grupos de investigación \- Hércules \- Confluence (um.es)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147666 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147666")

#### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /grupos | q\+sLa query estará formada por:* codigo * nombre * activo * fechaInicio * fechaFin | Lista\[Grupo] | Listado de los Grupo según los parámetros de consultaPor ejemplo, para obtener los grupos activos, excluyendo los "FP00", se utilizarán los siguiente parámetros en la llamada al servicioEjemplo:* nombre\=nk\="FP00\-";activo\=\=1;codigo\=nk\="FP00\-";fechaInicio\=le\="2023\-11\-16T00:00:00Z";(fechaFin\=gt\="2023\-11\-16T00:00:00Z",fechaFin\=na\='') |
| GET | /grupos/{id} |  | Grupo | Datos generales de un Grupo |
| GET | /grupos/{id}/palabrasclave |  | Lista\[GrupoPalabraClave] | Listado de palabras clave de un Grupo |

#### Definición de los objetos

##### Grupo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del grupo. |
| nombre | String | Nombre del grupo. |
| fechaInicio | String | Fecha de inicio del grupo. |
| fechaFin | String | Fecha de finalización del grupo. |
| proyectoSgeRef | String | Identificador del proyecto económico asociado en el sistema de gestión económico. |
| solicitudId | Long | Identificador de la solicitud de convocatoria que originó el grupo. |
| codigo | String | Código del grupo. |
| tipo | String | Tipo del grupo. Posibles valores:* EMERGENTE * CONSOLIDADO * PRECOMPETITIVO * ALTO\_RENDIMIENTO |
| especialInvestigación | Boolean | Indica si el grupo es un grupo especial de investigación o no. |
| activo | Boolean | Indica si esta activo o no. En caso de no estar activo se considera como un grupo eliminado del sistema. Se realizan borrados lógicos por si el gestor o administrador desean recuperar un grupo eliminado. |

  




**Grupo** Ampliar origen



```
{
    "id": 1,
    "nombre": "ZOOLOGIA BASICA Y APLICADA",
    "fechaInicio": "2002-01-01T00:00:00Z",
    "fechaFin": "2009-12-31T00:00:00Z",
    "proyectoSgeRef": null,
    "solicitudId": null,
    "codigo": "E0A0-01",
    "tipo": null,
    "especialInvestigacion": false,
    "activo": true
}
```


##### GrupoPalabraClave

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad grupo palabra clave. |
| palabraClaveRef | String | Palabra o conjunto de palabras clave definido en el grupo |

  




**GrupoPalabraClave** Ampliar origen



```
[
    {
        "id": 1,
        "palabraClaveRef": "AGROECOSISTEMAS"
    },
    {
        "id": 2,
        "palabraClaveRef": "BIOLOGÍA ANIMAL"
    }
]
```


#### Correspondencias

  




| grupos.csv | Objetos SGI |
| --- | --- |
| id | Grupo.id |
| nombre | Grupo.nombre |
| nombre\_en |  |
| constitucion | Grupo.fechaInicio |
| direccion\_postal |  |
| palabras\_clave | GrupoPalabraClave.palabraClaveRef |
| lineas\_investigacion |  |

  


  


## Miembros del Grupo de investigación (grupos\-personas.csv)

  


La documentación completa se encuentra en el siguiente enlace:

[SGI \- Grupos de investigación \- Hércules \- Confluence (um.es)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147666 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147666")

  


#### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /grupos/{id}/miembrosequipo |  | Lista\[GrupoEquipo] | Listado de miembros del equipo de un Grupo |

  


#### Definición de los objetos

##### GrupoEquipo

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad grupo equipo. |
| grupoId | Long | Identificador del grupo. |
| personaRef | String | Identificador o Referencia de la persona miembro del equipo de grupo. Es el identificador de la persona en el sistema de personas de la Universidad. |
| rol | RolProyecto | Entidad que representa el rol. Son los roles que puede tener el equipo de grupo.Ejemplos:* Investigador/a principal * Co\-Investigador/a PrincipalColaborador * Asesor científico * Colaborador E.I. |
| fechaInicio | String | Fecha de inicio para la participación del miembro del equipo de grupo con el rol seleccionado. |
| fechaFin | String | Fecha de inicio para la participación del miembro del equipo de grupo con el rol seleccionado. |
| dedicacion | String | Dedicación del miembro del equipo de grupo. Posibles valores:* PARCIAL * COMPLETA |
| participacion | Numérico | Porcentaje de dedicación al grupo. |

  




**GrupoEquipo** Ampliar origen



```
[
    {
        "id": 1,
        "personaRef": "12345678",
        "fechaInicio": "2009-12-02T00:00:00Z",
        "fechaFin": "2009-12-31T00:00:00Z",
        "rol": {
            "id": 8,
            "abreviatura": "COLEI",
            "nombre": "Colaborador E.I.",
            "rolPrincipal": false,
            "orden": null,
            "equipo": "INVESTIGACION",
            "activo": true
        },
        "dedicacion": "COMPLETA",
        "participacion": 100,
        "grupoId": 1
    }
}
```


#### Correspondencias

  




| grupos\-personas.csv | Objetos SGI |
| --- | --- |
| grupo\_id | GrupoEquipo.grupoId |
| persona\_id | GrupoEquipo.personaRef |
| rol | Según GrupoEquipo.rol.abreviatura:Si es IP o COIP entonces RESPONSABLEEn otro caso MIEMBRO |
| fecha\_inicio | GrupoEquipo.fechaInicio |
| fecha\_fin | GrupoEquipo.fechaFin |

  


## Entidades (entidades.csv)

  


La documentación completa se encuentra en el siguiente enlace:

[Sistema de gestión de empresas \- Hércules \- Confluence (um.es)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147536 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147536")

  


#### Servicios

  




| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /empresas/{id} | id | Empresa | Detalle de los datos generales de una empresa. |
| GET | /datos\-contacto/empresa/{id} | id | DatosContacto | Contiene los datos de contacto de una empresa. |

#### Definición de los objetos

  


##### DatosContacto

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| paisContacto | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635"). |
| comAutonomaContacto | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635"). |
| provinciaContacto | Provincia | Se devuelve la entidad Provincia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635"). |
| ciudadContacto | String | Ciudad de contacto de la empresa. |
| codigoPostal | String | Código postal de la empresa. |
| tipoVia | TipoVia | Tipo de vía de la dirección de contacto de la empersa. Se devuelve la entidad TipoVia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=598147635"). |
| nombreVia | String | Nombre de la vía de la dirección de contacto de la empresa. |
| numero | String | Número de la vía de la dirección de contacto de la empresa. |
| ampliacion | String | Campo para ampliar la informaicón de la dirección de contacto de la empresa. |
| email | String | Email de contacto de la empresa. |
| fax | String | Fax de contacto de la empresa. |
| telefono | String | Teléfono de contacto de la empresa. |
| direccionWeb | String | Dirección web de la empresa. |

  


  




**DatosContacto** Ampliar origen



```
{
    "paisContacto": {
       "id":"33",
       "nombre":"España"
     },
    "comAutonomaContacto": {
       "id":"ca-3",
       "nombre":"Asturias"
     },
    "provinciaContacto": {
       "id":"pro-1",
       "nombre":"Asturias"
     },
    "ciudadContacto": "Oviedo",
    "codigoPostal": "33002",
    "tipoVia": {
       "id":"tv-1",
       "nombre":"Calle"
     },
    "nombreVia": "Uría",
    "numero": "4",
    "ampliacion": "puerta A",
    "email": "email@empresadeprueba.es",
    "fax": "985798765",
    "telefono": "985798766",
    "direccionWeb": "www.empresadeprueba.es"
}
```


  


##### Empresa

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la empresa. |
| nombre | String | Nombre de la empresa. Se devolverá lo mismo que en el campo "razonSocial". |
| razonSocial | String | Razón social de la empresa. Se devolverá lo mismo que en el campo "nombre". |
| tipoIdentificador | TipoIdentificador | Tipo de identificador fiscal de la empresa. Se devuelve la entidad TipoIdentificador con todos sus campos. |
| numeroIdentificacion | String | Número de identificación fiscal de la empresa del tipo indicado en "tipoIdentificador". |
| datosEconomicos | Boolean | Indicador de si se trata de una empresa con datos económicos (está dada de alta en GENTE y en JUSTO) o sin datos económicos (está dada de alta solo en GENTE). |
| padreId | String | Identificador de la empresa padre o entidad principal. Estará informado en el caso de empresas que son subentidad de otra. |

  




**Empresa** Ampliar origen



```
{
    "id": "000555",
    "nombre": "EMPRESA MIXTA DE AGUAS DE STA. CRUZ DE TENERIFE, S.A. [EMMASA]",
    "razonSocial": "EMPRESA MIXTA DE AGUAS DE STA. CRUZ DE TENERIFE, S.A. [EMMASA]",
    "tipoIdentificador": {
        "id": "1",
        "nombre": "CIF PERSONAS JURIDICAS: ESPAÑOLAS"
    },
    "numeroIdentificacion": "A38000055",
    "datosEconomicos": true,
    "padreId": null
}
```


#### Correspondencias

  




| entidades.csv | Objetos SGI |
| --- | --- |
| id | Empresa.id |
| nombre | Empresa.nombre |
| nif | Empresa.numeroIdentificacion |
| url | DatosContacto.direccionWeb |
| region | DatosContacto.provinciaContacto.nombre |
| ciudad | DatosContacto.ciudadContacto |
| codigo\_postal | DatosContacto.codigoPostal |
| ambito |  |
| pais | DatosContacto.paisContacto.nombre |
| caracter |  |

  


## Financiaciones personas (financiaciones\-personas.csv)

  


La documentación completa se encuentra en el siguiente enlace:

[Gestión proyectos](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

#### Servicios

  




| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /proyectos/{id}/proyectoequipos |  | Lista\[ProyectoEquipo] | Listado de miembros del equipo de un Proyecto |

#### Definición de los objetos

##### ProyectoEquipo

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad proyecto equipo. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| personaRef | String | Identificador o Referencia de la persona miembro del equipo de proyecto. Es el identificador de la persona en el sistema de personas de la Universidad. |
| rolProyecto | RolProyecto | Entidad que representa el rol. Son los roles que puede tener el equipo de proyecto.Ejemplos:* Investigador/a principal * Co\-Investigador/a PrincipalColaborador * Asesor científico * Colaborador E.I. |
| fechaInicio | String | Fecha de inicio para la participación del miembro del equipo de proyecto con el rol seleccionado. |
| fechaFin | String | Fecha de inicio para la participación del miembro del equipo de proyecto con el rol seleccionado. |
| horasDedicacion | Numérico | Horas totales de dedicación al proyecto. Se utiliza para realizar la propuesta de distribución del timesheet. |

  




**ProyectoEquipo** Ampliar origen



```
[
    {
        "createdBy": "CSP_SGI",
        "creationDate": "2023-06-01T09:21:42.824544Z",
        "lastModifiedBy": "CSP_SGI",
        "lastModifiedDate": "2023-06-01T09:21:42.824544Z",
        "id": 249,
        "proyectoId": 50,
        "personaRef": "10531066",
        "rolProyecto": {
            "createdBy": null,
            "creationDate": null,
            "lastModifiedBy": null,
            "lastModifiedDate": null,
            "activo": true,
            "id": 8,
            "abreviatura": "COLEI",
            "nombre": "Colaborador E.I.",
            "descripcion": "Colaborador E.I.",
            "rolPrincipal": false,
            "baremablePRC": true,
            "orden": null,
            "equipo": "INVESTIGACION"
        },
        "fechaInicio": "1996-12-28T00:00:00Z",
        "fechaFin": "1997-12-31T00:00:00Z"
    }

]
```


#### Correspondencias

  




| financiaciones\-personas.csv | Objetos SGI |
| --- | --- |
| financiacion\_id | ProyectoEquipo.proyectoId |
| persona\_id | ProyectoEquipo.personaRef |
| rol | Según ProyectoEquipo.rolProyecto.abreviatura:Si es IP entonces RESPONSABLESi en COIP entonces RESPONSABLE2En otro caso MIEMBRO |
| fecha\_inicio | ProyectoEquipo.fechaInicio |
| fecha\_fin | ProyectoEquipo.fechaFin |

  


  


## Entidades financiadoras (financiaciones\-entidadesfinanciadoras.csv)

  


La documentación completa se encuentra en el siguiente enlace:

[Gestión proyectos](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

  


#### Servicios

  




| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /proyectos/{id}/proyectoentidadfinanciadoras |  | Lista\[ProyectoEntidadFinanciadora] | Listado de entidades financiadoras de un Proyecto |

#### Definición de los objetos

##### EntidadFinanciadora



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador de la entidad financiadora del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| entidadRef | String | Referencia o Identificador de la entidad en el sistema externo de Empresas.Ver diseño del API de empresas para obtener el detalle de una empresa a a partir de su identificador: [SGI \- ESB \- SGEMP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP") |
| fuenteFinanciacion | FuenteFinanciacion | Entidad que representa una fuente de financiación. |
| tipoFinanciacion | TipoFinanciacion | Entidad que representa un tipo de financiación. |
| porcentajeFinanciacion | Numérico | Porcentaje de financiación de la entidad financiadora. |
| importeFinanciacion | Numérico | Importe de financiación de la entidad. |
| ajena | Boolean | Indica si se trata de una entidad financiadora ajena a la convocatoria o no. |

  




**EntidadFinanciadora** Ampliar origen



```
[
    {
        "createdBy": "CSP_SGI",
        "creationDate": "2023-11-03T08:18:17.125864Z",
        "lastModifiedBy": "CSP_SGI",
        "lastModifiedDate": "2023-11-03T08:18:17.125864Z",
        "id": 12345,
        "proyectoId": 6785,
        "entidadRef": "Q05457982",
        "fuenteFinanciacion": null,
        "tipoFinanciacion": {
            "createdBy": "CSP_SGI",
            "creationDate": "2023-03-15T11:23:19.179492Z",
            "lastModifiedBy": "CSP_SGI",
            "lastModifiedDate": "2023-03-15T11:23:19.179492Z",
            "id": 4,
            "nombre": "Facturación",
            "descripcion": "Facturación",
            "activo": true
        },
        "porcentajeFinanciacion": 100,
        "importeFinanciacion": 1147.93,
        "ajena": true
    }
]
```


#### Correspondencias

  




| financiaciones\-entidadesfinanciadoras.csv | Objetos SGI |
| --- | --- |
| financiacion\_id | EntidadFinanciadora.proyectoId |
| entidad\_id | EntidadFinanciadora.entidadRef |

  


## Financiaciones (financiaciones)

  


La documentación completa se encuentra en el siguiente enlace:

[Gestión proyectos](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

#### Servicios

  




| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /proyectos | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto Proyecto | Lista\[Proyecto] | Listado de proyectos.*Ejemplo*:**proyectos?q\=confidencial\=\=false;estado.estado\=\="CONCEDIDO";([modeloEjecucion.id](http://modeloEjecucion.id "http://modeloEjecucion.id")\=\=1 and [finalidad.id](http://finalidad.id "http://finalidad.id")\=in\=(16,17,18,19,20,21,22\)),([modeloEjecucion.id](http://modeloEjecucion.id "http://modeloEjecucion.id")\=\=3 and [finalidad.id](http://finalidad.id "http://finalidad.id")\=in\=(17,22\)),([modeloEjecucion.id](http://modeloEjecucion.id "http://modeloEjecucion.id")\=\=10 and [finalidad.id](http://finalidad.id "http://finalidad.id")\=in\=(44,45\)),([modeloEjecucion.id](http://modeloEjecucion.id "http://modeloEjecucion.id")\=\=7 and [finalidad.id](http://finalidad.id "http://finalidad.id")\=in\=(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,48\))** |
| GET | /proyectos/{id}/entidadconvocantes |  | Lista\[ProyectoEntidadConvocante] | Listado de entidades convocantes de un Proyecto |

#### Definición de los objetos

##### Proyecto

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| convocatoriaId | Long | Identificador de la convocatoria del proyecto en caso de que la convocatoria este registrada en el SGI. |
| solicitudId | Long | Identificador de la solicitud de convocatoria que dió lugar al proyecto. |
| estado | EstadoProyecto | Entidad que representa un estado del proyecto. |
| titulo | String | Título del proyecto. |
| acronimo | String | Identificador corto del proyecto. |
| codigoExterno | String | Código o referencia con el que se identifica el proyecto en la entidad convocante externa (en caso de existir). |
| fechaInicio | String | Fecha de inicio del proyecto. |
| fechaFin | String | Fecha de fin del proyecto. |
| fechaFinDefinitiva | String | Fecha de fin definitiva del proyecto. Se informará de esta fecha en el caso de situaciones como rescisiones o renuncias al proyecto, o bien puede ser informada automáticamente por el sistema al registrar una prórroga sobre el proyecto. Si está informada prevalecerá sobre la fecha de fin y será la considerada como fecha de finalización del proyecto, independientemente de que sea mayor o menor que la fecha de fin inicial. |
| unidadGestionRef | String | Identificador de la Unidad de gestión (OTRI, OPE, UGI, etc) a la que pertenece el proyecto. |
| modeloEjecucion | ModeloEjecucion | Entidad que representa un modelo de ejecución. |
| finalidad | TipoFinalidad | Entidad que representa la finalidad del proyecto. |
| convocatoriaExterna | String | Permite mostrar o recoger la identificación externa de la convocatoria, dependiendo si el proyecto se asocia o no a una convocatoria registrada en el SGI. |
| ambitoGeografico | TipoAmbitoGeografico | Entidad que representa el ámbito geográfico. |
| confidencial | Boolean | Indica si el proyecto es confidencial. |
| clasificacionCVN | String | Indica el apartado del CVN al que correspondería el proyecto. Tiene los siguientes valores:* AYUDAS * COMPETITIVOS * NO\_COMPETITIVOS |
| coordinado | Boolean | Indica si el proyecto se realizará de forma coordinada con otros socios. |
| colaborativo | Boolean | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| coordinadorExterno | Boolean | Indica quién actúa como coordinador del proyecto. Un valor "false" indica que es la propia universidad quien actúa en calidad de coordinador del proyecto. En caso que quien coordine el proyecto no sea la universidad sino uno de los socios, se indicará en este campo el valor "true". |
| timesheet | Boolean | Indica si el proyecto requiere gestión de Timesheet. |
| permitePaquetesTrabajo | Boolean | Indica si el proyecto requiere gestión de paquetes de trabajo en los Timesheet. |
| costeHora | Boolean | Indica si el proyecto requerirá realizar el cálculo de coste de hora de personal. |
| tipoHorasAnuales | String | Sólo se informará si se el campo "costeHora" tiene valor "true".Indica el criterio de las horas anuales para el cálculo del coste/hora.Tiene los siguientes valores:* CATEGORIA * FIJO * REAL |
| iva | ProyectoIva | Entidad que representa el IVA del proyecto. |
| causaExencion | String | Indica la causa de exención de IVA.Tiene los siguientes valores:* NO\_SUJETO * NO\_SUJETO\_CON\_DEDUCCION * NO\_SUJETO\_SIN\_DEDUCCION * SUJETO\_EXENTO |
| observaciones | String | Observaciones de carácter interno del proyecto. |
| anualidades | Boolean | Indica si en el presupuesto se va a introducir por anualidades o no. |
| importePresupuesto | Numérico | Es el importe presupuesto correspondiente al proyecto a desarrollar por la Universidad en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto"). |
| importeConcedido | Numérico | Es el importe concedido correspondiente al proyecto a desarrollar por la Universidad en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto"). |
| importePresupuestoSocios | Numérico | Es el importe total presupuestado por todos los socios (adicionales a la Universidad) que participan en el proyecto en caso de que lo deseen introducir de forma manual y no a través del importe presupuestdo de los socios (entidad "ProyectoSocio"). |
| importeConcedidoSocios | Numérico | Es el importe total concedido por todos los socios (adicionales a la Universidad) que participan en el proyecto en caso de que lo deseen introducir de forma manual y no a través del importe concedido de los socios (entidad "ProyectoSocio"). |
| totalImportePresupuesto | Numérico | Es el importe total presupuestado del proyecto (Universidad y socios) en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto") y del importe presupuestado de los socios (entidad "ProyectoSocio"). |
| totalImporteConcedido | Numérico | Es el importe total concedido del proyecto (Universidad y socios) en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto") y del importe presupuestado de los socios (entidad "ProyectoSocio"). |
| activo | Boolean | Indica si esta activa o no. En caso de no estar activo se considera como un proyecto eliminado del sistema. Se realizan borrados lógicos por si el gesto o administrador desean recuperar un proyecto eliminado. |

  




**Proyecto** Ampliar origen



```
{
    "createdBy": "CSP_SGI",
    "creationDate": "2023-06-01T09:21:38.869116Z",
    "lastModifiedBy": "CSP_SGI",
    "lastModifiedDate": "2023-06-01T09:21:38.869116Z",
    "id": 20,
    "convocatoriaId": 20,
    "solicitudId": 41,
    "estado": {
        "createdBy": "CSP_SGI",
        "creationDate": "2023-06-01T09:21:38.869389Z",
        "lastModifiedBy": "CSP_SGI",
        "lastModifiedDate": "2023-06-01T09:21:38.869389Z",
        "id": 20,
        "proyectoId": 20,
        "estado": "CONCEDIDO",
        "fechaEstado": "1997-11-17T00:00:00Z",
        "comentario": null
    },
    "titulo": "ESTUDIO DE RELACION ENTRE ESTRUCTURA Y FUNCION DE PROTEINAS Y PEPTIDOS DE MEMBRANA",
    "acronimo": null,
    "codigoInterno": null,
    "codigoExterno": "PB96-1107",
    "fechaInicio": "1997-12-01T00:00:00Z",
    "fechaFin": "1999-11-30T00:00:00Z",
    "fechaFinDefinitiva": "1999-11-30T00:00:00Z",
    "unidadGestionRef": "3",
    "modeloEjecucion": {
        "createdBy": null,
        "creationDate": null,
        "lastModifiedBy": null,
        "lastModifiedDate": null,
        "id": 1,
        "nombre": "Subvención",
        "descripcion": "Subvención",
        "activo": true,
        "externo": false,
        "contrato": false
    },
    "finalidad": {
        "createdBy": "CSP_SGI",
        "creationDate": "2023-03-07T16:25:58.163887Z",
        "lastModifiedBy": "CSP_SGI",
        "lastModifiedDate": "2023-03-07T16:25:58.163887Z",
        "id": 17,
        "nombre": "Proyectos (ayudas a la investigación)",
        "descripcion": "Proyectos (ayudas a la investigación)",
        "activo": true
    },
    "convocatoriaExterna": null,
    "ambitoGeografico": {
        "createdBy": null,
        "creationDate": null,
        "lastModifiedBy": null,
        "lastModifiedDate": null,
        "activo": true,
        "id": 4,
        "nombre": "Estatal"
    },
    "confidencial": false,
    "clasificacionCVN": null,
    "coordinado": false,
    "colaborativo": null,
    "coordinadorExterno": null,
    "excelencia": null,
    "permitePaquetesTrabajo": false,
    "iva": null,
    "causaExencion": null,
    "observaciones": null,
    "anualidades": true,
    "importePresupuesto": null,
    "importePresupuestoCostesIndirectos": null,
    "importeConcedido": 7000000,
    "importeConcedidoCostesIndirectos": 420000,
    "importePresupuestoSocios": null,
    "importeConcedidoSocios": null,
    "totalImportePresupuesto": null,
    "totalImporteConcedido": 7420000,
    "activo": true
}
```


##### ProyectoEntidadConvocante



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador de la entidad convocante del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| entidadRef | String | Referencia o Identificador de la entidad en el sistema externo de Empresas.Ver diseño del API de empresas para obtener el detalle de una empresa a a partir de su identificador: [SGI \- ESB \- SGEMP](https://confluence.treelogic.com/display/HERCULES/SGI+-+ESB+-+SGEMP "https://confluence.treelogic.com/display/HERCULES/SGI+-+ESB+-+SGEMP") |
| programaConvocatoria | Programa | Entidad que representa el Programa al que se asocia la entidad convocante en la Convocatoria. En el caso de que el proyecto este relacionado con una convocatoria del SGI, en este campo se guarda el programa que se haya definido en la convocatoria para la entidad convocante. |
| programa | Programa | Entidad que representa el del Programa al que se asocia la entidad convocante en el proyecto. |

  




**ProyectoEntidadConvocante** Ampliar origen



```
[
    {
        "id": 367,
        "entidadRef": "G3052828",
        "programaConvocatoria": {
            "createdBy": "CSP_SGI",
            "creationDate": "2023-06-01T09:21:47.030787Z",
            "lastModifiedBy": "CSP_SGI",
            "lastModifiedDate": "2023-06-01T09:21:47.030787Z",
            "id": 1619,
            "nombre": "3 - B PROYECTOS EN HUMANIDADES Y CIENCIAS SOCIALES",
            "descripcion": "B PROYECTOS EN HUMANIDADES Y CIENCIAS SOCIALES",
            "padre": {
                "createdBy": "CSP_SGI",
                "creationDate": "2023-06-01T09:21:46.630064Z",
                "lastModifiedBy": "CSP_SGI",
                "lastModifiedDate": "2023-06-01T09:21:46.630064Z",
                "id": 1617,
                "nombre": "5672",
                "descripcion": "PROGRAMA DE LA ENTIDAD 5672",
                "padre": null,
                "activo": true
            },
            "activo": true
        },
        "programa": {
            "createdBy": "CSP_SGI",
            "creationDate": "2023-06-01T09:21:47.030787Z",
            "lastModifiedBy": "CSP_SGI",
            "lastModifiedDate": "2023-06-01T09:21:47.030787Z",
            "id": 1619,
            "nombre": "3 - B PROYECTOS EN HUMANIDADES Y CIENCIAS SOCIALES",
            "descripcion": "B PROYECTOS EN HUMANIDADES Y CIENCIAS SOCIALES",
            "padre": {
                "createdBy": "CSP_SGI",
                "creationDate": "2023-06-01T09:21:46.630064Z",
                "lastModifiedBy": "CSP_SGI",
                "lastModifiedDate": "2023-06-01T09:21:46.630064Z",
                "id": 1617,
                "nombre": "5672",
                "descripcion": "PROGRAMA DE LA ENTIDAD 5672",
                "padre": null,
                "activo": true
            },
            "activo": true
        }
    }
]
```


#### Correspondencias

  


  


  




| financiaciones.csv | Objetos SGI |
| --- | --- |
| id | Proyecto.id |
| nombre | Proyecto.titulo |
| fecha\_inicio | Proyecto.fechaInicio |
| fecha\_fin | Proyecto.fechaFinDefinitiva |
| ref | Proyecto.codigoExterno |
| tipo\_id |  |
| convocante\_entidad | ProyectoEntidadConvocante.entidadRef |
| convocatoria\_nombre |  |
| programa\_nombre |  |
| subprograma\_nombre |  |
| regimen |  |
| importe | Proyecto.importeConcedido |
| ambito | Proyecto.ambitoGeografico.nombre |
| colaborativo | Proyecto.colaborativo |
| colavorativo\_rol | Según Proyecto.coordinadorExterno si es false entonces COORDINADORen otro caso SOCIO |
| caracter |  |

             

  


  





