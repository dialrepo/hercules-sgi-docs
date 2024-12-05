# Hércules : IU\-CSP\-0402\-032 \- Calendario facturación \- Validar IP



## Formulario Calendario facturación \- Validar IP

Formulario que permite validar o rechazar el ítem de facturación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Número de previsión | Modo consulta | Es un secuencial que se calcula teniendo en cuenta la fecha de creación, es decir, el ítem con la fecha de creación mas pequeña tendrá el valor 1, el ítem con la siguiente fecha de creación el valor 2 y así sucesivamente. Al crear un nuevo ítem se mirará el último número de previsión del proyecto y se sumará uno. Es relativo a cada proyecto. |
| Validación IP | Modo consulta | Es el campo estado de la validación del IP. |
| Fecha de emisión | Modo consulta | Fecha en la que debe ser emitida la factura. |
| Importe base | Modo consulta | Importe base de la factura |
| % IVA | Modo consulta | Porcentaje de IVA a aplicar en la factura. Por defecto se cargará con el porcentaje de IVA actual del proyecto (campo "iva" de la tabla "proyecto") |
| Comentario | Modo consulta | Texto libre con el que se podrá dejar cualquier comentario que se considere que debe de ser tenido en cuenta por los gestores económicos |
| Tipo facturación | Modo consulta | Indica el hito a cumplir o el trabajo que hay que realizar para que se pueda emitir la factura, por ejemplo realizar un informe, un trabajo , un análisis, etc..Desplegable con los valores de la tabla "tipo facturación". (En cada Universidad podrán tener sus propios valores) |
| Estado | SelectorTexto cortoObligatorio | Combo con los valores:* Validada * Rechazada |
| Motivo del rechazo | TextoObligatorio si el estado es "Rechazada" | Sólo se muestra si se selecciona en Estado el valor de "Rechazada" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Se modifica el estado del item de facturación | Se cambia el estado del ítem de facturación. Si se cambia el estado a "Validada", se pone en el campo "Fecha conformidad" la fecha actual, momento en que el IP valida el ítem.El número de previsión, el nuevo estado y el tipo de facturación (si está informado) serán utilizados para generar un aviso en el módulo de comunicados según lo descrito en [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados"). | CSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-PRO\-INV\-VR |
| Cancelar | Retorna al formulario de proyecto, sin salvar los posibles cambios |  |  |




