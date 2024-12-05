# Hércules : CSP\-GIN \- Servicios API



#### Definición de los objetos

##### Grupo



**GrupoInput** Ampliar origen



```
{
	"nombre": "Grupo investigación 1",
	"fechaInicio": "2021-10-07T23:00:00Z",
	"fechaFin": "2022-01-01T22:59:59Z",
	"proyectoSgeRef": "34123",
	"solicitudId": null,
	"codigo": "U006-1",
	"tipo": "EMERGENTE",		// EMERGENTE, CONSOLIDADO, PRECOMPETITIVO, ALTO_RENDIMIENTO
	"especialInvestigacion": true,
 	"departamentoOrigenRef": "U006"
 }
```




**GrupoOutput** Ampliar origen



```
{
	"id": 1,
	"nombre": "Grupo investigación 1",
	"fechaInicio": "2021-10-07T23:00:00Z",
	"fechaFin": "2022-01-01T22:59:59Z",
	"proyectoSgeRef": "34123",
	"solicitudId": null,
	"codigo": "U006-1",
	"tipo": "EMERGENTE",
	"especialInvestigacion": true,
	"activo": true
}
```




**GrupoDto** Ampliar origen



```
{
	"id": 4,
	"nombre": "Grupo investigación 4",
	"fechaInicio": "2022-02-28T23:00:00Z",
	"fechaFin": "2023-04-29T22:00:00Z"
}
```


##### GrupoEquipo



**GrupoEquipoInput** Ampliar origen



```
{
	"personaRef": "22932567",
	"fechaInicio": "2021-10-07T23:00:00Z",
	"fechaFin": "2022-01-01T22:59:59Z",
	"rolId": 1,
	"dedicacion": "COMPLETA", 	// COMPLETA, PARCIAL
	"participacion": 100.00
}
```




**GrupoEquipoOutput** Ampliar origen



```
{
	"id": 16,
	"personaRef": "22932567",
	"fechaInicio": "2021-10-07T23:00:00Z",
	"fechaFin": "2022-01-01T22:59:59Z",
	"rol": {
		 "id": 1,
		 "nombre": "Investigador/a principal"
         "abreviatura": "IP",
         "rolPrincipal": true,
         "orden": "PRIMARIO",
         "equipo": "INVESTIGACION",
         "activo": true  
     },
	"dedicacion": "COMPLETA",
	"participacion": 100.00
}
```




**GrupoEquipoDto** Ampliar origen



```
{
	"id": 23,
	"personaRef": "22932567",
	"fechaInicio": "2022-02-28T23:00:00Z",
	"fechaFin": null,
	"participacion": 100.00
}
```


##### GrupoLineaClasificacion



**GrupoLineaClasificacionInput** Ampliar origen



```
{
	"grupoLineaInvestigacionId": 1,
	"clasificacionRef": "666"
}
```




**GrupoLineaClasificacionOutput** Ampliar origen



```
{
	"id": 1,
	"clasificacionRef": "666"
}
```


##### GrupoPalabraClave



**GrupoPalabraClaveInput** Ampliar origen



```
{
	"palabraClaveRef": "palabra"
}
```




**GrupoPalabraClaveOutput** Ampliar origen



```
{
	"id": 1,
	"palabraClaveRef": "palabra"
}
```


##### LineaInvestigacion



**LineaInvestigacionInput** Ampliar origen



```
{
	"nombre": "Psicología Laboral u Organizacional"
}
```




**LineaInvestigacionOutput** Ampliar origen



```
{
	"id": 1,
	"nombre": "Psicología Laboral u Organizacional",
	"activo": true
}
```


#### Servicios

