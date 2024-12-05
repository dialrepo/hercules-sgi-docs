# Hércules : IU\-CSP\-202\-016 \- Añadir\-modificar partida presupuestaria



## Formulario Añadir\-modificar partida presupuestaria

Formulario que permite añadir una partida presupuestaria a una convocatoria o bien modificar los datos de una partida ya añadida a la convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Código | TextoObligatorio | Código alfanumérico que identifica a la partida o aplicación presupuestaria.Se permitirá la introducción libre. No se realizará ninguna validación de la existencia de esta partida en el Sistema de gestión económica.Se realizará validación de formato siguiendo la expresión regular indicada en el campo "formato\_partida\_presupuestaria" de la tabla de "configuración".Se corresponde con el campo "código" de la tabla "convocatoria partida".Añadir icono de ayuda con tooltip con el siguiente mensaje: "El formato de la partida presupuestaria es XXXXX". Donde el valor de XXXXX se saca del campo "plantilla\_formato\_partida\_presupuestaria" de la tabla de "configuración". |
| Tipo | SelectorTexto cortoObligatorio | El valor se seleccionará a través de un desplegable. El desplegable contendrá los elementos del enumerado "tipo partida" que contiene los valores:* Gastos * Ingresos  Se corresponde con el campo "tipo partida" de la tabla "convocatoria partida". |
| Descripción | Texto largoOpcional | Se corresponde con el campo "descripción" de la tabla "convocatoria partida" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El texto del botón de mostrará como:* Añadir. Cuando se accede al formulario para añadir una nueva partida presupuestaria  a la convocatoria. * Aceptar. Cuando se accede al formulario para modificar los datos de una partida ya existente en el listado de partidas presupuestarias de la convocatoria. | Se realizará validación de formato siguiendo la expresión regular indicada en el campo "formato\_partida\_presupuestaria" de la tabla de "configuración".Se comprobará que no exista otra partida con el mismo código (campo "código") y tipo (campo "tipo partida") asociada a la misma convocatoria (tabla "convocatoria partida").Como resultado se creará un nuevo registro en la tabla "convocatoria partida" o se modificarán los datos de una partida ya añadida a la convocatoria (en caso de acceder al formulario para modificación). |
| Cancelar | Retorna al formulario del listado de partidas presupuestarias de una convocatoria |  |

  


  





