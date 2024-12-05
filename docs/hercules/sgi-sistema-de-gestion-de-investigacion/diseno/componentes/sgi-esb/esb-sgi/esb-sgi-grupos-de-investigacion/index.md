# Hércules : ESB \- SGI \- Grupos de investigación











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Grupo | Contiene los datos generales de un grupo de investigación. De esta entidad se pueden obtener los campos:* Nombre del grupo * Fecha de inicio * Fecha de finalización * Código * Tipo |
| GrupoEquipo | Contiene la información de las personas que forman parte del equipo del grupo de investigación. De esta entidad de puede obtener los campos:* Nombre del miembro * Apellidos del miembro * Fecha inicio de la participación * Fecha fin de la participación * Rol con el que participa * Nº de componentes grupo (contando los distintos miembros del equipo) * Nombre del investigador/a principal (personaRef con un rol que tenga el flag de "principal" a true y el "orden" igual a "PRIMARIO") |
| RolProyecto | Entidad que tiene la información sobre el rol que tiene el miembro en el equipo. |
| GrupoPalabraClave | Contiene las palabras claves del grupo de investigación |

### Modelo lógico

[CSP \- GIN \- Diseño lógico](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-gin-grupos-de-investigacion/csp-gin-diseno-logico-diagrama.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-gin-grupos-de-investigacion/csp-gin-diseno-logico-diagrama.md")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

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
| activo | Boolean | Indica si esta activo o no. En caso de no estar activo se considera como un grupo eliminado del sistema. Se realizan borrados lógicos por si el gestor o administrador desean recuperar un grupo eliminado. |



**Grupo** Ampliar origen



```
{  
	"id": 2,
	"nombre": "Grupo investigación 2",
	"fechaInicio": "2022-02-14T23:00:00Z",
	"fechaFin": "2022-11-01T22:59:59Z",
	"proyectoSgeRef": "33939",
	"solicitudId": null,
	"codigo": "E0B9-1",
	"tipo": "ALTO_RENDIMIENTO",
	"especialInvestigacion": false,
	"activo": true
}
```


##### GrupoEquipo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad grupo equipo. |
| personaRef | String | Identificador o Referencia de la persona miembro del equipo de grupo. Es el identificador de la persona en el sistema de personas de la Universidad. |
| rol | RolProyecto | Entidad que representa el rol. Son los roles que puede tener el equipo de grupo.Ejemplos:* Investigador/a principal * Co\-Investigador/a PrincipalColaborador * Asesor científico * Colaborador E.I. |
| fechaInicio | String | Fecha de inicio para la participación del miembro del equipo de grupo con el rol seleccionado. |
| fechaFin | String | Fecha de inicio para la participación del miembro del equipo de grupo con el rol seleccionado. |
| dedicacion | String | Dedicación del miembro del equipo de grupo. Posibles valores:* PARCIAL * COMPLETA |
| participacion | Numérico | Porcentaje de dedicación al grupo. |

##### RolProyecto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del rol proyecto. |
| abreviatura | String | Abreviatura identificativa del rol. |
| nombre | String | Nombre del rol. |
| rolPrincipal | Boolean | Indica si el rol es el rol principal. No se limita el número de roles para los que se marque el indicador de rol principal, pudiendo estar mas de un rol con el indicador marcado. |
| equipo | String | Tipo Equipo Proyecto. Tiene los siguientes valores:* INVESTIGACION * TRABAJO |
| orden | String | Tipo de Orden. El orden sólo se indica para aquellos roles que tengan marcado el flag de investigador principal, para indicar si es de orden 1 o de orden 2\. Tiene los siguientes valores:* PRIMARIO * SECUNDARIO |
| activo | Boolean | Indica si esta activo o no. En caso de no estar activo no se podrá asignar a ningún miembro del equipo de una solicitud ni a los miembros del equipo de los socios de una solicitud. |



**GrupoEquipo** Ampliar origen



```
	{
		"id": 35,
		"grupoId": 1,
		"personaRef": "27477512",
        "fechaInicio": "2022-02-14T23:00:00Z",
		"fechaFin": null,
        "rolProyecto": {
			"id": 1,
			"abreviatura": "IP",
			"nombre": "Investigador/a principal",
			"rolPrincipal": true,
			"orden": "PRIMARIO",
			"equipo": "INVESTIGACION",
			"activo": true
		},
		
		"dedicacion": "COMPLETA",
        "participacion":100
	}

```


##### GrupoPalabraClave



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad grupo palabra clave. |
| palabraClaveRef | String | Palabra o conjunto de palabras clave definido en el grupo |



**GrupoPalabraClave** Ampliar origen



```
{
     "id": 35,
	 "palabraClaveRef": "ciencias sociales"
}

```


##### GrupoLineaInvestigacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador único de la entidad que relaciona un grupo con una línea de investigación . |
| lineaInvestigacionId | Long | Referencia a la línea de investigación asociada al grupo. |
| fechaInicio | Fecha \+ hora | Fecha de inicio de la línea en el grupo. |
| fechaFin | Fecha \+ hora | Fecha de fin de la línea en el grupo. |



**GrupoLineaInvestigacion** Ampliar origen



```
{
	"id": 1,
    "lineaInvestigacionId": 1,
    "fechaInicio": "2021-11-07T23:00:00Z",
    "fechaFin": "2021-12-30T22:59:59Z"
} 
```


##### LineaInvestigacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador único de la línea de investigación . |
| nombre | String | Nombre de la línea de investigación. |
| activo | Boolean | Indicador de si la línea está activa o no. |



**GrupoLineaInvestigacion** Ampliar origen



```
{
    "id": 1,
    "nombre": "Psicología Laboral u Organizacional",
    "activo": true
}
```


##### GrupoLineaClasificacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador único de la entidad que relaciona un grupo línea de investigación con una clasificación. |
| codClasificacionRef | String | Referencia a la línea de investigación asociada al grupo. |



**GrupoLineaInvestigacion** Ampliar origen



```
{
	"id": 1,
    "codClasificacionRef": "1234"
} 
```


#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgicsp**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [ESB \- SGI \- Grupos de investigación \- Líneas de investigación \- Listar clasificaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853375 "/confluence/pages/viewpage.action?pageId=597853375") | GET | /gruposlineasinvestigacion/{id}/clasificaciones |  | Lista\[[GrupoLineaClasificacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoLineaClasificacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoLineaClasificacion")] | Listado de clasificaciones de una línea de investigación dentro de un grupo de investigación. |
| [ESB \- SGI \- Grupos de investigación \- Líneas de investigación \- Consultar detalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853378 "/confluence/pages/viewpage.action?pageId=597853378") | GET | /lineasinvestigacion/{id} |  | [LineaInvestigacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-LineaInvestigacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-LineaInvestigacion") | Detalle de una línea de investigación. |
| [ESB \- SGI \- Grupos de investigación \- Listar líneas de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853373 "/confluence/pages/viewpage.action?pageId=597853373") | GET | /grupos/{id}/lineas\-investigacion |  | Lista\[[GrupoLineaInvestigacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoLineaInvestigacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoLineaInvestigacion")] | Listado de líneas de investigación de un Grupo. |
| [ESB \- SGI \- Grupos de investigación \- Listar palabras clave](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853374 "/confluence/pages/viewpage.action?pageId=597853374") | GET | /grupos/{id}/palabrasclave |  | Lista\[[GrupoPalabraClave](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoPalabraClave "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoPalabraClave")] | Listado de palabras clave de un Grupo. |
| [ESB \- SGI \- Grupos de investigación \- Consultar miembros equipo](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853371 "/confluence/pages/viewpage.action?pageId=597853371") | GET | /grupos/{id}/miembrosequipo |  | Lista\[[GrupoEquipo](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoEquipo "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-GrupoEquipo")] | Listado de miembros del equipo de un Grupo. |
| [ESB \- SGI \- Grupos de investigación \- Consultar detalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853370 "/confluence/pages/viewpage.action?pageId=597853370") | GET | /grupos/{id} |  | [Grupo](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-Grupo "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292538#ESBSGIGruposdeinvestigaci%C3%B3n-Grupo") | Datos generales de un Grupo. |
| [ESB \- SGI \- Grupos de investigación \- Consultar grupos de investigación modificados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853372 "/confluence/pages/viewpage.action?pageId=597853372") | GET | /grupos/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios | Lista\[String] | Listado de Identificadores de Grupo que han sido modificados en los datos generales (tabla Grupo), en el equipo (tabla GrupoEquipo) o en las palabras clave (tabla GrupoPalabraClave).Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |

  





