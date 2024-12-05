# Hércules : IU\-CSP\-0402\-024 \- Añadir\-modificar ítem de facturación



## Formulario Añadir/modificar ítem de facturación

Formulario que permite añadir o modificar un ítem de facturación al calendario de facturación durante de la modificación de un proyecto.



| Si se esta añadiendo nuevo la pantalla será:Si es una modificación: | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Número de previsión | EnteroObligatorio | Es un secuencial que se calcula teniendo en cuenta la fecha de creación, es decir, el ítem con la fecha de creación mas pequeña tendrá el valor 1, el ítem con la siguiente fecha de creación el valor 2 y así sucesivamente. Al crear un nuevo ítem se mirará el último número de previsión del proyecto y se sumará uno. Es relativo a cada proyecto.Es de sólo consulta. |
| Validación IP | Texto cortoObligatorio | Es el campo estado de la validación del IP. Sólo se muestra si estamos en una modificación.Es de sólo consulta. |
| Fecha de emisión | FechaObligatorio | Fecha en la que debe ser emitida la factura. |
| Importe base | EconómicoObligatorio | Importe base de la factura |
| % IVA | Numérico enteroObligatorio | Porcentaje de IVA a aplicar en la factura.Por defecto se cargará con el porcentaje de IVA actual del proyecto (campo "iva" de la tabla "Proyecto"). Solo se permitirá la introducción de un valor comprendido mayor o igual a 0 y menor o igual a 100\. |
| Comentario | Texto largoOpcional | Texto libre con el que se podrá dejar cualquier comentario que se considere que debe de ser tenido en cuenta por los gestores económicos |
| Tipo facturación | SelectorTexto cortoOpcional | Indica el tipo de trabajo a realizar para que se pueda emitir la factura, por ejemplo realizar un informe, un trabajo , un análisis, etc..Desplegable con los valores de la tabla "tipo facturación". (En cada Universidad podrán tener sus propios valores) |
| Fecha conformidad | Fecha (sin hora)Obligatoria si el campo "Validacion IP" tiene valor "Validada" | Es la fecha que pone el gestor para decidir que ya se puede crear la factura emitida en el SGE. Se inicializa con la fecha en la que el IP valida el ítem. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Añade el item de facturación al calendario del proyecto | Se crea o se modifica el registro en la tabla "proyecto facturación".Si es una creación el campo "estado validado IP" se inicializa con el valor de "Pendiente" | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario de proyecto, sin salvar los posibles cambios |  |  |




