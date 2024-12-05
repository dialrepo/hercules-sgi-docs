# Hércules : IU\-CSP\-0302\-010 \- Añadir\-modificar partida de gasto a presupuesto global



## Formulario Añadir/modificar partida de gasto a presupuesto global

Formulario que permite añadir o modificar una partida de gasto al presupuesto global durante el proceso de creación o modificación de una solicitud de proyecto



| Si la solicitud tiene relacionada una convocatoria del SGISi la solicitud no tiene una convocatoria relacionada del SGI | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Concepto de gasto | SelectorTexto cortoObligatorio | Listado de conceptos de gasto activos definidos a nivel global en el SGI  en [IU\-CSP\-0090 \- Gestión de conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87822689 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87822689") |
| Tabla de Códigos económicos permitidos de la convocatoria: Listado con los códigos económicos asociados al concepto de gasto seleccionado en el combo superior. Se muestra cuando se selecciona un concepto del combo de Concepto de gasto o hay un concepto de gasto seleccionado, y éste figura en la tabla "convocatoria concepto gasto" con el campo "permitido" a "true".  Si el concepto de gasto está vinculado a más de un código económico (tabla "convocatoria concepto gasto código ec" se mostrará un registro  para cada código económico, repitiendo la información sobre las columnas concepto de gasto, importe máximo, permitido desde mes y permitido hasta mes.La tabla se mostrará ordenada por concepto de gasto y mes inicioEn caso de que  el concepto de gasto seleccionado no exista en la tabla "convocatoria concepto gasto"  marcado con "permitido" a "true", no se mostrará esta tabla "códigos económicos permitidos". | | |
| Concepto de gasto |  | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde "convocatoria concepto gasto" |
| Importe máximo |  | Importe máximo: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido desde mes |  | Mes inicio: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido hasta mes |  | Mes fin: recuperado de la tabla  "convocatoria concepto gasto" |
| Código económico |  | Nombre del código económico asociado al concepto de gasto: recuperado de la tabla "convocatoria concepto gasto código ec". Se mostrará una cadena de texto con la concatenación de los campos identificador (referencia) y nombre recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para la referencia establecida por el campo "código económico ref" de la tabla "convocatoria concepto gasto código económico" |
| Tabla de Códigos económicos no permitidos de la convocatoria: Listado con los códigos económicos asociados al concepto de gasto seleccionado en el combo superior. Se muestra cuando se selecciona un concepto del combo de Concepto de gasto o hay un concepto de gasto seleccionado, y éste figura en la tabla "convocatoria concepto gasto" con el campo "permitido" a "false".  Si el concepto de gasto está vinculado a más de un código económico (tabla "convocatoria concepto gasto código ec" se mostrará un registro  para cada código económico, repitiendo la información sobre las columnas concepto de gasto, importe máximo, permitido desde mes y permitido hasta mes.La tabla se mostrará ordenada por concepto de gasto y mes inicioEn caso de que  el concepto de gasto seleccionado no exista en la tabla "convocatoria concepto gasto"  marcado con "permitido" a "false", no se mostrará esta tabla "códigos económicos permitidos". | | |
| Concepto de gasto |  | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde "convocatoria concepto gasto" |
| Importe máximo |  | Importe máximo: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido desde mes |  | Mes inicio: recuperado de la tabla  "convocatoria concepto gasto" |
| Permitido hasta mes |  | Mes fin: recuperado de la tabla  "convocatoria concepto gasto" |
| Código económico |  | Nombre del código económico asociado al concepto de gasto: recuperado de la tabla "convocatoria concepto gasto código ec". Se mostrará una cadena de texto con la concatenación de los campos identificador (referencia) y nombre recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para la referencia establecida por el campo "código económico ref" de la tabla "convocatoria concepto gasto código económico" |
|  | | |
| Anualidad | Numérico enteroOpcional | Anualidad a la que pertenece el concepto de gasto |
| Importe presupuestado | EconómicoObligatorio | Importe presupuestado para el concepto de gasto por la entidad |
| Importe solicitado | EconómicoObligatorio | Importe solicitado para el concepto de gasto por la entidad |
| Observaciones | Texto largoOpcional | Campo abierto que permite introducir cualquier observación consideración del concepto de gasto en el presupuesto asociada a la solicitud |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El botón se muestra como:* Añadir, cuando se accede al formulario para añadir una nueva partida de gasto en el presupuesto * Aceptar, cuando se accede al formulario para modificar los datos asociados a una partida de gasto  ya incluida en el prepuesto | Se añade la partida al listado de desglose de presupuesto global, tabla "Solicitud Proyecto Presupuesto" indicando el campo "entidad" a null |
| Cancelar | Retorna al formulario de solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





