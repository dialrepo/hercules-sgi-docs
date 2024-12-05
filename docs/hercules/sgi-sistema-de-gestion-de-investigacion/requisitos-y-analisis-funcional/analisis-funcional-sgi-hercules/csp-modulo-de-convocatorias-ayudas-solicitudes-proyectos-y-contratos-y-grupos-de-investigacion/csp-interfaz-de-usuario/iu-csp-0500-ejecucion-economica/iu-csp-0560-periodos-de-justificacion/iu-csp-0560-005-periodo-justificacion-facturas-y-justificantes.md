# Hércules : IU\-CSP\-0560\-005 \- Periodo justificación \- Facturas y justificantes



## Formulario Ejecución económica \- Periodo justificación \- Facturas y justificantes

Formulario que permite añadir las facturas y justificantes de gastos que van a ser incluidas en el periodo de justificación. Será un subconjunto de las disponibles en el apartado "Facturas y justificantes" \- "Facturas y gastos" de la "Ejecución económica" del proyecto. En el apartado "Facturas y justificantes" \- "Facturas y gastos" de la "Ejecución económica" del proyecto se dispondrá de todas las facturas y justificantes de gastos recuperados del SGE, de forma que en este apartado de "Justificaciones" se pueda seleccionar cuáles de ellos van a ser incluidos en la justificación.

Por defecto, el SGI realizará una selección automática a partir de las fechas de inicio y fin del periodo de justificación y de la fecha del gasto (debiendo ser este campo identificado en periodo de implantación y siendo indispensable que figure entre los campos de detalle recogidos a partir de la integración con el SGE).

Para las facturas y justificantes de gastos incluidas en el periodo de justificación, siempre y cuando los servicios de integración del SGE lo permitan, se recuperará el documento de factura o justificante asociado para ser incorporado al apartado Documentación del periodo de justificación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de facturas y justificantes incluidos en la justificación del periodo | | | |
| Estado del periodo de justificación | | Texto corto | Estado en que se encuentra el periodo de justificación |
| Anualidad | | Numérico entero genérico | Año de la anualidad |
| Agrupación gasto | | Texto corto | Agrupación de gasto asociada a la anualidad |
| Concepto de gasto | | Texto corto | Concepto de gasto asociado a la agrupación de gasto |
| Aplicación presupuestaria (inc. código económico) | | Texto corto | Aplicación presupuestaria asociada al concepto de gasto |
| Número justificante gasto | | Texto corto | Número justificante del gasto |
| Proveedor | | Texto corto | Proveedor del gasto |
| Número factura | | Texto corto | Número factura del gasto |
| Fecha | | Fecha | Fecha emisión de la factura |
| Estado | | Texto corto | Estado de la factura |
| Importe total | | Económico | Importe total de la factura |
| Motivo rech | | Texto corto | Motivo de rechazo el justificante |
| Comentario rech | | Texto largo | Comentario sobre el motivo de rechazo |
| Modificar | | Icono de acción | Acción "Modificar" |
| Eliminar | | Icono de acción | Acción "Eliminar" |
| Añadir gasto a la justificación | | Icono de acción | Acción "Añadir gasto a la justificación" |
| Exportar | | Icono de acción | Acción "Exportar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de rechazo del gasto | Solo estará disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación  Muestra la pantalla [IU\-CSP\-0405\-005 \- Rechazar gasto en justificación de ejecución económica en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-012-rechazar-gasto-en-periodo-de-justificacionn.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-012-rechazar-gasto-en-periodo-de-justificacionn.md") |
| Eliminar | Elimina la factura o justificante del periodo de justificación | Solo estará disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación |
| Añadir gasto a la justificación | Muestra la pantalla para añadir un nuevo gasto al periodo de justificación | Se podrán añadir o eliminar facturas y justificantes de gastos al periodo de justificación mientras éste figure en los estados:* Pendiente * Elaboración * Subsanación  Muestra la pantalla [IU\-CSP\-0405\-004 \- Añadir gasto a la justificación en ejecución económica de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-010-anadir-gasto-a-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-010-anadir-gasto-a-periodo-de-justificacion.md") |
| Exportar | Exporta a .csv la información mostrada en la tabla de facturas y justificantes del periodo de justificación |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda la justificación del periodo con la información introducida en el formulario.Al guardar una justificación del periodo se guarda la información de todos los apartados de definición del proyecto. |  |
| Cancelar | Retorna al listado de Justificaciones sin salvar los posibles cambios.Al cancelar una justificación del periodo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





