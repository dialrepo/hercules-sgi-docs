# Hércules : IU\-CSP\-0302\-011 \- Añadir\-modificar partida de gasto a entidad financiadora de la convocatoria



## Formulario Añadir/modificar partida de gasto a entidad financiadora de la convocatoria

Formulario que permite añadir o modificar una partida de gasto a la entidad financiadora de la convocatoria durante el proceso de creación o modificación de una solicitud de proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Concepto de gasto | SelectorTexto cortoObligatorio | Listado de conceptos de gasto activos definidos a nivel global en el SGI  en [IU\-CSP\-0090 \- Gestión de conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87822689 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87822689") |
| Códigos económicos permitidos de la convocatoria:  Listado con los códigos económicos asociados al concepto de gasto seleccionado en el combo superior (tablas  "convocatoria concepto gasto código ec" y "convocatoria concepto gasto" donde el campo "permitido" \= true y "concepto gasto" sea el seleccionado ).Se muestra cuando se selecciona un concepto del combo de Concepto de gasto o hay un concepto de gasto seleccionado.Se mostrará ordenado por concepto de gasto y mes inicioEn caso de no existir el concepto de gasto seleccionado en la tabla "ConvocatoriaConceptoGasto" no se muestra esta información, se oculta. | | |
| Concepto de gasto |  | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde "convocatoria concepto gasto" |
| Importe máximo |  | Importe máximo: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido desde mes |  | Mes inicio: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido hasta mes |  | Mes fin: recuperado de la tabla  "convocatoria concepto gasto" |
| Código económico |  | Nombre del código económico: recuperado de la tabla "convocatoria concepto gasto código ec" |
| Códigos económicos no permitidos de la convocatoria: Listado con los códigos económicos asociados al concepto de gasto seleccionado en el combo superior (tablas  "convocatoria concepto gasto código ec" y "convocatoria concepto gasto" donde el campo "permitido" \= false y el "concepto gasto" el seleccionado ).Se muestra cuando se selecciona un concepto del combo de Concepto de gasto o hay un concepto de gasto seleccionado.Se mostrará ordenado por concepto de gasto y mes inicioEn caso de no existir el concepto de gasto seleccionado en la tabla "ConvocatoriaConceptoGasto" no se muestra esta información, se oculta. | | |
| Concepto de gasto |  | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde "convocatoria concepto gasto" |
| Importe máximo |  | Importe máximo: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido desde mes |  | Mes inicio: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido hasta mes |  | Mes fin: recuperado de la tabla  "convocatoria concepto gasto" |
| Código económico |  | Nombre del código económico: recuperado de la tabla "convocatoria concepto gasto código ec" |
|  | | |
| Anualidad | Numérico decimal genéricoOpcional | Anualidad a la que pertenece el concepto de gasto |
| Importe presupuestado | EconómicoObligatorio | Importe presupuestado para el concepto de gasto por la entidad |
| Importe solicitado | EconómicoObligatorio | Importe solicitado para el concepto de gasto por la entidad |
| Observaciones | Texto largoOpcional | Campo abierto que permite introducir cualquier observación consideración del concepto de gasto en el presupuesto asociada a la solicitud |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El botón se muestra como:* Añadir, cuando se accede al formulario para añadir una nueva partida de gasto sobre el presupuesto asociado a una entidad financiadora incluida en el listado "entidades financiadoras de la convocatoria" * Aceptar, cuando se accede al formulario para modificar los datos de una partida de gasto ya creada en el presupuesto asociado a una entidad financiadora incluida en el listado "entidades financiadoras de la convocatoria" | Añade o modifica la partida al listado de desglose de presupuesto de la entidad financiadora, tabla "Solicitud Proyecto Presupuesto". Se deberá dar valor al campo* "solicitudProyectoEntidad" con el identificador del registro que corresponde a la entidad |
| Cancelar | Retorna al formulario de solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





