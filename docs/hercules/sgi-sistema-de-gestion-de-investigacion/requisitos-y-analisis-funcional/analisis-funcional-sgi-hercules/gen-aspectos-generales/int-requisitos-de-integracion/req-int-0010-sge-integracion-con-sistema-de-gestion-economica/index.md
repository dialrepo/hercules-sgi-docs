# Hércules : REQ\-INT\-0010\-SGE \- Integración con Sistema de gestión económica



### Definición y objetivos

El SGI a través del ESB habilitará los mecanismos necesarios para la integración con el sistema de gestión económica de la Universidad. El  objetivo de la integración, aparte del cumplimiento del paradigma de dato único, es aislar al SGI del proceso contable y financiario que, dada su complejidad y transversalidad institucional, debe mantenerse centralizado y normalizado en el sistema de gestión económica (SGE) correspondiente.

La gestión de todos los datos económicos de los proyectos/contratos/convenios/registro de PII, etc. se realizará en el SGE. El SGI actuará como sistema lector de los datos económicos expuestos por el SGE. Los datos económicos que estarán disponibles en el SGI dependerán del detalle ofrecido por el SGE.

A grandes rasgos el objetivo de esta integración será:

* Recuperar el detalle de las entidades que, bajo un rol u otro, participan en las actividades de investigación registradas en el SGI (entidades financiadoras, socios colaboradores, etc.).
* Recuperar el resumen del estado económico de los proyectos, contratos, etc. de investigación agrupados por partidas presupuestarias y/o conceptos de gasto
* Recuperar el detalle de facturas y gastos de los proyectos, contratos, etc. de investigación.
* Recuperar el listado de tipos o códigos de gasto

  


  


### Requisitos identificados