##### Grupo



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /grupos/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[Long] | CSP\-GIN\-E, CSP\-GIN\-V | Listado de Identificadores de Grupo que han sido modificados en los datos generales (tabla Grupo), en el equipo (tabla GrupoEquipo) o en las palabras claves (tabla GrupoPalabraClave)Se utilizarán los siguiente parámetros en la llamada al servicio* fechaModificacion: se le pasará la fecha a partir de la cual se quieren ver los cambios  Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |
| GET | /grupos | q \+ s | Lista\[GrupoOutput] | CSP\-GIN\-PRC\-V, CSP\-SOL\-C, CSP\-SOL\-E, CSP\-SOL\-V, CSP\-SOL\-INV\-C, CSP\-SOL\-INV\-ER | Listado de grupos (sólo devuelve los activos) |
| POST | /grupos | GrupoInput |  | CSP\-GIN\-C | Crea un grupo |
| GET | /grupos/todos | q \+ s | Lista\[GrupoOutput] | CSP\-GIN\-B, CSP\-GIN\-E, CSP\-GIN\-R, CSP\-GIN\-V | Listado de grupos (devuelve todos) |
| GET | /grupos/{id} |  | GrupoOutput | CSP\-GIN\-E, CSP\-GIN\-V, CSP\-SOL\-C, CSP\-SOL\-E, CSP\-SOL\-INV\-C | Detalle del grupo |
| HEAD | /grupos/{id} |  | HTTP 200 / HTTP 204 | CSP\-GIN\-E, CSP\-GIN\-V | Comprueba si existe el grupo |
| PUT | /grupos/{id} | GrupoInput | GrupoOutput | CSP\-GIN\-E | Modifica el grupo (datos generales) |
| PATCH | /grupos/{id}/activar |  | GrupoOutput | CSP\-GIN\-R | Activa el grupo |
| HEAD | /grupos/{id}/codigoduplicado | grupoId (opcional)codigo | HTTP 200 / HTTP 204 | CSP\-GIN\-C, CSP\-GIN\-E, CSP\-SOL\-E | Comprueba si ya existe un grupo (u otro grupo si se indica un grupoId) con el código indicado |
| PATCH | /grupos/{id}/desactivar |  | GrupoOutput | CSP\-GIN\-B | Desactiva el grupo |
| GET | /grupos/{id}/nextcodigo | departamentoRef | String | CSP\-GIN\-C, CSP\-GIN\-E, CSP\-SOL\-E | Siguiente código de grupo disponible para el departamento |
|  |  |  |  |  |  |
| GET | /grupos/{id}/investigadoresprincipales |  | Lista\[String] | CSP\-EJEC\-V, CSP\-EJEC\-E, CSP\-EJEC\-INV\-VR | Lista de investigadores principales del grupo en el momento actual. |
| GET | /grupos/{id}/investigadoresprincipalesmaxparticipacion |  | Lista\[String] | CSP\-GIN\-V, CSP\-GIN\-E, CSP\-GIN\-PRC\-V | Lista de investigadores principales con mayor participación del grupo en el momento actual. |
| GET | /grupos/{id}/miembrosequipo | q \+ s | Lista\[GrupoEquipoOutput] | CSP\-GIN\-V, CSP\-GIN\-E | Listado de miembros del grupo |
| GET | /grupos/{id}/palabrasclave | q \+ s | Lista\[GrupoPalabraClaveOutput] | CSP\-GIN\-E, CSP\-GIN\-V, CSP\-GIN\-C | Listado de palabras clave del grupo |
| PATCH | /grupos/{id}/palabrasclave | Lista\[GrupoPalabraClaveInput] | Lista\[GrupoPalabraClaveOutput] | CSP\-GIN\-E, CSP\-GIN\-V, CSP\-GIN\-C | Actualiza la lista de palabras clave del grupo con la lista enviada |
| HEAD | /grupos/grupo\-baremable/{grupoId}/{anio} |  | HTTP 200 / HTTP 204 | CSP\-PRO\-PRC\-V, SCOPE\_sgi\-csp | Comprueba si el grupo es baremable en el año indicado |
| GET | /grupos/baremables/{anio} |  | Lista\[GrupoDto] | CSP\-PRO\-PRC\-V, SCOPE\_sgi\-csp | Lista de grupos que son baremables en el año indicado |

  


##### GrupoEquipo



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /gruposequipos | GrupoInput |  | CSP\-GIN\-C, CSP\-GIN\-E | Crea un miembro del equipo del grupo |
| GET | /gruposequipos/{id} |  | GrupoEquipoOutput | CSP\-GIN\-E, CSP\-GIN\-V | Recupera un miembro del equipo del grupo |
| PUT | /gruposequipos/{id} | GrupoInput | GrupoEquipoOutput | CSP\-GIN\-E | Actualiza un miembro del equipo del grupo |
| HEAD | /gruposequipos/baremables/{grupoId}/{anio} |  | Lista\[GrupoEquipoOutput] | CSP\-PRO\-PRC\-V, SCOPE\_sgi\-csp | Listado de miembros del equipo del grupo baramables en el año indicado |
| GET | /gruposequipos/persona\-baremable/{personaRef}/{anio} |  | HTTP 200 / HTTP 204 | CSP\-PRO\-PRC\-V, SCOPE\_sgi\-csp | Comprueba si la persona es baremable en el año indicado |

##### GrupoLineaInvestigacion



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |
|  |  |  |  |  |  |
| GET | /gruposlineasinvestigacion/{id}/clasificaciones | q \+ s | Lista\[GrupoLineaClasificacionOutput] | CSP\-GIN\-E, CSP\-GIN\-V | Listado de clasificaciones de una linea investigación de un grupo |

##### GrupoLineaClasificacion



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /gruposlineasclasificaciones | GrupoLineaClasificacionInput | GrupoLineaClasificacionOutput | CSP\-GIN\-E | Añade una clasificación a la linea investigación de un grupo |
| DELETE | /gruposlineasclasificaciones/{id} |  |  | CSP\-GIN\-E | Elimina una clasificación de una linea investigación de un grupo |

##### LineaInvestigacion



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /lineasinvestigacion | LineaInvestigacionInput |  | CSP\-LIN\-C | Crea una linea de investigación |
| GET | /lineasinvestigacion | q \+ s | Lista\[LineaInvestigacionOutput] | CSP\-LIN\-C, CSP\-LIN\-E, CSP\-LIN\-B | Listado de lineas de investigación (sólo devuelve los activos) |
| GET | /lineasinvestigacion/todos | q \+ s | Lista\[LineaInvestigacionOutput] | CSP\-LIN\-C, CSP\-LIN\-E, CSP\-LIN\-B, CSP\-LIN\-R | Listado de lineas de investigación (devuelve todos) |
| GET | /lineasinvestigacion/{id} |  | LineaInvestigacionOutput |  | Recupera una linea de investigación |
| PUT | /lineasinvestigacion/{id} | LineaInvestigacionInput | LineaInvestigacionOutput | CSP\-LIN\-E | Actualiza una linea de investigación |
| PATCH | /lineasinvestigacion/{id}/desactivar |  | LineaInvestigacionOutput | CSP\-LIN\-B | Desactiva la linea de investigación |
| PATCH | /lineasinvestigacion/{id}/reactivar |  | LineaInvestigacionOutput | CSP\-LIN\-R | Activa la linea de investigación |

  


  
  





