# Hércules : IU\-CSP\-0406\-031 \- Modificar proyecto \- Áreas conocimiento



## Formulario Modificar proyecto \- Áreas conocimiento

Formulario para añadir o modificar las áreas de conocimiento (o rama de conocimiento) bajo las que se clasifica un proyecto. El primer nivel de las áreas de conocimiento son las ramas de conocimiento.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas de conocimiento relacionadas con el proyecto. Listado extraído a partir de la información de la tabla "proyecto área". Un proyecto podrá estar asociado a más de un área. | | |
| Niveles | Texto | Concatenación de los nombres de las áreas de conocimiento que ocupan niveles superiores al área de conocimiento con la que se vincula el proyecto (la referenciada en la tabla "proyecto área) .La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada área de conocimiento a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y  sería de los nombres de los niveles jerárquicamente superiores al del área seleccionada, ordenados desde la raíz hasta el inmediatamente superior a ese área de conocimiento, esto es, sin incluir el nombre del área seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto. Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | Texto | Nombre del área de conocimiento seleccionado. Es el nombre del área con el que se relaciona directamente el proyecto en la tabla  "proyecto área".El nombre a mostrar se obtendrá a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la área de conocimiento del proyecto | Elimina el registro del listado.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir área conocimiento | Muestra la pantalla "Selección área de conocimiento" | Se muestra la pantalla común [IU\-GEN\-0110 \- Selección de áreas de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0110-seleccion-de-areas-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0110-seleccion-de-areas-de-conocimiento.md"). Podrá seleccionarse más de un área.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | No se necesita permiso para mostrar la pantalla de búsqueda de áreas de conocimiento |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todas las pestañas de la pantalla. | Por cada área de conocimiento del listado se creará un registro en la tabla "ProyectoArea".Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




