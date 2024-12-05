# Hércules : IU\-PII\-0010\-0030\-001 \- Ver detalle\-modificar invención \- Datos Generales



## Formulario de datos generales de la invención

Pantalla que muestra el formulario de datos generales de una invención.

Se podrán modificar todos los datos de esta pestaña.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de datos generales de una invención | | |
| Número de invención | Numérico enteroModo consulta | Identificador único de invención autogenerado en el SGI al dar de alta la invención y NO modificable que se usará como campo de enlace con los sistemas donde sea necesario tener vinculación con las invenciones. |
| Título | TextoObligatorioModificable | Titulo de la invención. |
| Fecha comunicación | FechaObligatorioModificable | Fecha de comunicación de la invención. |
| Descripción | Texto largoModificable | Descripción de la invención. |
| Tipo de protección | SelectorTexto cortoObligatorioModificable | Tipo de protección asociada a la invención.Se cargará un listado de Tipo de protección, de los que se mostrará seleccionado el asociado actualmente a la invención, y que tendrá los siguientes valores:* + Patente 	+ Modelo de utilidad 	+ Diseño industrial 	+ Marca 	+ Secreto industrial 	+ Software 	+ Know\-how  Listado configurable en [IU\-PII\-0050\-Gestión de Tipos de protección](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0050+-+Gesti%C3%B3n+de+Tipos+de+protecci%C3%B3n&linkCreation=true&fromPageId=597852700 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0050+-+Gesti%C3%B3n+de+Tipos+de+protecci%C3%B3n&linkCreation=true&fromPageId=597852700").Será modificable en tanto en cuanto no existan aún solicitudes de protección y, existiendo las mismas, solo se podrá modificar el tipo de protección a otra de su mismo grupo de tipo protección, esto es, se podrá cambiar entre tipos de protección Industrial o entre tipos de protección Intelectual, pero no de un tipo del grupo Industrial al Intelectual y a la inversa. |
| Subtipo de protección | SelectorTexto cortoOpcionalModificable | Subtipo de protección asociada a la invención.Se cargará un listado de subtipos de protección asociados al tipo de protección que se seleccione y que será visible solo si el tipo tiene algún subtipo.Listado configurable en [IU\-PII\-0050\-Gestión de Tipos de protección](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0050+-+Gesti%C3%B3n+de+Tipos+de+protecci%C3%B3n&linkCreation=true&fromPageId=597852700 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0050+-+Gesti%C3%B3n+de+Tipos+de+protecci%C3%B3n&linkCreation=true&fromPageId=597852700"). |
| Proyecto de investigación | TextoOpcionalModificable | Proyecto de investigación asociado a o de donde procede la invención.Campo de búsqueda de proyectos en el SGI. |
| *Listado de sectores de aplicación* | | |
| Sector | TextoModificable | Nombre del sector de aplicación asociado a la invención. Listado configurable en [IU\-PII\-0080 \- Gestión de sectores de aplicación](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0080+-+Gesti%C3%B3n+de+sectores+de+aplicaci%C3%B3n&linkCreation=true&fromPageId=597852700 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0080+-+Gesti%C3%B3n+de+sectores+de+aplicaci%C3%B3n&linkCreation=true&fromPageId=597852700"). |
| Eliminar (sector de aplicación) | Icono de acción | Acción "Eliminar" una asociación concreta de la invención con un sector de aplicación. |
| Añadir sector de aplicación | Icono de acción | Acción de "Añadir" asociaciones entre la invención y sectores de aplicación. |
| *Listado de áreas de procedencia* | | |
| Niveles | TextoModificable | Concatenación de los nombres de las áreas de conocimiento que ocupan niveles superiores al área de conocimiento con la que se vincula la invención.La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada área de conocimiento a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103879312 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103879312"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y  sería de los nombres de los niveles jerárquicamente superiores al del área seleccionada, ordenados desde la raíz hasta el inmediatamente superior a ese área de conocimiento, esto es, sin incluir el nombre del área seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto.A la hora de presentar la información de las áreas de procedencia asociadas a la invención, se han de seguir las líneas definidas de manera general en la aplicación, indicadas en el apartado "Ejemplo de formulario de listado de áreas de conocimiento asociadas a una entidad" en [IU\-GEN\-0110 \- Selección de áreas de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=102073895 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=102073895").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | TextoModificable | Nombre del área de conocimiento seleccionado. Es el nombre del área con el que se relaciona directamente la invención. El nombre a mostrar se obtendrá a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103879312 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103879312").A la hora de presentar la información de las áreas de procedencia asociadas a la invención, se han de seguir las líneas definidas de manera general en la aplicación, indicadas en el apartado "Ejemplo de formulario de listado de áreas de conocimiento asociadas a una entidad" en [IU\-GEN\-0110 \- Selección de áreas de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=102073895 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=102073895").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar (área de procedencia) | Icono de acción | Acción "Eliminar" una asociación entre la invención y las áreas de conocimiento de procedencia. |
| Añadir área de procedencia | Icono de acción | Acción de "Añadir" asociaciones entre la invención y las áreas de conocimiento de procedencia. |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas a la invención.El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md"). |
| Comentarios | Texto largoOpcionalModificable | Comentarios a añadir acerca de la invención. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (proyecto) | A través del botón Buscar se dará acceso al buscador común a todo el SGI [IU\-GEN\-0030 \- Búsqueda de Proyectos Investigación](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__revisar+-+IU-GEN-0030+-+B%C3%BAsqueda+de+Proyectos+Investigaci%C3%B3n&linkCreation=true&fromPageId=597852700 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__revisar+-+IU-GEN-0030+-+B%C3%BAsqueda+de+Proyectos+Investigaci%C3%B3n&linkCreation=true&fromPageId=597852700") para seleccionar un proyecto a asociar a la invención. |  | CSP\-PRO\-MOD\-V |
| Añadir sector de aplicación | Muestra la pantalla [IU\-PII\-0011\-001 \- Añadir sector de aplicación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-001-anadir-sector-de-aplicacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-001-anadir-sector-de-aplicacion.md").Podrá añadirse más de un sector de aplicación y al menos debe estar asociado uno. |  | PII\-INV\-E |
| Eliminar (sector de aplicación) | Elimina la asociación entre el sector de aplicación y la invención. |  | PII\-INV\-E |
| Añadir área de procedencia | Muestra la pantalla común al SGI [IU\-GEN\-0110 \- Selección de áreas de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0110-seleccion-de-areas-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0110-seleccion-de-areas-de-conocimiento.md"). Podrá seleccionarse más de un área de conocimiento a asociar como área de procedencia de la invención y al menos debe estar asociada una. |  | No se necesita permiso para mostrar la pantalla de búsqueda de áreas de conocimiento |
| Eliminar (área de procedencia) | Elimina la asociación entre el área de conocimiento de procedencia de la invención y la invención. |  | PII\-INV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Guarda los cambios realizados en la invención.Al guardar la invención, se guardará la información de todos los formularios de la pantalla de modificación de la invención.Validaciones de obligatoriedad en este formulario específico:* Título * Fecha de comunicación * Descripción * Tipo de protección * Subtipo de protección (si existe) * Al menos debe estar asociado un sector de aplicación * Al menos debe estar asociada un área de procedencia  Si se han modificado otras pestañas de la invención, se han de tener en cuenta a la hora de guardar las restricciones descritas en cada una de ellas además de las específicas de esta pestaña descritas aquí. |  | PII\-INV\-E |
| Cancelar | Retorna al listado de invenciones sin salvar los posibles cambios.Al cancelar la modificación, se descarta la información modificada o introducida (si estamos dando de alta por primera vez) de todo los formularios de la pantalla invención. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




