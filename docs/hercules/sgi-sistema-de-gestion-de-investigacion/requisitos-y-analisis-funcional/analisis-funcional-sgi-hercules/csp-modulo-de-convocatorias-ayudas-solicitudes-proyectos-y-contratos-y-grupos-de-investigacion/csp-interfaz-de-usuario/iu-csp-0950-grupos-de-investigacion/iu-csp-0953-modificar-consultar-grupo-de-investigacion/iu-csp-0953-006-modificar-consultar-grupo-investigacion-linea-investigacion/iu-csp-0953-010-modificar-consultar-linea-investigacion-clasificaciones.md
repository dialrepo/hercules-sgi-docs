# Hércules : IU\-CSP\-0953\-010 \- Modificar\-consultar línea investigación \- Clasificaciones



## Formulario Modificar/consultar línea investigación \- Clasificaciones

Formulario de modificación/consulta de una línea de investigación vinculada a un grupo, apartado de "Clasificaciones", que muestra el listado de clasificaciones de la línea de investigación. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevas clasificaciones, modificar o eliminar clasificaciones a la línea de investigación.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de clasificaciones de la línea de investigación, extraídas de la tabla "grupo línea clasificación". Una línea de investigación podrá estar asociada a más de una clasificación. | | |
| Clasificación | Texto | Nombre de la clasificación (padre). Será el nombre de la raíz del árbol de la que cuelga el elemento final, esto es, el nivel seleccionado, al que pertenece el elemento de clasificación al que se vincula el proyecto en la tabla "grupo línea clasificación". El nombre a mostrar se obtendrá a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Niveles | Texto | Concatenación de los nombres de los elementos de clasificación que ocupan niveles superiores al elemento con el que se vincula el proyecto (el referenciado en la tabla "grupo línea clasificación") .La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada clasificación a partir de [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y sería de los nombres de los niveles jerárquicamente superiores al de la clasificación seleccionada, ordenados desde la raíz hasta el inmediatamente superior a esa clasificación, esto es, sin incluir el nombre de la clasificación seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto. Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | Texto | Nombre del elemento de clasificación seleccionado. Es el nombre del elemento de clasificación con el que se relaciona directamente la línea de investigación en la tabla "grupo línea clasificación". El nombre a mostrar se obtendrá a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir clasificación | Icono de acción | Acción "Añadir clasificación" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la relación de la clasificación con la línea de investigación | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir clasificación | Muestra la pantalla "Selección de clasificaciones" | Muestra la pantalla común [IU\-GEN\-0120 \- Selección de clasificaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412"). Podrán seleccionarse más de una clasificación, tanto dentro de un mismo árbol (clasificación) como de árboles (clasificaciones) diferentes. No existirá ninguna restricción por "Tipo de clasificación", es decir, estarán disponibles todas las clasificaciones disponibles en a tabla "clasificación" (tabla del módulo ESB) | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la Línea de investigación con la información introducida en el formulario.Al guardar una línea de investigación se guarda la información de todos los apartados de definición de la línea (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a las clasificaciones) | Se realizarán las creaciones o eliminaciones de los registros en la tabla "grupo línea clasificación". | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Líneas de investigación sin salvar los posibles cambios.Al cancelar una línea se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




