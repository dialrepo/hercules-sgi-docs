# Hércules : IU\-CSP\-0406\-015\-001 \- Modificar proyecto \- Prórroga \- Datos generales



## Formulario Modificar proyecto \- Prórroga \- Datos generales

Formulario que permite añadir una prórroga durante el proceso de modificación de un proyecto.

Si es una modificación, sólo se podrá modificar los datos de la pestaña de "Datos generales" de la última prórroga (aquella que tiene el Número prórroga mayor)



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de prórrogas de un proyecto. Tabla "proyecto prórroga" | | |
| Número prórroga | SecuenciaNumérico entero genérico | Número secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de la fecha de concesión.Se corresponde con el campo "num. prórroga" de la tabla "proyecto prórroga". |
| Fecha concesión | FechaObligatorio | Fecha en la que se concede la prórroga, bien por la entidad convocante/financiadora bien de manera interna. Se corresponde con el campo "fecha concesión" de la tabla "proyecto prórroga".El valor introducido ha de ser mayor que la fecha de concesión del resto de prórrogas del proyecto.Si se accede al detalle de una prórroga ya creada (modificación) sólo será posible modificar este campo en caso de que la prórroga sea la última registrada (la que tiene el Número prórroga mayor). |
| Tipo de prórroga | SelectorTexto cortoObligatorio | Indica el tipo de prórroga de proyecto que puede ser solo ampliación temporal, solo ampliación económica o ampliación temporal y económica.El selector se mostrará a partir del enumerado "Tipo prórroga", que contendrá con los siguientes valores:* Tiempo * Importe * Tiempo e importe  El valor seleccionado se almacenará sobre el campo "tipo prórroga" de la tabla "proyecto prórroga".Si se accede al detalle de una prórroga ya creada (modificación) sólo será posible modificar este campo en caso de que la prórroga sea la última registrada (la que tiene el campo "núm. prórroga" mayor). |
| Nueva fecha fin de proyecto | FechaObligatorio | Nueva fecha de fin que ha sido concedida para el proyecto.Se corresponde con el campo "fecha fin" de la tabla "proyecto prórroga".Este campo sólo será editable (y además obligatorio) si el campo "Tipo de prórroga" toma el valor Tiempo" o "Tiempo e importe".Se comprobará que el valor introducido no sea menor que la fecha fin o la fecha fin definitiva del proyecto (campos "fecha fin" y "fecha fin definitiva" de la tabla "proyecto").Con el valor indicado en este campo se actualizará la fecha de fin definitiva del apartado de "Datos generales" del proyecto (campo "fecha fin definitiva" de la tabla "proyecto"). Además, sobre los miembros del equipo cuya fecha de fin de participación coincida con la fecha de fin de proyecto anterior, se producirá automáticamente la actualización de la fecha de fin al nuevo valor de fecha de fin del proyecto. Campo "fecha fin" de la tabla "proyecto equipo" tomará el valor de la nueva fecha fin de proyecto.Si se accede al detalle de una prórroga ya creada (modificación) sólo será posible modificar este campo en caso de que la prórroga sea la última registrada (la que tiene el campo "núm. prórroga" mayor). |
| Importe concedido en la prórroga | EconómicoObligatorio | Valor del importe concedido en la prórroga. No se producirá ninguna actualización automática del presupuesto del proyecto, debiendo ser éste debidamente actualizado por los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la Unidad de gestión responsable.Sólo será editable, y además obligatorio, si el campo "Tipo de prórroga" tiene el valor Importe" o "Tiempo e importe".Si se accede al detalle de una prórroga ya creada (modificación) sólo será posible modificar este campo en caso de que la prórroga sea la última registrada (la que tiene el campo "núm. prórroga" mayor). |
| Observaciones | Texto largoOpcional | Si es una modificación, sólo se podrá modificar si se trata de la última prórroga (El que tiene el Número prórroga mayor).Texto libre para introducir observaciones sobre la prórroga |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la prórroga del proyecto con la información introducida en el formulario.Al guardar una prórroga se guarda la información de todos los apartados de definición de la prórroga. | El número de prórroga (campo "num. prórroga") se calculará de forma secuencial y ordenada de acuerdo a la fecha de concesión.En el caso de añadir una prórroga de tipo "Tiempo" o "Tiempo e importe":* Se comprobará que el valor introducido para "nueva fecha fin proyecto" no sea menor que "fecha fin" ni  "fecha fin definitiva" de la tabla "proyecto. * Se comprobará si la fecha fin de cada uno de los miembros del equipo de proyecto, (campo "fecha fin" de la tabla "proyecto equipo") coincide con: 	+ la fecha fin del proyecto (campo "fecha fin" de la tabla "proyecto") en caso de que fecha fin definitiva (campo "fecha fin definitiva" de la tabla "proyecto") tome valor "null". 	+ la fecha fin definitiva del proyecto en caso de estar informada (campo "fecha fin definitiva" de la tabla "proyecto")  Si fuese así, se deberá actualizar la fecha fin del miembro (campo "fecha fin" de la tabla "proyecto equipo") con la "nueva fecha fin de proyecto" introducida en este formulario.* Se actualizará el campo fecha de fin definitiva del apartado de "Datos generales" del proyecto (campo "fecha fin definitiva" de la tabla "proyecto") con el valor indicado en el campo "Nueva fecha fin de proyecto" de este formulario.  En el caso de añadir una prórroga de tipo "Importe" o "Tiempo e importe" se muestra un mensaje de advertencia con el siguiente texto "Recuerde que debe actualizar el presupuesto del proyecto de acuerdo al nuevo importe concedido en esta prórroga" | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyecto sin salvar los posibles cambios.Al cancelar una prórroga se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




