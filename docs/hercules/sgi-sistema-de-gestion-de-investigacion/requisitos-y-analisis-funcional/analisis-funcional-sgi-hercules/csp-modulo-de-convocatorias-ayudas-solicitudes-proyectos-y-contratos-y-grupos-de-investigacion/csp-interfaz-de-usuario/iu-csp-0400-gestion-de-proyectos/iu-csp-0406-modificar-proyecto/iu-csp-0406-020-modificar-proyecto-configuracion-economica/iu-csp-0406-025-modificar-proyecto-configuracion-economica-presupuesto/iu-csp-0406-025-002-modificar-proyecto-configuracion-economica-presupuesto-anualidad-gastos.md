# Hércules : IU\-CSP\-0406\-025\-002 \- Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Gastos



## Formulario Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Gastos

Formulario que permite añadir/modificar el presupuesto para las partidas de gasto de una anualidad durante el proceso de creación o modificación de un proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Partidas de gastos (registros de la tabla "anualidad gasto" | | |
| Identificador SGE | Texto corto | Identificador SGE (es el identificador del proyecto en el sistema de gestión económica). Se tiene que definir el importe en cada partida presupuestaria para cada uno de los proyectos SGE con los que se corresponde el proyecto SGI. Las partidas presupuestarias dependen de cada proyecto SGE (identificador SGE).Se corresponde con el campo "proyecto SGE ref" de la tabla "anualidad gasto" |
| Concepto de gasto | Texto corto | Concepto de gasto que podrá ser uno de los conceptos de gasto permitidos en el apartado "Elegibilidad" de "Configuración económica" o bien cualquiera de todos los conceptos de gasto configurados en el SGI en [IU\-CSP\-0090 \- Gestión de conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/index.md").Se corresponde con el campo "concepto gasto" de la tabla "anualidad gasto". |
| Código económico | Texto corto | Código económico que podrá ser uno de los códigos económico configurados en el apartado "Elegibilidad" o bien cualquier código económico procedente de la información leída desde el SGE.Se mostrará una cadena de texto con la concatenación de los campos identificador (referencia) y nombre recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para la referencia establecida por el campo "código económico ref" de la tabla "anualidad gasto" |
| Partida/aplicación presupuestaria | Texto corto | Partida o aplicación presupuestaria del listado de partidas presupuestarias dadas de alta en el proyecto (previamente se habrán copiado de la convocatoria en caso de que el proyecto venda de una convocatoria) |
| Importe presupuesto | Numérico Económico | Importe presupuesto de la partida de gasto.Se corresponde con el campo "importe presupuesto" de la tabla "anualidad gasto". |
| Importe concedido | Numérico Económico | Importe concedido de la partida de gasto.Se corresponde con el campo "importe concedido" de la tabla "anualidad gasto". |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir partida de gastos | Icono de acción | Acción "Añadir partida de gastos" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del gasto seleccionado del listado de gastos de la anualidad | Si la anualidad se ha enviado al SGE no se podrá modificar (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad")Se resuelve con la pantalla [IU\-CSP\-0402\-021 \- Añadir partida de gasto a anualidad de configuración económica en proyecto.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-021-anadir-partida-de-gasto-a-anualidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-021-anadir-partida-de-gasto-a-anualidad.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Eliminar el gasto de la anualidad del proyecto | Si la anualidad se ha enviado al SGE no se podrá eliminar (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir partida de gastos | Muestra la pantalla para añadir nueva partida de gastos a la anualidad | Si la anualidad se ha enviado al SGE no se podrá añadir una nueva partida (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad")Se resuelve con la pantalla [IU\-CSP\-0402\-021 \- Añadir partida de gasto a anualidad de configuración económica en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-021-anadir-partida-de-gasto-a-anualidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-021-anadir-partida-de-gasto-a-anualidad.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la anualidad del proyecto con la información introducida en el formulario.Al guardar una anualidad se guarda la información de todos los apartados de definición de la anualidad. | No se podrá añadir, modificar o eliminar partidas de gasto a la anualidad si la anualidad se ha enviado al SGE no se podrá eliminar (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyecto sin salvar los posibles cambios.Al cancelar una anualidad se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