| Título | Épica, historia | Características | Cod. REQ | Estado | Fec. Aprobación | Frecuencia | M. Consumidor | Ver. Objetivo | Ver. REQ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [REQ\-INT\-0010\-SGE\-0150 \- Buscar facturas emitidas](/confluence/display/HERCULES/REQ-INT-0010-SGE-0150+-+Buscar+facturas+emitidas "/confluence/display/HERCULES/REQ-INT-0010-SGE-0150+-+Buscar+facturas+emitidas") |  |  | **REQ\-INT\-0010\-SGE\-0150 \- Buscar facturas emitidas** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0166 \- Detalle gasto justificado](/confluence/display/HERCULES/REQ-INT-0010-SGE-0166+-+Detalle+gasto+justificado "/confluence/display/HERCULES/REQ-INT-0010-SGE-0166+-+Detalle+gasto+justificado") |  |  | **REQ\-INT\-0010\-SGE\-0166 \- Detalle gasto justificado** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados](/confluence/display/HERCULES/REQ-INT-0010-SGE-0166+-+Buscar+gastos+justificados "/confluence/display/HERCULES/REQ-INT-0010-SGE-0166+-+Buscar+gastos+justificados") |  |  | **REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0100 \- Buscar gastos pendientes de contabilización](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852928 "/confluence/pages/viewpage.action?pageId=597852928") |  |  | **REQ\-INT\-0010\-SGE\-0100 \- Buscar gastos pendientes de contabilización** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0090 \- Notificar presupuesto de proyecto económico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853232 "/confluence/pages/viewpage.action?pageId=597853232") |  |  | **REQ\-INT\-0010\-SGE\-090 \- Notificar presupuesto de proyecto económico** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0013\-SGEPII\-0011 \- Detalle gasto](/confluence/display/HERCULES/REQ-INT-0013-SGEPII-0011+-+Detalle+gasto "/confluence/display/HERCULES/REQ-INT-0013-SGEPII-0011+-+Detalle+gasto") |  |  | **REQ\-INT\-0013\-SGEPII\-0011 \- Detalle gasto** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/confluence/display/HERCULES/REQ-INT-0010-SGE-0142+-+Detalle+personal+contratado "/confluence/display/HERCULES/REQ-INT-0010-SGE-0142+-+Detalle+personal+contratado") |  |  | **REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0141 \- Detalle viaje\-dieta](/confluence/display/HERCULES/REQ-INT-0010-SGE-0141+-+Detalle+viaje-dieta "/confluence/display/HERCULES/REQ-INT-0010-SGE-0141+-+Detalle+viaje-dieta") |  |  | **REQ\-INT\-0010\-SGE\-0141 \- Detalle viaje\-dieta** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0140 \- Detalle justificante\-factura](/confluence/display/HERCULES/REQ-INT-0010-SGE-0140+-+Detalle+justificante-factura "/confluence/display/HERCULES/REQ-INT-0010-SGE-0140+-+Detalle+justificante-factura") |  |  | **REQ\-INT\-0010\-SGE\-0140 \- Detalle justificante\-factura** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0139 \- Buscar detalle de operaciones \- Modificaciones](/confluence/display/HERCULES/REQ-INT-0010-SGE-0139+-+Buscar++detalle+de+operaciones+-+Modificaciones "/confluence/display/HERCULES/REQ-INT-0010-SGE-0139+-+Buscar++detalle+de+operaciones+-+Modificaciones") |  |  | **REQ\-INT\-0010\-SGE\-0139 \- Buscar detalle de operaciones \- Modificaciones** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0138 \- Buscar detalle de operaciones \- Ingresos](/confluence/display/HERCULES/REQ-INT-0010-SGE-0138+-+Buscar++detalle+de+operaciones+-+Ingresos "/confluence/display/HERCULES/REQ-INT-0010-SGE-0138+-+Buscar++detalle+de+operaciones+-+Ingresos") |  |  | **REQ\-INT\-0010\-SGE\-0138 \- Buscar detalle de operaciones \- Ingresos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0137 \- Buscar detalle de operaciones \- Gastos](/confluence/display/HERCULES/REQ-INT-0010-SGE-0137+-+Buscar++detalle+de+operaciones+-+Gastos "/confluence/display/HERCULES/REQ-INT-0010-SGE-0137+-+Buscar++detalle+de+operaciones+-+Gastos") |  |  | **REQ\-INT\-0010\-SGE\-0137 \- Buscar detalle de operaciones \- Gastos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0136 \- Buscar justificantes y facturas \- Personal contratado](/confluence/display/HERCULES/REQ-INT-0010-SGE-0136+-+Buscar++justificantes+y+facturas+-+Personal+contratado "/confluence/display/HERCULES/REQ-INT-0010-SGE-0136+-+Buscar++justificantes+y+facturas+-+Personal+contratado") |  |  | **REQ\-INT\-0010\-SGE\-0136 \- Buscar justificantes y facturas \- Personal contratado** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0135 \- Buscar justificantes y facturas \- Viajes y dietas](/confluence/display/HERCULES/REQ-INT-0010-SGE-0135+-+Buscar++justificantes+y+facturas+-+Viajes+y+dietas "/confluence/display/HERCULES/REQ-INT-0010-SGE-0135+-+Buscar++justificantes+y+facturas+-+Viajes+y+dietas") |  |  | **REQ\-INT\-0010\-SGE\-0135 \- Buscar justificantes y facturas \- Viajes y Dietas** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0134 \- Buscar justificantes y facturas \- Facturas y gastos](/confluence/display/HERCULES/REQ-INT-0010-SGE-0134+-+Buscar++justificantes+y+facturas+-+Facturas+y+gastos "/confluence/display/HERCULES/REQ-INT-0010-SGE-0134+-+Buscar++justificantes+y+facturas+-+Facturas+y+gastos") |  |  | **REQ\-INT\-0010\-SGE\-0130 \- Buscar justificantes y facturas \- Facturas y gastos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0132 \- Buscar ejecución presupuestaria \- ingresos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852448 "/confluence/pages/viewpage.action?pageId=597852448") |  |  | **REQ\-INT\-0010\-SGE\-0132 \- Buscar ejecución presupuestaria \- ingresos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0131 \- Buscar ejecución presupuestaria \- gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852447 "/confluence/pages/viewpage.action?pageId=597852447") |  |  | **REQ\-INT\-0010\-SGE\-0131 \- Buscar ejecución presupuestaria \- gastos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0130 \- Buscar ejecución presupuestaria \- estado actual](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852363 "/confluence/pages/viewpage.action?pageId=597852363") |  |  | **REQ\-INT\-0010\-SGE\-0130 \- Buscar ejecución presupuestaria \- estado actual** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0103 \- Detalle gasto](/confluence/display/HERCULES/REQ-INT-0010-SGE-0103+-+Detalle+gasto "/confluence/display/HERCULES/REQ-INT-0010-SGE-0103+-+Detalle+gasto") |  |  | **REQ\-INT\-0010\-SGE\-0103 \- Detalle gasto** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0102 \- Rechazar gasto](/confluence/display/HERCULES/REQ-INT-0010-SGE-0102+-+Rechazar+gasto "/confluence/display/HERCULES/REQ-INT-0010-SGE-0102+-+Rechazar+gasto") |  |  | **REQ\-INT\-0010\-SGE\-0102 \- Rechazar gasto** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0101 \- Validar gasto](/confluence/display/HERCULES/REQ-INT-0010-SGE-0101+-+Validar+gasto "/confluence/display/HERCULES/REQ-INT-0010-SGE-0101+-+Validar+gasto") |  |  | **REQ\-INT\-0010\-SGE\-0101 \- Validar gasto** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0104 \- Descargar Binario documento](/confluence/display/HERCULES/REQ-INT-0010-SGE-0104+-+Descargar+Binario+documento "/confluence/display/HERCULES/REQ-INT-0010-SGE-0104+-+Descargar+Binario+documento") |  |  | **REQ\-INT\-0010\-SGE\-0104 \- Descargar Binario documento** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0083 \- Solicitar relación con un proyecto económico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852728 "/confluence/pages/viewpage.action?pageId=597852728") |  |  | **REQ\-INT\-0010\-SGE\-0083 \- Solicitar relación con un  proyecto económico** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0161 \- Modificar periodo amortización](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853323 "/confluence/pages/viewpage.action?pageId=597853323") |  |  | **REQ\-INT\-0010\-SGE\-0161 \- Modificar periodo amortización** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0160 \- Crear periodo amortización](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853320 "/confluence/pages/viewpage.action?pageId=597853320") |  |  | **REQ\-INT\-0010\-SGE\-0160 \- Crear periodo amortización** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0153 \- Buscar facturas previstas emitidas](/confluence/display/HERCULES/REQ-INT-0010-SGE-0153+-+Buscar+facturas+previstas+emitidas "/confluence/display/HERCULES/REQ-INT-0010-SGE-0153+-+Buscar+facturas+previstas+emitidas") |  |  | **REQ\-INT\-0010\-SGE\-0153 \- Buscar facturas previstas emitidas** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0151 \- Detalle factura emitida](/confluence/display/HERCULES/REQ-INT-0010-SGE-0151+-+Detalle+factura+emitida "/confluence/display/HERCULES/REQ-INT-0010-SGE-0151+-+Detalle+factura+emitida") |  |  | **REQ\-INT\-0010\-SGE\-0151 \- Detalle factura emitida** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0081 \- Solicitar alta proyecto económico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852858 "/confluence/pages/viewpage.action?pageId=597852858") |  |  | **REQ\-INT\-0010\-SGE\-0081 \- Solicitar alta proyecto económico** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0082 \- Consultar datos proyecto económico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853102 "/confluence/pages/viewpage.action?pageId=597853102") |  |  | **REQ\-INT\-0010\-SGE\-0082 \- Consultar datos proyecto económico** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0080 \- Buscar proyecto económico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853174 "/confluence/pages/viewpage.action?pageId=597853174") |  |  | **REQ\-INT\-0010\-SGE\-0080 \- Buscar proyecto económico** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0073 \- Detalle código económico ingreso](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852487 "/confluence/pages/viewpage.action?pageId=597852487") |  |  | **REQ\-INT\-0010\-SGE\-0073 \- Detalle código económico ingreso** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0071 \- Listar códigos económicos de ingresos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853161 "/confluence/pages/viewpage.action?pageId=597853161") |  |  | **REQ\-INT\-0010\-SGE\-0071 \- Listar códigos económicos de ingresos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852902 "/confluence/pages/viewpage.action?pageId=597852902") |  |  | **REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852488 "/confluence/pages/viewpage.action?pageId=597852488") |  |  | **REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto** | IN PROGRESS |  |  |  |  | 1\.0\.0 |

  
  


  


  





