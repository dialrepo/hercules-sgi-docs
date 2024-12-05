# Hércules : IU\-CSP\-202\-012 \- Añadir concepto de gasto no permitido



## Formulario Añadir concepto de gasto no permitido

Pantalla que muestra un formulario, que permite añadir un nuevo concepto de gasto no permitido a una convocatoria.

Se divide en dos pantallas:

* Datos del propio concepto de gasto
* Códigos económicos: listado con los códigos económicos correspondientes al concepto de gasto

Los conceptos de gasto se añaden desde la pestaña de "Elegibilidad" de la convocatoria [IU\-CSP\-0201\-012 \- Crear convocatoria \- Elegibilidad](https://confluence.um.es/confluence/display/HERCULES/IU-CSP-0201-012+-+Crear+convocatoria+-+Elegibilidad "https://confluence.um.es/confluence/display/HERCULES/IU-CSP-0201-012+-+Crear+convocatoria+-+Elegibilidad").



| **Concepto de gasto****Códigos económicos** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Datos del concepto de gasto | | |
| Concepto de gasto | SelectorTexto cortoObligatorio | Listado de los conceptos de gasto configurados en el SGI.Se muestra el campo "nombre" de los registro en estado activo (campo "activo" a "true") de la tabla "concepto de gasto". |
| Coste indirecto | Booleano | Campo informativo que recoge la configuración del concepto de gasto indicando si en concepto que se utiliza para la gestión de los costes indirectos.Se muestra en modo solo lectura. Se corresponde con el campo "costes indirectos" de la tabla "concepto de gasto". |
| Mes inicial | EnteroOpcional | Número de mes, relativo a la duración del proyecto derivado de la convocatoria, a partir del que no se admiten gastos del tipo asociado al concepto de gasto.Se corresponde con el campo "mes inicial" de la tabla "convocatoria concepto gasto". |
| Mes final | EnteroOpcional | Número de mes, relativo a la duración del proyecto derivado de la convocatoria, hasta el que no se admiten gastos del tipo asociado al concepto de gasto.No puede ser mayor que el número de meses indicado en la pestaña de Datos generales de duración de meses de la convocatoria (en caso de venir informado)Se corresponde con el campo "mes final" de la tabla "convocatoria concepto gasto". |
| Observaciones del concepto de gasto en la convocatoria | Texto largoOpcional | Permite recoger cualquier comentario que aplique de forma concreta al gasto dentro de la convocatoria.Se corresponde con el campo "observaciones" de la tabla "convocatoria concepto gasto". |
| Correspondencia del concepto de gasto no permitido de la convocatoria y códigos económicos del SGE. El listado se obtendrá de la relación "convocatoria concepto gasto código económicos" | | |
| Código económico | Texto | Código económico del SGE con el que se asocia el concepto de gasto.Se mostrará la concatenación del identificador y el nombre del código económico, recuperados del requisito de integración [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") |
| Fecha inicio | Fecha | Fecha de inicio de la correspondencia entre el concepto de gasto y el código económico. Delimitación inicial de la vigencia de la vinculación entre concepto de gasto y código económico, puesto que podrá variar a lo largo de la duración de la convocatoria, en caso que en el SGE se registren modificaciones.Se corresponde con el campo "fecha inicio" de la tabla "convocatoria concepto gasto código económico". |
| Fecha fin | Fecha | Fecha de fin de la correspondencia entre el concepto de gasto y el código económico. Delimitación inicial de la vigencia de la vinculación entre concepto de gasto y código económico, puesto que podrá variar a lo largo de la duración de la convocatoria, en caso que en el SGE se registren modificaciones.Se corresponde con el campo "fecha fin" de la tabla "convocatoria concepto gasto código económico". |
| Observaciones | Texto largo | Campo para recoger cualquier observación aclaratoria que aplique a la correspondencia entre concepto de gasto y código económico.Se corresponde con el campo "observaciones" de la tabla "convocatoria concepto gasto código económico". |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar correspondencia de concepto de gasto no permitido y código económico | Muestra la pantalla de modificación de la correspondencia del concepto de gasto no permitido y su código económico del SGE | Muestra la pantalla [IU\-CSP\-202\-015 \- Añadir correspondencia de concepto de gasto no permitido y código económico del SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89626362 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=89626362") en modo edición. |
| Eliminar correspondencia de concepto de gasto no permitido y código económico | Elimina el código económico para la convocatoria | Elimina el registro de la tabla de "códigos económicos de convocatoria" |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |
| Añadir nuevo código económico no permitido relacionado con el concepto de gasto | Muestra la pantalla de creación de un nuevo código económico no permitido relacionado con el concepto de gasto | Muestra la pantalla [IU\-CSP\-202\-015 \- Añadir correspondencia de concepto de gasto no permitido y código económico del SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89626362 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=89626362") |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Añade concepto de gasto no permitido a la convocatoriaSe guardan los códigos económicos introducidos en el listado | Se crea un nuevo registro en la tabla "convocatoria concepto gasto" con los valores:* Identificador asociado al concepto de gasto seleccionado en el desplegado * Campo observaciones con el valor cumplimentado en el formulario * Campo "permitido" \= false * Campo "importe máximo" \= null * Campo "mes inicial" con el valor cumplimentado en el formulario * Campo "mes final" con el valor cumplimentado en el formulario  Se tiene que comprobar que un mismo concepto de gasto no puede estar en dos rangos distintos de meses, es decir, no puede existir solapamiento de rango de meses para el mismo concepto entre los conceptos no permitidos de la convocatoria.Se crean los registros necesarios en la tabla "convocatoria concepto gasto código económico": Se deberá validar la unicidad de la tupla  concepto gasto \-código económico de acuerdo a:* + Para un mismo identificador de convocatoria la misma tupla  concepto gasto \-código económico (independientemente si son permitidos o no permitidos) solo puede aparecer una vez, salvo que lo haga en periodos de vigencia no solapados. La vigencia se mira con los meses inicio y fin del concepto de gasto (no de las fecha de inicio y fin de la tabla de códigos económicos) 	+ La no información de los meses de inicio y fin actuará como vigencia activa, es decir, en estos casos un mismo código económico no se puede repetir (independientemente del concepto de gasto). 	+ Si un código económico figura para un concepto de gasto que tenga el mes de inicio informado pero sin mes de fin, se tomará como vigente desde el mes de inicio. |
| Cancelar | Retorna al formulario de la convocatoria, sin salvar los posibles cambios. |  |




