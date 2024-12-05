# Hércules : IU\-CSP\-0406\-025\-003 \- Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Ingresos



## Formulario Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Ingresos

Formulario que permite añadir/modificar el presupuesto sobre las partidas de ingresos de una anualidad durante el proceso de creación o modificación de un proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Ingresos de la anualidad | | |
| Identificador SGE | Texto corto | Identificador SGE (es el identificador del proyecto en el sistema de gestión económica). Se tiene que definir el importe en cada partida presupuestaria para cada uno de los proyectos SGE al que se corresponde el proyecto SGI. Las partidas presupuestarias dependen de cada proyecto SGE (identificador SGE).Se corresponde con el campo "proyecto SGE Ref" de la tabla "anualidad ingreso". |
| Código económico | Texto corto | Código económico. Se mostrará una cadena de texto con la concatenación de los campos identificador (referencia) y nombre recuperados a través de [REQ\-INT\-0010\-SGE\-0073 \- Detalle código económico ingreso](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0073-detalle-codigo-economico-ingreso.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0073-detalle-codigo-economico-ingreso.md") para el código económico referencia a través de "código económico ref" de la tabla "anualidad ingreso". |
| Partida/aplicación presupuestaria | Texto corto | Partida o aplicación presupuestaria del listado de partidas presupuestarias dadas de alta en el proyecto (previamente se habrán copiado de la convocatoria en caso de que el proyecto venda de una convocatoria)Se corresponde con el campo "proyecto partida" de la tabla "anualidad ingreso". |
| Importe concedido | Económico | Importe concedido de la partida de ingresoSe corresponde con el campo "importe concedido" de la tabla "anualidad ingreso". |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir partida de ingreso | Icono de acción | Acción "Añadir partida de ingreso" |

  


  


  


  


  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ingresos a la anualidad | | | |
| Modificar | Muestra la pantalla de modificación del gasto seleccionado del listado de gastos de la anualidad | Si la anualidad se ha enviado al SGE no se podrá modificar (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad")Se resuelve con la pantalla [IU\-CSP\-0402\-022 \- Añadir partida de ingreso a anualidad de configuración económica en proyecto.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-022-anadir-partida-de-ingreso-a-anualidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-022-anadir-partida-de-ingreso-a-anualidad.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Eliminar el gasto de la anualidad del proyecto | Si la anualidad se ha enviado al SGE no se podrá eliminar (campo "enviado SGE" tiene valor "true" en la tabla "proyecto anualidad") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir nueva partida de ingresos de la anualidad | Muestra la pantalla para añadir nueva partida de gastos a la anualidad | Si la anualidad se ha enviado al SGE no se podrá añadir una nueva partida (campo "enviado SGE" tiene valor "true" en la tabla "proyecto anualidad")Se resuelve con la pantalla [IU\-CSP\-0402\-022 \- Añadir partida de ingreso a anualidad de configuración económica en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-022-anadir-partida-de-ingreso-a-anualidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-022-anadir-partida-de-ingreso-a-anualidad.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la anualidad del proyecto con la información introducida en el formulario.Al guardar una anualidad se guarda la información de todos los apartados de definición de la anualidad. | No se podrá añadir, modificar o eliminar partidas de ingreso a la anualidad si la anualidad se ha enviado al SGE no se podrá eliminar (campo "enviado SGE" tiene valor "true" en la tabla "proyecto anualidad") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyecto sin salvar los posibles cambios.Al cancelar una anualidad se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




