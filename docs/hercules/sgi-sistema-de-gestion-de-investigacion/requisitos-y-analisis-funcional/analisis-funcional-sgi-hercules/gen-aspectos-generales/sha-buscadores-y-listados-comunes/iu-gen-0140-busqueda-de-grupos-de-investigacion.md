# Hércules : IU\-GEN\-0140 \- Búsqueda de grupos de investigación







## Formulario de Búsqueda de grupos de investigación

Pantalla emergente que muestra un formulario que, mediante unos filtros de búsqueda, muestra un listado de los grupos de investigación registrados en el sistema que cumplen las condiciones que se presentan. 

Será el buscador de grupos de investigación común a todo el SGI que utilizarán el resto de módulos de la aplicación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda de grupos de investigación. La búsqueda llevará implícito el filtro que limite los grupos de investigación a los activos (campo "activo" a "true"). | | |
| Nombre | Texto largoOpcional | Campo para introducir la cadena de texto por la que se aplicará la búsqueda sobre el campo "nombre" de la tabla "grupo investigación" |
| Código | Texto cortoOpcional | Código alfanumérico generado automáticamente por el SGI al crear el grupo (aunque puede ser modificado por el ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador.Filtro a aplicar sobre el campo "código" de la tabla "grupo investigación" |
| Código identificación SGE | Texto cortoOpcional | Código de identificación del proyecto económico del SGE con el que se vincula el grupo de investigación SGI. Podrá ser alfanumérico.Filtro a aplicar sobre el campo "identificador SGE" de la tabla "grupo investigación". |
| Fecha inicio desde | FechaOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de inicio del grupo (campo "fecha inicio" de la tabla "grupo investigación").Se comprobará que la "fecha inicio" de la tabla "grupo investigación" sea mayor o igual a esta fecha. |
| Fecha inicio hasta | FechaOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de inicio del grupo (campo "fecha inicio" de la tabla "grupo investigación").Se comprobará que la "fecha inicio" de la tabla "grupo investigación" sea menor o igual a esta fecha. |
| Miembro de equipo | BuscadorOpcional | A través del botón Buscar se dará acceso al buscador de personas común al SGI, [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). Las condiciones de invocación a este buscador se recogen en  la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre el campo "personaRef" de la tabla "grupo equipo". |
| Listado de resultados (grupos de investigación) \- Al entrar en la pantalla, aparecerá ya el listado de todos los grupos de investigación registrados cargado por defecto (campo "activo" a true) | | |
| Nombre | Texto largo | Nombre del grupo de investigación.Se corresponde con el campo "nombre" de la tabla "grupo investigación". |
| Investigador/a principal | Texto | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") del investigador/a principal, es decir, de todos los miembros del grupo de investigación (tabla "grupo equipo") aquel que actualmente tiene el "rol" con el flag "principal" a true y con el campo "orden" igual a "primario". En caso de existir mas de una persona, se mostrará el que tenga el mayor porcentaje de dedicación al grupo (campo "participación" de la tabla "grupo equipo"). Y en caso de coincidir se mostrará el primero recuperado. |
| Código | Texto corto | Código del grupo de investigaciónSe corresponde con el campo "código" de la tabla "grupo investigación". |
| Fecha inicio | Fecha | Fecha de inicio del grupo de investigación. Campo "fecha inicio"  de la tabla "grupo investigación". |
| Fecha fin | Fecha | Fecha de finalización del grupo de investigación. Campo "fecha fin"  de la tabla "grupo investigación". |
| Tipo grupo | Texto corto | Nombre del Tipo de grupo actual, extraído del enumerado "Tipo grupo" de la tabla "Grupo tipo", a partir del campo "tipo" de la tabla "grupo investigación" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar miembro | Pantalla genérica de búsqueda de personas. | Muestra la pantalla [IU\-GEN\-0060 \- Búsqueda de personas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453") que hará uso del requisito de integración[REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos").  Se le deberán pasar a este buscador el listado de colectivos (campo "colectivo ref")  recuperados de la tabla "rol proyecto colectivo" que estén asociados a cualquier rol  activo (campo "activo" a "true") de la tabla "rol proyecto". |  |
| Buscar | Aplica los filtros introducidos sobre la lista de Grupos de investigación mostrando los que cumplen las condiciones. | Aplica la búsqueda sobre la tabla "grupo investigación" teniendo en cuenta los filtros introducidos en el formulario y conllevando el filtro implícito sobre el campo "activo" de forma que solo se consideren los grupos con el campo "activo" a "true". |  |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Grupos de investigación. |  |  |
| Seleccionar | Asigna la referencia del Grupo de investigación a la entidad desde la que se ha solicitado su asignación. |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Cancelar | No se realiza ninguna acción, se cierra el formulario sin devolver ningún dato al formulario de invocación. |  |  |

### Interfaces y casos de uso relacionados





















### Permisos



| Permiso acceso a la pantalla |
| --- |
| Los que correspondan en cada gestión específica |







