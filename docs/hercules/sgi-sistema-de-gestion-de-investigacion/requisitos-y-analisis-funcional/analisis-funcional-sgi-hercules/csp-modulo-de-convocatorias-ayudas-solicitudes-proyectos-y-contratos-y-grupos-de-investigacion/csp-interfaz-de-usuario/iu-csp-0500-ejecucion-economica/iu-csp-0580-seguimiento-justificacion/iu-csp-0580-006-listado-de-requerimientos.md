# Hércules : IU\-CSP\-0580\-006 \- Listado de requerimientos



## Formulario Listado de requerimientos

Formulario que lista los requerimientos del seguimiento de la justificación de un proyecto económico.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de requerimientos. Requerimientos asociados a cualquier proyecto SGI vinculado al proyecto SGE desde el que se accede al menú de Ejecución Económica. Se obtendrán de la tabla "requerimiento justificación" obteniendo todos los registros del proyecto SGE (campo "proyecto SGE ref"). | | |
| Número requerimiento | Numérico entero. | Secuencial que representa el número de requerimiento dentro de un mismo proyecto SGI.Se corresponde con el campo "número requerimiento" de la tabal "requerimiento justificación". |
| Proyecto SGI: ID Interno | Numérico entero | Identificador del proyecto SGI al que está asociado el requerimiento.Para obtener este valor se debe obtener el campo "proyecto" de la tabla "proyecto proyecto SGE" a partir del campo "proyecto proyecto SGE" de la tabla "requerimiento justificación". A partir del campo "proyecto" de la tabla "proyecto proyecto SGE" se debe acceder a la tabla "proyecto" recuperando el valor del campo "ID" a mostrar. |
| ID Justificación | Texto | Identificador de justificación con el que podría estar vinculado el requerimiento.Para obtener este valor se debe de acceder a la tabla "proyecto periodo justificación", a partir de la referencia establecido en al tabla "requerimiento justificación". Se mostrará el valor del campo "justificación ref" de la tabla "proyecto periodo justificación". |
| Tipo requerimiento | Texto | Nombre del tipo de requerimiento.Se mostrará el valor del campo "nombre" de la tabla "tipo requerimiento" para el registro referenciado por el campo "proyecto periodo justificación" de la tabla "requerimiento justificación" |
| Requerimiento previo | Texto | Cadena formada por la concatenación, a través del carácter "\-", de los campos "número de requerimiento" y "nombre" del tipo de requerimiento.El número de requerimiento se obtendrá del campo "número requerimiento" de la tabla "requerimiento justificación" para el registro referenciad por el campo "requerimiento previo" de esta misma tabla (es una relación recursiva).El nombre del requerimiento se obtendrá del campo "nombre" de la tabla "tipo requerimiento" para el registro referenciado por el campo "proyecto periodo justificación" de la tabla "requerimiento justificación" |
| Fecha notificación | Fecha | Fecha en la que es recibe la notificación del requerimiento.Se corresponde con el campo "fecha notificación" de la tabla "requerimiento justificación". |
| Fin plazo alegación | Fecha \+ Hora | Fecha en la que finaliza el plazo del alegación del requerimiento.Se corresponde con el campo "fecha fin alegación" de la tabla "requerimiento justificación". |
| Importe aceptado | Económico | Importe aceptado que se comunica en el requerimiento (suma de los importes de los gastos presentados en la justificación que han sido aceptados).Se corresponde con el campo "importe aceptado" de la tabla "requerimiento justificación". |
| Importe rechazado | Económico | Importe rechazado que se comunica en el requerimiento (suma de los importes de los gastos presentados en la justificación que han sido rechazados).Se corresponde con el campo "importe rechazado de la tabla "requerimiento justificación". |
| Importe a reintegrar | Económico | Importe que se comunica en el requerimiento que debe ser devuelto (por no haberse aceptado la justificación de los gastos correspondientes)Se corresponde con el campo "importe reintegrar" de la tabla "requerimiento justificación". |
| Modificar | Icono de acción | Acción "modificar" |
| Eliminar | Icono de acción | Acción "eliminar" |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Modificar | Permite modificar los datos del requerimiento | Muestra la pantalla [IU\-CSP\-0580\-009\-001 \- Modificar requerimiento \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-001-modificar-requerimiento-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-001-modificar-requerimiento-datos-generales.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Eliminar | Permite eliminar el requerimiento | Esta acción solo estará disponible en caso de que el requerimiento no tenga ningún requerimiento enlazado. Es decir, si el requerimiento actual está referenciado por el campo "requerimiento previo" de otro requerimiento, el botón eliminar no estará disponible. En este caso se mostrará un icono informativo con un tooltip explicativo "Es un requerimiento previo de otro requerimiento. Para poder eliminar este requerimiento deben eliminarse primero todos los requerimientos que lo suceden".En caso que el requerimiento no tenga otro requerimiento enlazado la acción estará permitida. Tras pulsar el botón eliminar se mostrará un mensaje de confirmación "El requerimiento y todos sus datos asociados: respuesta, gastos y documentos serán eliminados ¿desea continuar?"En caso que la respuesta sea afirmativa:Se eliminará el registro correspondiente de la tabla "requerimiento justificación".  Se realizará un borrado físico. Del mismo modo se realizará un borrado físicos de todas sus tablas derivadas, cuando existan:* Alegación requerimiento * Incidencia documentación requerimiento * Documento requerimiento * Gasto requerimiento justificación  Si el requerimiento a eliminar está asociado a un periodo de justificación (el campo "proyecto periodo justificación" de la tabla "requerimiento justificación" está informado) se deberá comprobar si existen más requerimientos asociados al mismo periodo de justificación. Si no existen más requerimientos asociados a ese periodo de justificación:* Se deberá eliminar el registro de la tabla "proyecto periodo justificación seguimiento" asociado al proyecto de justificación del requerimiento a eliminar. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Añadir requerimiento | Permite añadir un nuevo requerimiento | Muestra la pantalla [IU\-CSP\-0580\-008\-001 \- Requerimiento \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-008-crear-requerimiento/iu-csp-0580-008-001-requerimiento-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-008-crear-requerimiento/iu-csp-0580-008-001-requerimiento-datos-generales.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Exportar | Permite exportar el listado de requerimientos mostrado en pantalla |  | CSP\-SJUS\-VCSP\-SJUS\-V\_UO |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  





