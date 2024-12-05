# Hércules : IU\-CSP\-0402\-001 \- Añadir\-modificar relación



## Formulario Añadir/modificar relación

Formulario para añadir una nueva relación al proyecto o modificar los datos de una relación ya creada. Un proyecto puede relacionarse con otros proyectos, convocatorias o invenciones registradas en  correspondiente módulo del SGI.



| **Caso de uso Añadir****Caso de uso Modificar** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario añadir entidad relacionada con el proyecto | | |
| Relación con | SelectorTexto cortoObligatorio | Listado con los siguientes valores:* Proyecto * Convocatoria * Invención (sólo se muestra si el usuario tiene el permiso PII\-INV\-MOD\-V)  Si se accede a este formulario en modo edición, el campo se mostrará en modo consulta. |
| Objeto relacionado | ReferenciaTexto cortoObligatorio | Título del objeto relacionado con el proyecto. Un proyecto puede relacionarse con otros proyectos y convocatorias registrados en sus correspondientes módulos del SGI o bien con una invención registrada en su propio módulo. Internamente se almacenará el identificador del objeto, no el título. Habrá que hacer una consulta al detalle del objeto para obtener su título.Si se accede a este formulario en modo edición, el campo se mostrará en modo consulta. |
| Buscar | Botón | Acción "Buscar". El buscador a invocar será el asociado a la entidad seleccionada en el selector "relación con"Si se accede a este formulario en modo edición, no estará habilitada la búsqueda. |
| Observaciones | Texto largo | Campo de texto libre para introducir cualquier aclaración sobre la relación |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar convocatoria | Muestra la pantalla de búsqueda para seleccionar el objeto relacionado en función del valor seleccionado en el campo "Relación con" | La búsqueda se realizará a través del buscador de convocatorias [IU\-GEN\-0050 \- Búsqueda de convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md"), común a todo el SGI.Si se accede a este formulario en modo edición, no estará habilitada la búsqueda.Esta búsqueda llevará implícito el filtro por el permiso  de creación y/o modificación de proyectos. (CSP\-PRO\-C, CSP\-PRO\-E) | No se necesita permiso para buscar convocatoria. |
| Buscar proyecto | Muestra la pantalla de búsqueda para seleccionar el objeto relacionado en función del valor seleccionado en el campo "Relación con" | La búsqueda se realizará a través del buscador de proyectos [IU\-GEN\-0030 \- Búsqueda de proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0030-busqueda-de-proyectos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0030-busqueda-de-proyectos.md"), común a todo el SGI. Este buscador deberá ser invocado con un parámetro de entrada:  el listado compuesto por los identificadores (persona ref) de todos los miembros del proyecto (tabla "proyecto equipo") con participación vigente a fecha actual (la fecha actual debe estar comprendida entre la fecha inicio y fecha fin de su participación en el proyecto, campo "fecha inicio" y "fecha fin" de la tabla "proyecto equipo").Si se accede a este formulario en modo edición, no estará habilitada la búsqueda. | No se necesita permiso para buscar proyecto. |
| Buscar invención | Muestra la pantalla de búsqueda para seleccionar el objeto relacionado en función del valor seleccionado en el campo "Relación con" | La búsqueda se realizará a través del buscador de patentes, [IU\-GEN\-0130 \- Búsqueda de invenciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0130-busqueda-de-invenciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0130-busqueda-de-invenciones.md") común a todo el SGI.Si se accede a este formulario en modo edición, no estará habilitada la búsqueda. | PII\-INV\-MOD\-V |
| Añadir/Aceptar | El botón se mostrará como:* Añadir, cuando se accede al formulario desde la acción de añadir nueva relación al proyecto * Aceptar, cuando se accede al formulario desde la acción de modificación para una relación ya existente | Añade o modificar la relación al proyecto. Tabla "relación" del módulo "REL".El identificador del proyecto (campo "id" de la tabla "proyecto")  que se esta editando se almacena en el campo "entidad origen ref" y el identificador del objeto con el que se relaciona (proyecto, convocatoria o invención) se almacena sobre el campo "entidad destino ref".El valor seleccionado en el campo "relación con" se almacena sobre el campo "tipo entidad destino".El campo "tipo entidad origen" tomará el valor "proyecto". | REL\-EREL\-C |
| Cancelar | Retorna al formulario del proyecto, sin salvar los posibles cambios. |  |  |




