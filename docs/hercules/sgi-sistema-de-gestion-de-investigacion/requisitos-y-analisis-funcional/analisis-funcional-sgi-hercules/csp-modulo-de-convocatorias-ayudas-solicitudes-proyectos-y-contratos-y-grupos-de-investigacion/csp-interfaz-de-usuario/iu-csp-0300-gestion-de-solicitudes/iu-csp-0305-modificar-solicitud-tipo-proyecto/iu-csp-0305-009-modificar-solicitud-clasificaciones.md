# Hércules : IU\-CSP\-0305\-009 \- Modificar solicitud \- Clasificaciones



## Formulario Modificar solicitud \- Clasificaciones

Formulario para añadir los códigos de clasificación en una solicitud de tipo "proyecto".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| El apartado "Clasificaciones" y, en general, todo del bloque "Datos proyecto" solamente estará visible cuando el campo "formulario solicitud" de la tabla "solicitud" toma valor "proyecto". | | |
| Listado de clasificaciones de la solicitud. Se extrae de la tabla "solicitud proyecto clasificación". Una solicitud puede estar asociada a más de una clasificación | | |
| Clasificación | Texto | Nombre de la clasificación (padre). Será el nombre de la raíz del árbol de la que cuelga el elemento final, esto es, el nivel seleccionado, al que pertenece el elemento de clasificación al que se vincula la solicitud en la tabla "solicitud proyecto clasificación". El nombre a mostrar se obtendrá a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Niveles | Texto | Concatenación de los nombres de los elementos de clasificación que ocupan niveles superiores al elemento con el que se vincula la solicitud (el referenciado en la tabla "solicitud proyecto clasificación") .La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada clasificación a partir de [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y sería de los nombres de los niveles jerárquicamente superiores al de la clasificación seleccionada, ordenados desde la raíz hasta el inmediatamente superior a esa clasificación, esto es, sin incluir el nombre de la clasificación seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto. Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | Texto | Nombre del elemento de clasificación seleccionado. Es el nombre del elemento de clasificación con el que se relaciona directamente la solicitud en la tabla  "solicitud proyecto clasificación". El nombre a mostrar se obtendrá a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md"). Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la vinculación de la solicitud con la clasificación | Elimina el registro de "solicitud proyecto clasificación".Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Añadir clasificación | Muestra la pantalla "Selección de clasificaciones" | Muestra la pantalla común [IU\-GEN\-0120 \- Selección de clasificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0120-seleccion-de-clasificaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0120-seleccion-de-clasificaciones.md"). Podrá seleccionarse más de una clasificación, tanto dentro de un mismo árbol como de árboles (clasificaciones) diferentes. No existirá ninguna restricción por "Tipo de clasificación", es decir, estarán disponibles todas las clasificaciones disponibles en a tabla "clasificación" (tabla del módulo ESB).Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todas las pestañas de la pantalla. | Por cada código del listado se creará un registro en la tabla "Solicitud Proyecto Clasificación", referenciando al código de clasificación correspondiente de la tabla "clasificaciones".Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Cancelar | Retorna al listado de Solicitudes sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




