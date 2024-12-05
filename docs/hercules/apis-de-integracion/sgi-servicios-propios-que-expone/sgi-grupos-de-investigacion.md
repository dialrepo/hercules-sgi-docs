# Hércules : SGI \- Grupos de investigación











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Grupo | Contiene los datos generales de un grupo de investigación. De esta entidad se pueden obtener los campos:* Nombre del grupo * Fecha de inicio * Fecha de finalización * Código * Tipo |
| GrupoEquipo | Contiene la información de las personas que forman parte del equipo del grupo de investigación. De esta entidad de puede obtener los campos:* Nombre del miembro * Apellidos del miembro * Fecha inicio de la participación * Fecha fin de la participación * Rol con el que participa * Nº de componentes grupo (contando los distintos miembros del equipo) * Nombre del investigador/a principal (personaRef con un rol que tenga el flag de "principal" a true y el "orden" igual a "PRIMARIO") |
| RolProyecto | Entidad que tiene la información sobre el rol que tiene el miembro en el equipo. |
| GrupoPalabraClave | Contiene las palabras claves del grupo de investigación |

### Modelo lógico

[CSP\-GIN \- Modelo lógico \- Documentación](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=CSP-GIN+-+Modelo+l%C3%B3gico+-+Documentaci%C3%B3n "/confluence/pages/createpage.action?spaceKey=TEMP001&title=CSP-GIN+-+Modelo+l%C3%B3gico+-+Documentaci%C3%B3n")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API")

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
| grupoId | Long | Identificador del grupo. |
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


#### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /grupos/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[Long] | Listado de Identificadores de Grupo que han sido modificados en los datos generales (tabla Grupo), en el equipo (tabla GrupoEquipo) o en las palabras claves (tabla GrupoPalabraClave)Se utilizarán los siguiente parámetros en la llamada al servicio* fechaModificacion: se le pasará la fecha a partir de la cual se quieren ver los cambios  Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |
| GET | /grupos/{id} |  | Grupo | Datos generales de un Grupo |
| GET | /grupos/{id}/miembrosequipo |  | Lista\[GrupoEquipo] | Listado de miembros del equipo de un Grupo |
| GET | /grupos/{id}/palabrasclave |  | Lista\[GrupoPalabraClave] | Listado de palabras clave de un Grupo |
| GET | /grupos/eliminados\-ids | q\+sLa query estará formada por:* fechaEliminacion: se le pasará la fecha a partir de la cual se quieren ver los proyectos eliminados o bien un rango entre las que se quiere buscar | Lista\[String] | Listado de Identificadores de Grupo que han sido eliminados (campo activo \= false) a partir de una fecha.Ejemplo1:* fechaEliminacion\=ge\="2024\-01\-01T22:00:00Z";  Ejemplo2:* fechaEliminacion\=ge\="2024\-01\-01T22:00:00Z";fechaEliminacion\=le\="2024\-12\-31T22:00:00Z" |




