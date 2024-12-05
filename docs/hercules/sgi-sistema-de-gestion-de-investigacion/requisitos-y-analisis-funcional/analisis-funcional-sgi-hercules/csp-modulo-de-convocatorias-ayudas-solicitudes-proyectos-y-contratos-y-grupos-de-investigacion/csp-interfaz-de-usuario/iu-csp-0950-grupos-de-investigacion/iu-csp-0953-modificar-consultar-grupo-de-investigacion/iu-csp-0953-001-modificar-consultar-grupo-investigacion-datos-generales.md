# Hércules : IU\-CSP\-0953\-001 \- Modificar\-consultar grupo investigación \- Datos generales



## Formulario Modificar/consultar grupo investigación \- Datos generales

Formulario de modificación/consulta de un grupo de investigación, apartado de Datos generales. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán realizar cambios.

Si el usuario es un ACT\-CSP\-005\-Visor se mostrarán todos los campos en modo consulta y no podrá realizar modificaciones. El botón Guardar estará deshabilitado.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). No podrá realizar modificaciones. El botón Guardar estará deshabilitado.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de datos generales. | | |
| Nombre | Texto largoObligatorio | Nombre por el que se conoce al grupo de investigación.Campo "nombre" de la tabla "grupo".Será un campo obligatorio. |
| Solicitud | Texto cortoModo consulta | En caso que el grupo se cree a partir de la concesión de una Solicitud registrada en el SGI, se muestra el campo "código registro interno" de la tabla "solicitud".Se mostrará en modo consulta. |
| Código | Texto cortoObligatorio | Campo "código" de la tabla "grupo" (en la edición se muestra lo que este almacenado en la base de datos y no se re calcula)Será un campo obligatorio y podrá ser modificado por el ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor. |
| Código de identificación SGE | BuscadorTextoOpcional | Muestra la pantalla [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103898287 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103898287") que permitirá la búsqueda de proyecto económicos del SGE. Desde esa misma pantalla también se podrá solicitar el alta del proyecto económico en caso de no existir [IU\-CSP\-0406\-021\-003\- Solicitar alta de proyecto económico desde Grupo de investigación SGI](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-003-solicitar-alta-de-proyecto-economico-desde-grupo-de-investigacion-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-003-solicitar-alta-de-proyecto-economico-desde-grupo-de-investigacion-sgi.md")Campo "proyecto SGE ref" de la tabla "grupo". |
| Fecha inicio | FechaObligatorio | Fecha de inicio del grupo de investigación.Campo "fecha inicio" de la tabla "grupo".Será un campo obligatorio. |
| Fecha fin | FechaOpcional | Fecha de fin del grupo de investigación.Campo "fecha fin" de la tabla "grupo".Será un campo opcional. |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas al grupo.Se recuperan de la tabla "grupo palabra clave"El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md"). |
| Tipo grupo | SelectorTexto cortoOpcional | Indica el grado de madurez del grupo de investigación.Desplegable con los valores del enumerado "Tipo grupo":* Emergente * Consolidado * Precompetitivo * Grupo de alto rendimiento  Campo "tipo" de la tabla "grupo". |
| Histórico Tipo grupo: Esta tabla solo se mostrará en caso de existir más de un registro en la tabla "grupo tipo" asociados al grupo. Los registros se mostrarán ordenados por el campo fecha inicio, de más a menos reciente. | | |
| Tipo grupo | Texto corto | Se corresponde con el campo "tipo grupo" de la tabla "grupo tipo". |
| Fecha inicio | Fecha | Se corresponde con el campo "fecha inicio" de la tabla "grupo tipo". |
| Fecha fin | Fecha | Se corresponde con el campo "fecha fin" de la tabla "grupo tipo". |
|  | | |
| Grupo especial de investigación | SelectorBooleanoOpcional | Indica si el grupo de investigación en un "Grupo especial de investigación".Podrá tomar los valores: Si o No.Campo "especial investigación" de la tabla "grupo". |
| Histórico Grupo especial de investigación: Esta tabla solo se mostrará en caso de existir más de un registro en la tabla "grupo especial investigación" asociados al grupo. Los registros se mostrarán ordenados por el campo fecha inicio, de más a menos reciente. | | |
| Grupo especial de investigación | Texto corto | Se corresponde con el campo "especial investigación" de la tabla "grupo especial investigación". Si el valor es false se mostrará en la pantalla "No" y si el valor es true se mostrará en la pantalla "Sí" |
| Fecha inicio | Fecha | Se corresponde con el campo "fecha inicio" de la tabla "grupo especial investigación". |
| Fecha fin | Fecha | Se corresponde con el campo "fecha fin" de la tabla "grupo especial investigación". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (proyecto económico) | Muestra la pantalla de búsqueda de proyecto económicos | Muestra la pantalla [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103898287 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103898287") que permitirá la búsqueda de proyecto económicos del SGE. Desde esa misma pantalla también se podrá solicitar el alta del proyecto económico en caso de no existir [IU\-CSP\-0406\-021\-003\- Solicitar alta de proyecto económico desde Grupo de investigación SGI](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-003-solicitar-alta-de-proyecto-economico-desde-grupo-de-investigacion-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-003-solicitar-alta-de-proyecto-economico-desde-grupo-de-investigacion-sgi.md") | No se necesita permiso para buscar proyectos económicos |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Grupo con la información introducida en el formulario.Al guardar un grupo se guardar la información de todos los apartados de definición del grupo (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los Datos generales) | Se modifican las siguientes tablas:* La tabla "grupo" con los datos "nombre", "fecha inicio", "fecha fin", "proyecto SGE ref" y "código". Se comprobará que el campo "código" sea único en la tabla "grupo" entre los grupos activos. * Si se modifica el valor del campo "fecha inicio" 	+ Se deberán buscar todos los miembros del grupo (tabla "grupo equipo") que tengan una fecha de inicio de participación en el grupo (campo "fecha inicio" de la tabla  "grupo equipo") menor que la nueva fecha de inicio del grupo. Si existen miembros que cumplan esta condición no se permitirá el cambio de la fecha de inicio del grupo, mostrando un mensaje de validación "La fecha de inicio del grupo provoca inconsistencias en las fechas de participación de los miembros" (es decir, no se debe permitir que queden miembros del grupo fuera del periodo de vigencia del grupo) * Si se modifica el valor del campo "fecha fin" ya sea pasando a estar informado si no lo estaba previamente o modificando su valor previo: 	+ Se deberán buscar todos los miembros del grupo (tabla "grupo equipo") que tengan una fecha de fin de participación en el grupo (campo "fecha fin" de la tabla  "grupo equipo") mayor que la nueva fecha fin del grupo. Si existen miembros que cumplan esta condición no se permitirá el cambio de la fecha de fin del grupo, mostrando un mensaje de validación "La fecha de fin del grupo provoca inconsistencias en las fechas de participación de los miembros" (es decir, no se debe permitir que queden miembros del grupo fuera del periodo de vigencia del grupo) * si se modifica el valor del campo "Grupo especial de investigación": 	+ si la fecha actual es mayor al campo "fecha inicio" del campo "especial investigación" se creará un registro en la tabla "grupo especial investigación" con la "fecha inicio" igual a la fecha actual, "fecha fin" a null, el campo "especial investigación" el seleccionado por el usuario y "grupo id" el identificador del grupo. Con el identificador devuelto en esta creación se actualizará el grupo para añadirle el campo "especial investigación" creado. Se actualizará el que habría para ponerle la "fecha fin" un día antes al día actual 	+ si la fecha actual es igual a la del campo "fecha inicio" del campo "especial investigación" se actualizará el registro en la tabla "grupo especial investigación" para actualizar el valor del campo "especial investigación" (No se creará un nuevo histórico de estado, sino que se actualizará el valor del campo en el estado actual, este caso se da cuando en el mismo día cambian el valor mas de una vez). * si se modifica el valor del campo "Tipo grupo": 	+ si la fecha actual es mayor al campo "fecha inicio" del campo "tipo" se creará un registro en la tabla "grupo tipo" con la "fecha inicio" igual a la fecha actual, "fecha fin" a null, el campo "tipo grupo" el seleccionado por el usuario y "grupo id" el identificador del grupo. Con el identificador devuelto en esta creación se actualizará el grupo para añadirle el campo "tipo" creado. Se actualizará el que habría para ponerle la "fecha fin" un día antes al día actual 	+ si la fecha actual es igual a la del campo "fecha inicio" del campo "tipo" se actualizará el registro en la tabla "grupo tipo" para actualizar el valor del campo "tipo grupo" (No se creará un nuevo histórico del campo, sino que se actualizará el valor del campo en el estado actual, este caso se da cuando en el mismo día cambian el valor mas de una vez). * por cada palabra clave añadida/eliminada se creará/eliminará de la tabla "grupo palabra clave". En caso de ser un nueva palabra clave, se creará primero la palabra clave en el diccionario de palabras clave del SGI invocando al método definido dentro del Diseño [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO") (POST /palabras\-clave). | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




