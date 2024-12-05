# Hércules : IU\-PRC\-0203\-001 Infomes \- Unidad de gestión



## Formulario de Informes \- Unidad de gestión

Pantalla que muestra un formulario, que permite la selección de la convocatoria de baremación (el año) y la generación de informes para dicho año seleccionado.



| ***Tipo de informe: Resumen puntuación grupos******Tipo de informe: Detalle de grupo******Tipo de informe: Detalle de producción por investigador/a*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de generación de informes | | |
| Convocatoria | SelectorNúmero enteroObligatorio | Año de la convocatoria de baremación de la cual se quiere generar el informe.Se mostrará un combo con los valores obtenidos del campo "anio" de las convocatorias definidas en la tabla "convocatoria baremación" con el atributo "activo"  a "true" |
| Tipo de informe (campo obligatorio, sólo se podrá seleccionar una opción) | | |
| Resumen puntuación grupos | Radio buttonObligatorio una de las 3 opciones | Al entrar en la pantalla se tendrá seleccionado este valor.Si se tiene seleccionado el tipo de informe "Resumen puntuación grupos" al pulsar el botón de "Generar PDF" se generará el informe con el resumen de las puntuaciones de todos los grupos. |
| Detalle de grupo | Radio buttonObligatorio una de las 3 opciones | Si se selecciona el tipo de informe "Detalle de grupo" se mostrará debajo un selector para seleccionar el grupo de investigación del cual se quiere generar el informe.Será obligatorio seleccionar el grupoSi se tiene seleccionado el tipo de informe "Detalle de grupo" y se elige un grupo al pulsar el botón de "Generar PDF" se generará el informe con las puntuaciones del grupo seleccionado. |
| Detalle de producción por investigador/a | Radio buttonObligatorio una de las 3 opciones | Si se selecciona el tipo de informe "Detalle de producción por investigador/a" se mostrará debajo un selector para seleccionar el/la investigador/a del cual se quiere generar el informe.Será obligatorio seleccionar el/la investigador/a.Si se tiene seleccionado el tipo de informe "Detalle de producción por investigador/a" y se elige una persona al pulsar el botón de "Generar PDF" se generará el informe con las puntuaciones de la persona seleccionada. |
|  | | |
| Grupo de investigación | BuscadorObligatorio si tipo de informe es "Detalle de grupo" | A través del botón Buscar se dará acceso al buscador de grupos de investigación común al SGI, [IU\-GEN\-0140 \- Búsqueda de grupos de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=127074413 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=127074413")Sólo visible si tipo de informe es "Detalle de grupo" |
| Investigador/a | BuscadorObligatorio si tipo de informe es "Detalle de producción por investigador/a" | A través del botón Buscar se dará acceso al buscador de personas común al SGI, [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). Las condiciones de invocación a este buscador se recogen en  la tabla de acciones.Sólo visible si tipo de informe es "Detalle de producción por investigador/a" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (investigador) | Botón de búsqueda de personas registradas en el SGP de la Universidad | Mostrará el buscador de investigadores. Este buscador se resolverá por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Se le deberá pasar a este buscador el tipo de colectivo "Autor PRC" | No se necesita permiso para buscar investigador. |
| Buscar (grupo  investigación) | Búsqueda de grupo de investigación registrado en el SGI | La búsqueda se realizará a través del buscador de grupos de investigación [IU\-GEN\-0140 \- Búsqueda de grupos de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=127074413 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=127074413"), común a todo el SGI. Esta búsqueda llevará implícito el filtro por los permisos (PRC\-INF\-G) | No se necesita permiso para buscar grupo de investigación. |
| Generar PDF | Se generará el documento en formato PDF del tipo de informe seleccionado. | Validaciones de obligatoriedad:* Convocatoria * Tipo de informe: 	+ Si tipo de informe es "Detalle de grupo" será obligatorio la selección de un grupos de investigación 	+ Si tipo de informe es "Detalle de producción por investigador/a" será obligatorio la selección de un investigador/a  Dependiendo del tipo de informe se generará un informe u otro. La definición de los informes está en:* Resumen puntuación grupos: Definido en [REP\-PRC\-0030 \- Informe Resumen puntuación grupos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/prc-informes-predefinidos/rep-prc-0030-informe-resumen-puntuacion-grupos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/prc-informes-predefinidos/rep-prc-0030-informe-resumen-puntuacion-grupos.md") * Detalle grupo: Definido en [REP\-PRC\-0040 \- Informe Detalle grupo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/prc-informes-predefinidos/rep-prc-0040-informe-detalle-grupo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/prc-informes-predefinidos/rep-prc-0040-informe-detalle-grupo.md") * Detalle de producción por investigador/a: [REP\-PRC\-0050 \- Informe Detalle producción investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/prc-informes-predefinidos/rep-prc-0050-informe-detalle-produccion-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/prc-informes-predefinidos/rep-prc-0050-informe-detalle-produccion-investigador.md") | PRC\-INF\-G |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




