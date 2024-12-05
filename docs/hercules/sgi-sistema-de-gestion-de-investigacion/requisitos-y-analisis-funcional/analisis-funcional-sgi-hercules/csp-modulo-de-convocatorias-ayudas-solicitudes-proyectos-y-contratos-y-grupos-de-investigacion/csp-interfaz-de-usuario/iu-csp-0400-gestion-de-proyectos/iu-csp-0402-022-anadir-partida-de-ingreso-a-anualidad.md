# Hércules : IU\-CSP\-0402\-022 \- Añadir partida de ingreso a anualidad



## Formulario Añadir partida de ingreso a anualidad

Formulario que permite añadir una partida de ingreso a una anualidad durante la creación o modificación de un proyecto/contrato.

En caso de que se trate de una modificación, si existe datos de ejecución económica (ingresos procedentes del SGE) asociados a la partida sólo se podrá modificar el campo "importe". Y en caso de tener el campo "código económico" vacío se podrá asignar un código económico.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario para añadir partida de ingreso a anualidad del proyecto | | |
| Identificador SGE | SelectorTexto cortoObligatorio | Identificador SGE (es el identificador del proyecto en el sistema de gestión económica). Se tiene que definir el importe en cada partida presupuestaria para cada uno de los proyectos SGE con los que se vincula el proyecto SGI. Las partidas presupuestarias dependen de cada proyecto SGE (identificador SGE).Se muestra el listados de identificadores SGE asociados al proyecto. En caso de que el proyecto únicamente tenga un único identificador SGE el combo tendría ese valor por defecto. En caso de tener mas de un valor, se deja vacío para obligar a que se elija un valor.Se corresponde con el campo "proyecto SGE ref" de la tabla "anualidad ingreso". |
| Código económico | SelectorTexto cortoOpcional | Listado recuperado a través de [REQ\-INT\-0010\-SGE\-0071 \- Listar códigos económicos de ingresos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0071-listar-codigos-economicos-de-ingresos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0071-listar-codigos-economicos-de-ingresos.md"). Se muestra una cadena texto con la concatenación de los campos identificado (referencia) y nombre del código económico.Se corresponde con el campo "código económico ref" de la tabla "anualidad ingreso". |
| Partida/aplicación presupuestaria | Texto corto/SelectorObligatorio | Listado de partidas presupuestarias dadas de alta en el proyecto (previamente se habrán copiado de la convocatoria en caso de que el proyecto venda de una convocatoria)El listado se cargará con los valores de la tabla "proyecto partida" (mostrando el campo "código") cuyo campo "tipo partida" tome el valor "ingresos". Si solo existe una partida de tipo ingresos, el selector Partida/aplicación presupuestaria se mostrará cargando por defecto esa partida.Se corresponde con el campo "proyecto partida" de la tabla "anualidad ingreso". |
| Importe concedido | EconómicoObligatorio | Importe concedido de la partida de ingreso.Se corresponde con el campo "importe concedido" de la tabla "anualidad ingreso". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir (Aceptar si es una modificación) | Añade la partida de ingreso a la anualidad del proyecto |  | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario de proyecto, sin salvar los posibles cambios |  |  |




