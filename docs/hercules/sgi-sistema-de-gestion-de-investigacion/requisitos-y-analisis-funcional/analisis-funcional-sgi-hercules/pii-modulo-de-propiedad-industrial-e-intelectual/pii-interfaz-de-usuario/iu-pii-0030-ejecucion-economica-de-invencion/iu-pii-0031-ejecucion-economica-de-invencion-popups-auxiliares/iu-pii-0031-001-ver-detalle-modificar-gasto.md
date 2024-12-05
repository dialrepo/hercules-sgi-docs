# Hércules : IU\-PII\-0031\-001 \- Ver detalle\-modificar gasto



## Formulario Ver detalle\-modificar gasto

Pantalla que muestra el formulario con el detalle de un gasto, incluidos sus documentos asociados, y que además permitirá modificar los datos de un gasto asociado a una invención en una ventana emergente. En concreto, se podrá únicamente informar o modificar la solicitud de protección asociada a dicho gasto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Detalle del gasto \- Campos dinámicos (los mismos que se obtengan en la pantalla de listado de gastos, no se precisaría una nueva llamada al SGEPII para obtenerlos). | | |
| Fecha | Fecha (sin hora)Modo consulta | Fecha del gasto |
| Referencia | Texto cortoModo consulta | Referencia del gasto |
| Concepto | TextoModo consulta | Concepto del gasto |
| Tipo | Texto cortoModo consulta | Tipo de gasto |
| Importe | DecimalModo consulta | Importe del gasto |
| Datos modificables del gasto | | |
| Solicitud de protección | SelectorOpcional | Solicitud de protección a asociar al gasto de la invención.Se cargará con el listado de solicitudes de protección asociadas a la invención.Si tenía una solicitud ya asociada y se deja sin valor, se eliminará la relación entre dicha solicitud y el gasto. |
| Listado de documentos del gasto \- Obtenidos a través del requisito de integración [REQ\-INT\-0013\-SGEPII\-0011 \- Detalle gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0011-detalle-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0011-detalle-gasto.md") | | |
| Nombre | Texto | Nombre del documento asociado al gasto. |
| Fichero | Texto | Nombre del fichero físico asociado al gasto como documento. |
| Descargar | Acción "descargar" | Se descarga el fichero para su visualización.Se obtendrá el contenido del fichero a través del requisito de integración [REQ\-INT\-0010\-SGE\-0104 \- Descargar Binario documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md") |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Aceptar | Asocia o modifica la solicitud de protección asociada con el gasto de la invención. |  |
| Cancelar | Vuelve a la pantalla de listado de gastos de la invención sin añadir la solicitud de protección al gasto. |  |




