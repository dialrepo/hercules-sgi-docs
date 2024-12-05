# Hércules : IU\-CSP\-0305\-008 \- Modificar solicitud \- Áreas conocimiento



## Formulario Modificar solicitud \- Áreas conocimiento

Formulario para añadir las áreas de conocimiento (o rama de conocimiento) a una solicitud de proyecto. El primer nivel de las áreas de conocimiento son las ramas de conocimiento.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| El apartado "Áreas conocimiento" y, en general, todo del bloque "Datos proyecto" solamente estará visible si el campo "formulario solicitud" de la tabla "solicitud" toma valor "proyecto". | | |
| Listado de áreas de conocimiento a las que se vincula la solicitud de proyecto. Listado extraído a partir de la información de la tabla "solicitud proyecto área". Una solicitud puede estar asociada a más de un área de conocimiento. | | |
| Niveles | Texto | Concatenación de los nombres de las áreas de conocimiento que ocupan niveles superiores al área de conocimiento con la que se vincula la solicitud (la referenciada en la tabla "solicitud proyecto área") . La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada área de conocimiento a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y  sería de los nombres de los niveles jerárquicamente superiores al del área seleccionada, ordenados desde la raíz hasta el inmediatamente superior a ese área de conocimiento, esto es, sin incluir el nombre del área seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto. Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | Texto | Nombre del área de conocimiento seleccionado. Es el nombre del área con el que se relaciona directamente la solicitud en la tabla  "solicitud proyecto área".El nombre a mostrar se obtendrá a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la vinculación de la solicitud con el área de conocimiento | Elimina el registro del listado y de la tabla "solicitud proyecto área".Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Añadir área conocimiento | Muestra la pantalla "Selección de áreas de conocimiento" | Muestra la pantalla [IU\-GEN\-0110 \- Selección de áreas de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0110-seleccion-de-areas-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0110-seleccion-de-areas-de-conocimiento.md"). Podrá seleccionarse más de un área.Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todas las pestañas de la pantalla. | Por cada área de conocimiento del listado se creará un registro en la tabla "Solicitud proyecto área".Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Cancelar | Retorna al listado de Solicitudes sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




