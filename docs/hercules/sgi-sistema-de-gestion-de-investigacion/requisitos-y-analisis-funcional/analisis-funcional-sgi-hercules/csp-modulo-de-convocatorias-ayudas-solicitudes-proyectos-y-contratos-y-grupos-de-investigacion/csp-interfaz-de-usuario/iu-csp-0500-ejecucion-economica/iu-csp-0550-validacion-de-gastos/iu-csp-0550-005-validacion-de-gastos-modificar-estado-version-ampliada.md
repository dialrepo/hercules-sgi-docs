# Hércules : IU\-CSP\-0550\-005 \- Validación de gastos \- Modificar estado (versión ampliada)



## Formulario Ejecución económica \- Validación de gastos \- Modificar estado (versión ampliada)

Formulario que permite modificar el estado del gasto pendiente de contabilizar y añadir un comentario asociado al cambio de estado. En función de estado será necesario notificar dicho cambio al SGE.

Los datos del gasto se obtienen de la integración con el SGE [REQ\-INT\-0010\-SGE\-0103 \- Detalle gasto](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0010-SGE-0103+-+Detalle+gasto "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0010-SGE-0103+-+Detalle+gasto") y con los datos propios del SGI (tabla "gasto proyecto")



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado actual | Texto corto | Estado actual del gasto pendiente de contabilizaciónModo consulta |
| Clasificación SGE | Texto corto | Clasificación del  SGE en el SGE.Modo consulta |
| Aplicación presupuestaria | Texto corto | Aplicación presupuestaria asociada al gastoModo consulta |
| Código económico | Texto corto | Código económico asociado al gastoModo consulta |
| Anualidad | Texto corto | AnualidadModo consulta |
| Fecha | Fecha | Fecha del gastoModo consulta |
| Listado de campos nombre \- valor | | |
| Nombre \- valor | Texto | Se muestra el campo nombre que indica el nombre del campo y el campo valor que es el valor del campoModo consulta |
|  |  |  |
| Proyecto SGI | SelectorTextoObligatorio para Validar el gasto | Listado de proyectos SGI vinculados al identificador SGE (en caso de que hubiese más de uno). Si solo existe un proyecto SGI vinculado al identificador SGE el combo tomará este valor por defectoEn el combo mostrar una cadena de texto formada por el acrónimo del proyecto junto a la fecha inicio y fin del proyecto (PRO\-112 01/01/2020 \-31/12/2023 |
| Conceptos de gastos permitidos | Radio | Opción marcada por defecto que carga en el campo "Concepto de gasto" el listado de conceptos de gasto incluidos como gastos permitidos en el apartado "Elegibilidad" (los conceptos gastos se sacan de la tabla "ProyectoConceptoGasto" con permitido \= true y cuya fecha del gasto este entre  las fechas de inicio y fin del concepto de gasto). En caso de que el mismo concepto este dos veces, porque este presente en fechas distintas, únicamente se mostrará una sola vez en el combo. |
| Todos los conceptos de gasto | Radio | Si se selecciona esta opción se cargarán en el campo "Concepto de gasto" todos los conceptos de gasto configurados en el SGI en [IU\-CSP\-0090 \- Gestión de conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87822689 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87822689") (tabla "ConceptoGasto") |
| Concepto de gasto | SelectorTexto cortoObligatorio para Validar el gasto | Listado de los conceptos de gasto en función del radio seleccionado. Este listado puede incluir solamente los conceptos de gasto incluidos como gastos permitidos en el apartado "Elegibilidad"  (los conceptos gastos se sacan de la tabla "ProyectoConceptoGasto" con permitido \= true y cuya fecha del gasto este entre  las fechas de inicio y fin del concepto de gasto) o todos los conceptos de gasto configurados en el SGI. Se muestra el nombre del concepto de gasto. El concepto de gasto se obtendrá de la tabla "ProyectoConceptoGasto" o "ConceptoGasto" dependiendo de la opción elegida en el radiobutton. |
| Elegibilidad del concepto de gasto según proyectoSe muestra cuando se selecciona un concepto del combo de Concepto de gasto o hay un concepto de gasto seleccionado.Se mostrará ordenado por concepto de gasto y fecha de inicioEn caso de no existir el concepto de gasto seleccionado en la tabla "ProyectoConceptoGasto" no se muestra esta información, se oculta. | | |
| Códigos económicos permitidos:Información sobre la pantalla Elegibilidad, se muestra a partir del código económico y del concepto de gasto seleccionado en el combo de concepto de gasto. A partir del concepto de gasto seleccionado y para la fecha del gasto se busca dicho concepto en la tabla de "ProyectoConceptoGasto" con permitido a "true" y que la fecha del gasto este en el rango del concepto de gasto. Luego se muestran los código económicos asociados a dicho concepto de gasto | | |
| Concepto de gasto | Texto | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde "ProyectoConceptoGasto" |
| Importe máximo | Decimal | Importe máximo: recuperado de la tabla  "ProyectoConceptoGasto" |
| Permitido desde | Date | Fecha inicio: recuperado de la tabla  "ProyectoConceptoGasto" |
| Permitido hasta | Date | Fecha fin: recuperado de la tabla  "ProyectoConceptoGasto" |
| Código económico | Texto | Nombre del código económico: recuperado de la tabla "ProyectoConceptoGastoCodigoEc" |
| Códigos económicos no permitidos:Información sobre la pantalla Elegibilidad, se muestra a partir del código económico y del concepto de gasto seleccionado en el combo de concepto de gasto. A partir del concepto de gasto seleccionado y para la fecha del gasto se busca dicho concepto en la tabla de "ProyectoConceptoGasto" con permitido a "false" y que la fecha del gasto este en el rango del concepto de gasto. Luego se muestran los código económicos asociados a dicho concepto de gasto | | |
| Concepto de gastos | Texto | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde "ProyectoConceptoGasto" |
| Permitido desde | Date | Fecha inicio: recuperado de la tabla  "ProyectoConceptoGasto" |
| Permitido hasta | Date | Fecha fin: recuperado de la tabla  "ProyectoConceptoGasto" |
| Código económico | Texto | Nombre del código económico: recuperado de la tabla "ProyectoConceptoGastoCodigoEc" |
| Elegibilidad del concepto de gasto según convocatoriaSe muestra cuando se selecciona un concepto del combo de Concepto de gasto o hay un concepto de gasto seleccionado.Se mostrará ordenado por concepto de gasto y fecha de inicioEn caso de no existir el concepto de gasto seleccionado en la tabla "ConvocatoriaConceptoGasto" no se muestra esta información, se oculta. | | |
| Códigos económicos permitidos:Información sobre la pantalla Elegibilidad, se muestra a partir del código económico y del concepto de gasto seleccionado en el combo de concepto de gasto. A partir del concepto de gasto seleccionado y para la fecha del gasto se busca dicho concepto en la tabla de "ConvocatoriaConceptoGasto" con permitido a "true" y que la fecha del gasto este en el rango del concepto de gasto. Luego se muestran los código económicos asociados a dicho concepto de gasto | | |
| Concepto de gasto | Texto | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde ConvocatoriaConceptoGasto" |
| Importe máximo | Decimal | Importe máximo: recuperado de la tabla  "ConvocatoriaConceptoGasto" |
| Permitido desde mes | Date | Mes inicio: recuperado de la tabla  "ConvocatoriaConceptoGasto" |
| Permitido hasta mes | Date | Mes fin: recuperado de la tabla  "ConvocatoriaConceptoGasto" |
| Código económico | Texto | Nombre del código económico: recuperado de la tabla "ConvocatoriaConceptoGastoCodigoEc" |
| Códigos económicos no permitidos:Información sobre la pantalla Elegibilidad, se muestra a partir del código económico y del concepto de gasto seleccionado en el combo de concepto de gasto. A partir del concepto de gasto seleccionado y para la fecha del gasto se busca dicho concepto en la tabla de "ProyectoConceptoGasto" con permitido a "false" y que la fecha del gasto este en el rango del concepto de gasto. Luego se muestran los código económicos asociados a dicho concepto de gasto | | |
| Concepto de gasto | Texto | Nombre del concepto de gasto: recuperado de la tabla "concepto de gasto" a partir de la referencia que se establece desde ConvocatoriaConceptoGasto" |
| Permitido desde mes | Date | Mes inicio: recuperado de la tabla  "ConvocatoriaConceptoGasto" |
| Permitido hasta mes | Date | Mes fin: recuperado de la tabla  "ConvocatoriaConceptoGasto" |
| Código económico | Texto | Nombre del código económico: recuperado de la tabla "ConvocatoriaConceptoGastoCodigoEc" |
|  | | |
| Comentario | Texto largo | Comentario asociado al cambio de estado |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Validar | Modifica el estado del gasto pendiente de contabilización y lo añade junto al comentario al histórico de estados. Se guarda la relación del gasto con el concepto de gasto (tablas "GastoProyecto" y "EstadoGastoProyecto"). | Es obligatorio introducir el Proyecto SGI y el concepto de gasto.Se enviará una notificación al SGE.[REQ\-INT\-0010\-SGE\-0101 \- Validar gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0101-validar-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0101-validar-gasto.md") | CSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-INV\-ER |
| Bloquear | Modifica el estado del gasto pendiente de contabilización y lo añade junto al comentario al histórico de estados. Se guarda la relación del gasto con el concepto de gasto (tablas "GastoProyecto" y "EstadoGastoProyecto"). | No se envía nada al SGE. Es un estado interno del SGI. | CSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-INV\-ER |
| Rechazar | Modifica el estado del gasto pendiente de contabilización y lo añade junto al comentario al histórico de estados. Se guarda la relación del gasto con el concepto de gasto(tablas "GastoProyecto" y "EstadoGastoProyecto"). | Se enviará una notificación al SGE.[REQ\-INT\-0010\-SGE\-0102 \- Rechazar gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0102-rechazar-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0102-rechazar-gasto.md") | CSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-INV\-ER |
| Cancelar | Retorna al formulario de gastos pendientes de contabilización, sin salvar los posibles cambios |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




