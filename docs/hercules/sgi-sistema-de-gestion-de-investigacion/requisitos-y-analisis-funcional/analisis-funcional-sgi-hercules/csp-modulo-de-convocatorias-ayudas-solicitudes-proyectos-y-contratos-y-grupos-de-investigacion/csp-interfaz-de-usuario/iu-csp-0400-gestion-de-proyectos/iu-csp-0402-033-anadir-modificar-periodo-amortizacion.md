# Hércules : IU\-CSP\-0402\-033 \- Añadir\-modificar Periodo amortización



## Formulario Añadir\-modificar Periodo amortización

Formulario que permite crear/modificar un periodo de amortización



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Identificador SGE | SelectorTexto cortoObligatorio | Identificador SGE (es el identificador del proyecto en el sistema de gestión económica). Se tiene que definir el importe en cada partida presupuestaria para cada uno de los proyectos SGE al que se corresponde el proyecto SGI. Las partidas presupuestarias dependen de cada proyecto SGE (identificador SGE).Se muestra el listados de identificadores SGE asociados al proyecto, recuperados de la tabla "proyecto proyecto SGE". En caso de que el proyecto únicamente tenga un único identificador SGE (solamente existe un registro en la tabla "proyecto proyecto SGE" para el proyecto en curso), se deberá precargar este valor por defecto. En caso de que el proyecto esté asociado a más de un identificador SGE, no se preseleccionará ningún valor, obligando así a seleccionar un elemento de la lista.Se corresponde con el campo "proyecto SGE ref" de la tabla "proyecto periodo amortización". |
| Entidad financiadora \- Fuente financiación \- Tipo financiación | SelectorTextoObligatorio | Se mostrará un selector que contendrá el listado de las entidades financiadoras del proyecto.  Las entidades financiadoras habrán sido introducidas en el apartado "entidades financiadoras" del proyecto. Se mostrará un campo compuesto a partir de tres cadenas de texto: Nombre de la entidad financiadora, nombre de la fuente de financiación y nombre del tipo de financiación.El listado recuperará todos los registros de la tabla "proyecto entidad financiadora" asociados al proyecto, mostrando de manera concatenada:* Nombre de la entidad financiadora: Nombre de la entidad financiadora, recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") a partir del campo "empresa ref" de la tabla "proyecto entidad financiadora". * Nombre de la fuente de financiación: Campo "nombre" de  la tabla "fuente financiación" recuperado a partir del campo "fuente financiación" de la tabla "proyecto entidad financiadora". En caso que la entidad financiadora no se hubiera asociado a una fuente de financiación concreta se mostrará el texto fijo "Fuente financiación no especificada" * Nombre del tipo de financiación: Campo "nombre" de la tabla "tipo financiación" recuperado a partir del campo "tipo financiación" de la tabla "proyecto entidad financiadora". En caso que la entidad financiadora no se hubiera asociado a un tipo de financiación concreto se mostrará el texto fijo "Tipo financiación no especificado"  Es un campo obligatorio.Se corresponde con el campo "proyecto entidad financiadora" de la tabla "proyecto periodo amortización". |
| Anualidad | SelectorNumérico enteroObligatorio | Se mostrará un selector que contendrá el listado de anualidades del proyecto. Las anualidades habrán sido introducidas en el apartado "presupuesto" del proyecto.Si el presupuesto del proyecto se ha recogido sin anualidades (existe un registro en la tabla "proyecto anualidad" con el campo "anio" a null), el desplegable "anualidad" no se mostrará.Si el presupuesto del proyecto se ha expresado con anualidades:* El listado mostrará el campo "año" de todas las anualidades recogidas en el tabla "proyecto anualidad" para el proyecto. * Es un campo obligatorio.  Se corresponde con el campo "proyecto anualidad" de la tabla "proyecto periodo amortización", que tomará el valor 0 en caso de que el presupuesto se haya recogido sin anualidades. |
| Fecha inicio anualidad | FechaModo consulta | Fecha de inicio de la anualidad obtenida de la configuración de la anualidad en el apartado "presupuesto" del proyecto.Se corresponde con el campo "fecha inicio" de la tabla "proyecto anualidad" para la anualidad seleccionada en el selector "anualidad" de este formulario.Se mostrará en modo consulta. |
| Fecha fin anualidad | FechaModo consulta | Fecha de fin de la anualidad obtenida de la configuración de la anualidad en el apartado "presupuesto" del proyecto.Se corresponde con el campo "fecha fin" de la tabla "proyecto anualidad" para la anualidad seleccionada en el selector "anualidad" de este formulario.Se mostrará en modo consulta. |
| Fecha límite amortización | FechaObligatorio | Fecha fin del periodo de amortización que está siendo creado.Es un campo obligatorio.Se corresponde con el campo  "fecha límite amortización" de la tabla "proyecto periodo amortización". |
| Importe | EconómicoObligatorio | Importe a amortizar en el periodo que está siendo creado.Es un campo obligatorio.Se corresponde con el campo  "importe" de la tabla "proyecto periodo amortización". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir/Aceptar | El texto del botón de mostrará como:* Añadir. Cuando se accede al formulario para añadir un nuevo periodo de amortización al proyecto. * Aceptar. Cuando se accede al formulario para modificar los datos de un periodo de amortización ya existente en el proyecto. | Se creará un registro en la tabla "proyecto periodo amortización". | CSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-PRO\-INV\-VR |
| Cancelar | Retorna al formulario de proyecto (configuración económica \- amortización fondos), sin salvar los posibles cambios |  |  |




