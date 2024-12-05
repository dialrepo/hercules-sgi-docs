# Hércules : IU\-CSP\-0402\-029 \- Añadir\-modificar partida presupuestaria



## Formulario Añadir\-modificar partida presupuestaria

Formulario que permite añadir o modificar (según el punto desde el que se acceda) una partida o aplicación presupuestaria a/de un proyecto (tabla "proyecto partida").



| **Partida presupuestaria (cuando no existe registro de convocatoria relacionada, el campo "convocatoriaPartidaId" es null)****Partida presupuestaria (****resto de casos)**En el caso de que el registro no exista en el Proyecto y si en la Convocatoria, todos los datos del proyecto estarán en modo no editables hasta que se pulse el botón de "Aplicar al proyecto" que se inicializarán los datos del proyecto con los valores de la convocatoria y se pondrá el campo "Descripción" editable por si desea modificarlo. Los campos "Código" y "Tipo" seguirán siendo no editables (no se podrán modificar)Cuando el registro existe en el proyecto, únicamente se podrá editar o modificar el campo "Descripción", los campos "Código" y "Tipo" serán no editables. | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Código | | TextoObligatorio | Código alfanumérico que identifica a la partida o aplicación presupuestaria.Se permitirá la introducción libre. No se realizará ninguna validación de la existencia de esta partida en el Sistema de gestión económica.Se realizará validación de formato siguiendo la expresión regular indicada en el campo "formato\_partida\_presupuestaria" de la tabla de "configuración".Se corresponde con el campo "código" de la tabla "proyecto partida".Se pondrá en modo no editable (modo consulta) para todos los registros que tengan informado el campo "convocatoriaPartidaId", es decir, para estos casos no se podrá modificar su valor.Añadir icono de ayuda con tooltip con el siguiente mensaje: "El formato de la partida presupuestaria es XXXXX". Donde el valor de XXXXX se saca del campo "plantilla\_formato\_partida\_presupuestaria" de la tabla de "configuración". |
| Tipo | | SelectorTexto cortoObligatorio | El valor se seleccionará a través de un desplegable. El desplegable contendrá los elementos del enumerado "tipo partida" que contiene los valores:* Gastos * Ingresos  Se corresponde con el campo "tipo partida" de la tabla "proyecto partida".Se pondrá en modo no editable (modo consulta) para todos los registros que tengan informado el campo "convocatoriaPartidaId", es decir, para estos casos no se podrá modificar su valor. |
| Descripción | | Texto largoOpcional | Se corresponde con el campo "descripción" de la tabla "proyecto partida" |
| Datos de la partida de la convocatoria (tabla "convocatoria partida") | | | |
| Código | | TextoModo consulta | Se corresponde con el campo "código" de la tabla "convocatoria partida". |
| Tipo | | SelectorModo consulta | Se corresponde con el campo "tipo partida" de la tabla "convocatoria partida". |
| Descripción | | Texto largoModo consulta | Se corresponde con el campo "descripción" de la tabla "convocatoria partida" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aplicar al proyecto | Copia los datos de la convocatoria al formulario del proyecto | Se copiaran  los datos de la convocatoria al propio formulario de la partida presupuestaria del proyecto. En caso de que el formulario ya tuviera unos datos informados se macharán con los de la convocatoria. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir/Aceptar | El texto del botón de mostrará como:* Añadir. Cuando se accede al formulario para añadir una nueva partida o aplicación presupuestaria  al proyecto. * Aceptar. Cuando se accede al formulario para modificar los datos de una partida ya existente en el listado de partidas presupuestarias del proyecto. | Se realizará validación de formato siguiendo la expresión regular indicada en el campo "formato\_partida\_presupuestaria" de la tabla de "configuración".Se comprobará que no exista otra partida con el mismo código (campo "código") y tipo (campo "tipo partida") asociada al proyecto (tabla "proyecto partida").Como resultado se creará un nuevo registro en la tabla "proyecto partida" o se modificarán los datos de una partida ya añadida en el proyecto (en caso de acceder al formulario para modificación).Para las nuevas partidas que se copien de la convocatoria se almacenará el campo "convocatoriaPartidaId" con el identificador de la partida en la convocatoria, para las nuevas partidas creados en el proyecto se pondrá dicho campo a null. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de partidas del proyecto, sin salvar los posibles cambios |  |  |




